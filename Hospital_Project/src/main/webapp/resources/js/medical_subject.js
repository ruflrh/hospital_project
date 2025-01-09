document.addEventListener('DOMContentLoaded', function () {
    const categories = document.querySelectorAll('.category');

    categories.forEach(function (category) {
        category.addEventListener('click', function () {
            const subcategories = this.querySelector('.subcategories');

            // 소분류 토글
            if (subcategories.style.display === 'block') {
                subcategories.style.display = 'none';
            } else {
                subcategories.style.display = 'block';
            }
        });
    });
});

function hide(){
	const rightDiv = document.getElementById("right");
	rightDiv.style.display = "none"; 
}

function goStep2(listItem) {
			    // 1. 클릭된 li 태그에서 data-name 값 읽기
			    const name = listItem.getAttribute('data-name');
			    if (!name) {
			        alert("선택된 항목이 없습니다.");
			        return;
			    }
			    
				location.href = "step2.do?name=" + name ;
			}




