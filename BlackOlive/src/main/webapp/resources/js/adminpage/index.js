	$(function() {
		
		$.ajax({
			url : "/salesPerMonth",
			method : "GET",
			dataType : "json",
			cache : false,
			success: function(data) {
				console.log(data);
				updateChart(data);
			},
			error : function(data) {
				console.log(data);
				alert('데이터 송신에 실패했습니다. 계속 오류 발생시 관리자 번호로 연락 부탁드립니다.' <br> '1588-1622');
			} // error close
		}) // ajax close
		
	}) // ready function close
	
	function updateChart(data) {
		
		var labels = data.map(entry => entry.month);
		var salesData = data.map(entry => entry['monthlySales']);
		
		myLineChart.data.labels = [];
		myLineChart.data.datasets[0].data = [];
		
		myLineChart.data.labels = labels;
		myLineChart.data.datasets[0].data = salesData;
		myLineChart.update();
		
	}
	
	/* chart buttons script */
	$('#showSalesPerMonth').on('click', function() {
		$.ajax({
			url : "/salesPerMonth",
			method : "GET",
			dataType : "json",
			cache : false,
			success: function(data) {
				console.log(data);
				updateChart(data);
			},
			error : function(data) {
				console.log(data);
				alert('데이터 송신에 실패했습니다. 계속 오류 발생시 관리자 번호로 연락 부탁드립니다.' <br> '1588-1622');
			} // error close
		}) // ajax close
		
	}) // showSalesPerMonth function click
	
	$('#showSalesPerDay').on('click', function() {
		
		$.ajax({
			url : "/salesPerDay",
			method : "GET",
			dataType : "json",
			cache : false,
			success: function(data) {
				console.log(data);
				updateChartDay(data);
			},
			error : function(data) {
				console.log(data);
				alert('데이터 송신에 실패했습니다. 계속 오류 발생시 관리자 번호로 연락 부탁드립니다.' <br> '1588-1622');
			} // error close
		}) // ajax close
		
		
	}) // showSalesPerday click
	
		function updateChartDay(data) {
		
		var labels = data.map(entry => entry.day);
		var salesData = data.map(entry => entry['daylySales']);
		
		myLineChart.data.labels = [];
		myLineChart.data.datasets[0].data = [];
		
		myLineChart.data.labels = labels;
		myLineChart.data.datasets[0].data = salesData;
		myLineChart.update();
		
	}