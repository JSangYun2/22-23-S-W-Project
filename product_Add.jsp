<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./css/PDinsert.css">
    <title>상품등록</title>
</head>
<body>
	<script type = "text/javascript">
	function idCheck() {
                window.open("p_code_Check.jsp","idwin","width=400,height=350");
	}	
			function AddFo() {
			if(!AddForm.p_category.value) {
                                        alert("카테고리를 입력하세요.");
                                        AddForm.p_category.focus();
                                        return false;
                                }
                                if(!AddForm.p_code.value) {
                                        alert("코드를 입력하세요.");
                                        AddForm.p_code.focus();
                                        return false;
                                }
                                if(!AddForm.p_name.value) {
                                        alert("상품이름을 입력하세요.");
                                        AddForm.p_name.focus();
                                        return false;
                                }
                                if(!AddForm.p_price.value) {
                                        alert("상품의 가격을 입력하세요.");
                                        AddForm.p_price.focus();
                                        return false;
                                }
                                if(!AddForm.p_unitStock.value) {
                                        alert("비밀번호확인을 입력하세요.");
                                        AddForm.p_unitStock.focus();
                                        return false;
                                }
                                if(!AddForm.p_description.value) {
                                        alert("상품의 설명을 적어주세요.");
                                        AddForm.p_description.focus();
                                        return false;

			}		


			return true;
		}
	</script>
    <div class = "top" id = "top">
        <jsp:include page="logo.jsp"></jsp:include>
    </div>
    <hr>
    <div class="middle">
        <div class="middle0">
            <h2 style="text-align: center;"> 상품 등록 페이지입니다.</h2>
        </div>
        <form action ="product_Add_pro.jsp" enctype="multipart/form-data" method="POST" name = "AddForm" onsubmit="return AddFo()">
        <div class="middle1">
            <tr>
                <td>
                    <h3 class ="describe"> 상품 종류</h3>
                    <select name = "p_category" id="p_category" >
                        <option value="CPU">CPU</option>
                        <option value="GPU">GPU</option>
                        <option value="RAM">RAM</option>
                        <option value="POWER">파워 서플라이</option>
                        <option value="DISK">SSD/HDD</option>
                        <option value="MAINBOARD">MAINBOARD</option>
                      </select>
                </td>
            </tr>
            <input type ="file" name = "image_file" required="required">
        </div>
        <div class="middle2">
            <tr>
                <td>
                     <h3 class = "describe"> 상품 코드 </h3>
                     <input name = "p_code"type="text" placeholder = "상품코드를 적어주세요" id = "p_code" class="code">
                     <br><br>
                </td>
            </tr>
            <tr>
                <td>
                    <h3 class ="describe"> 상품 이름</h3>
                    <input name ="p_name" type="text" placeholder = "상품의 이름을 적어주세요" id ="p_name" class="name">
                    <br><br>
                </td>
            </tr>
            <tr>
                <td>
                    <h3 class ="describe"> 상품 가격</h3>
                    <input name = "p_price"type="text" placeholder = "상품의 가격을 적어주세요" id ="p_price" class="name">
                    <br><br>
                </td>
            </tr>
            <tr>
                <td>
                    <h3 class ="describe"> 상품 재고</h3>
                    <input name = "p_unitStock"type="text" placeholder = "상품 재고를 적어주세요" id ="p_unitstock" class="unitstock">
                    <br><br>
                </td>
            </tr>
        </div>
        <div class ="middle3">
            <tr>
                <td>
                    <h3 class ="describe"> 상품 설명</h3>
                    <input name = "p_description"type="text" placeholder = "상품의 설명을 적어주세요" id ="p_description" class="description">
                </td>
            </tr>
            <br><br>
            <input type = "submit" value = "등록하기">
        </div>
	</form>
	<button style = "margin-left: -260px" id = "doubleCheck" onclick="idCheck()"> 중복체크 </button>   
 </div>
</body>
</html>
