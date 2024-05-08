<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    info=""%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- <link rel="icon" href="http://192.168.10.210/jsp_prj/common/favicon.ico"/> -->
<!--bootstrap 시작-->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
<!--bootstrap 끝-->
<link rel="stylesheet" href="http://192.168.10.213/jsp_prj/common/css/main.css" type="text/css" media="all" />
<link rel="stylesheet" href="http://192.168.10.213/jsp_prj/common/css/board.css" type="text/css" media="all" />
<link rel="stylesheet" href="http://192.168.10.213/jsp_prj/common/css/custom.css" type="text/css" media="all" />
<!--jquery CDN 시작-->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<!--jquery CDN 끝-->

<style type="text/css">
	
	
</style>
<script type="text/javascript">
	$(function(){
	
		
	});//ready
</script>
</head>
<body>
<div>


<div class="job_con">
	<div class="inner">
		<div class="sub_tit">
			<h3>문의</h3>
		</div>
	</div>
</div>


<form name="searchForm" id="searchForm" action="index.jsp" method="get">
		<div class="program_search">
			
			
			
			<select id="stype" name="stype" title="검색을 선택해주세요."><!-- property:검색을 선택하세요. -->
				<option value="all" ><!-- property:제목+내용 -->제목+내용</option>
				<option value="title" ><!-- property:제목 -->제목</option>
				<option value="contents" ><!-- property:내용 -->내용</option>
				<option value="name" ><!-- property:작성자 -->작성자</option>
			</select>
		
			<span>
				<input type="text" name="sval" id="sval" value="" />
				<a href="javascript:;" onclick="$('#searchForm').submit()" ><!-- property:검색 -->검색</a>
			</span>
		</div>
		</form>
		
		

<!-- 프로그램시작 -->
	<div class="programCon" data-aos="fade-down" data-aos-delay="400">
		<div class="program_table">
			<table>
				<colgroup>
					<col class="w80 none1000" />
					<col width="*" />
					<col class="w100" />
					<col class="w150" />
					<col class="w70" />
				</colgroup>
				<thead>
					<tr>
						<th class="none1000">
						<!-- property:번호 -->
						번호
						</th>
						<th>
						<!-- property:제목 -->
						제목
						</th>
						<th>
						<!-- property:작성자 -->
						작성자
						</th>
						<th>
						<!-- property:작성일 -->
						작성일
						</th>
						<th>
						<!-- property:조회수 -->
						조회수
						</th>
					</tr>
				</thead>
				<tbody class="programBody">
				
					<tr>
						<td class="none1000">
						
						78
						
						</td>
						<td class="tit" style='cursor:pointer;' onclick="location.href='read.jsp?reqPageNo=1&no=86'">
							
							<p class="mw100">

								
								 2024년 선거일 휴무 안내
								
							</p>
							</td>
						<td><p>SIST</p></td>
						<td>
						
						2024-04-10
						
						
						
						</td>
						<td>
						<span class="hit"><img src="/manage/img/ucount_icon.png" /> </span>190				
						</td>
					</tr>
					
				
					<tr>
						<td class="none1000">
						
						77
						
						</td>
						<td class="tit" style='cursor:pointer;' onclick="location.href='read.jsp?reqPageNo=1&no=85'">
							
							<p class="mw100">

								
								 2024년 삼일절 휴무 안내
								
							</p>
							</td>
						<td><p>SIST</p></td>
						<td>
						
						2024-02-29
						
						
						
						</td>
						<td>
						<span class="hit"><img src="/manage/img/ucount_icon.png" /> </span>697				
						</td>
					</tr>
					
				
					<tr>
						<td class="none1000">
						
						76
						
						</td>
						<td class="tit" style='cursor:pointer;' onclick="location.href='read.jsp?reqPageNo=1&no=84'">
							
							<p class="mw100">

								
								 2024년 설연휴 휴무 안내
								
							</p>
							</td>
						<td><p>SIST</p></td>
						<td>
						
						2024-02-08
						
						
						
						</td>
						<td>
						<span class="hit"><img src="/manage/img/ucount_icon.png" /> </span>940				
						</td>
					</tr>
					
				
					<tr>
						<td class="none1000">
						
						75
						
						</td>
						<td class="tit" style='cursor:pointer;' onclick="location.href='read.jsp?reqPageNo=1&no=83'">
							
							<p class="mw100">

								
								 2024년 설연휴 휴무 안내
								
							</p>
							</td>
						<td><p>SIST</p></td>
						<td>
						
						2023-12-29
						
						
						
						</td>
						<td>
						<span class="hit"><img src="/manage/img/ucount_icon.png" /> </span>1469				
						</td>
					</tr>
					
				
					<tr>
						<td class="none1000">
						
						74
						
						</td>
						<td class="tit" style='cursor:pointer;' onclick="location.href='read.jsp?reqPageNo=1&no=82'">
							
							<p class="mw100">

								
								 2023년 한글날 휴무 안내
								
							</p>
							</td>
						<td><p>SIST</p></td>
						<td>
						
						2023-10-07
						
						
						
						</td>
						<td>
						<span class="hit"><img src="/manage/img/ucount_icon.png" /> </span>2164				
						</td>
					</tr>
					
				
					<tr>
						<td class="none1000">
						
						73
						
						</td>
						<td class="tit" style='cursor:pointer;' onclick="location.href='read.jsp?reqPageNo=1&no=81'">
							
							<p class="mw100">

								
								 2023년 추석 휴무일 안내
								
							</p>
							</td>
						<td><p>SIST</p></td>
						<td>
						
						2023-09-27
						
						
						
						</td>
						<td>
						<span class="hit"><img src="/manage/img/ucount_icon.png" /> </span>1892				
						</td>
					</tr>
					
				
					<tr>
						<td class="none1000">
						
						72
						
						</td>
						<td class="tit" style='cursor:pointer;' onclick="location.href='read.jsp?reqPageNo=1&no=80'">
							
							<p class="mw100">

								
								 2023년 근로자의 날 휴무 안내
								
							</p>
							</td>
						<td><p>관리자</p></td>
						<td>
						
						2023-04-29
						
						
						
						</td>
						<td>
						<span class="hit"><img src="/manage/img/ucount_icon.png" /> </span>2847				
						</td>
					</tr>
					
				
					<tr>
						<td class="none1000">
						
						71
						
						</td>
						<td class="tit" style='cursor:pointer;' onclick="location.href='read.jsp?reqPageNo=1&no=79'">
							
							<p class="mw100">

								
								 2023년 설연휴 휴관 안내
								
							</p>
							</td>
						<td><p>관리자</p></td>
						<td>
						
						2023-01-21
						
						
						
						</td>
						<td>
						<span class="hit"><img src="/manage/img/ucount_icon.png" /> </span>2784				
						</td>
					</tr>
					
				
					<tr>
						<td class="none1000">
						
						70
						
						</td>
						<td class="tit" style='cursor:pointer;' onclick="location.href='read.jsp?reqPageNo=1&no=78'">
							
							<p class="mw100">

								
								 쌍용교육센터 휴관 안내
								
							</p>
							</td>
						<td><p>관리자</p></td>
						<td>
						
						2022-12-30
						
						
						
						</td>
						<td>
						<span class="hit"><img src="/manage/img/ucount_icon.png" /> </span>2982				
						</td>
					</tr>
					
				
					<tr>
						<td class="none1000">
						
						69
						
						</td>
						<td class="tit" style='cursor:pointer;' onclick="location.href='read.jsp?reqPageNo=1&no=77'">
							
							<p class="mw100">

								
								 2022년 10월 휴무일 안내
								
							</p>
							</td>
						<td><p>강태림</p></td>
						<td>
						
						2022-09-30
						
						
						
						</td>
						<td>
						<span class="hit"><img src="/manage/img/ucount_icon.png" /> </span>2467				
						</td>
					</tr>
					
				
					
				</tbody>
			</table>
		</div>
		
		<div class='programPage'> <a class='active page_first'>1</a><a href='/customer/notice/index.jsp?reqPageNo=2' class=''>2</a>
		<a href='/customer/notice/index.jsp?reqPageNo=3' class=''>3</a><a href='/customer/notice/index.jsp?reqPageNo=4' class=''>4</a>
		
		</div>
		
		
	</div>

        
</div>
</body>
</html>