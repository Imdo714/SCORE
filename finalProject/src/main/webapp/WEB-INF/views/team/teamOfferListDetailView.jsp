<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	
	<!-- Latest compiled and minified CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet">
    
    <!-- Latest compiled JavaScript -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script>
   
    <link rel="stylesheet" href="/final/resources/css/team/teamOfferListDetailView.css">
    
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
</head>
<body>
	<jsp:include page="../common/header.jsp" />
		<div class="all">
	        <div class="teamMain">
	
	            <div class="team-left-wrap">
	                <div class="team-left-all">
	                    <div class="left-header">
	                        <a href="" class="list-link">
	                            <div class="list-img-all">
	                                <img src="./resources/img/team/teamOfferBoardList/totunum.png" class="list-img"/>
	                            </div>
	                            <div class="list-content">
	                                <div class="list-title">
	                                    <span class="TimeName">${team.teamName}</span>
	                                </div>
	                                <span class="list-member">${team.offerAge}, ${team.offerLevel}, ${team.offerGender}</span>
	                            </div>
	                        </a>
	                    </div>


	                    <div class="left-body">
	                        <div class="body-list">
	                            <div class="body-list-item">
	                                <span class="body-list-item-text"><img src="./resources/img/team/teamOfferListDetailView/star.png"  class="list-star-img"/>${team.offerGender}</span>
	                            </div>
	                            <div class="body-list-item">
	                                <span class="body-list-item-text"><img src="./resources/img/team/teamOfferListDetailView/star.png"  class="list-star-img"/>${team.offerLevel}</span>
	                            </div>
	                            <br>
	                            <div class="body-list-item">
	                                <span class="body-list-item-text"><img src="./resources/img/team/teamOfferListDetailView/star.png"  class="list-star-img"/>${team.offerAge}</span>
	                            </div>
	                            <div class="body-list-item">
	                                <span class="body-list-item-text"><img src="./resources/img/team/teamOfferListDetailView/star.png" class="list-star-img"/>0원</span>
	                            </div>
	                            
	                        </div>
	                    </div>
	                    <div class="btn-wrap">
							<!-- Button to Open the Modal -->
							<button type="button" class="btnJoin btnFloat btnLightBlue" data-bs-toggle="modal" data-bs-target="#myModal">가입 신청</button>
						</div>
						
						<button onclick="location.href='offerDelete.tm?tno=${team.offerNo}'" class="custom-btn btn-3"><span>삭제하기</span></button>
	                </div>
	            </div>
	            
	            <div class="content-wrap">
	                <div class="content-body">
	                    <div class="btn-list">
							<img src="./resources/img/team/teamOfferListDetailView/shm.jpg"  class="content-img"/>
						</div>
	                    <div class="content-div"> 
	                    ${team.offerContent}
	                    </div>
	                    
	                    <div class="content-footer">
	                       	조회수 ${team.offerCount}
	                        
	                    </div>
	                </div>
	            </div>
	        </div>
	    </div>
	    
		<jsp:include page="../common/footer.jsp" />
		
		
	    <!-- The Modal -->
	    <div class="modal" id="myModal">
	        <div class="modal-dialog modal-dialog-centered modal-lg">
	            <div class="modal-content">
	
	            <!-- Modal Header -->
	            <div class="modal-header">
	                <h4 class="modal-title" >팀 가입 신청</h4>
	                <button type="button" class="btn-close" id="btnCloseModal" data-bs-dismiss="modal"></button>
	            </div>
	            
	            
	            <!-- Modal body -->
	            <form action="teamReq.tm">
	            <div class="modal-body">
	                <div class="join-name">
	                    <label for="join-name">이름</label><br>
	                    <input id="modal-input-name" name="userId" value="로그인 유저" disabled/>
	                </div>
	                <div class="join-content">
	                    <label for="join-content">각오 한마디</label><br>
	                    <textarea id="modal-input-content" name="text"  placeholder="내용을 입력하세요."></textarea>
	                </div>
	            </div>
	
	            <!-- Modal bottom -->
	            <div class="modal-bottom">
	                <div class="modal-button-join">
	                    <button type="submit" class="btnModelJoin btnFloat2 btnLightBlue2"></button>
	                </div>
	            </div>
				</form>
	        </div>
	    </div> 

</body>
</html>