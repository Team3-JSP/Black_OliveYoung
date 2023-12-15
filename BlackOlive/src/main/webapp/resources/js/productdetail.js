$(function () {
	// console.log(window.location.href);
	$(".loc_history>li").mouseover(function () {
		$(this).addClass("active");
		$("history_cate_box").css("display","block");
	})
	$(".loc_history>li").mouseleave(function () {
		$(".loc_history>li").removeClass("active");
	})
	/*  */
	$('#btnSaleOpen').on('click', function() {
		if ($(this).hasClass('is-active')) {
	        // 이미 클래스가 추가되어 있으면 제거
	        $(this).removeClass('is-active');
	        $('#saleLayer').css('display','none');
	    } else {
	        // 클래스가 추가되어 있지 않으면 추가
	        $(this).addClass('is-active');
	        $('#saleLayer').css('display','block');
	    }
		
	})
	/*  */
	$('#btnSaleClose').on('click', function () {
		$(this).parent().css('display','none');
		$('#btnSaleOpen').removeClass('is-active');
	})
	/*  */
	
	/* */

}) ; 

// 팝업창 띄우는 함수들
function popUp() {
	event.preventDefault();
	
    var topPosition = Math.max(0, (window.innerHeight - $('#layer_pop_wrap').offsetHeight) / 2);
    var leftPosition = Math.max(0, (window.innerWidth - $('#layer_pop_wrap').offsetWidth) / 2);
    
    
	$('#layer_pop_wrap').css({
		top: topPosition + 'px',
        left: leftPosition + 'px',
		display: 'block'});
	
	$('.dimm').css('display','block');

} // popUp

function popDown() {
	event.preventDefault();
	$('#layer_pop_wrap').css('display','none');
	$('.dimm').css('display','none');
} // popDown

function todayDeliveryPop() {
	event.preventDefault();
	
	 var topPosition = Math.max(0, (window.innerHeight - $('#infoTodayDeliveryQuestion').offsetHeight) / 2);
	 var leftPosition = Math.max(0, (window.innerWidth - $('#infoTodayDeliveryQuestion').offsetWidth) / 2);
	    
	$('#infoTodayDeliveryQuestion').css({
		top: topPosition + 'px',
        left: leftPosition + 'px',
		display: 'block'});
	$('.dimm').css('display','block');
} // todayDeliveryPop

function todayDeliveryPopDown() {
	event.preventDefault();
	$('#infoTodayDeliveryQuestion').css('display','none');
	$('.dimm').css('display','none');
} // todayDeliveryPopDown

function cjone_pointPop() {
	event.preventDefault();
	
	 var topPosition = Math.max(0, (window.innerHeight - $('#layerWrap534').offsetHeight) / 2);
	 var leftPosition = Math.max(0, (window.innerWidth - $('#layerWrap534').offsetWidth) / 2);
	 
	 $('#layerWrap534').css({
			top: topPosition + 'px',
	        left: leftPosition + 'px',
			display: 'block'});
		$('.dimm').css('display','block');
	
} // cjone_pointPop

function cjone_pointPopDown() {
	
	event.preventDefault();
	
	$('#layerWrap534').css('display','none');
	$('.dimm').css('display','none');
	
} // cjone_pointPopDown

function card_infoPop() {
	event.preventDefault();
	
	var topPosition = Math.max(0, (window.innerHeight - $('#layer_pop_wrap2').offsetHeight) / 2);
	 var leftPosition = Math.max(0, (window.innerWidth - $('#layer_pop_wrap2').offsetWidth) / 2);
	 
	 $('#layer_pop_wrap2').css({
			top: topPosition + 'px',
	        left: leftPosition + 'px',
			display: 'block'});
		$('.dimm').css('display','block');
	
} // card_infoPop

function card_infoPopDown() {
	event.preventDefault();
	
	$('#layer_pop_wrap2').css('display','none');
	$('.dimm').css('display','none');
	
} // card_infoPopDown

/* ----------------------------*/

function Test2() {
	if ($('#buy_option_box').hasClass('open')) {
		 $('#buy_option_box').removeClass('open');
	} else {
		 $('#buy_option_box').addClass('open');
	}
} // Test2

/* 오늘드림 팝업 */
$(function() {
	$('#deliveDay').on('click', function() {
		$('.option_add_area.pkg_goods_n').css('display','none');
		$('.prd_cnt_box.no_prom').css('display','none');
		$('.option_cnt_box input').val(0);
		$('.tx_cont > .tx_num').text(0);
	})// deliveDay
}) // function

/* 하단 정보 탭 클릭 */
$(function() {
			$("#tabList li").click(function() {
				let id = $(this).attr("id");

				$("#tabList li").removeClass("on");
				$(this).addClass("on")
				if (id == "productInfo") {
					showDiv(1)
				}
				if (id == "buyInfo") {
					showDiv(2)
				}
				if (id == "reviewInfo") {
					showDiv(3)
				}
				if (id == "qnaInfo") {
					showDiv(4)
				}
			})
		}); //
function showDiv(index) {
			const divs = document.querySelectorAll('.tabConts.prd_detail_cont'); // 모든 div 요소 선택

			// index는 1부터 시작하므로 실제 인덱스는 index - 1이 됨
			for (let i = 0; i < divs.length; i++) {
				if (i === index - 1) {
					divs[i].classList.add("show"); // 선택된 div 보이기
				} else {
					divs[i].classList.remove("show"); // 선택되지 않은 div 감추기
				}
			}
		}

/* qna 스크립트 */

function qnaPopDown() {
		$('#pop_cont').hide();
		$('.dimm').hide();
		$('.radioGT1 label:nth-child(1)').removeClass('checked');
		$('#cancel').prop("disabled",true);
		$('#reg').prop("disabled",true);
		$('.mypage-qna-write').addClass('disabled');
		$('.reviews-write').addClass('disabled');
		$('.reviews-write > textarea').prop('disabled', true);
	}
$(function() {

		$('.btnInquiry.goods_qna_inquiry').on('click', function() {
			
			$('#pop_cont').show();
			$('.dimm').show();
			$('#sForm')[0].reset();
		}) // btnInquiry
		
		$('.radioGT1 label:nth-child(1)').on('click', function() {
			$(this).addClass('checked');	
			$('.reviews-write').removeClass('disabled');
			$('.mypage-qna-write').removeClass('disabled');
			$('.reviews-write textarea').prop("disabled",false);
			$('#cancel').prop("disabled",false);
			$('#reg').prop("disabled",false);
		})
		
		$('.radioGT1 label:nth-child(2)').on('click', function() {
			$(this).addClass('checked');
			$('.radioGT1 label:nth-child(1)').removeClass('checked');
			$('.alertPop.isOpen').show();
		})
		
		
		var maxChars = 250;

	    $("#gdasCont").on("input", function () {
	        var curLength = $(this).val().length;
	        $("#curTxtLength").text(curLength);

	        // 250자를 넘으면 입력 취소
	        if (curLength > maxChars) {
	            $(this).val(function(_, val) {
	            	alert('250자 이내로 작성해주세요.');
	                return val.slice(0, maxChars);
	                
	            });
	        }
	    });

	    $("#gdasCont").on("keypress", function (e) {
	        // 텍스트가 삭제될 때 입력 취소
	        if (e.which === 8) { // 8은 백스페이스 키의 ASCII 코드
	            var curLength = $(this).val().length;
	            if (curLength <= maxChars) {
	                $("#curTxtLength").text(curLength);
	            }
	        }
	    });
	    
	    $('.btnMedium.wGreen.btnClose').on('click', function() {
			$('.alertPop.isOpen').hide();
			$('.radioGT1 label:nth-child(2)').removeClass('checked');
			$('.radioGT1 label:nth-child(1)').addClass('checked');
			$('.reviews-write').removeClass('disabled');
			$('.mypage-qna-write').removeClass('disabled');
			$('.reviews-write textarea').prop("disabled",false);
			$('#cancel').prop("disabled",false);
			$('#reg').prop("disabled",false);
		})
		
}) // ready function close

// 리뷰 관련 스크립트
		
$(function(){
	 
	 $(".prd_option_box.box_select").click(function(){
		 $(this).addClass("open")
	 })
}) // function