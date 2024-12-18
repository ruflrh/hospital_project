<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>진료 가능 날짜 캘린더</title>
    <!-- Custom CSS -->
    <link rel="stylesheet" href="resources/css/reservation-kty/step3.css">
    <!-- FullCalendar JS -->
    <script src="https://cdn.jsdelivr.net/npm/fullcalendar@6.1.15/index.global.min.js"></script>
     <script>
     document.addEventListener('DOMContentLoaded', function () {
    	    var calendarEl = document.getElementById('calendar');
    	    var timeSlotsEl = document.getElementById('timeSlots');

    	    if (!timeSlotsEl) {
    	        console.error("#timeSlots 요소를 찾을 수 없습니다.");
    	        return;
    	    }

    	    // 오늘 날짜
    	    var today = new Date();

    	    // 교수별 진료 가능한 요일
    	    var professorAvailableDays = {
    	        professorA: [1, 3], // 월요일(1), 수요일(3)
    	        professorB: [2, 4], // 화요일(2), 목요일(4)
    	        professorC: [2, 3, 4] // 화요일(2), 수요일(3), 목요일(4)
    	    };

    	    // 선택된 교수의 진료 가능한 요일
    	    var professor = "professorC"; // 현재 선택된 교수
    	    var availableWeekdays = professorAvailableDays[professor] || [];

    	    // 공휴일 데이터 (YYYY-MM-DD 형식)
    	    var holidays = ["2024-12-25", "2024-12-31"]; // 예: 크리스마스와 새해 전날

    	    // 진료 가능 날짜 생성 함수
    	    function generateAvailableDates(year, month, weekdays) {
    	        var dates = [];
    	        var date = new Date(year, month, 1); // 해당 월의 첫 번째 날짜
    	        while (date.getMonth() === month) {
    	            if (weekdays.indexOf(date.getDay()) > -1) {
    	                // 과거 날짜는 제외
    	                if (date >= today) {
    	                    dates.push(new Date(date)); // 해당 요일 추가
    	                }
    	            }
    	            date.setDate(date.getDate() + 1); // 다음 날로 이동
    	        }
    	        return dates;
    	    }

    	    // 이벤트 데이터 생성 함수
    	    function generateEvents(year, month) {
    	        var availableDates = generateAvailableDates(year, month, availableWeekdays);
    	        var events = [];

    	        // 공휴일 추가
    	        for (var i = 0; i < holidays.length; i++) {
    	            var holidayDate = new Date(holidays[i]);
    	            if (holidayDate.getFullYear() === year && holidayDate.getMonth() === month) {
    	                events.push({
    	                    title: "휴진",
    	                    start: holidays[i],
    	                    display: "background",
    	                    classNames: "holiday"
    	                });
    	            }
    	        }

    	        // 진료 가능 날짜 추가
    	        for (var j = 0; j < availableDates.length; j++) {
    	            var dateStr = availableDates[j].toISOString().split("T")[0];
    	            if (holidays.indexOf(dateStr) === -1) {
    	                events.push({
    	                    title: "진료 가능",
    	                    start: dateStr,
    	                    display: "background",
    	                    classNames: "available-date"
    	                });
    	            }
    	        }

    	        return events;
    	    }

    	    // 캘린더 초기화
    	    var calendar = new FullCalendar.Calendar(calendarEl, {
    	        initialView: 'dayGridMonth',
    	        locale: 'ko',
    	        headerToolbar: {
    	            left: 'back',
    	            center: 'title',
    	            right: 'prev,next today' // 우측 버튼 제거
    	        },
    	        customButtons: {
    	            back: {
    	                text: '이전', // 버튼에 표시될 텍스트
    	                click: function () {
    	                    // 'back' 버튼 클릭 시 동작 정의
    	                    alert("이전 페이지로 이동합니다.");
    	                    // 페이지 이동 코드 예시
    	                     window.history.back(); // 브라우저 이전 페이지로 이동
    	                }
    	            }
    	        },
    	        events: generateEvents(today.getFullYear(), today.getMonth()),
    	        navLinks: true,
    	        dateClick: function (info) {
    	            info.jsEvent.preventDefault(); // 기본 동작 방지

    	            var selectedDate = info.dateStr;

    	            // 이미 지난 날짜 비활성화
    	            if (new Date(selectedDate) < today) {
    	                alert("이미 지난 날짜는 선택할 수 없습니다.");
    	                return;
    	            }

    	            // 공휴일 비활성화
    	            if (holidays.indexOf(selectedDate) > -1) {
    	                alert("공휴일에는 진료가 없습니다.");
    	                return;
    	            }

    	            // 진료 가능 날짜가 아닌 경우 비활성화
    	            var availableDates = generateAvailableDates(info.date.getFullYear(), info.date.getMonth(), availableWeekdays).map(function (date) {
    	                return date.toISOString().split("T")[0];
    	            });

    	            if (availableDates.indexOf(selectedDate) === -1) {
    	                alert("진료 가능한 날짜가 아닙니다.");
    	                return;
    	            }

    	            showTimeSlots(selectedDate);
    	        },
    	        datesSet: function (info) {
    	            // 현재 보이는 달이 변경될 때 이벤트를 갱신
    	            var newEvents = generateEvents(info.view.currentStart.getFullYear(), info.view.currentStart.getMonth());
    	            calendar.removeAllEvents();
    	            calendar.addEventSource(newEvents);
    	        }
    	    });

    	    calendar.render();

    	    // 숫자를 클릭했을 때 확장 방지
    	    calendarEl.addEventListener('click', function (e) {
    	        if (e.target.classList.contains('fc-daygrid-day-number')) {
    	            e.preventDefault(); // 기본 클릭 동작 방지
    	            var date = e.target.getAttribute('data-date');
    	            if (date) {
    	                calendar.trigger('dateClick', { dateStr: date, jsEvent: e });
    	            }
    	        }
    	    });

    	    // 예약 가능한 시간 생성 함수
    	    function generateTimeSlots() {
    	        var slots = [];
    	        for (var hour = 9; hour <= 12; hour++) {
    	            slots.push(padNumber(hour) + ":00");
    	            if (hour !== 12) slots.push(padNumber(hour) + ":30");
    	        }
    	        for (var hour = 14; hour <= 17; hour++) {
    	            slots.push(padNumber(hour) + ":00");
    	            if (hour !== 17) slots.push(padNumber(hour) + ":30");
    	        }
    	        return slots;
    	    }

    	    // 예약 가능한 시간 표시 함수
    	    function showTimeSlots(selectedDate) {
    	        timeSlotsEl.innerHTML = ""; // 기존 슬롯 초기화

    	        var allTimes = generateTimeSlots(); // 모든 예약 가능한 시간
    	        var reservedTimes = {}; // 예약된 시간 데이터 (샘플)
    	        var reserved = reservedTimes[selectedDate] || []; // 이미 예약된 시간

    	        for (var i = 0; i < allTimes.length; i++) {
    	            var time = allTimes[i];
    	            var button = document.createElement("button");
    	            button.textContent = time;
    	            button.classList.add("time-button");

    	            // 이미 예약된 시간은 비활성화
    	            if (reserved.indexOf(time) > -1) {
    	                button.classList.add("disabled");
    	                button.disabled = true;
    	            }

    	            button.onclick = (function (time) {
    	                return function () {
    	                    alert(selectedDate + " " + time + " 예약 완료!");
    	                };
    	            })(time);

    	            timeSlotsEl.appendChild(button);
    	        }
    	    }

    	    // 숫자를 2자리로 맞추는 함수
    	    function padNumber(num) {
    	        return num.toString().padStart(2, '0');
    	    }
    	});

     
    </script>
</head>
<body>
<div style="display: flex;">
    <!-- 교수 정보 영역 -->
    <div id="professorInfo">
        <h3>교수 정보</h3>
        <p>선택한 교수의 정보를 확인하세요.</p>
    </div>

    <!-- 캘린더 영역 -->
    <div id="calendar"></div>

    <!-- 예약 가능한 시간 표시 영역 -->
    <div id="timeSlots" style="">
        <h3>예약 가능한 시간</h3>
        <p>날짜를 클릭하여 예약 가능한 시간을 확인하세요.</p>
    </div>
</div>

  
</body>
</html>
