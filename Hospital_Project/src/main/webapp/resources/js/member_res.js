            // JavaScript로 cover 숨기기 기능 추가
function hideCover() {
let cover = document.getElementById('cover');
cover.style.display = 'none'; // cover 숨기기
}
            
            
function back() {
let cover = document.getElementById('cover');
cover.style.display = 'flex'; // cover 다시 보이게 설정
}
            
//
function check() {
// 1. 연락처 확인
const middle = document.getElementById('middle').value.trim();
const back = document.getElementById('back').value.trim();
const phoneRegex = /^[0-9]{3,4}$/;

if (!phoneRegex.test(middle)) {
alert("중간 번호는 3~4자리 숫자만 입력 가능합니다.");
return;
}
if (!phoneRegex.test(back)) {
alert("뒷 번호는 4자리 숫자만 입력 가능합니다.");
return;
}
// 2. 라디오 버튼 확인
const agreeValue = document.querySelector('input[name="check_agree"]:checked');
if (!agreeValue) {//라디오버튼이 클릭되지 않았을때 
alert("개인정보 수집 및 이용에 대한 동의 여부를 선택해주세요.");
return;
}
if (agreeValue.value === 'no') { // 동의하지 않았을때
alert("온라인 예약은 동의가 필요합니다.");
return;
}

// 3. 유효성 검사가 모두 통과되었을 때
document.getElementById('right').style.display = 'block'; // 3번 페이지 표시
alert("진료과를 선택해주세요.");
const rightDiv = document.getElementById("right");
    rightDiv.style.display = "block"; // right 영역 표시

}
