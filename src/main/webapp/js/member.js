/**
 * 
 */

member={
		signinbutton:function(){
			$("#signin_form").validate({
				rules:{
					m_email:{
						required:true
					},
					m_password:{
						required:true
					}
					
				},
				submitHandler : function(){
					$("#signin_form").submit();
				}
			});
		},
		
		signinbuttonBottom:function(){
			$('#signinbuttonBottom').on('click',function(){
				$.ajax({
					url:'tosignin',
					method:"GET",
					datatype:"text",
					success:function(textData){
						if(textData.trim()=='success'){
							$('#signin').show();
							$('#signup').hide();
							$('#signup_form')[0].reset();
						}
					}
				})
			})
		},
		
		signinbuttonTop:function(){
			$('#signinbuttonTop').on('click',function(){
				$('#signinbuttonTop').className="btn btn-success  mx-2";
				$('#signupbuttonTop').className="btn btn-outline-primary  mx-2";
				$.ajax({		
					url:'tosignin',
					method:"GET",
					datatype:"text",
					success:function(textData){
						if(textData.trim()=="success"){
							$('#signin').show();
							$('#signup').hide();
							$('#signup_form')[0].reset();
						}else if(textData.trim()=="fail"){
							alert("다시해");
							}
					}
					
				})
					
			})
		},
		signupbuttonBottom:function(){
			$('#signupbuttonBottom').on('click',function(){
				$.ajax({
					url:'tosignup',
					method:"GET",
					datatype:"text",
					success:function(textData){
						if(textData.trim()=='success'){
							$('#signup').show();
							$('#signin').hide();
						}
					}
				})
			})
		},
		
		signupbuttonTop:function(){
			$('#signupbuttonTop').on('click',function(){
				$('#signupbuttonTop').className="btn btn-success  mx-2";
				$('#signinbuttonTop').className="btn btn-outline-primary  mx-2";
				$.ajax({		
					url:'tosignup',
					method:"GET",
					datatype:"text",
					success:function(textData){
						if(textData.trim()=="success"){
							$('#signup').show();
							$('#signin').hide();
						}else if(textData.trim()=="fail"){
							alert("다시해");
							}
					}
					
				})
					
			})
		},
		signup:function(){
			
			$('#signup_form').validate({
				rules:{
					m_email:{
						required: true,
						email: "email",
						remote:{
							url:'memberIdCheck',
							type:'POST',
							data:{
								m_email:function(){
									return $('#m_email').val();
								}
							}
						}
					},
					m_password:{
						required:true,
						minlength: 4,
						maxlength: 12
						
					},
					m_passwordCon:{
						required:true,
						equalTo: '#m_password'
						
					},
					
					m_name:{
						required: true
						
					}
					
				},
				messages:{
					m_email:{
						remote:'{0} 은중복된아이디입니다'
					}
				},
				
				submitHandler : function(){
					$.ajax({
						url:'signUpSubmit',
						method:"POST",
						data: $('#signup_form').serialize(),
						dataType: "text",
						success:function(textData){
						if(textData.trim()=="success"){
							$('#signup').hide();
							$('#signin').show();
						}else if(textData.trim()=="fail"){
							alert("다시해");
							}
						}
					});
					
				}
			});
			
			
		}
}


