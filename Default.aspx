<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Home Page</title>
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <div id="header">
        <h1>
            <asp:Label ID="Welcome" runat="server" Text="<%$ Resources:Resource, Welcome %>"></asp:Label>
        </h1>
        <h2>
            By: Ryan Lutter
        </h2>
        
    </div>
    
    <div class="content">
    
    <div class="col-right">

        <!-- This begins the input section of the webpage -->
        
            <h1><asp:Label ID="content_header" runat="server" meta:resourceKey="content_header"></asp:Label></h1>

                <br />

            <asp:Label ID="label_name" runat="server" meta:resourceKey="label_name"></asp:Label>
            &nbsp;<asp:TextBox ID="tb_name" runat="server" Width="200px"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;<asp:RequiredFieldValidator ID="rfv_name" runat="server" ErrorMessage="Enter name!" ControlToValidate="tb_name" CssClass="validator"></asp:RequiredFieldValidator>

                <br />
                <br />

            <asp:Label ID="label_gender" runat="server" meta:resourceKey="label_gender"></asp:Label>
            &nbsp;<asp:RadioButton ID="button_male" runat="server" meta:resourceKey="button_male" GroupName="gender" Checked="True"/>
            &nbsp;<asp:RadioButton ID="button_female" runat="server" meta:resourceKey="button_female" GroupName="gender" />

                &nbsp;<br />
                <br />

            <asp:Label ID="label_graduation" runat="server" meta:resourceKey="label_graduation"></asp:Label>
            <asp:Calendar ID="calendar" runat="server" BackColor="White" BorderColor="Black" Font-Names="Times New Roman" Font-Size="10pt" ForeColor="Black" Height="220px" NextPrevFormat="FullMonth" Width="400px" DayNameFormat="Shortest" TitleFormat="Month">
                <DayHeaderStyle Font-Bold="True" Font-Size="7pt" BackColor="#CCCCCC" ForeColor="#333333" Height="10pt" />
                <DayStyle Width="14%" />
                <NextPrevStyle Font-Size="8pt" ForeColor="White" />
                <OtherMonthDayStyle ForeColor="#999999" />
                <SelectedDayStyle BackColor="gray" ForeColor="White" />
                <SelectorStyle BackColor="#CCCCCC" Font-Bold="True" Font-Names="Verdana" Font-Size="8pt" ForeColor="#333333" Width="1%" />
                <TitleStyle BackColor="Black" Font-Bold="True" Font-Size="13pt" ForeColor="White" Height="14pt" />
                <TodayDayStyle BackColor="lightgray" />
        </asp:Calendar>

                <br />

            <asp:Label ID="label_salary" runat="server" meta:resourceKey="label_salary"></asp:Label>
            <asp:TextBox ID="tb_salary" runat="server" Width="200px"></asp:TextBox>
            &nbsp;&nbsp;<asp:RequiredFieldValidator ID="rfv_salary" runat="server" ErrorMessage="Enter salary!" ControlToValidate="tb_salary" CssClass="validator"></asp:RequiredFieldValidator>
            &nbsp;&nbsp;<asp:CompareValidator ID="rfv_amount" runat="server" ErrorMessage="Enter only numbers!" ControlToValidate="tb_salary" CssClass="validator" Type="Double"></asp:CompareValidator>
                <br />
                <br />

            <asp:Button ID="button_submit" runat="server" Width="100px" meta:resourceKey="button_submit" />



            <!-- This begins the result section of the webpage -->

            <br />

            <asp:Label ID="label_hello" runat="server" meta:resourceKey="label_hello"></asp:Label>
            &nbsp;<asp:Label ID="label_outputname" runat="server"></asp:Label>
            <asp:Label ID="label_usersname" runat="server"></asp:Label>

            <br />
            <br />
            
            <asp:Label ID="label_graduateresponse" runat="server" meta:resourceKey="label_graduateresponse" Text="label_graduateresponse"></asp:Label>
            <asp:Label ID="label_calendarresponse" runat="server"></asp:Label>

            <br />
            <br />

            <asp:Label ID="label_salaryrepsonse" runat="server" meta:resourceKey="label_salaryresponse"></asp:Label>
            <asp:Label ID="label_outputsalary" runat="server"></asp:Label>
            <asp:Label ID="label_salaryresponse2" runat="server" meta:resourceKey="label_salaryresponse2"></asp:Label>

            <br />
            <br />

            <asp:Label ID="label_github" runat="server" meta:resourceKey="label_github"></asp:Label>
            <asp:LinkButton ID="button_github" runat="server" Font-Bold="True">GitHub</asp:LinkButton>

        <br />
        <br />
        <asp:Button ID="button_restart" runat="server" meta:resourceKey="button_restart"/>

        </div>
    
    <div class="sidebar-left">

        <asp:Label ID="label_language" runat="server" meta:resourceKey="label_language" ></asp:Label>
            
            <br />

            <asp:DropDownList ID="dd_languages" runat="server" AutoPostback="true" Width="100px">
                <asp:ListItem Value="ar-SA">Arabic</asp:ListItem>
                <asp:ListItem Value="zh">Chinese</asp:ListItem>
                <asp:ListItem Value="en-US" Selected="True">English</asp:ListItem>
                <asp:ListItem Value="es">Spanish</asp:ListItem>
            </asp:DropDownList>
    </div>

    <br class="clear" />  
        <br />
    </div>

    <div id="footer">
        <p>Copyright © MSCI:3300</p>
        <iframe src="http://ghbtns.com/github-btn.html?user=ryanlutter&type=follow" allowtransparency="true" frameborder="0" scrolling="0" width="132" height="20"></iframe>
    </div>


    </div>
    </form>
</body>
</html>
