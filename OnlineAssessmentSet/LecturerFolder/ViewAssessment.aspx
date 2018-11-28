<%@ Page Language="C#" MasterPageFile="~/OnlineAssessment.Master" AutoEventWireup="true" CodeBehind="ViewAssessment.aspx.cs" Inherits="OnlineAssessmentSet.LecturerFolder.ViewAssessment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
            <h1>View Assessment! :)</h1>
    <div>
        <asp:GridView ID="gvViewAssessment" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="assessId" DataSourceID="sqlViewAssessment">
            <Columns>
                
                <asp:BoundField DataField="assessId" HeaderText="assessId" InsertVisible="False" ReadOnly="True" SortExpression="assessId" />
                <asp:BoundField DataField="assessName" HeaderText="assessName" SortExpression="assessName" />
                <asp:BoundField DataField="timeLimit" HeaderText="timeLimit" SortExpression="timeLimit" />
                <asp:BoundField DataField="allowAttempt" HeaderText="allowAttempt" SortExpression="allowAttempt" />
                <asp:BoundField DataField="dateCreated" HeaderText="dateCreated" SortExpression="dateCreated" />
                <asp:BoundField DataField="accessStatus" HeaderText="accessStatus" SortExpression="accessStatus" />
                <asp:BoundField DataField="assessType" HeaderText="assessType" SortExpression="assessType" />
                <asp:CommandField HeaderText="Action" ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
            </Columns>
        </asp:GridView>
        
    </div>
    <div>
        <asp:SqlDataSource ID="sqlViewAssessment" runat="server" ConnectionString="<%$ ConnectionStrings:OnlineAssessmentConnectionString %>" DeleteCommand="DELETE FROM [AssessmentSet] WHERE [assessId] = @assessId" InsertCommand="INSERT INTO [AssessmentSet] ([assessName], [timeLimit], [allowAttempt], [dateCreated], [accessStatus], [assessType]) VALUES (@assessName, @timeLimit, @allowAttempt, @dateCreated, @accessStatus, @assessType)" SelectCommand="SELECT * FROM [AssessmentSet]" UpdateCommand="UPDATE [AssessmentSet] SET [assessName] = @assessName, [timeLimit] = @timeLimit, [allowAttempt] = @allowAttempt, [dateCreated] = @dateCreated, [accessStatus] = @accessStatus, [assessType] = @assessType WHERE [assessId] = @assessId">
            <DeleteParameters>
                <asp:Parameter Name="assessId" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="assessName" Type="String" />
                <asp:Parameter DbType="Time" Name="timeLimit" />
                <asp:Parameter Name="allowAttempt" Type="Int32" />
                <asp:Parameter Name="dateCreated" Type="DateTime" />
                <asp:Parameter Name="accessStatus" Type="String" />
                <asp:Parameter Name="assessType" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="assessName" Type="String" />
                <asp:Parameter DbType="Time" Name="timeLimit" />
                <asp:Parameter Name="allowAttempt" Type="Int32" />
                <asp:Parameter Name="dateCreated" Type="DateTime" />
                <asp:Parameter Name="accessStatus" Type="String" />
                <asp:Parameter Name="assessType" Type="String" />
                <asp:Parameter Name="assessId" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
</asp:Content>
