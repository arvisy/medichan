function redirectPage() {
    window.location.href = "login.html";
}

let initialScroll = 0;

// Mendapatkan tinggi awal saat halaman dimuat
window.addEventListener('load', function () {
    initialScroll = window.scrollY || window.pageYOffset;
});

function scrollToSection(sectionId) {
    // Mendapatkan tinggi baris selanjutnya
    const currentScrollY = window.scrollY || window.pageYOffset;
    const sectionElement = document.getElementById(sectionId);
    const sectionOffset = sectionElement.offsetTop - initialScroll;

    // Gulir ke tinggi baris selanjutnya
    window.scrollTo({
        top: currentScrollY + sectionOffset,
        behavior: 'smooth'
    });
}

function scrollPortfolio() {
    // Mendapatkan tinggi baris selanjutnya
    const currentScrollY = window.scrollY || window.pageYOffset;
    const lineHeight = 800; // Ganti dengan tinggi baris yang diinginkan (dalam piksel)
    const nextLineHeight = Math.ceil(currentScrollY / lineHeight) * lineHeight + lineHeight;

    // Gulir ke tinggi baris selanjutnya
    window.scrollTo({
        top: nextLineHeight,
        behavior: 'smooth'
    });
}

function scrollAboutUs() {
    // Mendapatkan tinggi baris selanjutnya
    const currentScrollY = window.scrollY || window.pageYOffset;
    const lineHeight = 1700; // Ganti dengan tinggi baris yang diinginkan (dalam piksel)
    const nextLineHeight = Math.ceil(currentScrollY / lineHeight) * lineHeight + lineHeight;

    // Gulir ke tinggi baris selanjutnya
    window.scrollTo({
        top: nextLineHeight,
        behavior: 'smooth'
    });
}

function scrollContactUs() {
    // Mendapatkan tinggi baris selanjutnya
    const currentScrollY = window.scrollY || window.pageYOffset;
    const lineHeight = 2800; // Ganti dengan tinggi baris yang diinginkan (dalam piksel)
    const nextLineHeight = Math.ceil(currentScrollY / lineHeight) * lineHeight + lineHeight;

    // Gulir ke tinggi baris selanjutnya
    window.scrollTo({
        top: nextLineHeight,
        behavior: 'smooth'
    });
}




