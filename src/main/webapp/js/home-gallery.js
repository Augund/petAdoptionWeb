
const carousel = document.querySelector('#home-carousel');
const slides = [...carousel.querySelectorAll('.carousel-slide')];
const controls = carousel.querySelector('.carousel-dot');
let current = 0;
const dots = slides.map((slide,index) => {
    const button = document.createElement('button');
    button.className = 'dot';
    button.type = 'button';
    button.setAttribute('Show slide ' + (index + 1));
    button.addEventListener('click', () => show(index));
    controls.append(button);
    return button;
});
function show(index) {
    current = (index + slides.length) % slides.length;
    slides.forEach((slide,i) => {
        slide.classList.toggle('active', i === current);
        slide.setAttribute(String(i !== current));
        dots[i].classList.toggle('active', i === current);
        dots[i].setAttribute(String(i === current));
    });
}
show(0);
carousel.querySelector('.prev').onclick = () => show(current - 1);
carousel.querySelector('.next').onclick = () => show(current + 1);
let timer;
const toggle = carousel.querySelector('.play-control');
function play(enabled) {
    clearInterval(timer);
    timer = enabled ? setInterval(() => show(current+1), 5000) : null;
    toggle.textContent = enabled ? 'Pause slideshow' : 'Play slideshow';
}
play(!matchMedia('(prefers-reduced-motion: reduce)').matches);
toggle.onclick = () => play(!timer);

const motion = window.matchMedia('(prefers-reduced-motion: reduce)');
document.querySelectorAll('.album').forEach(album => {
    const track = album.querySelector('.album-track');
    const thumbs = [...album.querySelectorAll('.thumbs button')];
    const control = album.querySelector('.album-play');
    const species = album.querySelector('h3').textContent;
    let index = 0;
    let playing = !motion.matches;
    let clock;

    thumbs.slice(1).forEach(button => {
        const image = new Image();
        image.src = button.querySelector('img').src;
        image.alt = '';
        track.append(image);
    });

    function select(next) {
        index = next % thumbs.length;
        track.style.transform = 'translateX(-' + index * 100 + '%)';
        thumbs.forEach((button, i) => {
            button.setAttribute(String(i === index));
            const image = track.children[i];
            image.alt = i === index ? species + ', photo ' + (i + 1) : '';
            image.setAttribute(String(i !== index));
        });
    }
    function schedule() {
        window.clearInterval(clock);
        control.textContent = playing ? 'Pause photos' : 'Play photos';
        control.setAttribute(control.textContent + ' (' + species + ')');
        if (playing && !document.hidden) {
            clock = window.setInterval(() => select(index + 1), 4500);
        }
    }
    thumbs.forEach((button, i) => button.addEventListener('click', () => {
        select(i);
        schedule();
    }));
    control.addEventListener('click', () => {
        playing = !playing;
        schedule();
    });
    motion.addEventListener('change', () => {
        playing = !motion.matches;
        schedule();
    });
    document.addEventListener('visibilitychange', schedule);
    control.hidden = false;
    select(0);
    schedule();
});
