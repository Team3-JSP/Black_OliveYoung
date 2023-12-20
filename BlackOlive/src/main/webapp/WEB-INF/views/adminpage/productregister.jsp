<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- Begin Page Content -->


<div class="container-fluid">

	<div class="d-sm-flex align-items-center justify-content-between mb-4">
		<h1 class="h3 mb-0 text-gray-800">상품 등록</h1>
	</div>

	<div class="row">

		<!-- Area Chart -->
		<div class="col-xl-12 col-lg-7">
			<div class="card shadow mb-4">
				<!-- Card Header - Dropdown -->
				<div
					class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
					<h6 class="m-0 font-weight-bold text-primary">상품 등록</h6>

				</div>
				<!-- Card Body -->
				<div class="card-body">
					<form class="needs-validation form-floating" novalidate="">
						<div class="row g-3">
						
							<div class="col-md-3">
								<label for="country" class="form-label">총분류</label> 
								<select class="form-select" id="country" required="">
									<option value="">Choose...</option>
									<option>United States</option>
								</select>
								<div class="invalid-feedback">전체 카테고리를 입력해주세요.</div>
							</div>

							<div class="col-md-3">
								<label for="state" class="form-label">대분류</label> <select
									class="form-select" id="state" required="">
									<option value="">Choose...</option>
									<option>California</option>
								</select>
								<div class="invalid-feedback">대분류 카테고리를 입력해주세요.</div>
							</div>

							<div class="col-md-3">
								<label for="state" class="form-label">중분류</label> 
								<select class="form-select" id="state" required="">
									<option value="">Choose...</option>
									<option>California</option>
								</select>
								<div class="invalid-feedback">중분류 카테고리를 입력해주세요.</div>
							</div>
							<div class="col-md-3">
								<label for="state" class="form-label">소분류</label> <select
									class="form-select" id="state" required="">
									<option value="">Choose...</option>
									<option>California</option>
								</select>
								<div class="invalid-feedback">소분류 카테고리를 입력해주세요.</div>
							</div>
							<br>
							<br>
							<div class="col-sm-12 ">
								<label for="floatingInput">상품 명</label>
								<input class="form-control" id="floatingInput" placeholder="상품명을 입력해주세요">
								<div class="invalid-feedback">상품명을 입력해주세요!</div>
							</div>
							
							<div class="col-sm-12 ">
							<br>
							</div>
							
							<div class="col-sm-12 ">
								<label for="floatingInput">상품 가격</label>
								<input class="form-control" id="floatingInput" placeholder="상품가격을 입력해주세요">
								<div class="invalid-feedback">상품가격을 입력해주세요!</div>
							</div>
							
							<div class="col-sm-12 ">
							<br>
							<br>
							<br>
							<br>
							<h6> 상품 프로모션 선택 </h6>
						</div>
							
							<div class="col-sm-4 ">
								<div class="form-check">
									<input type="checkbox" class="form-check-input dynamic-checkbox" id="discountPromotion">
									<label class="form-check-label" for="discountPromotion">할인 프로모션 선택</label>
								</div>
							</div>
		
						<div class="col-sm-4 ">
							<div class="form-check">
								<input type="checkbox" class="form-check-input dynamic-checkbox" id="couponPromotion">
								<label class="form-check-label" for="couponPromotion">쿠폰 프로모션 선택</label>
							</div>
						</div>
						
						<div class="col-sm-4">
							<div class="form-check">
								<input type="checkbox" class="form-check-input dynamic-checkbox" id="presentPromotion">
								<label class="form-check-label" for="presentPromotion">증정 프로모션 선택</label>
							</div>
						</div>
						
						
  					<div class="row col-sm-12" id="dynamicContent"></div>
 
								<div class="row">
    <div class="col-sm-12">
      <div class="form-check mutioption">
        <input type="checkbox" class="form-check-input dynamic-checkbox" id="multiOptionProduct">
        <label class="form-check-label" for="multiOptionProduct">옵션이 두 개 이상인 상품</label>
      </div>
    </div>
  </div>

  <!-- 선택된 체크박스에 따라 동적으로 생성되는 영역 -->
  <div class="row mt-3" id="dynamicContent2"></div>
  
  <!-- 상품 옵션 추가 버튼 -->
  <div class="row mt-3">
    <div class="col-sm-12">
      <button type="button" class="btn btn-primary" id="addOptionBtn">옵션 추가</button>
    </div>
  </div>
</div>
					
								
							</div>
							<!-- row g-3 close -->
							
				
						</div>

						<hr class="my-4">
						

						<div class="form-check">
							<input type="checkbox" class="form-check-input" id="same-address">
							<label class="form-check-label" for="same-address">Shipping
								address is the same as my billing address</label>
						</div>
						
						

						<div class="form-check">
							<input type="checkbox" class="form-check-input" id="save-info">
							<label class="form-check-label" for="save-info">Save this
								information for next time</label>
						</div>

						<hr class="my-4">

						<h4 class="mb-3">Payment</h4>

						<div class="my-3">
							<div class="form-check">
								<input id="credit" name="paymentMethod" type="radio"
									class="form-check-input" checked="" required=""> <label
									class="form-check-label" for="credit">Credit card</label>
							</div>
							<div class="form-check">
								<input id="debit" name="paymentMethod" type="radio"
									class="form-check-input" required=""> <label
									class="form-check-label" for="debit">Debit card</label>
							</div>
							<div class="form-check">
								<input id="paypal" name="paymentMethod" type="radio"
									class="form-check-input" required=""> <label
									class="form-check-label" for="paypal">PayPal</label>
							</div>
						</div>

						<div class="row gy-3">
							<div class="col-md-6">
								<label for="cc-name" class="form-label">Name on card</label> <input
									type="text" class="form-control" id="cc-name" placeholder=""
									required=""> <small class="text-body-secondary">Full
									name as displayed on card</small>
								<div class="invalid-feedback">Name on card is required</div>
							</div>

							<div class="col-md-6">
								<label for="cc-number" class="form-label">Credit card
									number</label> <input type="text" class="form-control" id="cc-number"
									placeholder="" required="">
								<div class="invalid-feedback">Credit card number is
									required</div>
							</div>

							<div class="col-md-3">
								<label for="cc-expiration" class="form-label">Expiration</label>
								<input type="text" class="form-control" id="cc-expiration"
									placeholder="" required="">
								<div class="invalid-feedback">Expiration date required</div>
							</div>

							<div class="col-md-3">
								<label for="cc-cvv" class="form-label">CVV</label> <input
									type="text" class="form-control" id="cc-cvv" placeholder=""
									required="">
								<div class="invalid-feedback">Security code required</div>
							</div>
						</div>

						<hr class="my-4">
						<div class="mb-3">
  							<label for="formFileMultiple" class="form-label">Multiple files input example</label>
  							<input class="form-control" type="file" id="formFileMultiple" multiple>
						</div>

						<button class="w-100 btn btn-primary btn-lg" type="submit">Continue
							to checkout</button>
							
						
						
					</form>
				</div>
			</div>
		</div>


	</div>
</div>
<script>
$(document).ready(function() {
  // 각 체크박스에 대한 동적 컨텐츠 배열 초기화
  var dynamicContents = {
    discountPromotion: [],
    couponPromotion: [],
    presentPromotion: []
  };

  // 체크박스 상태 변경 감지
  $('.dynamic-checkbox').change(function() {
    var checkboxId = $(this).attr('id');
    var isChecked = $(this).prop('checked');

    // 선택된 체크박스에 따라 동적으로 생성 또는 삭제
    if (isChecked) {
      addDynamicContent(checkboxId);
    } else {
      removeDynamicContent(checkboxId);
    }
  });

  // 동적으로 컨텐츠 추가 함수
  function addDynamicContent(checkboxId) {
    // 동적 컨텐츠 배열에 새로운 영역 추가
    if (checkboxId === 'discountPromotion') {
    dynamicContents[checkboxId].push('<div class="col-sm-6">' +
        '<input type="text" class="form-control" placeholder="할인 프로모션 내용">' +
        '</div>' +
        '<div class="col-sm-3">' +
        '<input type="date" class="form-control">' +
        '</div>' +
        '<div class="col-sm-3">' +
        '<input type="date" class="form-control">' +
        '</div>');
} else {
    dynamicContents[checkboxId].push('<div class="col-sm-6">' +
        '<select class="form-control">' +
        '<option value="option1">옵션 1</option>' +
        '<option value="option2">옵션 2</option>' +
        '<option value="option3">옵션 3</option>' +
        '</select>' +
        '</div>' +
        '<div class="col-sm-3">' +
        '<input type="date" class="form-control">' +
        '</div>' +
        '<div class="col-sm-3">' +
        '<input type="date" class="form-control">' +
        '</div>');
}
    // 선택된 체크박스에 따라 동적으로 생성된 영역에 추가
    updateDynamicContent();
  }

  // 동적으로 컨텐츠 삭제 함수
  function removeDynamicContent(checkboxId) {
    // 동적 컨텐츠 배열에서 해당 체크박스의 영역 제거
    dynamicContents[checkboxId] = [];

    // 선택된 체크박스에 따라 동적으로 생성된 영역 업데이트
    updateDynamicContent();
  }

  // 동적으로 컨텐츠 업데이트 함수
  function updateDynamicContent() {
    // 동적으로 생성된 영역을 비우고 새로 추가
    $('#dynamicContent').empty();

    // 모든 체크박스에 대한 동적 컨텐츠 추가
    Object.keys(dynamicContents).forEach(function(checkboxId) {
      $('#dynamicContent').append(dynamicContents[checkboxId].join(''));
    });
  }
});
</script>
<script>
$(document).ready(function() {
  // 체크박스 상태 변경 감지
  $('#multiOptionProduct').change(function() {
    var isChecked = $(this).prop('checked');

    // 선택된 체크박스에 따라 동적으로 생성 또는 삭제
    if (isChecked) {
      addOption();
    } else {
      removeOption();
    }
  });

  // 상품 옵션 추가 함수
  function addOption() {
    var optionTemplate = '<div class="col-sm-4 mb-3">' +
      '<input type="text" class="form-control" placeholder="상품명">' +
      '</div>' +
      '<div class="col-sm-4 mb-3">' +
      '<input type="text" class="form-control" placeholder="상품가격">' +
      '</div>' +
      '<div class="col-sm-3 mb-3">' +
      '<input type="file" class="form-control-file">' +
      '</div>' +
      '<div class="col-sm-1 mb-3">' +
      '<button class="btn btn-danger remove-option-btn">&times;</button>' +
      '</div>';

    // 동적으로 생성된 영역에 추가
    $('#dynamicContent2').append(optionTemplate);

    // 삭제 버튼에 이벤트 바인딩
    $('.remove-option-btn').click(function() {
      $(this).closest('.row').remove();
    });
  }

  // 상품 옵션 삭제 함수
  function removeOption() {
    // 동적으로 생성된 영역 제거
    $('#dynamicContent2').empty();
  }

  // 상품 옵션 추가 버튼 클릭 시 이벤트
  $('#addOptionBtn').click(function() {
    addOption();
  });
});
</script>

<!-- /.container-fluid -->

