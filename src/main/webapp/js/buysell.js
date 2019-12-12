buysell = {

	current : function() {

		$("#current").on("click", function() {
			$.ajax({
				url : 'current',
				method : "GET",
				dataType : "text",
				success : function(textData) {
					$("#current-body").hide();
					$("#history-body").hide();
					$("#cancle-body").hide();
					$("#booking-body").hide();
					$("#current-body").show();
					$("#assetstabs .active").removeClass("active");
					$(this).addClass("active");
				}
			}); // ajax

		}); // click event
	},
	
	acc : function() {
		$("#acc").on("click", function() {
			$.ajax({
				url : 'current',
				method : "GET",
				dataType : "text",
				success : function(textData) {
					$(".card-body").hide();
					$("#acc-body").show();
					$("#assetstabs .active").removeClass("active");
					$(this).addClass("active");
				}
			}); // ajax
		});
	},
	
	booking : function() {
		$("#booking").on("click", function() {
			$.ajax({
				url : 'current',
				method : "GET",
				dataType : "text",
				success : function(textData) {
					$(".card-body").hide();
					$("#booking-body").show();
					$("#assetstabs .active").removeClass("active");
					$(this).addClass("active");
				}
			}); // ajax
		});
	},
	
	history : function () {
		$("#history").on("click", function() {
			$.ajax({
				url : 'current',
				method : "GET",
				//data : 'b_status=' + b_status,
				dataType : "text",
				success : function(textData) {
					$(".card-body").hide();
					$("#history-body").show();
					$("#assetstabs .active").removeClass("active");
					$(this).addClass("active");
				}
			}); // ajax
		});
	},
	
	cancle : function () {
		$("#cancle").on("click", function() {
			$.ajax({
				url : 'current',
				method : "GET",
				//data : 'b_status=' + b_status,
				dataType : "text",
				success : function(textData) {
					$(".card-body").hide();
					$("#cancle-body").show();
					$("#assetstabs .active").removeClass("active");
					$(this).addClass("active");
				}
			}); // ajax
		});
	}
}