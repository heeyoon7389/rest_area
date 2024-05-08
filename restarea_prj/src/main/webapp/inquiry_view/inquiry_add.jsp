<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    info=""%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!--<link rel="icon" href="http://192.168.10.210/jsp_prj/common/favicon.ico"/>-->
<!--bootstrap 시작-->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
<!--bootstrap 끝-->
<link rel="stylesheet" href="http://192.168.10.213/jsp_prj/common/css/main.css" type="text/css" media="all" />
<link rel="stylesheet" href="http://192.168.10.213/jsp_prj/common/css/board.css" type="text/css" media="all" />
<link rel="stylesheet" href="http://192.168.10.213/jsp_prj/common/css/common1.css" type="text/css" media="all" />
<link rel="stylesheet" href="http://192.168.10.213/jsp_prj/common/css/vip.css" type="text/css" media="all" />
<!--jquery CDN 시작-->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<!--jquery CDN 끝-->

<style type="text/css">
	
	@media (min-width: 1340px) {
    .inquiry_form {
        display: flex;
	        justify-content: space-between;
	        max-width: 1130px;
	        margin: 0 auto;
	        padding: 40px 0;
    }
}


</style>
<script type="text/javascript">
	$(function(){
	
	});//ready
</script>
</head>
<body>
<div>

<div class="vip_popup_wrap">
	<h1 class="tit_vippop">문의하기</h1>

	<div class="inquiry_form">
	<form action="inquiry">
		<fieldset>
			<legend>판매자에게 문의하기 폼</legend>
			<table class="tb_questionform">
				<caption>문의종류, 상품명, 이름ID, 제목, 내용에 관한 테이블</caption>
				<colgroup>
					<col style="width:92px">
					<col>
				</colgroup>
				<tbody>
					
					<tr>
						<th>이름</th>
						<td>이희윤(yun*****)</td>
					</tr>
					<tr>
						<th>제목</th>
						<td><input type="text" title="제목" class="ip_viptxt" id="qa_title"></td>
					</tr>
					<tr>
						<th>내용</th>
						<td>
							<textarea title="내용" class="ip_viptxtarea" id="ta_content"></textarea>
							<strong class="tit_caution">문의 시 유의해주세요!</strong>
							<ul class="lst_caution">
								<li>회원간 직거래로 발생하는 피해에 대해 G마켓은 책임지지 않습니다.</li>
								<li>주민등록번호, 연락처 등의 정보는 타인에게 노출될 경우 개인정보 도용의 위험이 있으니 주의해 주시기 바랍니다.</li>
								<li>비방, 광고, 불건전한 내용의 글은 관리자에 의해 사전 동의 없이 삭제될 수 있습니다.</li>
							</ul>
						</td>
					</tr>
				</tbody>
			</table>
			<div class="info_formbottom">
				<p>문의하신 내용의 답변은 고객님의 <span class="txt_emp">회원정보 &gt; 이메일</span>로 보내드립니다.</p>
				<p class="check_line">
					<span class="frm_wrap js_checkbox">
						<input type="checkbox" id="check_secret" class="ds_checkbox" data-montelena-acode="200000574" onclick="pdsClickLog('200000574', 'utility', {});">
						<label class="label" for="check_secret">비밀글로 문의하기<em class="txt_sub">(판매자와 본인만 확인 가능합니다.)</em></label>
					</span>
				</p>
			</div>
			<p class="bottom_btns">
				<a href="javascript:;insertQna('3696571625')" class="bt_confirm bt_vipround100"><span>확인</span></a>
				<a href="javascript:window.close();" class="bt_cancel bt_vipround100"><span>취소</span></a>
			</p>
		</fieldset>
	</form>
	</div>
	<p class="bar_close"><a href="#" class="bt_close" onclick="window.close();">닫기<span class="ic">X</span></a></p>
</div>

			
</div>
</body>
</html>