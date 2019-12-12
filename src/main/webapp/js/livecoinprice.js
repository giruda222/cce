livecoinprice={
		
		coin_price: function(){
			function numberWithCommas(x){
				return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
			}
			setInterval(function(){
				$.ajax({
					url:"https://api.bithumb.com/public/ticker/${coin_name}_KRW",
					method : 'GET',
					dataType: 'json',
					success:function(jsonObject){
								var nJsonObject = jsonObject;
							var trade_price = numberWithCommas(nJsonObject.data.closing_price);
							$(".chart_current_data h3 span:nth-child(1)").html(trade_price + ' KRW');
							$("#buy #live_price").val(nJsonObject.data.closing_price);
							$("#sell #live_price").val(nJsonObject.data.closing_price);
							
							
							var fluctate_24H= nJsonObject.data.fluctate_24H;
							$(".text-success span:nth-child(1)").html(fluctate_24H + ' KRW');
							
							var fluctate_rate_24H=nJsonObject.data.fluctate_rate_24H;
							$(".text-success span:nth-child(2)").html("("+fluctate_rate_24H+" %)");
							
					
							if(!fluctate_24H.match(/-.*/)){
								$("#fluctate_24H").css({"color":"green"});
								$("#fluctate_rate_24H").css({"color":"green"});
							}else if(fluctate_24H.match(/-.*/)){
								$("#fluctate_24H").css({"color":"red"});
								$("#fluctate_rate_24H").css({"color":"red"});
								
							}else if(fluctate_24H.match(0)){
								$("#fluctate_24H").css({"color":"black"});
								$("#fluctate_rate_24H").css({"color":"black"});
							}
							
							
					}
				});
			},1000);
		}
	
}