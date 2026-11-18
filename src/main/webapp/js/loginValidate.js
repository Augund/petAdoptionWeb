let email=document.getElementById("email");
let password=document.getElementById("password");
let cPassword=document.getElementById("cPassword")
let loginForm=document.getElementById("loginForm");
loginForm.addEventListener("submit",(e)=>{
    const errors=[];
	
		if(email.value.trim()===""){
			errors.push("Email address(UserName) is required~");
		}
		if(password.value.trim()===""){
			errors.push("Password cocumn can't be empty~");
		}
				
		if(password.value!==cPassword.value){
			errors.push("Passwprd should be the same~");
		}
		if(errors.length>0){
		        e.preventDefault();
		        alert(errors.join('\n'))
		    }
	}
)