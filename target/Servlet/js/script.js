var swiper = new Swiper(".mySwiper-1",{
    slidesPerView:1,
    spaceBetween: 20,
    loop:true,
    pagination: {
        el:".swiper-pagination",
        clickable: true,
    },
    navigation: {
        nextEl:".swiper-button-next",
        prevEl:".swiper-button-prev",
    }
});
var swiper = new Swiper(".mySwiper-2",{
    slidesPerView:2,
    spaceBetween: 20,
    loop:true,
    pagination: {
        el:".swiper-pagination",
        clickable: true,
    },
    navigation: {
        nextEl:".swiper-button-next",
        prevEl:".swiper-button-prev",
    },
});
var swiper = new Swiper(".mySwiper-3",{
    slidesPerView:3,
    spaceBetween: 20,
    loop:true,
    loopFillGroupWithBlank:true,
    navigation: {
        nextEl:".swiper-button-next",
        prevEl:".swiper-button-prev",
    },
    breakpoints : {
        0: {
            slidesPerView:1,
        },
        520: {
            slidesPerView:2,
        },
        0: {
            slidesPerView:3,
        }
    }

});

let tabInputs = document.querySelectorAll(".tabInput");

tabInputs.forEach(function(Input) {

    Input.addEventListener("change",function() {
        let id = Input.ariaValueMax;
        let thisSwiper = document.getElementById("swiper" + id);
        thisSwiper.swiper.update ();
    })

});

document.addEventListener("DOMContentLoaded", function () {
    const campos = document.querySelectorAll(".username input");

    campos.forEach(input => {
        input.addEventListener("input", function () {
            const label = this.nextElementSibling;
            if (this.value.trim() !== "") {
                label.style.opacity = "0";
                label.style.visibility = "hidden";
            } else {
                label.style.opacity = "1";
                label.style.visibility = "visible";
            }
        });
    });
});

