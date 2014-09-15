var mySwiper = new Swiper('.swiper-container', {
    pagination: '.box-pagination',
    keyboardControl: true,
    paginationClickable: true,
    slidesPerView: 'auto',
    autoResize: true,
    resizeReInit: true,
});

$('.prevControl').on('click', function (e) {
    e.preventDefault();
    mySwiper.swipePrev()
});

$('.nextControl').on('click', function (e) {
    e.preventDefault();
    mySwiper.swipeNext()
});