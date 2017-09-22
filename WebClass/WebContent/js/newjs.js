		$(document).ready(
				function() {
					$('#loginForm').submit(
							function(event) {
								event.preventDefault();
								var id = $("#id").val();
								var pwd = $("#pwd").val();
								$.post("http://httpbin.org/post", {
									id : id,
									pwd : pwd
								}, function(data) {
									var myModal = $('#myModal')
									myModal.modal()
									myModal.find('.modal-body').text(
											data.form.id + '님 로그인되었습니다.')
									var element = document.getElementById("divcontainer");
									while (element.firstChild) {
									  element.removeChild(element.firstChild);
									}
									var p = document.createElement("p");
									element.appendChild(p)
									p.innerHTML="<div style='margin-top: 90px'><h1 class='display-3'>Welcome, "+id+"</h1><div>"
									var element = document.getElementById("loginForm");
									while (element.firstChild) {
									  element.removeChild(element.firstChild);
									}
									element.innerHTML=id
								});
							});
				});
		$(document).ready(
				function() {
					$('#form').submit(
							function(event) {
								event.preventDefault();
								var name = $("#name").val();
								$.post("http://httpbin.org/post", {
									name : name
								}, function(data) {
									var myModal = $('#myModal2')
									myModal.modal()
									myModal.find('.modal-body').text(
											data.form.name + '님 회원가입되었습니다.')
									var element = document.getElementById("divcontainer");
									while (element.firstChild) {
									  element.removeChild(element.firstChild);
									}
									var p = document.createElement("p");
									element.appendChild(p)
									p.innerHTML="<div style='margin-top: 90px'><h1 class='display-3'>Welcome, "+name+"</h1><div>"
									var element = document.getElementById("loginForm");
									while (element.firstChild) {
									  element.removeChild(element.firstChild);
									}
									element.innerHTML=name
							});
				});
				});
				