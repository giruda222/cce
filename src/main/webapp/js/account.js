/**
 * 
 */

account = {

	deposit : function() {

		$('#account_deposit').validate({
			submitHandler : function(){
				$.ajax({
					url:'deposit',
					method:"POST",
					data: $('#account_deposit').serialize(),
					dataType: "text",
					success:function(textData){
						alert(textData);
					if(textData.trim()=="success"){
						alert("입금성공!");
					}else if(textData.trim()=="fail"){
						alert("입금실패!");
						}
					}
				});
				
			}
		});
	},
	withdraw : function() {

		$('#account_withdraw').validate({
			submitHandler : function(){
				$.ajax({
					url:'withdraw',
					method:"POST",
					data: $('#account_withdraw').serialize(),
					dataType: "text",
					success:function(textData){
						alert(textData);
					if(textData.trim()=="success"){
						alert("출금성공!");
					}else if(textData.trim()=="fail"){
						alert("출금실패!");
						}
					}
				});
				
			}
		});
	}
	/*coin_price: function(){
		function numberWithCommas(x){
			return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
		}
		setInterval(function(){
			$.ajax({
				url:"https://api.bithumb.com/public/ticker/BTC_KRW",
				method : 'GET',
				dataType: 'json',
				success:function(jsonObject){
						var nJsonObject = jsonObject;
						var trade_price = numberWithCommas(nJsonObject.data.closing_price);
						$("#live").val(trade_price);
						
				}
			});
		},1000);
	}*/
}