<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/comm/taglibs.jsp"%>
<div class="container">
        <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
          <ol class="carousel-indicators">
            <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
          </ol>
          <div class="carousel-inner">
            <div class="carousel-item  text-center col-md-12 active ">
              <img class="d-block w-100" src="${ctx}/lib/img/slide1.jpg" height="300px" alt="First slide">
            </div>
            <div class="carousel-item text-center col-md-12">
              <img class="d-block w-100" src="${ctx}/lib/img/slide4.jpg" height="300px" alt="Second slide">
            </div>
            <div class="carousel-item text-center col-md-12">
              <img class="d-block w-100" src="${ctx}/lib/img/slide5.jpg" height="300px" alt="Third slide">
            </div>
          </div>
          <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
          </a>
          <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
          </a>
        </div>
</div>