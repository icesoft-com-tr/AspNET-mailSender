<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="mailSender.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ASP.NET Mail Sender</title>
    <!-- IceSoft Yazılım 
        Author : Rojhat MARHAN -->
    <link href="/assets/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form_mailSent" runat="server">

        <div class="container mt-5">
            <div class="row">
                <div class="col-lg-4 col-md-4 col-sm-12">
                    <table>
                        <tr>
                            <td colspan="2">
                                <br />
                                Gmail Hesap Bilgileri<br />
                                <hr />
                            </td>
                        </tr>
                        <tr>
                            <td>Email: </td>
                            <td>
                                <asp:TextBox ID="text_Mail" CssClass="form-control" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp; </td>
                        </tr>
                        <tr>
                            <td>Şifre: </td>
                            <td>
                                <asp:TextBox ID="text_Sifre" CssClass="form-control" runat="server" TextMode="Password"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp; </td>
                        </tr>
                        <tr>
                            <td></td>
                            <td>
                                <asp:Button ID="btn_Gonder" CssClass="btn btn-primary" OnClick="btn_Gonder_Click" Text=" Maili Gönder " runat="server" />
                            </td>
                        </tr>
                    </table>
                </div>
                <div class="col-lg-8 col-md-8 col-sm-12 mt-5">
                    <table class="mt-4" style="margin-top: 30px!important;">
                        <tr>
                            <td>Gönderilecek Email: </td>
                            <td>
                                <asp:TextBox ID="text_Kime" CssClass="form-control" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td >&nbsp; </td>
                        </tr>
                        <tr>
                            <td >Konu: </td>
                            <td>
                                <asp:TextBox ID="text_Konu" CssClass="form-control" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td >&nbsp; </td>
                        </tr>
                        <tr>
                            <td>Mesaj: </td>
                            <td>
                                <asp:TextBox ID="text_Mesaj" CssClass="form-control" runat="server" TextMode="MultiLine" Height="105px" Width="563px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>Attachment: </td>
                            <td>
                                <asp:FileUpload ID="Attach" CssClass="btn btn-outline-primary" runat="server" />
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp; </td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>

    </form>
    <script src="/assets/js/bootstrap.min.js"></script>
</body>
</html>
