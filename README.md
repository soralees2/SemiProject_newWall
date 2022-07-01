# NEW WAL

유기동물 후원 및 반려동물 커뮤니티 사이트 (kh 정보교육원 Semi Team Project)

## 프로젝트 개요

-	유기 동물과 유실동물들의 열악한 상황을 후원을 통하여 지원해주며 유기 동물 입양 신청 및 입양 후기, 그리고 커뮤니티형식의 게시판을 통해 임시보호자와 유실 동물 보호자들의 소통의 장을 마련하기위한 커뮤니티 사이트입니다.

## 개발 일정
- 2021.06.25 ~ 2021.07.13

## 인원
- 6명

## 구현 기능
1. 메인
    -   컨텐츠 별 등록 날짜 순으로 노출되며 클릭 시 해당 상세 페이지로 링크 이동
    -	Swiper.js를 활용한 메인 비주얼 영역 슬라이더 및 FullPage.js를 활용한 원페이지 스크롤링 UI구현
2. 입양
    -	관리자가 등록한 동물 정보 리스트 카테고리 선택 및 검색어 입력 후 검색 기능 구현
    -	유기동물 상세 정보 확인 및 관리자가 에디터로 등록한 구조 히스토리 확인
    -	입양 신청 입력란 필수 기재 항목 체크 및 정규식을 통한 올바른 입력 양식 확인
    -	회원일 시 입양 신청 상태 완료일 경우 입양 후기 게시판에 게시글 작성 기능 활성화
    -	본인이 작성한 게시글에 한하여 수정, 삭제 기능
    -	업로드 된 입양 후기 게시물 좋아요 기능
3. 관리자
    -	동물 정보 등록 시 상세 페이지에 올라갈 동물 이미지 다중 업로드
    -	Summernote Editor을 이용한 동물 구조 히스토리 작성
    -	회원 입양 신청 상태 ajax를 통하여 모달로 정보 확인 후 상태 변경 기능

## 개발환경

### IDE / Tools
    - Eclipse
    - Sql Developer
    - Visual Studio Code
### DataBase
    - Oracle 11g
    - AWS RDS
### Server
    - Apache Tomcat 9
### Development Language
    - Java 15
    - Ajax
    - HTML5
    - JSP
    - CSS3
    - JavaScript
    - Jquery
### etc
    - Bootstrap 5.1
    - I'm port (결제 API)
    - Daum postcode (카카오 우편번호 서비스 API)
    - SummerNote Editer 4(에디터 API)
    - Swiper.js
    - SweetAlert2
