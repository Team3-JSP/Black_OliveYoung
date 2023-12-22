<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 <main id="main" class="main">
      <div class="pagetitle">
        <h1>Form Elements</h1>
        <nav>
          <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="index.html">Home</a></li>
            <li class="breadcrumb-item">Forms</li>
            <li class="breadcrumb-item active">Elements</li>
          </ol>
        </nav>
      </div>
      <!-- End Page Title -->

      <section class="section">
        <div class="row">
          <div class="col-lg-12">
            <div class="card">
              <div class="card-body">
                <h5 class="card-title">General Form Elements</h5>

                <!-- General Form Elements -->
                <form>
                  <div class="row mb-3">
                    <div class="col-sm-3">
                      <select class="form-select" aria-label="Total Category" id="totalCategory">
                        <option selected disabled>총 분류</option>
                        <option value="1">뷰티</option>
                        <option value="2">헬스 푸드</option>
                        <option value="3">라이프</option>
                      </select>
                    </div>
                    <div class="col-sm-3">
                      <select class="form-select" aria-label="Big Category" id="bigCategory">
                        <option selected disabled>대분류</option>
                      </select>
                    </div>
                    <div class="col-sm-3">
                      <select class="form-select" aria-label="Middle Category" id="midCategory">
                        <option selected disabled>중분류</option>
                      </select>
                    </div>
                    <div class="col-sm-3">
                      <select class="form-select" aria-label="Small Category" id="smallCategory">
                        <option selected disabled>소분류</option>
                      </select>
                    </div>
                  </div>
                  <div class="row mb-3">
                    <label for="inputText" class="col-sm-2 col-form-label"
                      >상품명 :
                    </label>
                    <div class="col-sm-10">
                      <input type="text" class="form-control" />
                    </div>
                  </div>

                  <div class="row mb-3">
                    <input
                      class="form-control-file"
                      type="file"
                      id="formFileMultiple"
                      multiple
                    />
                  </div>

                  <div class="row mb-3" id="productFormCollection"></div>

                  <div class="row mb-3" id="productAddBtn">
                    <button type="button" class="btn btn-primary">추가</button>
                  </div>

                  <div class="row mb-3">
                    <div class="col-sm-4">
                      <div class="form-check form-switch">
                        <input
                          class="form-check-input"
                          type="checkbox"
                          id="discountPromotionCheckbox"
                        />
                        <label class="form-check-label" for="discountPromotion">
                          할인 프로모션</label
                        >
                      </div>
                    </div>
                    <div class="col-sm-4">
                      <div class="form-check form-switch">
                        <input
                          class="form-check-input"
                          type="checkbox"
                          id="couponPromotionCheckbox"
                        />
                        <label class="form-check-label" for="couponPromotion">
                          쿠폰 프로모션</label
                        >
                      </div>
                    </div>
                    <div class="col-sm-4">
                      <div class="form-check form-switch">
                        <input
                          class="form-check-input"
                          type="checkbox"
                          id="presentPromotionCheckbox"
                        />
                        <label class="form-check-label" for="presentPromotion">
                          증정 프로모션</label
                        >
                      </div>
                    </div>
                  </div>
                  <div
                    class="row mb-3"
                    style="visibility: hidden"
                    id="discountPromotion"
                  >
                    <div class="col-sm-4">
                      <input type="text" class="form-control" />
                    </div>
                    <div class="col-sm-4">
                      <input type="date" class="form-control" />
                    </div>
                    <div class="col-sm-4">
                      <input type="date" class="form-control" />
                    </div>
                  </div>
                  <div
                    class="row mb-3"
                    id="couponPromotion"
                    style="visibility: hidden"
                  >
                    <div class="col-sm-4">
                      <select
                        class="form-select"
                        aria-label="Default select example"
                      >
                        <option selected disabled>쿠폰 프로모션</option>
                        <option value="1">One</option>
                        <option value="2">Two</option>
                        <option value="3">Three</option>
                      </select>
                    </div>
                    <div class="col-sm-4">
                      <input type="date" class="form-control" />
                    </div>
                    <div class="col-sm-4">
                      <input type="date" class="form-control" />
                    </div>
                  </div>
                  <div
                    class="row mb-3"
                    style="visibility: hidden"
                    id="presentPromotion"
                  >
                    <div class="col-sm-4">
                      <select
                        class="form-select"
                        aria-label="Default select example"
                      >
                        <option selected disabled>증정 프로모션</option>
                        <option value="1">One</option>
                        <option value="2">Two</option>
                        <option value="3">Three</option>
                      </select>
                    </div>
                    <div class="col-sm-4">
                      <input type="date" class="form-control" />
                    </div>
                    <div class="col-sm-4">
                      <input type="date" class="form-control" />
                    </div>
                  </div>

                  <!-- 구매정보 -->
                  <div class="row mb-3">
                    <div class="card-body">
                      <h5 style="text-align: center" class="card-title">
                        Buy Information
                      </h5>
                    </div>
                  </div>

                  <!-- 상품 설명 이미지 -->
                  <!-- 상품 표시 정보 -->

                  <div class="row mb-3">
                    <label class="col-sm-2 col-form-label">Submit Button</label>
                    <div class="col-sm-10">
                      <button type="submit" class="btn btn-primary">
                        Submit Form
                      </button>
                    </div>
                  </div>
                </form>
                <!-- End General Form Elements -->
              </div>
            </div>
          </div>

          <div class="col-lg-6">
            <div class="card">
              <div class="card-body">
                <h5 class="card-title">Advanced Form Elements</h5>
              </div>
            </div>
          </div>
        </div>
      </section>
    </main>
    <!-- End #main -->
    
    <script>
    $("#productAddBtn").on("click", function () {
      addOption();
    });

    function addOption() {
      var optionTemplate =
        '<div class="row mb-2" id="productForm"> ' +
        '<label class="col-sm-2 col-form-label">상품</label> ' +
        '<div class="col-sm-4">' +
        '   <input type="text" class="form-control col-sm-2" placeholder="상품명" />' +
        "</div>" +
        '<div class="col-sm-3">' +
        '   <input type="text" class="form-control" placeholder="상품 가격"/>' +
        "</div>" +
        '<div class="col-sm-2">' +
        '   <input type="text" class="form-control" placeholder="재고 수량" />' +
        "</div>" +
        '<div class="col-sm-1">' +
        '   <button type="button" class="btn btn-primary deleteBtn">X</button>' +
        "</div>" +
        '<div class="col-sm-6 mt-2">' +
        '   <input type="file" class="form-control-file" />' +
        "</div>" +
        "<hr>" +
        "</div>";

      $("#productFormCollection").append(optionTemplate);

      $(".deleteBtn").click(function () {
        $(this).closest("#productForm").remove();
      });
    } // function
    $(function () {
      $(document).on("click", ".deleteBtn", function () {
        $(this).closest("#productForm").remove();
      });
    }); // ready function
  </script>
  <script>
    // 각 checkbox의 변경 이벤트에 대한 처리
    document
      .getElementById("discountPromotionCheckbox")
      .addEventListener("change", function () {
        toggleVisibility("discountPromotion");
      });

    document
      .getElementById("couponPromotionCheckbox")
      .addEventListener("change", function () {
        toggleVisibility("couponPromotion");
      });

    document
      .getElementById("presentPromotionCheckbox")
      .addEventListener("change", function () {
        toggleVisibility("presentPromotion");
      });

    // visibility를 토글하는 함수
    function toggleVisibility(divId) {
      var div = document.getElementById(divId);
      var select = document.querySelector(`#${divId} select`);

      if (div) {
        div.style.visibility = document.getElementById(divId + "Checkbox")
          .checked
          ? "visible"
          : "hidden";
      }

      // 체크를 해제할 때 select 태그 초기화
      if (!document.getElementById(divId + "Checkbox").checked && select) {
        select.selectedIndex = 0;
      }
    }
  </script>
  
 <script>
 // 카테고리 바꾸는 스크립트
 $(function() {
	$('#totalCategory').on('change', function() {
		
		var totalValue = $(this).val();
		
		$.ajax({
			uri: "/adminPage/getLargeCategory",
			dataType: "json",
			data : {
				totalId: totalValue
			},
			cache: false,
			success : function(data) {
				alert(data);
			}
			,error: function(data) {
				alert('시스템 에러');
			} // error close
			
		}); // ajax close
		
	}) // change close
}); //ready function
 
 </script>

