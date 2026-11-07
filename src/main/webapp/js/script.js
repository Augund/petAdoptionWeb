document.addEventListener("DOMContentLoaded",function()
    {
		//Sidebar collapsed function=====================
        var toggle=document.getElementById("sidebar-toggle");
        var sidebar=document.getElementById("sidebar");

        if(toggle&&sidebar)
        {
                toggle.addEventListener("click",function()
                {
                    sidebar.classList.toggle("collapsed");
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
			
		prevButton.addEventListener("click",prev);//click button trigger prev function upon
		nextButton.addEventListener("click",next);
		
		createDots();
	}
)