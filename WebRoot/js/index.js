	$(function(){
	document.getElementById("b").style.display='none';
		$("#a").click(function(){
			var a = document.getElementById("a");
			var b = document.getElementById("b");
			a.style.display='none';
			b.style.display='block';
			
		})
	})