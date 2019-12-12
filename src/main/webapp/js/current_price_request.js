current_price_request = {
	

	

	calculatTotalAmount : function() {

		$("#buy #b_quantity").on(
				"keyup",
				function() {
					var totalQuantity = parseInt($("#buy #b_quantity").val());
					if($("#buy #b_quantity").val()==null || $("#buy #b_quantity").val()==""){
						totalQuantity=0;
					}	
					var currentPrice = parseInt($("#buy #b_price").val()
							.replace(/,/g, ""));
					
					var resultValue = currentPrice * totalQuantity;
					$("#buy #b_orderPrice").val(
							String(Math.floor(resultValue)));

				});

		$("#sell #b_quantity").on(
				"keyup",
				function() {

					var currentPrice = parseInt($("#sell #b_price").val()
							.replace(/,/g, ""));
					var totalQuantity = parseInt($("#sell #b_quantity").val());

					var resultValue = currentPrice * totalQuantity;
					$("#sell #b_orderPrice").val(
							String(Math.floor(resultValue)));

				});
	},

	calculateTotalQuantity : function() {

		$("#buy #b_orderPrice").on(
				"keyup",
				function() {

					var currentPrice = parseInt($("#buy #b_price").val()
							.replace(/,/g, ""));
					var totalAmount = parseInt($("#buy #b_orderPrice").val());

					var resultValue = totalAmount / currentPrice;
					$("#buy #b_quantity").val(
							String(resultValue.toFixed(8)));

				});

		$("#sell #b_orderPrice").on(
				"keyup",
				function() {

					var currentPrice = parseInt($("#sell #b_price").val()
							.replace(/,/g, ""));
					var totalAmount = parseInt($("#sell #b_orderPrice").val());

					var resultValue = totalAmount / currentPrice;
					$("#sell #b_quantity").val(
							String(resultValue.toFixed(8)));

				});
	},
	calculatePrice : function() {

		$("#buy #b_price").on(
				"keyup",
				function() {

					var currentPrice = parseInt($("#buy #b_price").val()
							.replace(/,/g, ""));
					var totalAmount = parseInt($("#buy #b_orderPrice").val());
					var totalQuantity = parseInt($("#sell #b_quantity").val());
					
					
					
					var resultValue = totalAmount / currentPrice;
					$("#buy #b_quantity").val(
							String(resultValue.toFixed(8)));

				});

		$("#sell #b_price").on(
				"keyup",
				function() {

					var currentPrice = parseInt($("#sell #b_price").val()
							.replace(/,/g, ""));
					var totalAmount = parseInt($("#sell #b_orderPrice").val());

					var resultValue = totalAmount / currentPrice;
					$("#sell #b_quantity").val(
							String(resultValue.toFixed(8)));

				});
	},

	buy : function() {

		$("#ms").on("click", function() {
			// alert("hihihihhihihi");
			$("#buy #b_price").val($("#buy #b_price").val().replace(/,/g, ""));
			$("#buy #b_type").val(1);

			$.ajax({
				url : 'bookingInsert',
				method : "GET",
				data : $('#booking_buy').serialize(),
				dataType : "text",
				success : function(textData) {
					alert(textData);
					var ee = $("input[name='selectRadio']:checked").val()
					alert(ee);
				}
			});

		});
	},
	
	sell : function() {

		$("#md").on("click", function() {
			alert("hihihihhihihi");
			$("#sell #b_price").val($("#sell #b_price").val().replace(/,/g, ""));
			$("#sell #b_type").val(0);

			$.ajax({
				url : 'bookingInsert',
				method : "GET",
				data : $('#booking_sell').serialize(),
				dataType : "text",
				success : function(textData) {
					alert(textData);

				}
			});

		});
	}
	

}