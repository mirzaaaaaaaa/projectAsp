<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="weight_loss.aspx.cs" Inherits="weight_loss.weight_loss" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 204px;
        }

        body {
            background-image: url('https://th.bing.com/th/id/R.5f0f25db7062151c57c1d514213bcc14?rik=Zh7jAHDGmEGZow&riu=http%3a%2f%2fwallpapercave.com%2fwp%2fwp1873140.jpg&ehk=9Knzy9w4URSvrf6bow%2bRLSUOCZd0vdV3swUL2N74sIo%3d&risl=&pid=ImgRaw&r=0');
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <center>
                WEIGHT LOSS
                  </center>
                
            </center>
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="You forgot to enter YOUR NAME" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="You forgot to enter YOUR USER ID" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="You forgot to enter YOUR PREVIOUS  WEIGHT" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="You forgot to enter YOUR  CURRENT WEIGHT" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <br />
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">Name</td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">User ID</td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Previous weight (kg)</td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Current weight (kg)</td>
                    <td>
                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <center>
                        <asp:Button ID="Button1" runat="server" Text="Weight" OnClick="Button1_Click" />
                        </center>
                    </td>
                    <td>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [weight_loss]"></asp:SqlDataSource>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
