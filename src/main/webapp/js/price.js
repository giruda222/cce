price = {

	price_list : function() {
		function comma(str) {
			str = String(str);
			return str.replace(/(\d)(?=(?:\d{3})+(?!\d))/g, '$1,');
		}
		
		function get_json() {
			return $.ajax({
				url : "https://api.bithumb.com/public/ticker/ALL",
				dataType : "json"
			})
		}

		setInterval(function() {
			
		get_json().done(function(json) {
						let html="";
						var keyArr = Object.keys(json.data);
					    var valArr = Object.values(json.data);
								
						for (let i=0; i<5; i++){
							//console.log("name: "+keyArr[i]+" / price: "+valArr[i].closing_price);
							html += "<tr>";
							html += "<td> <i class='cc BTC'></i>"+"<a id="+'aaa'+i.toString()+ " href='#'>" +keyArr[i]+ "</a></td>";
							html += "<td id="+"cls_price"+i.toString()+">" + valArr[i].closing_price + "</td>";
							html += "<td>" + valArr[i].fluctate_24H + "</td>";
							html += "<td>" + valArr[i].fluctate_rate_24H + "</td>";
							html += "<td><span class='badge badge-success'><a href='#'>Trade</a></span></td>";
							html += "</tr>";
						}
						$('#coin_list').html(html);
						for (let i=0; i<5; i++){
						$("#aaa"+i.toString()).click(function(e) {
							alert($("#cls_price"+i.toString()).text());
							var pri = $("#cls_price"+i.toString()).text();
							var name = $("#aaa"+i.toString()).text();
							$('#price').val(pri);
							$('#coin_name').val(name);
							$('#go_price').submit();
							 
							 e.preventDefault(); 
						});
					}
				}); // end .done
						
		}, 2000);
		
	},
	
	main_price : function() {
		
		function get_json() {
			return $.ajax({
				url : "https://api.bithumb.com/public/ticker/ALL",
				dataType : "json"
			})
		}

		setInterval(function() {
			
		get_json().done(function(json) {
						let html="";
						var keyArr = Object.keys(json.data);
					    var valArr = Object.values(json.data);
								
						for (let i=0; i<5; i++){
							//console.log("name: "+keyArr[i]+" / price: "+valArr[i].closing_price);
							html += "<tr>";
							html += "<td> <i class='cc BTC'></i>"+"<a id="+'aaa'+i.toString()+ " href='#'>" +keyArr[i]+ "</a></td>";
							html += "<td id="+"cls_price"+i.toString()+">" + valArr[i].closing_price + "</td>";
							html += "<td>" + valArr[i].fluctate_24H + "</td>";
							html += "<td>" + valArr[i].fluctate_rate_24H + "</td>";
							html += "<td><span class='badge badge-success'><a href='#'>Trade</a></span></td>";
							html += "</tr>";
						}
						$('#main_coin').html(html);
						for (let i=0; i<5; i++){
						$("#aaa"+i.toString()).click(function(e) {
							alert($('#price'));
							alert($("#cls_price"+i.toString()).text());
							var pri = $("#cls_price"+i.toString()).text();
							var name = $("#aaa"+i.toString()).text();
							$('#price').val(pri);
							$('#coin_name').val  
							
							(name);
							//alert($('#price').val());
							$('#go_price').submit();
							 
							 e.preventDefault(); 
						});
					}
				}); // end .done
						
		}, 4000);
		
	}
}
