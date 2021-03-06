﻿<%--   
Author:					Nam Dep Trai
Created:				2015-5-22
Last Modified:			2015-5-22
--%>
<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ListHinhThucDaoTaoControlMienGiamHocPhi.ascx.cs"
    Inherits="project.web.Controls.ListHinhThucDaoTaoControlMienGiamHocPhi" %>
<style type="text/css">
    .current
    {
        font-weight: bold;
    }
</style>
<asp:UpdateProgress ID="UpdateProgress1" runat="Server" AssociatedUpdatePanelID="UpdatePanelShowHinhThucDaoTao_on">
    <ProgressTemplate>
        <span style="position: fixed; z-index: 9999; top: 48%; left: 48%;">
            <img src="<%=ResolveUrl("~/") %>Resources/img/waiting.gif" alt="Vui lòng đợi..."
                height="80px" width="80px" /></span>
    </ProgressTemplate>
</asp:UpdateProgress>
<asp:UpdatePanel ID="UpdatePanelShowHinhThucDaoTao_on" runat="server" UpdateMode="Conditional"
    ChildrenAsTriggers="false">
    <ContentTemplate>
        <div class="row">
            <div class="col-sm-12 p-b-5 p-w-5">
                <div class="pull-right">
                    <asp:LinkButton ID="ButtonAdd" runat="server" ToolTip="Thêm mới" CssClass="btn btn-add"><i class="fa fa-file-o"></i>&nbsp;
 Thêm mới </asp:LinkButton>
                    <asp:LinkButton ID="ButtonDelete" runat="server" OnClientClick="return confirm('Bạn muốn xóa?')"
                        ToolTip="Xóa" CssClass="btn btn-delete"><i class=" fa fa-trash-o"></i>&nbsp;Xóa</asp:LinkButton>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-12 p-b-5 p-w-5">
                <div class="ibox float-e-margins">
                    <div class="ibox-content">
                        <div class="table-responsive">
                            <table class="table table-stripped">
                                <thead>
                                    <tr class="">
                                        <th class="text-center w-50">
                                            <input id="CheckBoxAll" onclick="javascript:SelectAllCheckboxes(this,'RepeaterHinhThucDaoTao');"
                                                runat="server" type="checkbox" />
                                        </th>
                                        <th class="text-center w-50">
                                            #
                                        </th>
                                        <th>
                                            ID
                                        </th>
                                        <th>
                                            Hình thức
                                        </th>
                                    </tr>
                                </thead>
                                <asp:Repeater ID="RepeaterHinhThucDaoTao" runat="server">
                                    <ItemTemplate>
                                        <tr class="showhim">
                                            <td class="text-center ">
                                                <asp:CheckBox ID="CheckBoxSelect" runat="server" />
                                                <asp:Literal ID="LiteralHinhThucDTGuid" runat="server" Text='<%# Eval("HinhThucDTGuid")%>'
                                                    Visible="false"></asp:Literal>
                                            </td>
                                            <td class="text-center">
                                                <div>
                                                    <div class="hideme">
                                                        <%# Container.ItemIndex + 1 + (PageNumber - 1) * PageSize%>
                                                    </div>
                                                    <div class="showme">
                                                        <asp:LinkButton ID="LinkButtonItem" CssClass="btn btn-primary btn-circle btn-outline" ToolTip="Chỉnh sửa"
                                                            runat="server" CommandName="EDIT" CommandArgument='<%# Eval("HinhThucDTGuid")%>'><i class="fa fa-pencil"></i></asp:LinkButton>
                                                    </div>
                                                </div>
                                            </td>
                                            <td class="text-left">
                                                <%# Eval("HinhThucDTID")%>
                                            </td>
                                            <td class="text-left">
                                                <%# Eval("HinhThucDTName")%>
                                            </td>
                                        </tr>
                                    </ItemTemplate>
                                </asp:Repeater>
                                <tfoot>
                                    <tr>
                                        <td colspan="4">
                                            <div class="pull-left" id="block_page">
                                                <MyC:mojoCutePager ID="mojoCutePager1" runat="server" CssClass="" />
                                            </div>
                                            <div class=" pull-right">
                                                <asp:DropDownList ID="DropDownListPageNumber" runat="server" AutoPostBack="true"
                                                    CssClass="form-control">
                                                </asp:DropDownList>
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
        <asp:AsyncPostBackTrigger ControlID="ButtonAdd" EventName="Click" />
        <asp:AsyncPostBackTrigger ControlID="ButtonDelete" EventName="Click" />
        <asp:AsyncPostBackTrigger ControlID="DropDownListPageNumber" EventName="SelectedIndexChanged" />
        <asp:AsyncPostBackTrigger ControlID="mojoCutePager1" EventName="Command" />
    </Triggers>
</asp:UpdatePanel>
