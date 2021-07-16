<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/css/product/deatil.css">
    <title>Document</title>
    <!--링크들-->
    <script src="http://code.jquery.com/jquery-latest.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />
    <!-- w3school css적용시 헤더부분 꺠짐 수정필요 -->
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
</head>


<body>
    <div class="background">

        <header>
             <%@ include file= "../header/header.jsp" %>
        </header>
        <!--제품상세페이지-->
        <div class="main">
            <div class="detail-img-big">
                <center><img src="/img/dog1.jpg" id="bigImg" alt="" width="500px" style="margin-top: 5px;" /> </center>
            </div>
            <div class="detail-order">
                <br>
                <form name="order" style="float: left; margin-left: 100px; font-size: 20px;">
                    <table>
                        <th colspan="2" style="font-size: 30px; font-weight: bold;">강아지 옷 애견 용품 패리스독</th>
                        <tr>
                            <td colspan="2">&nbsp</td>
                        </tr>
                        <tr>
                            <td>판매가</td>
                            <td>10,000원</td>
                        </tr>
                    </table>
                    <hr color="grey" size="1px" style="margin-top: 10px;">
                    <br>
                    <table style="padding: 10px; font-size: 15px;">
                        <tr>
                            <td>사이즈</td>
                            <td>
                                <select name="size">
                                    <option value="none" selected>사이즈를 선택하세요</option>
                                    <option value="S">S</option>
                                    <option value="M">M</option>
                                    <option value="L">L</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td>색상</td>
                            <td>
                                <select name="color">
                                    <option value="none" selected>색상을 선택하세요</option>
                                    <option value="red">빨간색</option>
                                    <option value="green">초록색</option>
                                    <option value="yellow">노란색</option>
                                    <option value="blue">파란색</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td>수량</td>
                            <td>
                                <!--수량은 min/ max이용-->
                                <input type="number" id="quantity" name="quantity" min="1" max="5" placeholder="1" />
                                <!-- <input type="number" id="quantity" name="quantity" min="1" max="5" placeholder="1" /> -->
                            </td>
                        </tr>
<!--                         <tr>
                            <td>추가선택&nbsp&nbsp</td>
                            <td>
                                <select name="coupon">
                                    <option value="none" selected>선택된 항목이 없습니다</option>
                                    <option value="coupon1">coupon1</option>
                                    <option value="coupon2">coupon2</option>
                                    <option value="coupon3">coupon3</option>
                                </select>
                            </td>
                        </tr> -->
                    </table>
                    <hr color="grey" size="1px" style="margin-top: 30px;">
                    <br>
                    <input type="button" id="shopBtn" value="장바구니" onclick="cart()" /><br>
                    <input type="button" id="orderBtn" value="구매하기" onclick="orderNow()" />
                </form>
            </div>
            <div class="detail-img-small">
                <div class="smallimg">
                    <img src="/img/dog2.PNG" id="img1" alt="준비중입니다." style="width: 120px;" onclick="chageImg('/img/dog2.PNG')" />
                    <img src="/img/dog1.jpg" id="img2" alt="준비중입니다." style="width: 120px;" onclick="chageImg('/img/dog1.jpg')" />
                    <img src="/img/dog1.jpg" id="img3" alt="준비중입니다." style="width: 120px;" onclick="chageImg('/img/dog1.jpg')" />
                    <img src="/img/dog1.jpg" id="img4" alt="준비중입니다." style="width: 120px;" onclick="chageImg('/img/dog1.jpg')" />
                </div>
            </div>

            <div class="reivew-request-tab">
                <div class="tabmenu">
                    <input type="radio" name="tab" id="tab2" />
                    <label for="tab2" style="font-size: 15px; text-align: center;">문의</label>
                    <input type="radio" name="tab" id="tab1" checked />
                    <label for="tab1" style="font-size: 15px; text-align: center;">리뷰</label>

                    <div id="cont1" style="border:1px solid black;"><br><br>
                        <h3 style="text-align: center;">강아지 옷 애견 용품 패리스독</h3><br><br>
                        <div id="star" style="position: absolute; left: 10px; top: 185px;">
                            <div class="average">
                                &nbsp;<span style="font-size: 50px; font-weight: bold; color: black;
                                position: absolute; left: 145px;">0</span>
                            </div>

                            <div id="starimgsrc">
                                <img src="/img/staron.png" alt="" width="30px">
                                <img src="/img/staron.png" alt="" width="30px">
                                <img src="/img/staron.png" alt="" width="30px">
                                <img src="/img/staron.png" alt="" width="30px">
                                <img src="/img/staron.png" alt="" width="30px">
                            </div>
                            <br><br>
                        </div>
                        <div class="starBars">
                            <div class="w3-light-grey" id="5star">
                                <div class="w3-orange" style="height:24px;width:80%">
                                    <span style="position: absolute; left: 375px; top: 190px;">5</span>
                                </div>
                            </div>
                            <div class="w3-light-grey" id="4star">
                                <div class="w3-orange" style="height:24px;width:90%">
                                    <span style="position: absolute; left: 375px; top: 220px;">4</span>
                                </div>
                            </div>
                            <div class="w3-light-grey" id="3star">
                                <div class="w3-orange" style="height:24px;width:45%">
                                    <span style="position: absolute; left: 375px; top: 250px;">3</span>
                                </div>
                            </div>
                            <div class="w3-light-grey" id="2star">
                                <div class="w3-orange" style="height:24px;width:20%">
                                    <span style="position: absolute; left: 375px; top: 280px;">2</span>
                                </div>
                            </div>
                            <div class="w3-light-grey" id="1star">
                                <div class="w3-orange" style="height:24px;width:15%">
                                    <span style="position: absolute; left: 375px; top: 310px;">1</span>
                                </div>
                            </div>
                        </div>
                        <div class="customer-reviews" style="font-size: 12px">
                            <div class="customer-reviews1"><br><br><br>
                                <b>hoogun30</b> /
                                <i class="fa fa-star" id="yellowstar"></i>
                                <i class="fa fa-star" id="yellowstar"></i>
                                <i class="fa fa-star" id="yellowstar"></i>
                                <i class="fa fa-star" id="yellowstar"></i>
                                <i class="fa fa-star" id="yellowstar"></i> / 2020-07-01<br>
                                <table style="width: 520px; min-height: 100px; border: 1px solid black;
                             margin-top: 10px; margin-bottom: 40px;">
                                    <tr>
                                        <td colspan="3">너무 폭신폭신 좋아요. 강아지가 좋아합니다</td>
                                    </tr>
                                </table>
                                <details style="font-size: 12px;">
                                    <summary style="float: left; margin-left: 540px; margin-top: -150px; cursor: pointer;">더보기 </summary>
                                    <b>hoogun30</b> /
                                    <i class="fa fa-star" id="yellowstar"></i>
                                    <i class="fa fa-star" id="yellowstar"></i>
                                    <i class="fa fa-star" id="yellowstar"></i> / 2020-07-01
                                    <table style="width: 520px; min-height: 100px;  border: 1px solid black; margin-top: 10px;">
                                        <tr>
                                            <td colspan="3">너무 폭신폭신 좋아요. 강아지가 좋아합니다</td>
                                        </tr>
                                    </table>
                                    <br>
                            </div>
                        </div>

                        </details>
                        <hr color="grey" size="2px" style="margin-top: 20px; margin-bottom: 20px;">
                        <div class="user-reivew">
                            리뷰쓰기<br>
                            <div class="customer-reviews2" style="font-size: 12px; margin-top: 20px;">
                                <b>hoogun30</b> /
                                <i class="fa fa-star star-1" id="star"></i>
                                <i class="fa fa-star star-2" id="star"></i>
                                <i class="fa fa-star star-3" id="star"></i>
                                <i class="fa fa-star star-4" id="star"></i>
                                <i class="fa fa-star star-5" id="star"></i>
                                <sub class="autoRating">
                                    (<span>0</span>/5)
                                </sub> / 2020-07-01
                                <form name="user-reiview-write" onsubmit="return confirm('게시글을 등록할까요?');">
                                    <br><textarea cols="72" rows="8" maxlength="300" style="margin-top: -6px;"></textarea><br>
                                    <input type="submit" id="submitBtn" value="등록" style="float: right; cursor: pointer;" />
                                </form>
                                <br><br>
                            </div>
                        </div>
                    </div>

                    <div id="cont2">
                        <br>
                        <div class="customer-requests">
                            <br>
                            <h3>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp상품 Q&A</h3>
                            &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp상품에 대해 궁금한 점을 남겨주세요.
                            <table style="border: black solid 1px; width:700px; margin-top: 30px;
                            margin-left: 50px; text-align: center; padding: 1px; font-size: 15px;">
                                <tr style="border-bottom: black solid 1px;">
                                    <th>번호</th>
                                    <th>제목</th>
                                    <th>작성자</th>
                                    <th>작성일</th>
                                </tr>
                                <tr>
                                    <td>01</td>
                                    <td onclick="mouseclick()" style="cursor: pointer;"> 유통기한이 언제까진가요</td>
                                    <td>용**</td>
                                    <td>2021.06.23.</td>
                                </tr>
                                <tr>
                                    <td>02</td>
                                    <td onclick="mouseclick()" style="cursor: pointer;">핑크색 포장지에서 바뀐건가요?</td>
                                    <td>김**</td>
                                    <td>2021.06.23.</td>
                                </tr>
                                <tr>
                                    <td>03</td>
                                    <td onclick="mouseclick()" style="cursor: pointer;">사람이 먹어도 되나요</td>
                                    <td>박**</td>
                                    <td>2021.06.23.</td>
                                </tr>
                                <tr>
                                    <td>04</td>
                                    <td onclick="mouseclick()" style="cursor: pointer;">상품이 깨져서 왔어요</td>
                                    <td>강**</td>
                                    <td>2021.06.23.</td>
                                </tr>
                            </table>
                            <input type="button" id="show" value="작성하기" onclick="writeRequest()" style="position: absolute; left:700px; cursor: pointer; font-size: small;" />
                            <br><br><br>
                        </div>
                    </div>
                </div>
            </div>
            <div id="request-popup">
                <br><br><br><br>
                <center>
                    <h4>문의하기</h4>
                    <!--작성시-->
                </center>
                <form name="request-popup-write" onsubmit="return confirm('게시글을 등록할까요?');" style="position: absolute; left: 100px;">
                    <br>제목
                    <br><input type="text" name="request-title" style="margin-top: 10px; width: 370px;">
                    <br><br>내용
                    <br><textarea name="MumE" cols="50" rows="10" maxlength="300" style="margin-top: 10px;"></textarea><br>
                    <br>
                    <h6 style="font-size: 0.67em;">비밀글&nbsp;<input type="checkbox" name="secret-public" value="secret" onclick="checkOnlyOne(this)" /> &nbsp; 오픈글&nbsp;
                        <input type="checkbox" name="secret-public" value="public" onclick="checkOnlyOne(this)" /></h6>
                    <br><br>
                    <input type="submit" id="submitBtn" value="등록" style="position: absolute; left: 180px; cursor: pointer;" />
                    <input type="button" id="submitBtn" value="취소" onclick="hidepop1()" style="position: absolute; left: 90px; cursor: pointer;" />
                </form>
            </div>
            <div id="request-popup-click" style="border: 1px solid;">
                <br><br><br><br>
                <center>
                    <h4>문의하기</h4>
                    <!--(답변시)-->
                </center>
                <!--작업할때는 JSTL로 값뿌리기-->
                <div name="request-popup-write" style="position: absolute; left: 100px;">
                    <br>제목
                    <br><input type="text" name="request-title" value="유통기한이 언제까진가요" readonly style="margin-top: 10px; width: 370px;">

                    <br><br>내용
                    <br><textarea name="MumE" cols="50" rows="10" maxlength="300" readonly style="margin-top: 10px;"> 유통기한이 언제까진가요? </textarea><br>
                    <br> 답변
                    <br>
                    <textarea id="reply" cols="50" rows="10" maxlength="300" readonly style="margin-top: 10px;">답변입니다</textarea><br>
                    <br>
                    <h6 style="font-size: 0.67em;">비밀글&nbsp;<input type="checkbox" checked name="secret-public" value="secret" disabled /> &nbsp; 오픈글&nbsp;
                        <input type="checkbox" name="secret-public" value="public" disabled /></h6>
                    <!--등록버튼은 히든. display: none; 관리자만 볼 수 있도록! 백엔드 처리해주세요~ -->
                    <input type="button" id="submitBtn" value="등록" style="position: absolute; left: 0px; cursor: pointer;" />
                    <input type="button" id="submitBtn" value="수정" style="position: absolute; left: 180px; cursor: pointer;" />
                    <!--문의사항 수정은 본인것만 가능하고, 다른유저것은 확인만 뜨게 백엔드에서 해주세용ㅋㅋ-->
                    <input type="button" id="submitBtn" value="확인" onclick="hidepop2()" style="position: absolute; left: 90px; cursor: pointer;" />
                </div>
            </div>
        </div>
    </div>

    <script>
        function checkOnlyOne(element) {
            const checkboxes = document.getElementsByName("secret-public");
            checkboxes.forEach((cb) => {
                cb.checked = false;
            })
            element.checked = true;
        }

        function chageImg(str) {
            document.getElementById("bigImg").src = str;
        }

        /*문의사항팝업*/
        $(document).ready(function() {
            $('#cancel').click(function() {
                $('#request-popup').hide();
            });
        });

        $(document).ready(function() {
            $('#show').click(function() {
                $('#request-popup').show();
            });
        });

        function hidepop1() {
            $('#request-popup').hide();

        }

        function hidepop2() {
            $('#request-popup-click').hide();

        }

        function mouseclick() {
            if ($('#request-popup-click').css("display") == "none") {
                $('#request-popup-click').show();
            } else {
                $('#request-popup-click').hide();
            }
        }

        $(document).ready(function() {
            var str = $('#reply').val();
            if (str != "null") {
                console.log("답변완료 처리");
                // $('#replyCompleted').show();
            }

        });

        /*구매가능개수 제한 & 장바구니, 구매하기 버튼 클릭*/
        var max = 5;

        function cart() {
            var cnt = $(`#quantity`).val();
            if (cnt != null) {
                if (cnt > 5) {
                    alert("최대 구매 가능 개수는 " + max + "개 입니다.");
                } else if (cnt <= 0) {
                    alert("최소 구매수량은 1개입니다.");
                } else {
                    confirm("장바구니에 물품이 담겼습니다. 장바구니로 이동할까요?");
                }
            }
        }

        function orderNow() {
            var cnt = $(`#quantity`).val();
            if (cnt != null) {
                if (cnt > 5) {
                    alert("최대 구매 가능 개수는 " + max + "개 입니다.");
                } else if (cnt <= 0) {
                    alert("최소 구매수량은 1개입니다.");
                } else {
                    confirm("결제 페이지로 이동합니다.");
                }
            }
        }

        /*별점찍기*/
        function changeStarColor(ratingArg) {
            let rating = ratingArg;
            for (let i = 1; i <= rating; i++) {
                $(`.star-${i}`).attr("id", "selected");
            }
            for (let i = rating + 1; i <= 5; i++) {
                $(`.star-${i}`).attr("id", "unselected");
            }
            $(".autoRating > span").html(rating);
        }

        let selectedRating = 0;
        $("i").hover(function() {
            let starClass = parseInt($(this).attr("class").split("star-")[1]);
            changeStarColor(starClass);
        }, function() {
            if (selectedRating == 0) {
                changeStarColor(0);
                $(".autoRating > span").html("0");
            } else {
                changeStarColor(selectedRating);
            }
        });

        $("i").click(function() {
            let starClass = parseInt($(this).attr("class").split("star-")[1]);
            changeStarColor(starClass);
            selectedRating = starClass;
        });

        /* 평균별점*/
        var sum = 0;
        var arr = [5, 2, 4];
        for (i = 0; i < arr.length; i++) {
            console.log(arr[i]);
            sum = sum + arr[i];
        }
        var avg = (sum / arr.length).toFixed(1);
        $(".average > span").html(avg);
    </script>
    <script type="text/javascript" src="/js/search.js"></script>

</body>

</html>