<!-------------------------------------------------------------------------------------------->	
<!-- 프로그램 : 쇼핑몰 따라하기 실습지시서 (실습용 HTML)                                    -->
<!--                                                                                        -->
<!-- 만 든 이 : 윤형태 (2008.2 - 2017.12)                                                    -->
<!-------------------------------------------------------------------------------------------->	
<?
	include "../common.php";
	$query="select * from jumuns order by no8";
	$result=mysqli_query($db,$query);
	if(!$result) exit("에러:$query");
	$row=mysqli_fetch_array($result);
	$count=mysqli_num_rows($result);
?>
<html>
<head>
<title>쇼핑몰 홈페이지</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<link rel="stylesheet" href="include/font.css">
<script language="JavaScript" src="include/common.js"></script>
<script>
	function go_update(no,pos)
	{
		state=form1.state[pos].value;
		location.href="jumun_update.html?no="+no+"&state="+state+"&page="+form1.page.value+
			"&sel1="+form1.sel1.value+"&sel2="+form1.sel2.value+"&text1="+form1.text1.value+
			"&day1_y="+form1.day1_y.value+"&day1_m="+form1.day1_m.value+"&day1_d="+form1.day1_d.value+
			"&day2_y="+form1.day2_y.value+"&day2_m="+form1.day2_m.value+"&day2_d="+form1.day2_d.value;
	}
</script>
</head>

<body style="margin:0">

<center>

<br>
<script> document.write(menu());</script>

<form name="form1" method="post" action="jumun.php">
<input type="hidden" name="page" value="<?=$page?>">

<table width="800" border="0" cellspacing="0" cellpadding="0">
	<tr height="40">
		<td align="left"  width="70" valign="bottom">&nbsp 주문수 : <font color="#FF0000"><?=$count?></font></td>
		<td align="right" width="730" valign="bottom">
			기간 : 
			<input type="text" name="day1_y" size="4" value="2015">
			<select name="day1_m">
				<option value="01" selected>1</option>
				<option value="02">2</option>
				<option value="03">3</option>
				<option value="04">4</option>
				<option value="05">5</option>
				<option value="06">6</option>
				<option value="07">7</option>
				<option value="08">8</option>
				<option value="09">9</option>
				<option value="10">10</option>
				<option value="11">11</option>
				<option value="12">12</option>
			</select>
			<select name="day1_d">
				<option value="01" selected>1</option>
				<option value="02">2</option>
				<option value="03">3</option>
				<option value="04">4</option>
				<option value="05">5</option>
				<option value="06">6</option>
				<option value="07">7</option>
				<option value="08">8</option>
				<option value="09">9</option>
				<option value="10">10</option>
				<option value="11">11</option>
				<option value="12">12</option>
				<option value="13">13</option>
				<option value="14">14</option>
				<option value="15">15</option>
				<option value="16">16</option>
				<option value="17">17</option>
				<option value="18">18</option>
				<option value="19">19</option>
				<option value="20">20</option>
				<option value="21">21</option>
				<option value="22">22</option>
				<option value="23">23</option>
				<option value="24">24</option>
				<option value="25">25</option>
				<option value="26">26</option>
				<option value="27">27</option>
				<option value="28">28</option>
				<option value="29">29</option>
				<option value="30">30</option>
				<option value="31">31</option>
			</select> - 
			<input type="text" name="day2_y" size="4" value="2015">
			<select name="day2_m">
				<option value="01">1</option>
				<option value="02">2</option>
				<option value="03">3</option>
				<option value="04">4</option>
				<option value="05">5</option>
				<option value="06">6</option>
				<option value="07">7</option>
				<option value="08">8</option>
				<option value="09">9</option>
				<option value="10">10</option>
				<option value="11">11</option>
				<option value="12" selected>12</option>
			</select>
			<select name="day2_d">
				<option value="01">1</option>
				<option value="02">2</option>
				<option value="03">3</option>
				<option value="04">4</option>
				<option value="05">5</option>
				<option value="06">6</option>
				<option value="07">7</option>
				<option value="08">8</option>
				<option value="09">9</option>
				<option value="10">10</option>
				<option value="11">11</option>
				<option value="12">12</option>
				<option value="13">13</option>
				<option value="14">14</option>
				<option value="15">15</option>
				<option value="16">16</option>
				<option value="17">17</option>
				<option value="18">18</option>
				<option value="19">19</option>
				<option value="20">20</option>
				<option value="21">21</option>
				<option value="22">22</option>
				<option value="23">23</option>
				<option value="24">24</option>
				<option value="25">25</option>
				<option value="26">26</option>
				<option value="27">27</option>
				<option value="28">28</option>
				<option value="29">29</option>
				<option value="30">30</option>
				<option value="31" selected>31</option>
			</select> &nbsp
			<select name="sel1">
				<option value="0" selected>전체</option>
				<option value="1">주문신청</option>
				<option value="2">주문확인</option>
				<option value="3">입금확인</option>
				<option value="4">배달중</option>
				<option value="5">주문완료</option>
				<option value="6">주문취소</option>
			</select> &nbsp 
			<select name="sel2">
				<option value="1">주문번호</option>
				<option value="2">고객명</option>
				<option value="3">상품명</option>
			</select>
			<input type="text" name="text1" size="10" value="">&nbsp
			<input type="button" value="검색" onclick="javascript:form1.submit();"> &nbsp;
		</td>
	</tr>
	</tr><td height="5" colspan="2"></td></tr>
</table>

<table width="800" border="1" cellpadding="0" style="border-collapse:collapse">
	<tr bgcolor="#CCCCCC" height="23"> 
	<td width="70"  align="center">번호</td>
		<td width="70"  align="center">주문번호</td>
		<td width="70"  align="center">제품수</td>
		<td width="250" align="center">금액</td>
		<td width="50"  align="center">총금액</td>	
		<td width="70"  align="center">세일</td>
	    <td width="65"  align="center">옵션1</td>
		<td width="50"  align="center">옵션2</td>
		
	    <td width="50"  align="center">삭제</td>
	</tr>
	<!--<tr bgcolor="#F2F2F2" height="23"> 
		<td width="70"  align="center"><a href="jumun_info.html?no=0803050004">0803050004</a></td>
		<td width="70"  align="center">2008-03-05</td>
		<td width="250" align="left">&nbsp;파란 브라우스 외 1</td>	
		<td width="40" align="center">2</td>	
		<td width="70"  align="right">35,000&nbsp</td>	
		<td width="65"  align="center">홍길동</td>	
		<td width="50"  align="center">카드</td>	
		<td width="85" align="center" valign="bottom">
			<select name="state" style="font-size:9pt; color:black">
				<option value="1" selected>주문신청</option>
				<option value="2">주문확인</option>
				<option value="3">입금확인</option>
				<option value="4">배송중</option>
				<option value="5">주문완료</option>
				<option value="6">주문취소</option>
			</select>&nbsp;
		</td>
		<td width="50" align="center">
			<a href="javascript:go_update('0803050004',0);"><img src="images/b_edit1.gif" border="0"></a>
		</td>	
		<td width="50" align="center">
			<a href="jumun_delete.html?no=0803050004" onclick="javascript:return confirm('삭제할까요 ?');"><img src="images/b_delete1.gif" border="0"></a>
		</td>
	</tr>
	-->
	<?		
		$page=$_REQUEST[page];
		if(!$page) $page=1;
		$pages=ceil($count/$page_line);
		$first=1;
		if($count>0) $first=$page_line*($page-1);
		$page_last=$count-$first;
		if($page_last>$page_line) $page_last=$page_line;
		if($count>0) mysqli_data_seek($result,$first);
		$total_cash=number_format($row[total_cash8]);
	for($i=0; $i<$page_last; $i++)
		{
			$row=mysqli_fetch_array($result);

				echo("<tr bgcolor='#F2F2F2' height='23'>	
					<td width='70'  align='center'><a href='jumun_info.php?no=$row[no8]'>$row[no8]</a></td>
		<td width='200'  align='center'>$row[jumun_no8]</td>
		<td width='70' align='center'>&nbsp;$row[num8]</td>	
		<td width='40' align='center'>$row[price8]</td>	
		<td width='40'  align='center'>$row[cash8]</td>	
		<td width='65'  align='center'>$row[discount8]</td>	
		<td width='50'  align='center'>$row[opts_no18]</td>	
		<td width='50' align='center'>$row[opts_no18] </td>
		
			
		
			
		<td width='50' align='center'>
			<a href='jumuns_delete.php?no=$row[no8]' onclick='javascript:return confirm('삭제할까요 ?');'><img src='images/b_delete1.gif' border='0'></a>
		</td>
	</tr>");
		}
?>
	
</table>

<input type="hidden" name="state">

<table width="800" border="0" cellpadding="0" cellspacing="0">
	<tr>
		<td height="30" class="cmfont" align="center">
			<img src="images/i_prev.gif" align="absmiddle" border="0"> 
			<font color="#FC0504"><b>1</b></font>&nbsp;
			<a href="jumun.html?page=2&sel1=&sel2=&text1=&day1_y=&day1_m=&day1_d=&day2_y=&day2_m=&day2_d="><font color="#7C7A77">[2]</font></a>&nbsp;
			<a href="jumun.html?page=3&sel1=&sel2=&text1=&day1_y=&day1_m=&day1_d=&day2_y=&day2_m=&day2_d="><font color="#7C7A77">[3]</font></a>&nbsp;
			<img src="images/i_next.gif" align="absmiddle" border="0">
		</td>
	</tr>
</table>

</form>

</center>

</body>
</html>