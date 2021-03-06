﻿<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ControlAddThongTinHocBong.ascx.cs"
    Inherits="project.web.Page._10042014_HDHTDoanhNghiep.FolderThongTinHocBong.ControlAddThongTinHocBong" %>
<%@ Register Src="~/Page/FolderUploadFile/UploadFileDropxoneControl.ascx" TagName="UploadFileDropxoneControl"
    TagPrefix="uc1" %>
<%@ Register Src="~/Page/FolderUploadFile/UploadFileAttachDropxoneControl.ascx" TagName="UploadFileAttachDropxoneControl"
    TagPrefix="uc2" %>
<div class="box-action">
    <span class="pull-left"><span class="lbl-valid p-r-5">(*)</span><span class="text-italic">Thông
        tin bắt buộc phải nhập</span> </span>
    <div class="pull-right">
        <asp:Literal ID="LiteralThongTinHopTacGuid" runat="server" Visible="false"></asp:Literal>
        <asp:HiddenField ID="HiddenFieldDoanhNghiepGuid" runat="server" />
        <asp:LinkButton ID="ButtonSave" runat="server" ToolTip="Lưu trữ" CssClass="btn btn-add"
            OnClientClick="return validation_luuthongtinhocbongthongtinchung()"><i class="fa fa-floppy-o"></i>&nbsp;Lưu trữ</asp:LinkButton>&nbsp;hoặc&nbsp;
        <asp:LinkButton ID="ButtonExit" runat="server" ToolTip="Thoát" class="btn btn-link btn-cancel btn-sm">
            Hủy thao tác</asp:LinkButton>
    </div>
</div>
<div class="wrapper wrapper-content animated fadeInRight">
    <div id="tab-1" class="tab-pane active">
        <div class="row box-title">
            <h4 class="m-l">
                Thông tin học bổng</h4>
        </div>
        <div class="form-horizontal">
            <div class="form-group">
                <label class="col-sm-2 control-label">
                    Đối tượng
                </label>
                <div class="col-sm-4">
                    <asp:DropDownList runat="server" ID="DropDownListDoiTuong" CssClass="form-control w-full">
                    </asp:DropDownList>
                </div>
            </div>
        </div>
        <div class="form-horizontal">
            <div class="form-group">
                <label class="col-sm-2 control-label">
                    Số lượng<span class="lbl-valid">(*)</span>
                </label>
                <div class="col-sm-4">
                    <asp:TextBox runat="server" ID="TextBoxSoLuong" CssClass="form-control w-full" />
                </div>
                <label class="col-sm-2 control-label">
                    Tổng trị giá<span class="lbl-valid">(*)</span>
                </label>
                <div class="col-sm-4">
                    <asp:TextBox runat="server" ID="TextBoxTriGia" CssClass="form-control w-full" />
                    <ajaxToolkit:FilteredTextBoxExtender ID="FilteredTextBoxExtendera" runat="server"
                        TargetControlID="TextBoxTriGia" FilterMode="ValidChars" FilterType="Numbers">
                    </ajaxToolkit:FilteredTextBoxExtender>
                </div>
            </div>
        </div>
        <div class="form-horizontal">
            <div class="form-group">
                <label class="col-sm-2 control-label">
                    Từ ngày
                </label>
                <div class="col-sm-4">
                    <div class="" id="data_tungay_thongtinhocbong">
                        <div class="input-group date">
                            <span class="input-group-addon"><i class="fa fa-calendar"></i></span>
                            <asp:TextBox runat="server" ID="TextBoxTuNgay" CssClass="form-control" />
                        </div>
                    </div>
                </div>
                <label class="col-sm-2 control-label">
                    Đến ngày
                </label>
                <div class="col-sm-4">
                    <div class="" id="data_denngay_thongtinhocbong">
                        <div class="input-group date">
                            <span class="input-group-addon"><i class="fa fa-calendar"></i></span>
                            <asp:TextBox runat="server" ID="TextBoxDenNgay" CssClass="form-control" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="form-horizontal">
            <div class="form-group">
                <label class="col-sm-2 control-label">
                    Điều kiện
                </label>
                <div class="col-sm-10">
                    <div id="summernote_hocbong_dieukien_baongoai">
                        <div id="summernote_hocbong_dieukien" runat="server" clientidmode="Static">
                        </div>
                    </div>
                    <asp:HiddenField ID="summernote_hocbong_dieukien_dulieu" runat="server" ClientIDMode="Static" />
                </div>
            </div>
        </div>
    </div>
    <div id="divFile" runat="server">
        <div class="row box-title">
            <h4 class="m-l">
                <a data-toggle="collapse" href="#collapseHocBongOne" style="text-decoration: none;
                    color: #676a6c;">File minh chứng<span class="pull-right"><i class="fa fa-chevron-down"></i></span></a>
            </h4>
        </div>
        <div id="collapseHocBongOne" class="panel-collapse collapse in">
            <div class="row">
                <div class="col-sm-6">
                    <div class="form-horizontal">
                        <div class="form-group">
                            <div class="col-sm-12">
                                <uc2:UploadFileAttachDropxoneControl ID="UploadFileAttachDropxoneControl1" LoaiHinhAnh="5"
                                    runat="server" />
                            </div>
                        </div>
                    </div>
                    <div class="form-horizontal">
                        <div class="form-group">
                            <label class="col-sm-2 control-label">
                                Tiêu đề<span class="lbl-valid">(*)</span>
                            </label>
                            <div class="col-sm-10">
                                <asp:TextBox runat="server" ID="TextBoxTieuDeVanBan" CssClass="form-control w-full" />
                            </div>
                        </div>
                    </div>
                    <div class="form-horizontal">
                        <div class="form-group">
                            <label class="col-sm-2 control-label">
                                Số VB
                            </label>
                            <div class="col-sm-4">
                                <asp:TextBox runat="server" ID="TextBoxSoVanBan" CssClass="form-control w-full" />
                            </div>
                            <label class="col-sm-2 control-label">
                                Người ký
                            </label>
                            <div class="col-sm-4">
                                <asp:TextBox runat="server" ID="TextBoxNguoiKy" CssClass="form-control w-full" />
                            </div>
                        </div>
                    </div>
                    <div class="form-horizontal">
                        <div class="form-group">
                            <label class="col-sm-2 control-label">
                                Trích dẫn
                            </label>
                            <div class="col-sm-10">
                                <asp:TextBox runat="server" ID="TextBoxTrichDan" CssClass="form-control w-full" Style="height: 85px"
                                    TextMode="MultiLine" />
                            </div>
                        </div>
                    </div>
                    <div class="form-horizontal">
                        <div class="form-group">
                            <label class="col-sm-2 control-label">
                                Ngày ký
                            </label>
                            <div class="col-sm-4">
                                <div class="" id="data_ngayky_thongtinhocbong">
                                    <div class="input-group date">
                                        <span class="input-group-addon"><i class="fa fa-calendar"></i></span>
                                        <asp:TextBox runat="server" ID="TextBoxNgayKy" CssClass="form-control w-full" />
                                    </div>
                                </div>
                            </div>
                            <label class="col-sm-2 control-label">
                                Thời hạn</label>
                            <div class="col-sm-4">
                                <asp:TextBox runat="server" ID="TextBoxThoiHan" CssClass="form-control w-full" />
                            </div>
                        </div>
                    </div>
                    <div class="form-horizontal">
                        <div class="form-group">
                            <div class="col-sm-12">
                                <div class="pull-right">
                                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                        <ContentTemplate>
                                            <asp:Button runat="server" ID="ButtonMoKhungChon" OnClientClick="return validation_tentieudefielminhchunghocbong()"
                                                CssClass="btn btn-primary btn-sm" Text="Thêm file" />
                                        </ContentTemplate>
                                        <Triggers>
                                            <asp:PostBackTrigger ControlID="ButtonMoKhungChon" />
                                        </Triggers>
                                    </asp:UpdatePanel>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6">
                    <asp:UpdatePanel ID="UpdatePanelListFile" runat="server" UpdateMode="Conditional">
                        <ContentTemplate>
                            <asp:Repeater ID="RepeaterListFile" runat="server">
                                <ItemTemplate>
                                    <div class="file-box">
                                        <div class="file">
                                            <%--<a href="<%# ResolveUrl("~") + "" +  Eval("TableName") +  Eval("ServerFileName")%>">--%>
                                            <a href="<%# ResolveUrl("~") + "Download.ashx?item=" +  Eval("FileSystemGuid")%>"><span
                                                class="corner"></span>
                                                <div class="icon">
                                                    <%# Eval("FileType").ToString() == "jpg" || Eval("FileType").ToString() == "png" ? "<img href='~" + Eval("TableName").ToString() + Eval("ServerFileName").ToString() + "'/>" : "<i class='fa fa-file'></i>"%>
                                                </div>
                                                <div class="file-name">
                                                    <%# Eval("ClientFileName")%>
                                                    <br />
                                                    <small>
                                                        <asp:LinkButton ID="LinkButtonDelete" runat="server" CommandName="DEL" CommandArgument='<%# Eval("FileSystemGuid")%>'
                                                            Text='Remove File'></asp:LinkButton>
                                                    </small>
                                                </div>
                                            </a>
                                        </div>
                                    </div>
                                </ItemTemplate>
                            </asp:Repeater>
                        </ContentTemplate>
                        <Triggers>
                            <asp:AsyncPostBackTrigger ControlID="RepeaterListFile" EventName="ItemCommand" />
                        </Triggers>
                    </asp:UpdatePanel>
                </div>
            </div>
        </div>
        <div class="row box-title">
            <h4 class="m-l">
                <a data-toggle="collapse" href="#collapseOne1" style="text-decoration: none; color: #676a6c;">
                    Hình ảnh hoạt động<span class="pull-right"><i class="fa fa-chevron-down"></i></span></a></h4>
        </div>
        <div id="collapseOne1" class="panel-collapse collapse">
            <div class="form-horizontal">
                <div class="form-group">
                    <div class="col-sm-12">
                        <asp:UpdatePanel ID="UpdatePanelFileHinhAnhHocBong" runat="server" UpdateMode="Conditional">
                            <ContentTemplate>
                                <uc1:UploadFileDropxoneControl ID="UploadFileDropxoneControl1" runat="server" LoaiHinhAnh="4" />
                            </ContentTemplate>
                            <Triggers>
                            </Triggers>
                        </asp:UpdatePanel>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script language="Javascript">
    var dtCh = "/";
    var minYear = 1900;
    var maxYear = 2100;
    function isInteger(s) {
        var i;
        for (i = 0; i < s.length; i++) {
            // Check that current character is number.
            var c = s.charAt(i);
            if (((c < "0") || (c > "9"))) return false;
        }
        // All characters are numbers.
        return true;
    }
    function stripCharsInBag(s, bag) {
        var i;
        var returnString = "";
        // Search through string's characters one by one.
        // If character is not in bag, append to returnString.
        for (i = 0; i < s.length; i++) {
            var c = s.charAt(i);
            if (bag.indexOf(c) == -1) returnString += c;
        }
        return returnString;
    }
    function daysInFebruary(year) {
        // February has 29 days in any year evenly divisible by four,
        // EXCEPT for centurial years which are not also divisible by 400.
        return (((year % 4 == 0) && ((!(year % 100 == 0)) || (year % 400 == 0))) ? 29 : 28);
    }
    function DaysArray(n) {
        for (var i = 1; i <= n; i++) {
            this[i] = 31
            if (i == 4 || i == 6 || i == 9 || i == 11) { this[i] = 30 }
            if (i == 2) { this[i] = 29 }
        }
        return this
    }
    function isDate(dtStr) {
        var daysInMonth = DaysArray(12)
        var pos1 = dtStr.indexOf(dtCh)
        var pos2 = dtStr.indexOf(dtCh, pos1 + 1)
        var strDay = dtStr.substring(0, pos1)
        var strMonth = dtStr.substring(pos1 + 1, pos2)
        var strYear = dtStr.substring(pos2 + 1)
        strYr = strYear
        if (strDay.charAt(0) == "0" && strDay.length > 1) strDay = strDay.substring(1)
        if (strMonth.charAt(0) == "0" && strMonth.length > 1) strMonth = strMonth.substring(1)
        for (var i = 1; i <= 3; i++) {
            if (strYr.charAt(0) == "0" && strYr.length > 1) strYr = strYr.substring(1)
        }
        month = parseInt(strMonth)
        day = parseInt(strDay)
        year = parseInt(strYr)
        if (pos1 == -1 || pos2 == -1) {
            // alert("The date format should be : dd/mm/yyyy")
            return false
        }
        if (strMonth.length < 1 || month < 1 || month > 12) {
            //  alert("Please enter a valid month")
            return false
        }
        if (strDay.length < 1 || day < 1 || day > 31 || (month == 2 && day > daysInFebruary(year)) || day > daysInMonth[month]) {
            // alert("Please enter a valid day")
            return false
        }
        if (strYear.length != 4 || year == 0 || year < minYear || year > maxYear) {
            // alert("Please enter a valid 4 digit year between " + minYear + " and " + maxYear)
            return false
        }
        if (dtStr.indexOf(dtCh, pos2 + 1) != -1 || isInteger(stripCharsInBag(dtStr, dtCh)) == false) {
            // alert("Please enter a valid date")
            return false
        }
        return true
    }
</script>
<script type="text/javascript">
    function parseDate(input) {
        var parts = input.split('/');
        return new Date(parts[2], parts[1] - 1, parts[0]);
    }

    function isNumber(n) {
        return !isNaN(parseFloat(n)) && isFinite(n);
    }
    function validation_tentieudefielminhchunghocbong() {
        if (!String.prototype.trim) {
            String.prototype.trim = function () {
                return this.replace(/^\s+|\s+$/g, '');
            };
        }

        var TextBoxTieuDeVanBan = document.getElementById('<%= TextBoxTieuDeVanBan.ClientID %>');
        var TextBoxNgayKy = document.getElementById('<%= TextBoxNgayKy.ClientID %>');
        var TextBoxThoiHan = document.getElementById('<%= TextBoxThoiHan.ClientID %>');
        var meseges = "";
        var dateRegex = /^\d{1,2}\/\d{1,2}\/\d{4}$/;
        var fag = true;
        if (!isDate(TextBoxNgayKy.value) && TextBoxNgayKy.value.trim().length != 0) {
            meseges += 'Ngày ký không đúng định dạng !\n';
            TextBoxNgayKy.style.background = "#FF0";
            fag = false;
        }
        if (TextBoxTieuDeVanBan.value.trim().length == 0) {
            meseges += 'Tên tiêu đề chưa có !\n';
            TextBoxTieuDeVanBan.style.background = "#FF0";
            fag = false;
        }

        if (meseges != "")
            alert(meseges);
        return fag;
    }

    function validateIsNumber(control) {
        var result = true;
        var testValue = control.value;
        testValue = testValue.toString().replace(/[ '.,]/g, "");
        if (testValue == "")
            return false;
        if (isNaN(testValue))
        { result = false; }
        return result;
    }

    function validation_luuthongtinhocbongthongtinchung() {
        if (!String.prototype.trim) {
            String.prototype.trim = function () {
                return this.replace(/^\s+|\s+$/g, '');
            };
        }
        saveHocBongDieuKien();
        var TextBoxTuNgay = document.getElementById('<%= TextBoxTuNgay.ClientID %>');
        var TextBoxDenNgay = document.getElementById('<%= TextBoxDenNgay.ClientID %>');

        var TextBoxTriGia = document.getElementById('<%= TextBoxTriGia.ClientID %>');
        var TextBoxSoLuong = document.getElementById('<%= TextBoxSoLuong.ClientID %>');

        var meseges = "";
        var dateRegex = /^\d{1,2}\/\d{1,2}\/\d{4}$/;
        var fag = true;

        if (TextBoxTriGia.value.trim().length == 0) {

            meseges += 'Chưa có tổng giá trị !\n';
            TextBoxTriGia.style.background = "#FF0";
            fag = false;
        }
        if (TextBoxSoLuong.value.trim().length == 0) {

            meseges += 'Chưa có số lượng !\n';
            TextBoxSoLuong.style.background = "#FF0";
            fag = false;
        }
        if (!isDate(TextBoxTuNgay.value) && TextBoxTuNgay.value.trim().length != 0) {

            meseges += 'Ngày bắt đầu không đúng định dạng !\n';
            TextBoxTuNgay.style.background = "#FF0";
            fag = false;
        }
        if (!isDate(TextBoxDenNgay.value) && TextBoxDenNgay.value.trim().length != 0) {

            meseges += 'Ngày kết thúc không đúng định dạng !\n';
            TextBoxDenNgay.style.background = "#FF0";
            fag = false;
        }
        if (meseges != "")
            alert(meseges);
        return fag;
    }


</script>
<script>
    function saveHocBongDieuKien() {
        document.getElementById('summernote_hocbong_dieukien_dulieu').value = $('#summernote_hocbong_dieukien_baongoai .note-editor .note-editable').html();
    }
</script>
