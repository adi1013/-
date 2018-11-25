
window.onload=function(){                 
	changeDivHeight();	                
}              
window.onresize=function(){	             
	changeDivHeight();              
}              
function changeDivHeight(){                            
	var my_w = document.documentElement.clientWidth;
	if(my_w<='1000'){		
		document.getElementById('select_main').style["margin-left"] = "0%";
	}
	else{
		document.getElementById('select_main').style["margin"] = "0 auto";
	}
}

$(function(){
	let checkout_id = /^201[0-9]*\d{9}$/;
	let checkout_phone = /^1[34578]\d{9}$/;
	let checkout_name = /^[\u4E00-\u9FA5\uf900-\ufa2d·s]{2,20}$/;
	let sale_li = 1;

	$("#is_change_button").click(()=>{
		$('.change_massage').css("display","block");
		$('#is_succ_button').css("display","block");
		$('#is_change_button').css("display","none");
		
	});
	$("#is_succ_button").click(()=>{
		$('.change_massage').css("display","none");
		$('#is_succ_button').css("display","none");
		$('#is_change_button').css("display","block");
	});
	$("#is_id_input").blur(()=>{
		if(checkout_id.test($("#is_id_input").val())){
			$("#show_massge_id").text($("#is_id_input").val());
		}
	});
	$("#is_phone_input").blur(()=>{
		if(checkout_phone.test($("#is_phone_input").val())){
			$("#show_massge_phone").text($("#is_phone_input").val());
		}
	});
	$("#is_major_input").blur(()=>{
		$("#show_massge_major").text($("#is_major_input").val());
	});
	$("#is_true_name_input").blur(()=>{
		if(checkout_name.test($("#is_true_name_input").val())){
			$("#show_massge_truename").text($("#is_true_name_input").val());
		}

	});

	//修改select_type_sale框的移入移出点击样式
	$("#select_type_sale").mouseover(()=>{
		$('#select_type_sale').css("color","red");
	});
	$("#select_type_sale").mouseout(()=>{
		if(sale_li!=1){
			$('#select_type_sale').css("color","black");
		}
	});
	$("#select_type_sale").click(()=>{
		sale_li=1;
		$("#select_type_sale").addClass("select_type_myclass");
		$("#select_type_buy,#select_type_like").removeClass("select_type_myclass");
		$('#goods_sale').css("display","block");
		$('#goods_buy,#goods_like').css("display","none");
	});

	//修改select_type_buy框的移入移出点击样式
	$("#select_type_buy").mouseover(()=>{
		$('#select_type_buy').css("color","red");
	});
	$("#select_type_buy").mouseout(()=>{
		if(sale_li!=2){
			$('#select_type_buy').css("color","black");
		}
	});
	$("#select_type_buy").click(()=>{
		sale_li=2;
		$("#select_type_buy").addClass("select_type_myclass");
		$("#select_type_sale,#select_type_like").removeClass("select_type_myclass");
		$('#goods_buy').css("display","block");
		$('#goods_sale,#goods_like').css("display","none");
	});
	//修改select_type_like框的移入移出点击样式
	$("#select_type_like").mouseover(()=>{
		$('#select_type_like').css("color","red");
	});
	$("#select_type_like").mouseout(()=>{
		if(sale_li!=3){
			$('#select_type_like').css("color","black");
		}
	});
	$("#select_type_like").click(()=>{
		sale_li=3;
		$("#select_type_like").addClass("select_type_myclass");
		$("#select_type_buy,#select_type_sale").removeClass("select_type_myclass");
		$('#goods_like').css("display","block");
		$('#goods_buy,#goods_sale').css("display","none");

	});
	function checkbox_fun(){
		//跟新勾选数据的方法
		let sum_money= 0		
			$('#shopping_cart_table tbody tr:not(:first)').each(function(i){                  // 遍历 tr	
				$(this).children(":eq(4)").text(parseFloat($(this).children("td:eq(2)").text())*$(this).children("td:eq(3)").children(":eq(1)").val());		    
				if($(this).children("td:first").children("input[type='checkbox']").is(':checked')){
				    sum_money+=parseFloat($(this).children("td:eq(4)").text());
				}

				$("#cart_all_money_sum").text(sum_money);
				
			});

	}
	$("input[name]").click(function(){
		//勾选按钮
		checkbox_fun()
		
	});
	$("#shopping_cart_checkbox_all").click(function(){
		//下方全选按钮
		if($("#shopping_cart_checkbox_all").is(':checked')){
			$("input[name]").prop("checked", true);
		}
		else{
			$("input[name]").prop("checked", false);
		}
		checkbox_fun()
	});
})
	
//删除购物车记录
                    function del_row(id){
                        $(id).parent().parent().remove();
                    }
                    //清空购物车
                    function del_all(){
                        $('#shopping_car').children().remove();
                    }
/*
new Vue({
  el: '#collapseexample',
  data: {
    numb: '20161009123',
    phone: '13800138000',
    major:'软件工程',
    true_name:'小明',
  }
})*/
