﻿<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ListDoanhNghiepAdvanceControl.ascx.cs"
    Inherits="project.web.Page.FolderBaoCaoThongKe.ListDoanhNghiepAdvanceControl" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:UpdatePanel ID="UpdatePanelShowDoanhNghiep" runat="server" UpdateMode="Conditional"
    ChildrenAsTriggers="false">
    <ContentTemplate>
        <asp:Panel ID="PanelFilter" runat="server" DefaultButton="ButtonSearch">
            <div class="row">
                <div class="col-sm-2 m-b-5 p-w-5">
                    <asp:DropDownList ID="DropDownListQuyMoDN" runat="server" CssClass="form-control w-full"
                        AutoPostBack="true">
                    </asp:DropDownList>
                </div>
                <div class="col-sm-2 m-b-5 p-w-5">
                    <asp:DropDownList ID="DropDownListLoaiHinhDN" runat="server" CssClass="form-control w-full"
                        AutoPostBack="true">
                    </asp:DropDownList>
                </div>
                <div class="col-sm-2 m-b-5 p-w-5">
                    <asp:DropDownList ID="DropDownListNganhNgheKD" runat="server" CssClass="form-control w-full"
                        AutoPostBack="true">
                    </asp:DropDownList>
                </div>
                <div class="col-sm-2 m-b-5 p-w-5">
                    <asp:DropDownList ID="DropDownListLinhVucHD" runat="server" CssClass="form-control w-full"
                        AutoPostBack="true">
                    </asp:DropDownList>
                </div>
                <div class="col-sm-2 m-b-5 p-w-5">
                    <div class="input-group">
                        <asp:TextBox ID="TextBoxValueSearch" runat="server" CssClass="form-control w-full showtooltip"
                            placeholder="Thông tin tìm kiếm ..."></asp:TextBox>
                        <ul id="elementToHide">
                            <li><b><u>Quy định khóa</u></b></li>
                            <li>- <strong class="text-danger">EMAIL</strong>: địa chỉ email</li>
                            <li>- <strong class="text-danger">PHONE</strong>: số điện thoại</li>
                            <li>- <strong class="text-danger">ADD</strong>: địa chỉ</li>
                            <li><b><u>Sử dụng</u></b></li>
                            <li class="text-danger">[từ khóa]:[cụm từ cần tìm]</li>
                            <li><i><u>Ví dụ:</u> PHONE:093</i></li>
                            <li class="text-success">* Mặc định không sử dụng từ khóa thì tìm kiếm theo tên</li>
                        </ul>
                        <span class="input-group-btn">
                            <asp:LinkButton ID="ButtonSearch" runat="server" Text="" CssClass="btn btn-primary"><i class="fa fa-search"></i>
                            </asp:LinkButton>
                        </span>
                    </div>
                </div>
                <div class="col-sm-2 m-b-5 p-w-5">
                    <p class="pull-right">
                        <%--<asp:LinkButton ID="LinkButtonPrint" runat="server" Text="" CssClass="btn btn-info"><i class="fa fa-print"></i>
                        </asp:LinkButton>--%>
                        <%--<asp:LinkButton ID="LinkButtonExcel" runat="server" Text="" CssClass="btn btn-primary btn-outline"><i class="fa fa-file-excel-o"></i>
                        </asp:LinkButton>--%>
                        <asp:LinkButton ID="LinkButtonExcel" runat="server" class="btn-excel"><i class="fa fa-file-excel-o"></i>&nbsp;Xuất excel
                        </asp:LinkButton>
                    </p>
                </div>
            </div>
        </asp:Panel>
        <div class="row">
            <div class="col-sm-12">
                <div class="ibox float-e-margins">
                    <div class="ibox-content">
                        <div class="table-responsive">
                            <table class="table table-striped">
                                <thead>
                                    <tr>
                                        <th class="text-center">
                                            STT
                                        </th>
                                        <th>
                                            Doanh nghiệp
                                        </th>
                                        <th class="text-center">
                                            Ngày thành lập
                                        </th>
                                        <th>
                                            Website
                                        </th>
                                        <th class="hide-sm hide-md">
                                            Email
                                        </th>
                                        <th class="hide-sm">
                                            Điện thoại
                                        </th>
                                        <th class="hide-sm hide-md">
                                            Địa chỉ
                                        </th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <asp:Repeater ID="RepeaterDoanhNghiep" runat="server">
                                        <ItemTemplate>
                                            <tr>
                                                <td class="text-center">
                                                    <%# Container.ItemIndex + 1 + (PageNumber - 1) * PageSize%>
                                                </td>
                                                <td>
                                                    <a href="<%=ResolveUrl("~/Page/10042014_HDHTDoanhNghiep/FolderPageThongTinDoanhNghiep/") %>PageThongTinChiTietDoanhNghiep.aspx?peihgnhnaoddiug=<%# Eval("DoanhNghiepGuid")%>">
                                                        <%# Eval("DoanhNghiepNameVN") == "" ? Eval("DoanhNghiepNameEN") : Eval("DoanhNghiepNameVN")%>
                                                    </a>
                                                </td>
                                                <td class="text-center">
                                                    <%# Eval("NgayThanhLap") == null ? "": Eval("NgayThanhLap", "{0:dd/MM/yyyy}")%>
                                                </td>
                                                <td>
                                                    <%# Eval("Website")%>
                                                </td>
                                                <td class="hide-sm hide-md">
                                                    <%# Eval("Email")%>
                                                </td>
                                                <td class="hide-sm">
                                                    <%# Eval("DienThoai")%>
                                                </td>
                                                <td class="hide-sm hide-md">
                                                    <%# Eval("DiaChi")%>
                                                </td>
                                            </tr>
                                        </ItemTemplate>
                                    </asp:Repeater>
                                </tbody>
                                <tfoot>
                                    <tr>
                                        <td colspan="7">
                                            <div class="pull-right">
                                                <asp:DropDownList ID="DropDownListPageNumber" runat="server" AutoPostBack="true"
                                                    CssClass="form-control input-sm">
                                                </asp:DropDownList>
                                            </div>
                                            <div class="pull-left">
                                                <MyC:mojoCutePager ID="mojoCutePager1" runat="server" />
                                            </div>
                                        </td>
                                    </tr>
                                </tfoot>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </ContentTemplate>
    <Triggers>
        <asp:AsyncPostBackTrigger ControlID="ButtonSearch" EventName="Click" />
        <asp:PostBackTrigger ControlID="LinkButtonExcel" />
        <asp:AsyncPostBackTrigger ControlID="DropDownListPageNumber" EventName="SelectedIndexChanged" />
        <asp:AsyncPostBackTrigger ControlID="mojoCutePager1" EventName="Command" />
    </Triggers>
</asp:UpdatePanel>
