<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8"/>
    <title>BLOG | YOUR BEST CHOICE</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta content="width=device-width, initial-scale=1.0" name="viewport"/>
    <meta http-equiv="Content-type" content="text/html; charset=utf-8">
    <meta content="" name="description"/>
    <meta content="" name="author"/>

    <%@ include file="./../common/base.jsp" %>
    <link rel="stylesheet" type="text/css" href="${basePath}/resources/plugins/metronic/css/bootstrap-markdown.min.css">
    <link rel="stylesheet" type="text/css" href="${basePath}/resources/plugins/metronic/css/blog.css">

    <%-- Gitment --%>
    <link rel="stylesheet" href="https://imsun.github.io/gitment/style/default.css">
    <script src="https://imsun.github.io/gitment/dist/gitment.browser.js"></script>

    <script src="${basePath}/resources/plugins/metronic/script/markdown.js" type="text/javascript"></script>
    <script src="${basePath}/resources/plugins/metronic/script/bootstrap-markdown.js" type="text/javascript"></script>
    <script src="${basePath}/resources/scripts/blog/blogViewManage.js" type="text/javascript"></script>
</head>
<body class="page-md">
<%@ include file="./../common/header.jsp" %>
<!-- BEGIN PAGE CONTAINER -->
<div class="page-container">
    <!-- BEGIN PAGE HEAD -->
    <div class="page-head">
        <div class="container">
            <!-- BEGIN PAGE TITLE -->
            <div class="page-title">
                <h1>BLOG
                    <small>love & peace </small>
                </h1>
            </div>
            <!-- END PAGE TITLE -->
        </div>
    </div>
    <!-- END PAGE HEAD -->
    <!-- BEGIN PAGE CONTENT -->
    <div class="page-content">
        <div class="container">
            <!-- BEGIN PAGE BREADCRUMB -->
            <ul class="page-breadcrumb breadcrumb">
                <li>
                    <a href="/" style="color: #5b9bd1">Home</a><i class="fa fa-circle"></i>
                </li>
                <li class="active">
                    查看博客
                </li>
            </ul>
            <!-- END PAGE BREADCRUMB -->
            <!-- BEGIN PAGE CONTENT INNER -->
            <div class="portlet light">
                <div class="portlet-body">
                    <div class="row">
                        <div class="col-md-12 blog-page">
                            <div class="row">
                                <div class="col-md-12 article-block">
                                    <br/>
                                    <h1 style="margin-top:0;text-align:center;" id="blog-title"></h1>
                                    <br/>
                                    <div class="blog-tag-data">
                                        <div class="row">
                                            <div class="col-md-6">
                                                <ul class="list-inline blog-tags">
                                                    <li id="tags">
                                                    </li>
                                                </ul>
                                            </div>
                                            <div class="col-md-6 blog-tag-data-inner">
                                                <ul class="list-inline">
                                                    <li id="author">
                                                    </li>
                                                    &nbsp;&nbsp;
                                                    <li id="create-time">
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <!--end news-tag-data-->
                                    <xmp theme="united" style="display:none;">
                                        ##### 正文。
                                    </xmp>
                                    <div class="分割线"style="width:1000px;margin:0 auto;padding:0 200px; border-top:1px solid #ddd" ></div>
                                    <div id="gitmentContainer"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- END PAGE CONTENT INNER -->
        </div>
    </div>
    <!-- END PAGE CONTENT -->
</div>
<!-- END PAGE CONTAINER -->
<%@ include file="./../common/preFooter.jsp" %>
<%@ include file="./../common/footer.jsp" %>
<div class="scroll-to-top">
    <i class="icon-arrow-up"></i>
</div>
<script src="${basePath}/resources/plugins/strapdown/strapdown.js" type="text/javascript"></script>
<script type="text/javascript">
    $(function () {
        //初始化页面相应元素绑定事件
        blogViewManager.init(${blogId});
    });
</script>
<script>
    var gitment = new Gitment({
        owner: 'miaoxing-tech',
        repo: 'miaoxing.tech',
        oauth: {
            client_id: 'd80605ff6c0ef4717f8f',
            client_secret: 'd888aa2c830e75dc017e91c4a7cd86877a1554a4',
        },
    })
    gitment.render('gitmentContainer')
</script>
</body>
</html>