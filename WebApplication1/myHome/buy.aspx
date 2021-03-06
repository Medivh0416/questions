﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="buy.aspx.cs" Inherits="WebApplication1.myHome.buy" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link type="text/css" href="../bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <link type="text/css" href="../bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet" />
    <style type="text/css">
        body {
            padding: 0;
            background-image: none;
            background-color: transparent;
        }
        #imgBox > div {
            /*border: 1px solid #ccc;
            border-radius: 4px;*/
            float: left;
            margin: 0 10px;
            width: 150px;
            height: 200px;
            background-color: #fff;
            transition: all 0.2s ease-in-out;
        }

            #imgBox > div:hover {
                box-shadow: 0 0 5px #999;
                -webkit-box-shadow: 0 0 5px #ccc;
                -moz-box-shadow: 0 0 5px #ccc;
            }

            #imgBox > div > div {
                /*margin: 0;*/
            }

        .progress {
            -webkit-border-radius: 0 !important;
            -moz-border-radius: 0 !important;
            border-radius: 0 !important;
            height: 5px;
            margin: 0;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div id="div_main">
            <h1>购买题目</h1>
            <ul class="breadcrumb">
                <li><a href="#">首页</a> <span class="divider">/</span></li>
                <li><a href="#">Library</a> <span class="divider">/</span></li>
                <li class="active">Data</li>
            </ul>
            <div id="subject2" runat="server">
                <div id="imgBox" runat="server" style="position: relative; top: 0px; left: 0px; height: 273px;">
                    <div class="thumbnail">
                        <asp:ImageButton ID="chuWu" runat="server" Height="200" Width="150" ImageUrl="~/images/subject/chuWu.jpg" OnClick="chuWu_Click" />
                        <div class="progress progress-info">
                            <div class="bar" style="width: 20%"></div>
                        </div>
                        <div class="caption">
                            <a href="#">初中物理</a>
                        </div>
                    </div>

                    <div class="thumbnail">
                        <asp:ImageButton ID="gaoWU" runat="server" Height="200" Width="150" ImageUrl="~/images/subject/gaoWu.jpg" OnClick="gaoWU_Click" />
                        <div class="progress progress-info">
                            <div class="bar" style="width: 20%"></div>
                        </div>
                        <div class="caption">
                            <a href="#">高中物理</a>
                        </div>
                    </div>

                    <div class="thumbnail">
                        <asp:ImageButton ID="chuShu" runat="server" Height="200" Width="150" ImageUrl="~/images/subject/chuShu.jpg" OnClick="chuShu_Click" />
                        <div class="progress progress-info">
                            <div class="bar" style="width: 20%"></div>
                        </div>
                        <div class="caption">
                            <a href="#">初中数学</a>
                        </div>
                    </div>
                    <div class="thumbnail">
                        <asp:ImageButton ID="gaoShu" runat="server" Height="200" Width="150" ImageUrl="~/images/subject/gaoShu.jpg" OnClick="gaoShu_Click" />
                        <div class="progress progress-info">
                            <div class="bar" style="width: 20%"></div>
                        </div>
                        <div class="caption">
                            <a href="#">高中数学</a>
                        </div>
                    </div>
                </div>
            </div>
            <div id="section">
                <asp:ListView ID="lv_study" runat="server">
                    <ItemTemplate>
                        <table border="0" cellpadding="0" cellspacing="0">
                            <tr>
                                <td style="width: 80px; height: 80px; text-align: center;" rowspan="3">
                                    <img src='<%# Eval("pic") %>' width="100" height="120" runat="server" id="Img1">
                                    <td style="width: 100px; height: 30px;">&nbsp;&nbsp;<%#Eval("sName")%></td>
                                    <td><asp:LinkButton ID="lbt_buy" CommandArgument='<%#DataBinder.Eval(Container.DataItem,"id") %>' OnCommand="lbt_buy_Click" Style="position: relative" runat="server" onClientClick="return confirm('购买该课程会花费您5学币，确认购买？');">立即购买</asp:LinkButton></td>
                                    
                                    </td>
                            </tr>
                            <tr>
                                <td colspan="4" style="vertical-align: top; text-align: left; height: 100px; width: 400px;">&nbsp;&nbsp;<%# Eval("comment")%></td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:ListView>
            </div>
        </div>
    </form>
    <script type="text/javascript" src="../layer/jquery-1.11.0.min.js"></script>
    <script type="text/javascript" src="../bootstrap/js/bootstrap.js"></script>
    <script type="text/javascript" src="../bootstrap/bootstrap-ie.js"></script>
</body>
</html>
