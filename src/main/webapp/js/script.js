Document.addEventListener("DDMContentLoaded",function()
    {
        var toggle=document.getElementById("toggle");
        var sidebar=document.getElementById("sidebar");

        if(toggle&&sidebar)
        {
                toggle.addEventListener("click",function()
                {
                    sidebar.classList.toggle("collapse");
                }
            );
        }
    }
)