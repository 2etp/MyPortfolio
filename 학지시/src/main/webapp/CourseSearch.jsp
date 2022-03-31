<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>수강신청 교과목검색</title>
    <link rel="stylesheet" href="CourseSearch.css">
</head>

<body>
	
    <h2 style="color: #F2CB61; text-align: center;">2022학년도 1학기 개설강좌 검색</h2>

    <!-- 밑의 두 스타일은 창 크기에 상관없이 요소들을 항상 가운데 정렬하는 방법임 -->
    <div class="navi" style="width: 0px; margin: auto;">
        <table style="position: relative; width: 900px; margin-left: -450px;">
            <tr>
                <td>검색 방법</td>
                <td>
                    <select>
                    <option value="liberal" selected>교양과목</option>
                    <option value="major basic">전공기초(1학년)</option>
                    <option value="major">전공.교직과목(2,3,4학년)</option>
                    </select>
                </td>
                <td>
                    <select>
                        <option value="major section" selected>전공선택</option>
                        <option value="1">기계공학과</option>
                        <option value="2">전기공학과</option>
                        <option value="3">전자공학과</option>
                        <option value="4">산업공학과</option>
                        <option value="5">컴퓨터공학과</option>
                        <option value="6">화학공학과</option>
                    </select>
                    <button type="submit">검색</button>
                </td>
            </tr>
        </table>
    </div> 

    <br>

    <p style="text-align: center;">아래 목록 중 신청할 교과목코드를 클릭하면 코드와 분반이 수강신청화면으로 이동합니다.<br>
    <span style="color: blue; font-weight: bold;">현재 수강인원표시는 첫날 오전 11시 이후에 서비스됩니다.(서버시스템의 부하급증시는 서비스가
    중단됨을 양지하시기 바랍니다)</span></p>
    
    <div class="list" style="width: 0px; margin: auto;">
        <table style="position: relative; width: 900px; margin-left: -450px;">
            <tr>
                <td>원어 <br>강의</td>
                <td>학년</td>
                <td>교과구분</td>
                <td style="color: white;">코드</td>
                <td>분반</td>
                <td>학점</td>
                <td>인원(수강/제한)</td>
                <td>과목명(개설학과)</td>
                <td>교수명</td>
                <td>강의시간/강의실</td>
                <td>비고</td>
            </tr>
            <tr>
                <td> </td>
                <td>1</td>
                <td>전공필수</td>
                <td><a href="#" onClick="CourseCart.jsp?code=AS202224">AS202224</a></td>
                <td>040</td>
                <td>3.0</td>
                <td>55 / 60</td>
                <td>제조공학및실습(산업공학과, 510-1791)</td>
                <td>목학수</td>
                <td>월수</td>
                <td> </td>
            </tr>
            <tr>
                <td> </td>
                <td>2</td>
                <td>전공필수</td>
                <td><a href="#">BS202224</a></td>
                <td>041</td>
                <td>3.0</td>
                <td>56 / 60</td>
                <td>작업설계및분석(산업공학과, 510-1791)</td>
                <td>진상은</td>
                <td>화목</td>
                <td> </td>
            </tr>
            <tr>
                <td> </td>
                <td>1</td>
                <td>전공기초</td>
                <td><a href="#">CS202224</a></td>
                <td>042</td>
                <td>3.0</td>
                <td>57 / 60</td>
                <td>공업수학(산업공학과, 510-1791)</td>
                <td>송우진</td>
                <td>월수</td>
                <td> </td>
            </tr>
            <tr>
                <td> </td>
                <td>3</td>
                <td>전공선택</td>
                <td><a href="#">DS202224</a></td>
                <td>043</td>
                <td>3.0</td>
                <td>58 / 60</td>
                <td>확률과정론(산업공학과, 510-1791)</td>
                <td>윤원영</td>
                <td>화목</td>
                <td> </td>
            </tr>
            <tr>
                <td> </td>
                <td>4</td>
                <td>전공선택</td>
                <td><a href="#">ES202224</a></td>
                <td>044</td>
                <td>3.0</td>
                <td>59 / 60</td>
                <td>인공지능(산업공학과, 510-1791)</td>
                <td>배혜림</td>
                <td>월수</td>
                <td> </td>
            </tr>
        </table>
    </div>
</body>
</html>