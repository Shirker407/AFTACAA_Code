using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace events
{
    public partial class EventManager: System.Web.UI.Page
    {
        SqlConnection sqlCon = new SqlConnection(ConfigurationManager.ConnectionStrings["AFTACConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // TODO: Modify page
                btnDelete.Enabled = false;
                FillGridView();
            }
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            Clear();
        }
        public void Clear()
        {
            LiteralControl pnlCtrl = pnlBody.Controls[0] as LiteralControl;
            hfEventID.Value = "";
            hfBodyText.Value = "";
            txtAddress.Text = "";
            pnlCtrl.Text = "";
            txtLocation.Text = "";
            txtTitle.Text = "";
            lblSuccessMessage.Text = "";
            txtImageURL.Text = "";
            btnSave.Text = "Save";
            btnDelete.Enabled = false;
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            //string s = "test";
           // s = pnlBody.Attributes["Text"];
            //LiteralControl pnlCtrl = pnlBody.Controls[0] as LiteralControl;
            //hfBodyText.Value = pnlBody.InnerHtml;
            
            string fn = null;
            if (fuImage.HasFile)
            {
                try
                {
                    fn = fuImage.FileName.ToString();
                    fuImage.SaveAs(Server.MapPath("~/Events/images/") + fn);
                    fn = "images/" + fn;
                }
                catch (Exception ex)
                {
                    lblSuccessMessage.Text = "Upload status: The file could not be uploaded.  The following error occured: " + ex.Message;
                }
            }
            else
            {
                if(txtImageURL.Text != null || txtImageURL.Text != "") fn = txtImageURL.Text;
            }
            if (sqlCon.State == ConnectionState.Closed)
                sqlCon.Open();
            SqlCommand sqlCmd = new SqlCommand("EventCreateOrUpdate", sqlCon);
            sqlCmd.CommandType = CommandType.StoredProcedure;
            sqlCmd.Parameters.AddWithValue("@EVENT_ID", (hfEventID.Value == "" ? 0 : Convert.ToInt32(hfEventID.Value)));
            sqlCmd.Parameters.AddWithValue("@EVENT_TITLE", txtTitle.Text.Trim());
            sqlCmd.Parameters.AddWithValue("@EVENT_BODY", hfBodyText.Value.Trim());//sqlCmd.Parameters.AddWithValue("@EVENT_BODY", txtBody.Text.Trim());
            sqlCmd.Parameters.AddWithValue("@EVENT_ADDRESS", txtAddress.Text.Trim());
            sqlCmd.Parameters.AddWithValue("@EVENT_LOCATION", txtLocation.Text.Trim());
            if(fn != null)
                sqlCmd.Parameters.AddWithValue("@EVENT_IMAGE_URL", fn);
            sqlCmd.ExecuteNonQuery();
            sqlCon.Close();
            string eventID = hfEventID.Value;
            Clear();
            if (eventID == "")
                lblSuccessMessage.Text = "Saved Successfully";
            else
            {
                //lblSuccessMessage.Text = s.Trim();
                //lblSuccessMessage.Text = fuImage.FileName.ToString();
            }

            FillGridView();
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            if (sqlCon.State == ConnectionState.Closed)
                sqlCon.Open();
            SqlCommand sqlCmd = new SqlCommand("EventDeleteByID", sqlCon);
            sqlCmd.CommandType = CommandType.StoredProcedure;
            sqlCmd.Parameters.AddWithValue("@EVENT_ID", Convert.ToInt32(hfEventID.Value));
            sqlCmd.ExecuteNonQuery();
            sqlCon.Close();
            Clear();
            FillGridView();
            lblSuccessMessage.Text = "Deleted Successfully";
        }
        protected void lnk_OnClick(object sender, EventArgs e)
        {
            //LiteralControl panelCntl = pnlBody.Controls[0] as LiteralControl;
            int eventID = Convert.ToInt32((sender as LinkButton).CommandArgument);
            if (sqlCon.State == ConnectionState.Closed)
                sqlCon.Open();
            SqlDataAdapter sqlDa = new SqlDataAdapter("select * from EVENT WHERE EVENT_ID = " + eventID.ToString(), sqlCon);
            sqlDa.SelectCommand.CommandType = CommandType.Text;
            //sqlDa.SelectCommand.Parameters.AddWithValue("@ContactID", contactID);
            DataTable dtbl = new DataTable();
            
            sqlDa.Fill(dtbl);
            sqlCon.Close();
            hfEventID.Value = eventID.ToString();
            txtTitle.Text = dtbl.Rows[0]["EVENT_TITLE"].ToString();
            txtLocation.Text = dtbl.Rows[0]["EVENT_LOCATION"].ToString();
            txtAddress.Text = dtbl.Rows[0]["EVENT_ADDRESS"].ToString();
            hfBodyText.Value = pnlBody.InnerHtml = dtbl.Rows[0]["EVENT_BODY"].ToString();
            txtImageURL.Text = dtbl.Rows[0]["EVENT_IMAGE_URL"].ToString();
            btnSave.Text = "Update";
            btnDelete.Enabled = true;
        }
        void FillGridView()
        {
            if(sqlCon.State == ConnectionState.Closed)
            {
                sqlCon.Open();
                SqlDataAdapter sqlDa = new SqlDataAdapter("select * from EVENT",sqlCon);
                sqlDa.SelectCommand.CommandType = CommandType.Text;
                DataTable dtbl = new DataTable();
                sqlDa.Fill(dtbl);
                sqlCon.Close();
                gvEvents.DataSource = dtbl;
                gvEvents.DataBind();
                //lblSuccessMessage.Text = "Success";
            }
        }
    }
}