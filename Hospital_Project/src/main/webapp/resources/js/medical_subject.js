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
