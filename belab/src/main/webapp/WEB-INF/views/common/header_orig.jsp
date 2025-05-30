<%@ page language="java" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>비이랩 홈페이지</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        /* top-bar 스타일 */
        .top-bar {
            padding: 5px 20px;
            font-size: 15px;
            margin-right: 30px;
            margin-top: 10px;
        }

        .top-bar a {
            text-decoration: none;
            margin-left: 15px;
            transition: color 0.3s ease; /* 색상 전환 효과 */
        }

        .navbar-toggler-icon {
            background-image: url("data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 30 30'%3E%3Cpath fill='white' stroke='black' stroke-width='2' d='M4 7h22M4 15h22M4 23h22'/%3E%3C/svg%3E");
        }

        .top-bar a:hover {
            text-decoration: underline;
        }

        /* 네비게이션 바 기본 설정 */
        .navbar {
            margin-bottom: 10px;
        }

        @media (min-width: 992px) {
            .headerbar {
                position: absolute;
                top: 0;
                width: 100%;
                z-index: 1000; /* 헤더가 항상 위에 보이도록 설정 */
                background-color: transparent; /* 기본 배경 제거 */
                transition: background-color 0.3s ease; /* 배경 전환 효과 */
            }

            .headerbar * {
                color: #fff;
            }

            .headerbar:hover {
                background-color: #fff; /* 배경 흰색으로 변경 */
                color: #000;
            }

            .headerbar:hover * {
                color: #000; /* 자식 태그들의 글씨 색 모두 검정색으로 변경 */
            }
        }

        @media (max-width: 992px) {
            .headerbar {
                position: absolute;
                z-index: 1000; /* 헤더가 항상 위에 보이도록 설정 */
                top: 0;
                width: 100%;
                background-color: #fff; /* 기본 배경 제거 */
            }

            .headerbar * {
                color: #000;
            }
        }

        /* 로고 이미지 크기 조정 */
        .navbar-brand img {
            max-width: 100%; /* 부모 요소의 크기를 초과하지 않음 */
            height: auto; /* 비율을 유지하며 높이를 자동 조정 */
            max-height: 50px; /* 최대 높이 제한 */
        }

        /* 메인 메뉴 글씨 크기 조정 */
        .navbar-nav .nav-link {
            font-size: clamp(1.0rem, 1.2vw, 1.5rem); /* 메인 메뉴 글씨 크기 */
            font-weight: bold; /* 글씨를 굵게 설정 */
            margin: 0 25px; /* 좌우 간격 추가 */
        }

        /* 드롭다운 메뉴 글씨 크기 조정 */
        .dropdown-menu .dropdown-item {
            font-size: 16px; /* 드롭다운 메뉴 글씨 크기 */
        }

        /* 드롭다운 메뉴를 hover로 표시 */
        @media (min-width: 992px) {
            /* 데스크톱 화면에서만 적용 */
            .navbar .dropdown:hover .dropdown-menu {
                display: block; /* hover 시 드롭다운 메뉴 표시 */
                margin-top: 0; /* 기본 간격 제거 */
            }
        }

        /* 로그인 상태에 따른 클래스 */
        .hidden {
            display: none;
        }
        .logged-in .hidden {
            display: inline-block;
        }
        .logged-out .hidden {
            display: inline-block;
        }
    </style>
</head>
<body class="<c:choose>
    <c:when test="${sessionScope.loggedInUser != null}">
        logged-in
    </c:when>
    <c:otherwise>
        logged-out
    </c:otherwise>
</c:choose>">
<div class="headerbar">
    <div class="top-bar d-flex justify-content-end">
        <c:choose>
    <c:when test="${sessionScope.loggedInUser != null}">
        <!-- 로그인된 경우 -->
        <a href="/administrator/logout">LOGOUT</a>
        <a href="/mypage/intro">My Page</a>
        <c:if test="${sessionScope.loggedInUser.role == 'admin'}">
            <a href="/admin">Admin</a>
        </c:if>
    </c:when>
    <c:otherwise>
        <!-- 로그인되지 않은 경우 -->
        <a href="/administrator/login">LOGIN</a>
        <a href="/member/userjoin">회원가입</a>
    </c:otherwise>
</c:choose>
    </div>

<!-- 네비게이션 바 -->
<nav class="navbar navbar-expand-lg">
    <div class="container-fluid d-flex align-items-center">
        <!-- 로고 -->
        <a class="navbar-brand me-3" href="/">
            <img src="/images/logo.png" alt="Logo" class="img-fluid">
        </a>

        <!-- 햄버거 버튼 -->
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                data-bs-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <!-- 메뉴 -->
        <div class="collapse navbar-collapse ms-3" id="navbarSupportedContent">
            <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="/main" id="navbarDropdown1" role="button"
                       data-bs-toggle="dropdown" aria-expanded="false">
                        회사 소개
                    </a>
                    <ul class="dropdown-menu" aria-labelledby="navbarDropdown1">
                        <li><a class="dropdown-item" href="/Greeting">인사말</a></li>
                        <li><a class="dropdown-item" href="/Directions">오시는 길</a></li>
                    </ul>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="/main" id="navbarDropdown2" role="button"
                       data-bs-toggle="dropdown" aria-expanded="false">
                        Data Service
                    </a>
                    <ul class="dropdown-menu" aria-labelledby="navbarDropdown2">
                        <li><a class="dropdown-item" href="/main">DB</a></li>
                        <li><a class="dropdown-item" href="/main">Web</a></li>
                        <li><a class="dropdown-item" href="/main">WAS</a></li>
                        <li><a class="dropdown-item" href="/main">DataHubPlatForm</a></li>
                        <li><a class="dropdown-item" href="/main">Data Analysis</a></li>
                    </ul>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="/main" id="navbarDropdown3" role="button"
                       data-bs-toggle="dropdown" aria-expanded="false">
                        Platform Service
                    </a>
                    <ul class="dropdown-menu" aria-labelledby="navbarDropdown3">
                        <li><a class="dropdown-item" href="/main">MSP(cloud)</a></li>
                        <li><a class="dropdown-item" href="/main">Hosting</a></li>
                        <li><a class="dropdown-item" href="/main">K-PaaS</a></li>
                    </ul>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="/main" id="navbarDropdown4" role="button"
                       data-bs-toggle="dropdown" aria-expanded="false">
                        Content Service
                    </a>
                    <ul class="dropdown-menu" aria-labelledby="navbarDropdown4">
                        <li><a class="dropdown-item" href="/main">BeLog</a></li>
                        <li><a class="dropdown-item" href="/main">BeMON</a></li>
                        <li><a class="dropdown-item" href="/main">BePET</a></li>
                    </ul>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="/main" id="navbarDropdown5" role="button"
                       data-bs-toggle="dropdown" aria-expanded="false">
                        고객 센터
                    </a>
                    <ul class="dropdown-menu" aria-labelledby="navbarDropdown5">
                        <li><a class="dropdown-item" href="/main">공지사항</a></li>
                        <li><a class="dropdown-item" href="/notice/boardList">문의게시판</a></li>
                        <li><a class="dropdown-item" href="/files/boardList">자료실</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
</nav>
</div>

<!-- 부트스트랩 JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
<script>
  // 햄버거 메뉴 닫기 기능
  const navbarCollapse = document.querySelector('#navbarSupportedContent');
  const navbarToggler = document.querySelector('.navbar-toggler');

  // 메뉴 외부 클릭 시 닫기
  document.addEventListener('click', function (event) {
    if (!navbarCollapse.contains(event.target) && !navbarToggler.contains(event.target)) {
      const bsCollapse = new bootstrap.Collapse(navbarCollapse, { toggle: false });
      bsCollapse.hide();
    }
  });

  // 메뉴에서 커서가 나갔을 때 닫기
  navbarCollapse.addEventListener('mouseleave', function () {
    const bsCollapse = new bootstrap.Collapse(navbarCollapse, { toggle: false });
    bsCollapse.hide();
  });
  // 스크롤 시 닫기
  window.addEventListener('scroll', function() {
    const navbarCollapse = document.querySelector('#navbarSupportedContent');
    const bsCollapse = new bootstrap.Collapse(navbarCollapse, { toggle: false });
    bsCollapse.hide();
  });
  // 창 밖으로 커서가 나갔을 때 닫기
  window.addEventListener('mouseout', (event) => {
    // 창 밖으로 나갔는지 확인
    if (event.relatedTarget === null || event.relatedTarget === window) {
      const bsCollapse = new bootstrap.Collapse(navbarCollapse, { toggle: false });
      bsCollapse.hide(); // 메뉴 닫기
    }
  });

</script>
</body>
</html>
