document.addEventListener("DOMContentLoaded",function()
    {
		//Sidebar collapsed function=====================
        var toggle=document.getElementById("header-toggle");
        var layout=document.getElementById("sidebar-layout");

        if(toggle&&layout)
        {
                toggle.addEventListener("click",function()
                {
                    layout.classList.toggle("collapsed");
                }
            );
        }
		
		//carousel function================================
		const carousel=document.getElementById("carousel");
			if(!carousel)
				return;
			
		const slides=carousel.querySelectorAll(".carousel-slide");
		const prevButton=carousel.querySelector(".prev");
		const nextButton=carousel.querySelector(".next");
		const dotsContainer=carousel.querySelector(".carousel-dot");
    
		//configure the first image as index 0
		let curSlideIndex=0;
		const total=slides.length;
		
		//generate dots
		function createDots(){
			//initialize all elements in dotsContainer as empty
			dotsContainer.innerHTML="";
			
			for(let i=0;i<total;i++){
				const dot=document.createElement("span");
				dot.classList.add("dot");
				if(i===curSlideIndex){
					dot.classList.add("active");
				}
				dot.addEventListener("click",
					function(){
						goTo(i);
					}
				);
				dotsContainer.appendChild(dot);
			}
		}
		function goTo(index){
			//the opacity at .carousel-slide.active is 1, remove active,
			//the slide opacity =0, the previous slide will be hidden
			slides[curSlideIndex].classList.remove("active");
			dotsContainer.children[curSlideIndex].classList.remove("active");
				
			curSlideIndex=(index+total)%total;
			
			slides[curSlideIndex].classList.add("active");
			dotsContainer.children[curSlideIndex].classList.add("active");
		}
		
		//go to previous slilde
		function prev(){
			goTo(curSlideIndex-1);
		}
		//go to next slide
		function next(){
			goTo(curSlideIndex+1);
		}
			
		setInterval(next,3000);
		prevButton.addEventListener("click",prev);//click button trigger prev function upon
		nextButton.addEventListener("click",next);
		
		//===============carousel dogs images=============
		const dogMainImg = document.getElementById('dog-main-img');
		if (dogMainImg) {
		    const dogGalleryImgs = document.querySelectorAll('.dog-gallery img');
		    const dogSources = Array.from(dogGalleryImgs)
		        .map(img => img.src)
		        .filter((src, i, arr) => src && arr.indexOf(src) === i);

		    if (dogSources.length > 0) {
		        let dIndex = 0;

		        function showNextDog() {
		            dIndex = (dIndex + 1) % dogSources.length;
		            dogMainImg.src = dogSources[dIndex];
		        }

		        setInterval(showNextDog, 3000);
		    }
		}

		//===============carousel cat images==============
		const catMainImg = document.getElementById('cat-main-img');
		if (catMainImg) {
		    const catGalleryImgs = document.querySelectorAll('.cat-gallery img');
		    const catSources = Array.from(catGalleryImgs)
		        .map(img => img.src)
		        .filter((src, i, arr) => src && arr.indexOf(src) === i);

		    if (catSources.length > 0) {
		        let cIndex = 0;

		        function showNextCat() {
		            cIndex = (cIndex + 1) % catSources.length;
		            catMainImg.src = catSources[cIndex];
		        }

		        setInterval(showNextCat, 3000);
		    }
		}
		
		createDots();
	}
)