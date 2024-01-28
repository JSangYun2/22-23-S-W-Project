	function selectAll(selectAll)  {
	    const checkboxes 
	       = document.getElementsByName('Checkbox');
	    
	    checkboxes.forEach((checkbox) => {
	      checkbox.checked = selectAll.checked
	    })
	  }
	function idCheck() {
		window.open("idCheck.jsp","idwin","width=400,height=350");
		
	}
	function check(){
		if(!createForm.id.value) {
					alert("아이디를 입력하세요.");
					createForm.id.focus();
					return false;
				}
				if(!createForm.password.value) {
					alert("비밀번호를 입력하세요.");
					createForm.password.focus();
					return false;
				}
				if(!createForm.name.value) {
					alert("이름을 입력하세요.");
					createForm.name.focus();
					return false;
				}
				if(!createForm.nickname.value) {
					alert("닉네임을 입력하세요.");
					post.password.focus();
					return false;
				}
				if(!createForm.passwordCheck.value) {
					alert("비밀번호확인을 입력하세요.");
					createForm.passwordCheck.focus();
					return false;
				}
				if(!createForm.email.value) {
					alert("이메일을 적어주세요.");
					createForm.email.focus();
					return false;
				}
				 if(document.data.Checkbox[0].checked==false && 
                    document.data.Checkbox[1].checked==false && 
                    document.data.Checkbox[2].checked==false){
                 alert("체크박스를 체크해주세요");
                 return false;
              }
				
				return true;
	}