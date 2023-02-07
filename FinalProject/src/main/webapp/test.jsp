<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<!-- 소스 다운 -->
<script src="https://unpkg.com/@yaireo/tagify"></script>
<!-- 폴리필 (구버젼 브라우저 지원) -->
<script src="https://unpkg.com/@yaireo/tagify/dist/tagify.polyfills.min.js"></script>
<link href="https://unpkg.com/@yaireo/tagify/dist/tagify.css" rel="stylesheet" type="text/css" />
 
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">

<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<resources mapping="/ckeditor/**" location="/resources/ckeditor/" />
</head>
<body>
<script type="text/javascript">

//<![CDATA[

$(function() {

    var availableCity = ["서울","부산","대구","광주","울산"]; 

    $("#city").autocomplete({

        source: availableCity,

        select: function(event, ui) {

            console.log(ui.item);

        },

        focus: function(event, ui) {

            return false;

            //event.preventDefault();

        }

    });

});

//]]>
$(document).ready(function() {
let select = document.getElementById("SC");
let sel = select.value; 
select.addEventListener("change", function(e) {
    console.log("onchange select", e.target.value);
    select = e.target.value;
    console.log(" select",sel);
    sel = e.target.value;
    $('#inputTest').val(sel);
    //alert(select);
		//값이 바뀔때마다 찍힘
});
let cnt = document.getElementById("Test");
cnt.addEventListener("click",function(){
	console.log(" select",sel);
	alert(select);
})
   const input = document.querySelector('input[name=basic]');
    let tagify = new Tagify(input); // initialize Tagify
    
    // 태그가 추가되면 이벤트 발생
    tagify.on('add', function() {
      console.log(tagify.value); // 입력된 태그 정보 객체
    });
    var TagValues = JSON.parse($('[name=tags]').tagify().val())
    var TagArray = []

    for(let i=0;i<TagValues.length;i++){
        TagArray.push(TagValues[i].value)
        console.log(TagValues[i].value);
    }

    var dataToSend = $(this).serializeArray();
    for (let index = 0; index < dataToSend.length; ++index) {
        if (dataToSend[index].name == "tags") {
            dataToSend[index].value = TagArray;
            console.log(TagArray);
            break;
        }
    }

	  
});
</script>

<form action="upload_ok.do" method="post" enctype="multipart/form-data">
		파일 선택 : <input type="file" name="file">
		<input type ="text" name = "UserId" id = "UserId">
		<input type="submit" value="전송">
	</form>

	<a href="test123.do">test</a>
	
	  <select id="SC" name="SC" >
		<option value="1">영화</option>
		<option value="2">TV</option>
		<option value="3">리뷰</option>
		<option value="4">태그</option>
		<option value="5">아이디검색</option>
	</select>
	<input type="text" id = "inputTest" name = "boardNum">
	<button id = "Test">a</button>
<form action="testTag.do" method="post" id = "frm">
<input name='basic'>
<button id = "btn">button</button>
<input type = "submit" value="ok">
</form>
<div class="ui-widget">

  <label for="city">도시: </label>

  <input id="city">

</div>
</body>
</html>