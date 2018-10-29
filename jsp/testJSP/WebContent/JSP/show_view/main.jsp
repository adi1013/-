<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/comm/taglibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ include file="/comm/base.jsp" %>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>易书网</title>
<link rel="stylesheet" type="text/css" href="${ctx}/lib/css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="${ctx}/lib/css/mainPage.css">
<script src="${ctx}/lib/js/jquery-3.3.1.js"></script>
<script src="${ctx}/lib/js/bootstrap.js"></script>
<script src="http://static.runoob.com/assets/jquery-validation-1.14.0/dist/jquery.validate.min.js"></script>
<script src="http://static.runoob.com/assets/jquery-validation-1.14.0/dist/localization/messages_zh.js"></script>
</head>
<body>
<div class="container-flush">
	<!-- 头部 -->
	<jsp:include page="/JSP/top.jsp"></jsp:include>
    <div style="background-color:#f8f9fa;"><br/></div>
    <div class="content_back_color">
    <!-- 滚动图  -->
    <jsp:include page="/JSP/show_view/slide.jsp"></jsp:include>
    <br/>
    <div class="container text-center main_pro_show">
        <div>
            <div class="text-center title_container">
                <div>
                    <span class="title_border"></span>
                    <span class="title"><span class="glyphicon glyphicon-send"></span>&nbsp;最新上架</span>
                    <span class="title_border"></span>
                </div>
            </div>
            <img src="${ctx}/lib/img/bord.jpg" style="width:100%;height:30px;">
        </div> 
        <div class="text-right" style=" margin-right:5%;margin-bottom:1%;">
            <a href="#" class="text-right" style="height:1%;line-height:1%;color:#237afb;">
                <span class="glyphicon glyphicon-repeat"></span>
                <span class="change_pro">换一批</span>
            </a>
        </div>   
        <div class="row text-center" style="padding-left:1rem;">
    
          <div class="card row_bottom" style="width:17rem;height:26rem;margin-right:0.5rem;">
                <div style="width:17rem;height:18rem;">
                  <a href="#">
                    <img class="card-img-top" style="width:15rem;height:18rem;" src="${ctx}/test/test.jpg" alt="高等数学">
                  </a>
                </div>
                <div class="card-block" style="width:17rem;height:8rem;padding-top:1rem;">
                   <div class=" text-center " style="width:17rem;overflow:hidden;text-overflow:ellipsis;white-space:nowrap;">
                      <a href="#">
                          <span class="card-title pro_name">高等数学高等数学高等数学高等数学高等数学高等数学高等数学高等数学</span>
                      </a>
                    </div>
                    <p class="card-text in_one_row "><span class="card-title">阳平华、***主编阳平华、***主编阳平华、***主编阳平华、***主编</span></p>
                    <span class="car-link pro_price">￥15.00</span>
                    &nbsp;&nbsp;&nbsp;
                    <span class="text-right cark-link pro_collected text-muted">15人收藏</span>
                </div>
            </div>   
       </div>
	</div>
	<br/>
	<!-- 导入尾部 -->
	<jsp:include page="../foot.jsp"></jsp:include>
    </div>
</div>

</body>
</html>