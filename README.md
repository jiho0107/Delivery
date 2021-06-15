# Delivery
로그인 성공 시 원하는 메뉴를 원하는 수량만큼 장바구니에 담고 이를 주문하는 프로젝트입니다.
delivery.controller패키지에는 각각의 컨트롤러들을 연결시켜주는 FrontController와 각 서비스를 처리해주는 Controller들이 있다.
delivery.dao패키지에는 데이터베이스에 접근해주는 함수들이 정의되어있고 delivery.service패키지에는 dao함수를 호출시켜주는 함수들이 존재한다.
delivery.vo에는 객체의 정보를 담고있을 단순한 클래스 파일들이 있다.
WebContents파일의 result값에는 서비스를 요청하고 난 뒤의 결과 파일들이 있다.
