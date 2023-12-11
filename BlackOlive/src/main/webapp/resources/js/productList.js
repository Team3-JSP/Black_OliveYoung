	
function setCookie(cookie_name, value, days) {
  var exdate = new Date();
  exdate.setDate(exdate.getDate() + days);
  // 설정 일수만큼 현재시간에 만료값으로 지정

  var cookie_value = escape(value) + ((days == null) ? '' : '; expires=' + exdate.toUTCString());
  document.cookie = cookie_name + '=' + cookie_value;
}

// 쿠키 값 가져오는 함수
function getCookie(cookie_name) {
	  var x, y;
	  var val = document.cookie.split(';');

	  for (var i = 0; i < val.length; i++) {
	    x = val[i].substr(0, val[i].indexOf('='));
	    y = val[i].substr(val[i].indexOf('=') + 1);
	    x = x.replace(/^\s+|\s+$/g, ''); // 앞과 뒤의 공백 제거하기
	    if (x == cookie_name) {
	      return unescape(y); // unescape로 디코딩 후 값 리턴
	    }
	  }
	}
	
	//쿠키 값 저장 하기
	function addCookie(id) {
  var items = getCookie('productItems'); // 이미 저장된 값을 쿠키에서 가져오기
  var maxItemNum = 4; // 최대 저장 가능한 아이템 개수
  var expire = 7; // 쿠키값을 저장할 기간
  
  if (items) {
    var itemArray = items.split(',');
    var itemSet = new Set(itemArray); // 중복 아이템을 제거하기 위해 Set 사용
    
    if (!itemSet.has(id)) {
      // 새로운 값 추가
      itemSet.add(id);
      
      // 쿠키에 새로운 값 추가 후, 최대 개수 유지하기
      var updatedItemsArray = Array.from(itemSet);
      while (updatedItemsArray.length > maxItemNum) {
        updatedItemsArray.shift(); // 오래된 값을 삭제
      }

      // 쿠키에 새로운 값을 추가한 후, 다시 설정
      var updatedItemsString = updatedItemsArray.join(',');
      setCookie('productItems', updatedItemsString, expire);
    }
  } else {
    // 신규 id값 저장하기
    setCookie('productItems', id, expire);
  }
}

// 클릭 이벤트 처리
$(function(){
  $(".prd_thumb.goodsList").on("click",function(){
    let pro_id = $(this).attr("name");
    addCookie(pro_id); // addCookie 함수 호출
  })
})

	$(document).ready(function(){
		$(".btn_thumb").click(function(){
			$(this).addClass('active');
			$(".btn_list").removeClass('active');
			$(".cate_prd_list.gtm_cate_list").removeClass("list_type");
		})
		
		$(".btn_list").click(function(){
			$(this).addClass('active');
			$(".btn_thumb").removeClass('active');
			$(".cate_prd_list.gtm_cate_list").addClass("list_type");
		})
		
		$(".cartBtn").click(function(){
			
			
			
			addModalBackdrop();
			
			let displID = $(this).attr("id");
			let url = window.location.href
			let data = {
					displID: displID,
					url: url
				}
			
			$.ajax({
				
				
				url: "/olive/itemlist.do",
				data:data,
				cache: false,
				beforeSend: function(xmlHttpRequest) {
			        xmlHttpRequest.setRequestHeader("AJAX", "true");
			    },
				success:function( response ) {
		              $("#displItem").empty();
		              $("#displItem").append( response );
		              
		          }
		        , error		: function(xhr, textStatus, error) {
		        	if (xhr.status == 500) {
		                alert("Login Session Expired");
		                window.location.href = "/Black_OY/view/logon/logon.jsp";
		            }else {
		            alert( '서버 데이터를 가져오지 못했습니다. 다시 확인하여 주십시오.' );
		            }
		        }
			})
		});
		
		
		$(".layer_close.type2").click(function(){
			$("#basketOption").css("display","none");
		})
		
	})
	
	function addModalBackdrop() {
    var backdrop = $('<div class="modal-backdrop"></div>');
    $("body").append(backdrop);
}

$(document).ready(function() {
    $('.align_sort ul li').on('click', function() {
        // 현재 클릭된 요소에 'on' 클래스 추가 및 형제 요소로부터 'on' 클래스 제거
        $(this).addClass('on').siblings().removeClass('on');
    });
});