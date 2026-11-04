document.addEventListener("DOMContentLoaded",function()
    {
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
    }
)