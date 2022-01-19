<%@ Page Language="C#" MasterPageFile="~/Events/AFTACAA.Master" AutoEventWireup="true" CodeFile="EventManager.aspx.cs" Inherits="events.EventManager" ValidateRequest="false"%>
<asp:Content ID="pageTitle" ContentPlaceHolderID="pageTitle" runat="server">AFTACAA | Event Manager</asp:Content>
    
<asp:Content ID="pageContent" ContentPlaceHolderID="mainContent" runat="server">

        <br/>
        <div class="panel panel-default">
            <div class="panel-heading">Create/Edit/Remove Event</div>
            <div class="panel-body">
        <form id="form1" runat="server">  
            <asp:Label ID="lblSuccessMessage" runat="server" Text="" ForeColor="Green"></asp:Label>
            <asp:HiddenField ID="hfEventID" runat="server" />
            <asp:HiddenField ID="hfBodyText" runat="server" />
            <div class="form-group row">
                <label for="txtTitle" class="col-sm-2">Name</label>
                <div class="col-sm-10">
                    <asp:TextBox ID="txtTitle" runat="server" CssClass="form-control" placeholder="ex. Winter Social"></asp:TextBox>
                </div>
            </div>
            <div class="form-group row">
                <label for="txtLocation" class="col-sm-2">Location</label>
                <div class="col-sm-10">
                    <asp:TextBox ID="txtLocation" runat="server" CssClass="form-control" placeholder="Event Location"></asp:TextBox>
                </div>
            </div>
            <div class="form-group row">
                <label for="txtAddress" class="col-sm-2">Where</label>
                <div class="col-sm-10">
                    <asp:TextBox ID="txtAddress" runat="server" TextMode="MultiLine" Height="50" CssClass="form-control" placeholder="Event Address"></asp:TextBox>
                </div>
            </div>
            <div class="form-group row">
                <label for="txtBody" class="col-sm-2">Details</label>
                <div class="col-sm-10">
                   
                    <div contenteditable="true" runat="server" id="pnlBody" onkeyup="document.getElementById('mainContent_hfBodyText').value = this.innerHTML"></div>
                </div>
            </div>
            <div class="form-group row">
                <label for="txtBody" class="col-sm-2">Event Images</label>
                <div class="col-sm-4">
                    <asp:FileUpload ID="fuImage" runat="server"/>
                </div>
                <div class="col-sm-4">
                    <asp:TextBox ID="txtImageURL" runat="server" Text=""></asp:TextBox>
                </div>
            </div>
            
            <div class="form-group row">
                <div class="col-sm-2"></div>
                <div class="col-sm-10 btn-group text-center">
                    <asp:Button ID="btnSave" runat="server" Text="Save" OnClick="btnSave_Click" CssClass="btn btn-primary"/>
                    <asp:Button ID="btnDelete" runat="server" Text="Delete" OnClick="btnDelete_Click" CssClass="btn btn-primary"/>
                    <asp:Button ID="btnClear" runat="server" Text="Clear" OnClick="btnClear_Click" CssClass="btn btn-primary"/>
                </div>
            </div>
            <br/>
            <br/>

            <asp:GridView ID="gvEvents" runat="server" AutoGenerateColumns="false" AllowSorting="true" BorderWidth="0" GridLines="None" CssClass="table table-striped">
                <Columns>
                    <asp:BoundField DataField="EVENT_TITLE" HeaderText="EVENT" />
                    <asp:BoundField DataField="EVENT_ADDRESS" HeaderText="ADDRESS" />
                    <asp:BoundField DataField="EVENT_LOCATION" HeaderText="LOCATION" />
                    <asp:BoundField DataField="EVENT_SUBMITTED_DATE" HeaderText="DATE SUBMITTED" />
                    <asp:BoundField DataField="EVENT_MODIFIED" HeaderText="DATE MODIFIED" />
                    <asp:TemplateField>
                    <ItemTemplate>
                        <asp:LinkButton ID="lnkView" runat="server" CommandArgument='<%# Eval("EVENT_ID") %>' OnClick="lnk_OnClick">View</asp:LinkButton>    
                    </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </form>
            </div>
        </div>

</asp:Content>

