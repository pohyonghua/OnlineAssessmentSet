<%@ Page Language="C#"  MasterPageFile="~/OnlineAssessment.Master" AutoEventWireup="true" CodeBehind="CreateAssessment.aspx.cs" Inherits="OnlineAssessmentSet.LecturerFolder.CreateAssessment" %>

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
                        <%-- Form View --%>
                        <asp:Label ID="name" runat="server" Text="Assessment Name"></asp:Label>
                        <asp:TextBox ID="txtAssessName" runat="server" Text='<%# Bind("assessName") %>'></asp:TextBox>
                        <br />
                        <asp:Label ID="type" runat="server" Text="Assessment Type"></asp:Label>
                        <asp:TextBox ID="txtAssessType" runat="server" Text='<%# Bind("assessType") %>'></asp:TextBox>
                        <br />  
                        <asp:Label ID="status" runat="server" Text="Access Status"></asp:Label>
                        <asp:TextBox ID="txtAssessStatus" runat="server" Text='<%# Bind("accessStatus") %>'></asp:TextBox>
                        <br /> 
                        <asp:Label ID="time" runat="server" Text="Time Limit"></asp:Label>
                        <asp:TextBox ID="txtTimeLimit" runat="server" Text='<%# Bind("timeLimit") %>'></asp:TextBox>
                        <br /> 
                        <asp:Label ID="attempt" runat="server" Text="Allow Attempt"></asp:Label>
                        <asp:TextBox ID="allowAttempt" runat="server" Text='<%# Bind("allowAttempt") %>'></asp:TextBox>
                        <br />
                        <asp:Label ID="date" runat="server" Text="Date Created"></asp:Label>
                        <asp:TextBox ID="dateCreated" runat="server" Text='<%# Bind("dateCreated") %>'></asp:TextBox>
                        <br />
                        <%-- Create & Cancel submit --%>
                        <asp:Button ID="Button1" runat="server" Text="Create" CommandName="Insert" />
                        <asp:Button ID="Button2" runat="server" Text="Cancel" CommandName="Cancel" />
                    </InsertItemTemplate>
                </asp:FormView>
                
            </div>
</asp:Content>
<%--<asp:Content ID="Content2" runat="server" contentplaceholderid="head">

</asp:Content>--%>