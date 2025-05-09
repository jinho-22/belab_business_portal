<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <!DOCTYPE html>
    <html xmlns="http://www.w3.org/1999/xhtml" lang="ko">

    <head>
      <title>비이랩 홈페이지</title>
      <meta charset="UTF-8" />
      <meta http-equiv="X-UA-Compatible" content="IE=edge" />
      <meta http-equiv="imagetoolbar" content="no" />
      <meta name="viewport" content="width=device-width, initial-scale=1.0" />
      <meta name="format-detection" content="telephone=no" />
      <link rel="stylesheet" href="/css/setting.css" />
      <link rel="stylesheet" href="/css/plugin.css" />
      <link rel="stylesheet" href="/css/templatehouse.css" />
      <link rel="stylesheet" href="/css/style.css" />
    </head>

    <body class="<c:choose>
  <c:when test=" ${sessionScope.loggedInUser !=null}">
      logged-in
      </c:when>
      <c:otherwise>
        logged-out
      </c:otherwise>
      </c:choose>">
      <div class="th-layout-header">
        <header class="butti-N1" id="unm5z1y12U">
          <div class="header-container ">
            <div class="header-left">
              <h1 class="header-title">
                <a href="/">
                  <img src="/images/logo.png" alt="로고" />
                </a>
              </h1>
            </div>
            <div class="header-center">
              <div class="header-gnb">
                <ul class="header-gnblist">
                  <li class="header-gnbitem on">
                    <a class="header-gnblink" href="/Greeting">
                      <span>회사 소개</span>
                    </a>
                    <ul class="header-sublist">
                      <li class="header-subitem on">
                        <a class="p3 header-sublink" href="/Greeting">
                          <span>인사말</span>
                        </a>
                      </li>
                      <li class="header-subitem">
                        <a class="p3 header-sublink" href="/Directions">
                          <span>오시는길</span>
                        </a>
                      </li>
                    </ul>
                  </li>
                  <li class="header-subitem on">
                    <a class="header-gnblink" href="/platform/cloud"> <span>클라우드 사업부</span>
                    </a>
                  </li>
                  <!-- <li class="header-gnbitem on">
                    <a class="header-gnblink" href="/errorpage"> <span>SI 사업부</span>
                    </a>
                    <ul class="header-sublist">
                      <li class="header-subitem on">
                        <a class="header-sublink p3" href="/errorpage">
                          <span>SI</span>
                        </a>
                      </li>
                      <li class="header-subitem on">
                        <a class="header-sublink p3" href="/errorpage">
                          <span>SM</span>
                        </a>
                      </li>
                      <li class="header-subitem on">
                        <a class="header-sublink p3" href="/errorpage">
                          <span>NI</span>
                        </a>
                      </li>
                    </ul>
                  </li> -->
                  <li class="header-gnbitem on">
                    <a class="header-gnblink" href="/platform/main"> <span>플랫폼 사업부</span>
                    </a>
                    <ul class="header-sublist">
                      <li class="header-subitem on">
                        <a class="header-sublink p3" href="/platform/data">
                          <span>기반 데이터 사업부</span>
                        </a>
                      </li>
                      <li class="header-subitem on">
                        <a class="header-sublink p3" href="/platform/ai">
                          <span>응용데이터 사업부</span>
                        </a>
                      </li>
                      <li class="header-subitem on">
                        <a class="header-sublink p3" href="/errorpage">
                          <span>SI 사업부</span>
                        </a>
                      </li>
                    </ul>
                  </li>
                  <li class="header-gnbitem on">
                    <a class="header-gnblink" href="/futurebiz/main">
                      <span>미래전략 사업부</span>
                    </a>
                    <ul class="header-sublist">
                      <li class="header-subitem on">
                        <a class="header-sublink p3" href="/futurebiz/belog">
                          <span>BeLOG</span>
                        </a>
                      </li>
                      <li class="header-subitem on">
                        <a class="header-sublink p3" href="/futurebiz/bemon">
                          <span>BeMON</span>
                        </a>
                      </li>
                       
                        <li class="header-subitem on">
                        <a class="header-sublink p3" href="/futurebiz/bepet">
                          <span>BePET</span>
                        </a>
                      </li>
                     
                      <li class="header-subitem on">
                        <a class="header-sublink p3" href="/futurebiz/beschool">
                          <span>BeSCHOOL</span>
                        </a>
                      </li>
                      <li class="header-subitem on">
                        <a class="header-sublink p3" href="/futurebiz/begreen">
                          <span>BeGREEN</span>
                        </a>
                      </li>
                      <li class="header-subitem on">
                        <a class="header-sublink p3" href="/futurebiz/bespot">
                          <span>BeSPOT</span>
                        </a>
                      </li>
                      <li class="header-subitem on">
                        <a class="header-sublink p3" href="/futurebiz/beshop">
                          <span>BeSHOP</span>
                        </a>
                      </li>
                    </ul>
                  </li>
                  <li class="header-gnbitem on">
                    <a class="header-gnblink" href="/notice/boardList">
                      <span>고객 센터</span>
                    </a>
                    <ul class="header-sublist">
                      <li class="header-subitem on">
                        <a class="header-sublink p3" href="/notice/boardList">
                          <span>공지사항</span>
                        </a>
                      </li>
                      <li class="header-subitem on">
                        <a class="header-sublink p3" href="/notice/customers">
                          <span>고객의 소리</span>
                        </a>
                      </li>
                      <li class="header-subitem on">
                        <a class="header-sublink p3" href="/files/boardList">
                          <span>자료실</span>
                        </a>
                      </li>
                    </ul>
                  </li>
                </ul>
              </div>
            </div>
            <div class="header-right">
              <button class="btn-momenu">
                <i class="ico-hamburger"></i>
                <i class="ico-hamburger"></i>
                <i class="ico-hamburger"></i>
              </button>
            </div>
            <div class="header-fullmenu fullmenu-top">
              <div class="fullmenu-wrapper">
                <div class="fullmenu-head">
                  <h4 class="fullmenu-title">
                    <a href="/">
                      <img src="/images/logo.png" alt="로고" />
                    </a>
                  </h4>
                </div>
                <ul class="fullmenu-gnblist">
                  <li class="fullmenu-gnbitem">
                    <a class="h6 fullmenu-gnblink" href="/Greeting">
                      <span>회사 소개</span>
                    </a>
                    <ul class="fullmenu-sublist">
                      <li class="fullmenu-subitem">
                        <a class="p1 fullmenu-sublink" href="/Greeting">
                          <span>인사말</span>
                        </a>
                      </li>
                      <li class="fullmenu-subitem">
                        <a class="p1 fullmenu-sublink" href="/Directions">
                          <span>오시는길</span>
                        </a>
                      </li>
                    </ul>
                  </li>
                  <li class="fullmenu-gnbitem">
                    <a class="h6 fullmenu-gnblink" href="/platform/cloud">
                      <span>클라우드 사업부</span>
                    </a>
                  </li>
                  <!-- <li class="fullmenu-gnbitem">
                    <a class="h6 fullmenu-gnblink" href="/errorpage">
                      <span>SI 사업부</span>
                    </a>
                    <ul class="fullmenu-sublist">
                      <li class="fullmenu-subitem">
                        <a class="p1 fullmenu-sublink" href="/errorpage">
                          <span>SI</span>
                        </a>
                      </li>
                      <li class="fullmenu-subitem">
                        <a class="p1 fullmenu-sublink" href="/errorpage">
                          <span>SM</span>
                        </a>
                      </li>
                      <li class="fullmenu-subitem">
                        <a class="p1 fullmenu-sublink" href="/errorpage">
                          <span>NI</span>
                        </a>
                      </li>
                    </ul>
                  </li> -->
                  <li class="fullmenu-gnbitem">
                    <a class="h6 fullmenu-gnblink" href="/platform/main">
                      <span>플랫폼 사업부</span>
                    </a>
                    <ul class="fullmenu-sublist">
                      <li class="fullmenu-subitem">
                        <a class="p1 fullmenu-sublink" href="/platform/data">
                          <span>기반 데이터 사업부</span>
                        </a>
                      </li>
                      <li class="fullmenu-subitem">
                        <a class="p1 fullmenu-sublink" href="/platform/ai">
                          <span>응용데이터 사업부</span>
                        </a>
                      </li>
                      <li class="fullmenu-subitem">
                        <a class="p1 fullmenu-sublink" href="/errorpage">
                          <span>SI 사업부</span>
                        </a>
                      </li>
                    </ul>
                  </li>
                  <li class="fullmenu-gnbitem">
                    <a class="h6 fullmenu-gnblink" href="/futurebiz/main">
                      <span>미래전략 사업부</span>
                    </a>
                    <ul class="fullmenu-sublist">
                      <li class="fullmenu-subitem">
                        <a class="p1 fullmenu-sublink" href="/futurebiz/belog">
                          <span>BeLOG</span>
                        </a>
                      </li>
                      <li class="fullmenu-subitem">
                        <a class="p1 fullmenu-sublink" href="/futurebiz/bemon">
                          <span>BeMON</span>
                        </a>
                      </li>
                      
                      <li class="fullmenu-subitem">
                        <a class="p1 fullmenu-sublink" href="bepet">
                          <span>BePET</span>
                        </a>
                      </li>
                     
                      <li class="fullmenu-subitem">
                        <a class="p1 fullmenu-sublink" href="/futurebiz/beschool">
                          <span>BeSCHOOL</span>
                        </a>
                      </li>
                      <li class="fullmenu-subitem">
                        <a class="p1 fullmenu-sublink" href="/futurebiz/begreen">
                          <span>BeGREEN</span>
                        </a>
                      </li>
                      <li class="fullmenu-subitem">
                        <a class="p1 fullmenu-sublink" href="/futurebiz/bespot">
                          <span>BeSPOT</span>
                        </a>
                      </li>
                      <li class="fullmenu-subitem">
                        <a class="p1 fullmenu-sublink" href="/futurebiz/beshop">
                          <span>BeSHOP</span>
                        </a>
                      </li>
                    </ul>
                  </li>
                  <li class="fullmenu-gnbitem">
                    <a class="h6 fullmenu-gnblink" href="/notice/boardList">
                      <span>고객 센터</span>
                    </a>
                    <ul class="fullmenu-sublist">
                      <li class="fullmenu-subitem">
                        <a class="p1 fullmenu-sublink" href="/notice/boardList">
                          <span>공지사항</span>
                        </a>
                      </li>
                      <li class="fullmenu-subitem">
                        <a class="p1 fullmenu-sublink" href="/notice/customers">
                          <span>고객의 소리</span>
                        </a>
                      </li>
                      <li class="fullmenu-subitem">
                        <a class="p1 fullmenu-sublink" href="/files/boardList">
                          <span>자료실</span>
                        </a>
                      </li>
                    </ul>
                  </li>
                </ul>
              </div>
              <button class="fullmenu-close">
                <img src="/icons/ico_close_white.svg" alt="닫기" />
              </button>
            </div>
          </div>
        </header>
      </div>
      <script src="/js/setting.js"></script>
      <script src="/js/plugin.js"></script>
      <script src="/js/templatehouse.js"></script>
      <script src="/js/style.js"></script>
    </body>

    </html>