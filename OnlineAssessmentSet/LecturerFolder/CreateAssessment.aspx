<%@ Page Language="C#" MasterPageFile="~/OnlineAssessment.Master" AutoEventWireup="true" CodeBehind="CreateAssessment.aspx.cs" Inherits="OnlineAssessmentSet.LecturerFolder.CreateAssessment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Create Assessment! :)</h1>
    <div>

        <asp:FormView ID="fvCreateAssessment" runat="server"
            InsertMethod="fvCreateAssessment_InsertItem"
            DefaultMode="Insert"
            ItemType="OnlineAssessmentSet.AssessmentSet"
            DataKeyNames="assessId"
            OnItemCommand="fvCreateAssessment_ItemCommand">
            <InsertItemTemplate>
                <%-- name --%>
                <asp:Label ID="name" runat="server" Text="Assessment Name"></asp:Label>
                <asp:TextBox ID="txtAssessName" runat="server" Text='<%# Bind("assessName") %>'></asp:TextBox>
                <br />
                <%-- type --%>
                <asp:Label ID="type" runat="server" Text="Assessment Type" title="MCQ or Written Test? :)"></asp:Label>
                <asp:RadioButtonList runat="server" ID="MyRbl" SelectedValue='<%# Bind("assessType") %>'
                    CssClass="NormalTextBox" RepeatDirection="Horizontal">
                    <asp:ListItem Value="MCQ" Text="MCQ" Selected />
                    <asp:ListItem Value="Written Test" Text="Written Test" />
                </asp:RadioButtonList>
                <br />
                <%-- status --%>
                <asp:Label ID="status" runat="server" Text="Access Status" title="Public for all students or Private for selected students? :\"></asp:Label>
                <asp:RadioButtonList runat="server" ID="RadioButtonList1" SelectedValue='<%# Bind("accessStatus") %>'
                    CssClass="NormalTextBox" RepeatDirection="Horizontal">
                    <asp:ListItem Value="Public" Text="Public" Selected />
                    <asp:ListItem Value="Private" Text="Private" />
                </asp:RadioButtonList>
                <br />
                <%-- time --%>
                <asp:Label ID="time" runat="server" Text="Time Limit"></asp:Label>
                <asp:TextBox ID="txtTimeLimit" runat="server" Text='<%# Bind("timeLimit") %>'></asp:TextBox>
                <br />
                <%-- attempt --%>
                <asp:Label ID="attempt" runat="server" Text="Allow Attempt"></asp:Label>
                <asp:TextBox ID="allowAttempt" runat="server" Text='<%# Bind("allowAttempt") %>'></asp:TextBox>
                <br />
                <%-- date --%>
                <asp:Label ID="date" runat="server" Text="Date Created"></asp:Label>
                <asp:TextBox ID="dateCreated" runat="server" Text='<%# Bind("dateCreated") %>'></asp:TextBox>
                <br />
                <%-- Create & Cancel submit --%>
                <asp:Button ID="create" runat="server" Text="Create" CommandName="Insert" />
                <asp:Button ID="cancel" runat="server" Text="Cancel" CommandName="Cancel" />
            </InsertItemTemplate>
        </asp:FormView>

    </div>

    <div>
    </div>
</asp:Content>
<%--<asp:Content ID="Content2" runat="server" contentplaceholderid="head">

</asp:Content>--%>