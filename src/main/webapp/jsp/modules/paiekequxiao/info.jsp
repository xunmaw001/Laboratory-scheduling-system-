<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>

<head>
    <%@ include file="../../static/head.jsp" %>
    <link href="http://www.bootcss.com/p/bootstrap-datetimepicker/bootstrap-datetimepicker/css/datetimepicker.css"
          rel="stylesheet">
    <script type="text/javascript" charset="utf-8">
        window.UEDITOR_HOME_URL = "${pageContext.request.contextPath}/resources/ueditor/"; //UEDITOR_HOME_URL、config、all这三个顺序不能改变
    </script>
    <script type="text/javascript" charset="utf-8"
            src="${pageContext.request.contextPath}/resources/ueditor/ueditor.config.js"></script>
    <script type="text/javascript" charset="utf-8"
            src="${pageContext.request.contextPath}/resources/ueditor/ueditor.all.min.js"></script>
    <script type="text/javascript" charset="utf-8"
            src="${pageContext.request.contextPath}/resources/ueditor/lang/zh-cn/zh-cn.js"></script>
</head>
<style>

</style>
<body>
<!-- Pre Loader -->
<div class="loading">
    <div class="spinner">
        <div class="double-bounce1"></div>
        <div class="double-bounce2"></div>
    </div>
</div>
<!--/Pre Loader -->
<div class="wrapper">
    <!-- Page Content -->
    <div id="content">
        <!-- Top Navigation -->
        <%@ include file="../../static/topNav.jsp" %>
        <!-- Menu -->
        <div class="container menu-nav">
            <nav class="navbar navbar-expand-lg lochana-bg text-white">
                <button class="navbar-toggler" type="button" data-toggle="collapse"
                        data-target="#navbarSupportedContent"
                        aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="ti-menu text-white"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav mr-auto" id="navUl">

                    </ul>
                </div>
            </nav>
        </div>
        <!-- /Menu -->
        <!-- Breadcrumb -->
        <!-- Page Title -->
        <div class="container mt-0">
            <div class="row breadcrumb-bar">
                <div class="col-md-6">
                    <h3 class="block-title">编辑排课取消申请</h3>
                </div>
                <div class="col-md-6">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item">
                            <a href="${pageContext.request.contextPath}/index.jsp">
                                <span class="ti-home"></span>
                            </a>
                        </li>
                        <li class="breadcrumb-item">排课取消申请管理</li>
                        <li class="breadcrumb-item active">排课取消申请登记</li>
                    </ol>
                </div>
            </div>
        </div>
        <!-- /Page Title -->

        <!-- /Breadcrumb -->
        <!-- Main Content -->
        <div class="container">

            <div class="row">
                <!-- Widget Item -->
                <div class="col-md-12">
                    <div class="widget-area-2 lochana-box-shadow">
                        <h3 class="widget-title">排课取消申请信息</h3>
                        <form id="addOrUpdateForm">
                            <div class="form-row">
                                <!-- 级联表所有字段 -->

                                <div class="form-group col-md-6">
                                    <label>工号</label>
                                    <input style="width: 450px" id="jiaoshiUuidNumber" name="jiaoshiUuidNumber"
                                           class="form-control"
                                           v-model="ruleForm.jiaoshiUuidNumber" readonly>
                                </div>


                                <div class="form-group col-md-6">
                                    <label>教师姓名</label>
                                    <input style="width: 450px" id="jiaoshiName" name="jiaoshiName" class="form-control"
                                           v-model="ruleForm.jiaoshiName" readonly>
                                </div>


                                <div class="form-group col-md-6">
                                    <label>头像</label>
                                    <img id="jiaoshiPhotoImg" width="100" height="100">
                                </div>

                                <div class="form-group col-md-6">
                                    <label>联系方式</label>
                                    <input style="width: 450px" id="jiaoshiPhone" name="jiaoshiPhone"
                                           class="form-control"
                                           v-model="ruleForm.jiaoshiPhone" readonly>
                                </div>


                                <div class="form-group col-md-6">
                                    <label>课程名称</label>
                                    <input style="width: 450px" id="kechengName" name="kechengName" class="form-control"
                                           v-model="ruleForm.kechengName" readonly>
                                </div>


                                <div class="form-group col-md-6">
                                    <label>课程图片</label>
                                    <img id="kechengPhotoImg" width="100" height="100">
                                </div>

                                <div class="form-group col-md-6">
                                    <label>课程类型</label>
                                    <input style="width: 450px" id="kechengValue" name="kechengValue"
                                           class="form-control"
                                           v-model="ruleForm.kechengValue" readonly>
                                </div>


                                <!-- 本表所有字段 -->


                                <input id="updateId" name="id" type="hidden">
                                <input id="jiaoshiId" name="jiaoshiId" v-model="ruleForm.jiaoshiId" readonly
                                       type="hidden">
                                <input id="kechengId" name="kechengId" v-model="ruleForm.kechengId" readonly
                                       type="hidden">

                                <div class="form-group col-md-6">
                                    <label>排课取消审核</label>
                                    <input style="width: 450px" id="paiekequxiaoYesnoValue"
                                           name="paiekequxiaoYesnoValue" class="form-control"
                                           v-model="ruleForm.paiekequxiaoYesnoValue" readonly>
                                </div>

                                <div class="form-group col-md-6">
                                    <label>审核原因</label>
                                    <input style="width: 450px" id="paiekequxiaoYesnoText" name="paiekequxiaoYesnoText"
                                           class="form-control"
                                           v-model="ruleForm.paiekequxiaoYesnoText" readonly>
                                </div>

                                <div class="form-group col-md-12 mb-3">
                                    <button id="exitBtn" type="button" class="btn btn-primary btn-lg">返回</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
                <!-- /Widget Item -->
            </div>
        </div>
        <!-- /Main Content -->
    </div>
    <!-- /Page Content -->
</div>
<!-- Back to Top -->
<a id="back-to-top" href="#" class="back-to-top">
    <span class="ti-angle-up"></span>
</a>
<!-- /Back to Top -->
<%@ include file="../../static/foot.jsp" %>
<script src="${pageContext.request.contextPath}/resources/js/vue.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery.ui.widget.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery.form.js"></script>

<script>
    <%@ include file="../../utils/menu.jsp"%>
    <%@ include file="../../static/setMenu.js"%>
    <%@ include file="../../utils/baseUrl.jsp"%>

    var tableName = "paiekequxiao";
    var pageType = "add-or-update";
    var updateId = "";

    var paiekequxiaoYesnoTypesOptions = [];

    var ruleForm = {};
    var vm = new Vue({
        el: '#addOrUpdateForm',
        data: {
            ruleForm: {},
        },
        beforeCreate: function () {
            var id = window.sessionStorage.getItem("updateId");
            if (id != null && id != "" && id != "null") {
                $.ajax({
                    type: "GET",
                    url: baseUrl + "paiekequxiao/info/" + id,
                    beforeSend: function (xhr) {
                        xhr.setRequestHeader("token", window.sessionStorage.getItem('token'));
                    },
                    success: function (res) {
                        if (res.code == 0) {
                            vm.ruleForm = res.data;
                            ruleForm = res.data;
                            showImg();
                            setContent();
                        } else if (res.code == 401) {
                            <%@ include file="../../static/toLogin.jsp"%>
                        } else {
                            alert(res.msg)
                        }
                    },
                });
            }
        },
        methods: {}
    });


    // 填充富文本框
    function setContent() {

        if (ruleForm.kechengContent != null && ruleForm.kechengContent != 'null' && ruleForm.kechengContent != '') {
            var kechengContentUeditor = UE.getEditor('kechengContentEditor');
            kechengContentUeditor.ready(function () {
                var mes = '';
                if (ruleForm.kechengContent != null) {
                    mes = '' + ruleForm.kechengContent;
                    // mes = mes.replace(/\n/g, "<br>");
                }
                kechengContentUeditor.setContent(mes);
                kechengContentUeditor.setDisabled('fullscreen');
            });
        }
        if (ruleForm.kechengContent != null && ruleForm.kechengContent != 'null' && ruleForm.kechengContent != '') {
            var kechengContentUeditor = UE.getEditor('kechengContentEditor');
            kechengContentUeditor.ready(function () {
                var mes = '';
                if (ruleForm.kechengContent != null) {
                    mes = '' + ruleForm.kechengContent;
                    // mes = mes.replace(/\n/g, "<br>");
                }
                kechengContentUeditor.setContent(mes);
                kechengContentUeditor.setDisabled('fullscreen');
            });
        }
    }

    //图片显示
    function showImg() {
        $("#jiaoshiPhotoImg").attr("src", ruleForm.jiaoshiPhoto);
        $("#kechengPhotoImg").attr("src", ruleForm.kechengPhoto);
    }

    function exit() {
        window.sessionStorage.removeItem("updateId");
        window.sessionStorage.removeItem('addpaiekequxiao');
        window.location.href = "list.jsp";
    }

    // 下载
    function download(fileName) {
        var url = baseUrl + 'file/download?fileName=' + fileName;
        window.open(url);
    }

    //设置下载
    function setDownloadBtn() {

    }

    $(document).ready(function () {
        //设置右上角用户名
        $('.dropdown-menu h5').html(window.sessionStorage.getItem('username'))
        //设置项目名
        $('.sidebar-header h3 a').html(projectName)
        setMenu();
        $('#exitBtn').on('click', function (e) {
            e.preventDefault();
            exit();
        });


        <%@ include file="../../static/myInfo.js"%>
    });
    // 用户登出
    <%@ include file="../../static/logout.jsp"%>
</script>
</body>

</html>
