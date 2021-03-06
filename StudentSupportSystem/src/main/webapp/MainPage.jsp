<%@ page contentType="text/html;charset=UTF-8" import="java.sql.*"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>부산대학교 학생지원시스템</title>
    <link rel="stylesheet" href="MainPage.css?after">
    <script src="https://code.jquery.com/jquery-latest.min.js"></script>
</head>

<body>
    <header style="height: 130px; width: 100%;">    
        <div style="width: 1200px; margin: 0 auto;">       
            <nav>
                <div style="margin-left: 750px;" class="top_bar">
                    <a href="#1" style="margin-left: 10px;">로그인</a>
                    <a href="#1" style="margin-left: 10px; color: red;">홈페이지의견수렴게시판</a>
                    <a href="#1" style="margin-left: 10px;">밀양대학교 학생지원시스템</a>
                    <a href="#1" style="margin-left: 10px;">PNU Internatioal</a>
                </div>
            </nav>    
            <div style="height: 50px;"> <a href="#1"><img src="image/pusan univ.jpg" 
                width="180px" height="50px" style="float: left; margin-left: 30px;"></a>
            </div>      
        </div>

        <div style="height: 29px; width: 100%;"></div>

        <section>
            <div style="width: 100%; height: 50px; border-top: 1px solid #eeeeee; background-color: #fff;">
                <div style="width: 1200px; height: 50px; margin: 0 auto;">
                    <nav class="navi">
                        <ul style="list-style-type: none; margin: 0;">
                            <li><a href="#2">학적 <br>
                                <span>Register</span></a>                     
                                    <ul class="navi_inner" style="list-style-type: none;">
                                        <li><a href="#2">학적변동안내</a></li>
                                        <li><a href="#2">인터넷휴복학</a></li>
                                        <li><a href="#2">학생생활기록부</a></li>
                                    </ul>        
                            </li>

                            <li><a href="#2">교육과정<br>
                                <span>Curriculum</span></a>
                                    <ul class="navi_inner" style="list-style-type: none;">
                                        <li><a href="#2">교과목개요</a></li>
                                        <li><a href="#2">교육과정</a></li>
                                        <li><a href="#2">교과목조회</a></li>
                                        <li><a href="#2">학점취득및성적평가</a></li>
                                        <li><a href="#2">타대학이수학점</a></li>
                                        <li><a href="#2">교수계획표</a></li>
                                        <li><a href="#2">교수소개</a></li>
                                        <li><a href="#2">전공지원신청안내</a></li>
                                    </ul>        
                            </li>

                            <li><a href="#2">수업<br>
                                <span>Classes</span></a>
                                    <ul class="navi_inner" style="list-style-type: none;">
                                        <li><a href="#2">수강신청안내</a></li>
                                        <li><a href="#2">교육과정별수강신청안내</a></li>
                                        <li><a href="#2">수강편람</a></li>
                                        <li><a href="#2">수강신청및확인</a></li>
                                        <li><a href="#2">수강취소(정규/계절)</a></li>
                                        <li><a href="#2">보충과목부과현황</a></li>
                                        <li><a href="#2">시간표조회</a></li>
                                        <li><a href="#2">교직과정안내</a></li>
                                        <li><a href="#2">교과목수요조사</a></li>
                                        <li><a href="#2">출석인정신청</a></li>
                                    </ul>        
                            </li>

                            <li><a href="#2">성적<br>
                                <span>Grade</span></a>
                                    <ul class="navi_inner" style="list-style-type: none;">
                                        <li><a href="#2">성적관리기준</a></li>
                                        <li><a href="#2">성적조회</a></li>
                                        <li><a href="#2">강의평가</a></li>
                                        <li><a href="#2">강의평가 결과공개</a></li>
                                        <li><a href="#2">기초학력진단평가</a></li>
                                        <li><a href="#2">가정통신용 성적표 출력</a></li>
                                    </ul>        
                            </li>

                            <li><a href="#2">장학<br>
                                <span>Scholarships</span></a>
                                    <ul class="navi_inner" style="list-style-type: none;">
                                        <li><a href="#2">공지사항</a></li>
                                        <li><a href="#2">장학금 개요 안내</a></li>
                                        <li><a href="#2">종류별 장학 안내</a></li>
                                        <li><a href="#2">절차별 장학 안내</a></li>
                                        <li><a href="#2">개인별 장학금 내역</a></li>
                                        <li><a href="#2">장학금신청</a></li>
                                        <li><a href="#2">장학금환수</a></li>
                                        <li><a href="#2">근로봉사</a></li>
                                    </ul>        
                            </li>

                            <li><a href="#2">등록<br>
                                <span>Enrollment</span></a>
                                    <ul class="navi_inner" style="list-style-type: none;">
                                        <li><a href="#2">등록금납부안내</a></li>
                                        <li><a href="#2">고지서출력</a></li>
                                        <li><a href="#2">납후확인(영수증출력)</a></li>
                                        <li><a href="#2">등록금 책정표</a></li>
                                        <li><a href="#2">등록금 반환</a></li>
                                    </ul>        
                            </li>

                            <li><a href="#2">졸업<br>
                                <span>Graduation</span></a>
                                    <ul class="navi_inner" style="list-style-type: none;">
                                        <li><a href="#2">학부 졸업안내</a></li>
                                        <li><a href="#2">학사학위취득유예</a></li>
                                        <li><a href="#2">대학원 졸업정보</a></li>
                                        <li><a href="#2">학위논문 제출 자격시험</a></li>
                                        <li><a href="#2">학위청구논문</a></li>
                                        <li><a href="#2">졸업생취업현황</a></li>
                                    </ul>        
                            </li>

                            <li><a href="#2">타대교류<br>
                                <span>Exchange</span></a>
                                    <ul class="navi_inner" style="list-style-type: none;">
                                        <li><a href="#2">교환학생(국내)</a></li>
                                        <li><a href="#2">해외파견</a></li>
                                    </ul>        
                            </li>

                            <li><a href="#2">대학생활<br>
                                <span>Campus Life</span></a>
                                    <ul class="navi_inner" style="list-style-type: none;">
                                        <li><a href="#2">다기능 스마트 카드 학생증</a></li>
                                        <li><a href="#2">증명발급</a></li>
                                        <li><a href="#2">모바일 학생증</a></li>
                                        <li><a href="#2">후생복지</a></li>
                                        <li><a href="#2">상담 및 취업</a></li>
                                        <li><a href="#2">학생의료공제회</a></li>
                                        <li><a href="#2">경영자책임보험</a></li>
                                        <li><a href="#2">시설사용신청</a></li>
                                        <li><a href="#2">부산캠퍼스 버스노선</a></li>
                                        <li><a href="#2">학습지원시설</a></li>
                                        <li><a href="#2">학생병사</a></li>
                                        <li><a href="#2">예비군</a></li>
                                        <li><a href="#2">국제학생증 발급</a></li>
                                        <li><a href="#2">설문조사</a></li>
                                        <li><a href="#2">통학버스</a></li>
                                        <li><a href="#2">학생회 선거 실시간 투표율</a></li>
                                        <li><a href="#2">나에게 PUSH 보내기</a></li>
                                        <li><a href="#2">교육공간 예약시스템</a></li>
                                        <li><a href="#2">기업협약정보(호텔,항공 등)</a></li>
                                    </ul>        
                            </li>
                            <li><a href="#2">비교과<br>
                                <span>Extracurriculum</span></a>
                                    <ul class="navi_inner" style="list-style-type: none;">
                                        <li><a href="#2">비교과 소개</a></li>
                                        <li><a href="#2">참가 신청</a></li>
                                        <li><a href="#2">보고서 및 활동내역</a></li>
                                        <li><a href="#2">인증서 발급</a></li>
                                        <li><a href="#2">마일리지 조회</a></li>
                                    </ul>        
                            </li>
                            <li><a href="#2">PASS<br>
                                <span>PASS</span></a>
                                    <ul class="navi_inner" style="list-style-type: none;">
                                        <li><a href="#2">기본정보</a></li>
                                        <li><a href="#2">지도교수상담</a></li>
                                        <li><a href="#2">취업솔루션</a></li>
                                        <li><a href="#2">경력</a></li>
                                    </ul>      
                            </li>
                            <li style="border-right: 1px solid #eeeeee;"><a href="#2">
                                포트폴리오<br><span>e-Portfolio</span></a></li>
                        </ul>
                    </nav>        
                </div>
            </div>
        </section>
    </header>

    <hr size="4px" color= #1245AB style="margin: 0px;">
    <br>

    <!-- 메인 페이지의 이미지 슬라이드 -->
    <main class="web_size" style="clear:left">
        <div class="slideshow-container">
            <div class="mySlides fade">
                <!-- <div class="numbertext">1 / 3</div> -->
                <img src="image/enter.jpg" style="width: 600px; height: 250px;" class="img1">              
            </div>

            <div class="mySlides fade">
                <!-- <div class="numbertext">2 / 3</div> -->
                <img src="image/head.jfif" style="width: 600px; height: 250px;" class="img1">              
            </div>

            <div class="mySlides fade">
                <!-- <div class="numbertext">3 / 3</div> -->
                <img src="image/view.jpg" style="width: 600px; height: 250px;" class="img1">            
            </div>

            <a class="prev" onclick="moveSlides(-1)">&#10094;</a>
            <a class="next" onclick="moveSlides(1)">&#10095;</a>
        </div>

        <div style="text-align:center; height: 0px;">
            <span class="dot" onclick="currentSlide(0)"></span>
            <span class="dot" onclick="currentSlide(1)"></span>
            <span class="dot" onclick="currentSlide(2)"></span>
        </div>
    
        <!-- Log-In -->
        <div class="log_in">
            <form id="signup" style="margin-left: 35px;">
                <h3 style="color: #407fc2;">LOGIN</h3>
                <label id="signup">아이디:</label>
                    <input type="text" placeholder="아이디를 입력하세요.">
                <button type="submit" style="height: 41px; 
                        float: right; margin-right: 40px;
                        background-color: #D5D5D5;">로그인</button>
                <br>
                <label id="signup">비밀번호:</label>
                    <input type="password" placeholder="비밀번호를 입력하세요."><br>
                <label><input type="checkbox" value="id_save"><span style="font-size: 12px">ID 저장</span></label>
                <button type="submit" style="font-size: 10px;">아이디 찾기</button>
                <button type="submit" style="font-size: 10px;">비밀번호 찾기</button>
            </form>
        </div>

        <div class="marker">
            <ul style="font-size: 13px;">
                <li>[2022/01/07 ~ 2022/01/28] 1학기 학사학위취득유예신청기간</li>
                <li>[2022/01/24 ~ 2022/01/26] 겨울계절수업 성적열람 및 정정신청기간</li>
                <li>[2022/01/27 ~ 2022/02/07] 1학기 휴/복학기간</li>
                <li>[2022/02/03 ~ 2022/02/04] 1학기 희망과목담기(신입생 제외)</li>
            </ul>
        </div>

        <!-- News -->
        <div style="clear: left;">
            <p class="main_bar1" style="display: inline-block;">학생지원시스템</p>
        
            <div class="mySlides1 fade">
                <p class="main_bar2" style="display: inline-block;">
                    <a href="#" style="color: #636a74;">2022년 1학기 고졸 후학습자 장학금(희망사다리 2유형) 신규장학생 신청 안내</a>
                </p>
            </div>

            <div class="mySlides1 fade">
                <p class="main_bar2" style="display: inline-block;">
                    <a href="#" style="color: #636a74;">2022년 대통령과학장학금 신규장학생 선발 안내</a>
                </p>
            </div>

            <div class="mySlides1 fade">
                <p class="main_bar2" style="display: inline-block;">
                    <a href="#" style="color: #636a74;">2022년 1학기 중고기업 취업연계 장학사업(희망사다리 1유형) 신청 안내</a>
                </p>
            </div>
            
            <div class="mySlides1 fade">
                <p class="main_bar2" style="display: inline-block;">
                    <a href="#" style="color: #636a74;">2022년 푸른등대 두나무 디지털교육 지원사업 신규장학생 선발 안내</a>
                </p>
            </div>
        </div>
        
        <!-- MainTab(1) -->
        <div class="mainTab_float">
            <section >
                <div class="main_tab" style="height: 150px;">
                    <ul>
                        <li style="float: left;" id="change_btn1">
                             <a href="#3" style="width: 200px;" id="main_tab1">공지사항</a></li>
                        <li id="change_btn2"><a href="#3" style="width: 200px;" id="main_tab2">Q&A</a></li>
                        <li id="change_btn3"><a href="#3" style="width: 200px;" id="main_tab3">FAQ</a></li>
                        <li><a href="#3" class="mainTab_plus">+</a></li>
                    </ul>
                </div>
            </section>

        <div style="margin-left: 40px; padding-bottom: 85px;">
            <ul style="clear: left;" class="marker maintab_list1" id="maintab_show1">
                <li>2022학년도 1학기 재학생 등록금 납부 안내</li>
                <li>2021학년도 겨울계절수업 성적 처리 일정 수정 안내</li>
                <li>2022학년도 제 1학기 학부 재입학 허가 안내</li>
                <li>코로나 19 대응 2022학년도 1학기 학사운영 방안</li>
                <li>2022-1학기 일반대학원 수료후연구생 신청 및 등록계획 안내</li>
            </ul>
    
            <ul style="clear: left;" class="marker maintab_list2" id="maintab_show2">
                <li>[기타] 개명 학생지원시스템이랑 모바일 학생증 이름은 바뀌었는데</li>
                <li>[교직이수] 교육봉사활동에 대한 질문</li>
                <li>[성적] 코로나 출석관련</li>
                <li>[학적(휴.복학, 전과 등)] 군복한 관련</li>
                <li>[계절수업] 계절수업 반환금</li>
            </ul>
    
            <ul style="clear: left;" class="marker maintab_list3" id="maintab_show3">
                <li>[기타] MS Office 365 사용 안내</li>
                <li>[교육과정&수업] (코로나19 관련) 2020학년도 1학기 학사일정 운영 안내</li>
                <li>[기타] (2020년도 1학기 재택수업 실시에 따른) 주차요금 환불 안내</li>
                <li>[기타] 정기주차 및 주차요금 문의</li>
                <li>[학적] 2015학년도 2학기 휴복학 기간은?</li>
            </ul>
        </div>

        <!-- MainTab(2) -->
        <section>
            <div class="main_tab">
                <ul>                  
                    <li style="float: left;" id="change_btn4">
                        <a href="#4" style="width: 200px;" id="main_tab4">대학공지</a></li>
                    <li id="change_btn5"><a href="#4" style="width: 200px;" id="main_tab5">학과공지</a></li>
                    <li id="change_btn6"><a href="#4" style="width: 200px;" id="main_tab6">학사일정</a></li>
                    <li ><a href="#4" class="mainTab_plus">+</a></li>
                </ul>
            </div>
        </section>

        <br><br><br>
        
            <div>
                <ul style="margin-left: 40px;" class="marker maintab_list4" id="maintab_show4">
                    <li>[교육혁신과] 2022학년도 1학기 교류 수학 안내(영남대학교)</li>
                    <li>코로나 19 대응 2022학년도 1학기 학사운영 방안</li>
                    <li>국립대학육성사업 대학생 홍보대사 7 8기 모집 공고</li>
                    <li>코로나 19 대응 2022학년도 1학기 학사운영 방안</li>
                    <li>2022-1학기 일반대학원 수료후연구생 신청 및 등록계획 안내</li>
                </ul>

                <ul style="margin-left: 40px;" class="marker maintab_list5" id="maintab_show5">
                    <li>로그인이 필요한 서비스입니다.</li>
                </ul>

                <ul style="margin-left: 40px;" class="marker maintab_list6" id="maintab_show6">
                    <li>[2022/01/07 ~ 2022/01/28] 1학기 학사학위취득유예신청기간</li>
                    <li>[2022/01/24 ~ 2022/01/26] 겨울계절수업 성적열람 및 정정신청기간</li>
                    <li>[2022/01/27 ~ 2022/02/07] 1학기 휴/복학기간</li>
                    <li>[2022/02/03 ~ 2022/02/04] 1학기 희망과목담기(신입생 제외)</li>
                </ul>
            </div>
        </div>

        <!-- Service -->
        <div class="service" style="float: left; margin-top: 15px;">
            <h2>개인화 바로가기 서비스</h2>
            <ul>
                <li style="float: left;">로그인 하셔야만 사용할 수 있습니다.</li>
            </ul>
        </div>

        <br><br><br><br><br>

        <div class="service" style="float: left; margin-top: 10px; margin-bottom: 10px;">
            <h2>즐겨찾는 메뉴</h2>
            <ul>
                <li style="float: left;"><a href="#">학부 수강편람</a></li>
                <li style="float: left; margin-left: 40px;"><a href="#">전체 성적 조회</a></li>
                <li style="float: left; margin-left: 40px;"><a href="#">금학기 성적 조회</a></li>
                <li style="float: left;"><a href="#">학부 수강편람(상세)</a></li>
                <li style="float: left; margin-left: 40px;"><a href="#">정규학기 수강신청</a></li>
            </ul>
        </div>
        <br><br><br>
        
        <!-- MainTable(1) -->
        <div>
            <table style="float: right;" class="main_table">
                <tr title="de">
                    <td><a href="#3">기초학력 진단평가</a></td>
                </tr>
                <tr title="li">
                    <td><a href="#3" style="background-color: #EAEAEA;">서식다운로드</a></td>
                </tr>
                <tr title="de">
                    <td><a href="#3">설문조사</a></td>
                </tr>
                <tr title="li"> 
                    <td><a href="#3" style="background-color: #EAEAEA;">스마트교육플랫폼 PLATO</a></td>
                </tr>
                <tr title="de">
                    <td><a href="#3">특허관리(PIMS)</a></td>
                </tr>
            </table>
        </div>

        <!-- MainTable(2) -->
        <div>
            <table style="float: right;" class="main_table">
                <tr title="li">
                    <td><a href="#3" style="background-color: #EAEAEA;">인터넷 증명발급</a></td>
                </tr>
                <tr title="de">
                    <td><a href="#3">우편신청 및 기타증명발급</a></td>
                </tr>
                <tr title="li">
                    <td><a href="#3" style="background-color: #EAEAEA;">Course List(English)</a></td>
                </tr>
                <tr title="de">
                    <td><a href="#3">PNU-연구실안전정보망</a></td>
                </tr>
                <tr title="li" style="background-color: #EAEAEA;">
                    <td><select>
                            <option value=pnu selected>::::PNU LINK::::</option>
                            <option value=pnu1 >교수학습지원센터</option>
                            <option value=pnu2 >교양교육원</option>
                            <option value=pnu3 >교육인증원</option>
                            <option value=pnu4 >언어교육원</option>
                            <option value=pnu5 >대학생활원</option>
                            <option value=pnu6 >도서관</option>
                            <option value=pnu7 >취업전략과</option>
                            <option value=pnu8 >보건진료소</option>
                            <option value=pnu9 >정보화본부</option>
                        </select>
                    </td>
                </tr>
            </table>
        </div>  
    </main>


    <hr style="height: 1px; border:none; background-color: #D5D5D5; margin-top: 500px;">
    
    <!-- Footer -->
    <div style="background-color: #F6F6F6; margin-top: 20px;">
        <footer class="web_size">
            <ul class="footerMenu_style">
                <li style="float: left;"><a href="##" class="footer_menu" style="color: #333;">부산대학교 홈페이지</a></li>
                <li style="float: left;"><a href="##" class="footer_menu" style="color: #333;">개인정보처리방침</a></li>
                <li style="float: left;"><a href="##" class="footer_menu" style="color: #333;">사이트맵</a></li>
            </ul>
        </footer>
        <br>
        <hr style="height: 1px; border:none; background-color: #D5D5D5;">
        <div class="footer_add">Copyright 2016 Pusan National University. All rights reserved.<br><br><br><br></div>
    </div>

    <script src="MainPage.js"></script>
</body>
</html>