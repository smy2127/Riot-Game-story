<!--  8th page tag  -->
<page8>
    <div class="page6 centered">
        <br/>
        <h1>Set the alarm for midnight so that {name}_ella doesn’t loose track of time! </h1>
        <br/>
        <div class="clockbox">
            <svg id="clock" xmlns="http://www.w3.org/2000/svg" width="600" height="600" viewBox="0 0 600 600">
                <g id="face" onclick = {showClock}>
                    <circle class="circle" cx="300" cy="300" r="253.9"/>
                    <path class="hour-marks" d="M300.5 94V61M506 300.5h32M300.5 506v33M94 300.5H60M411.3 107.8l7.9-13.8M493 190.2l13-7.4M492.1 411.4l16.5 9.5M411 492.3l8.9 15.3M189 492.3l-9.2 15.9M107.7 411L93 419.5M107.5 189.3l-17.1-9.9M188.1 108.2l-9-15.6"/>
                    <circle class="mid-circle" cx="300" cy="300" r="16.2"/>
                </g>
                <g id="hour" onmousedown = { activeHour }>
                    <path class="hour-arm" d="M300.5 298V142"/>
                    <circle class="sizing-box" cx="300" cy="300" r="253.9"/>
                </g>
                <g id="minute" onmousedown = { activeMinute }>
                    <path class="minute-arm" d="M300.5 298V67"/>
                    <circle class="sizing-box" cx="300" cy="300" r="253.9"/>
                </g>                
            </svg>
        </div><!-- .clockbox -->   
    </div>
    <style>
        /* Layout */
        .clockbox,
        {
            width: 100%;
        }

        /* Clock styles */
        .circle {
            fill: none;
            stroke: #000;
            stroke-width: 9;
            stroke-miterlimit: 10;
        }

        .mid-circle {
            fill: #000;
        }
        .hour-marks {
            fill: none;
            stroke: #000;
            stroke-width: 9;
            stroke-miterlimit: 10;
        }

        .hour-arm {
            fill: none;
            stroke: #000;
            stroke-width: 17;
            stroke-miterlimit: 10;
        }

        .minute-arm {
            fill: none;
            stroke: #000;
            stroke-width: 11;
            stroke-miterlimit: 10;
        }

        .second-arm {
            fill: none;
            stroke: #000;
            stroke-width: 4;
            stroke-miterlimit: 10;
        }

        /* Transparent box ensuring arms center properly. */
        .sizing-box {
            fill: none;
        }

        /* Make all arms rotate around the same center point. */
        /* Optional: Use transition for animation. */
        #hour,
        #minute,
        #second {
            transform-origin: 300px 300px;
            /*transition: transform .5s ease-in-out;*/
        }
    </style>
    <script>
        var activeFlag = '';    // status of selected hand of hour and minute
        var hDeg = 0;           // degree of hour hand
        var mDeg = 0;           // degree of minute hand
        // mounting
        this.on('mount', () => {
            this.name = this.store.getState().sampleReducer.name
            this.update();
            
            run_the_clock();
        })

        // showing hour and minute from current time
        function run_the_clock(){
            var date = new Date();
            let hr = date.getHours();
            let min = date.getMinutes();
            let sec = date.getSeconds();
            
            const HOURHAND = document.querySelector("#hour");
            const MINUTEHAND = document.querySelector("#minute");
            
            let hrPosition = hr*360/12 + ((min * 360/60)/12) ;
            let minPosition = (min * 360/60) + (sec* 360/60)/60;
            
            //Then we need to apply these numbers as degrees in the inline styles for transform on each of the objects.
            HOURHAND.style.transform = "rotate(" + hrPosition + "deg)";
            MINUTEHAND.style.transform = "rotate(" + minPosition + "deg)";
            hDeg = hrPosition;
            mDeg = minPosition;
        }

        // routing to next page
        this.nextPage = () => {
            this.opts.page("/9");
        }

        // active of hour hand
        this.activeHour = () => {
           activeFlag = 'hour'; 
        }
        // active of minite hand
        this.activeMinute = () => {
            activeFlag = "minute";
        }
        // reactive of selected hand
        this.releaseAll = () => {
            activeFlag = "";
        }

        // rotating of selected hand when clicking scale point
        this.showClock = (e) => {
            var deg = 0;
            var flag = activeFlag;
            activeFlag = "";
            // calculating degree
            if (flag != "") {
                var rect = document.getElementById("clock").getBoundingClientRect();
                var point = {
                    x: e.clientX - rect.left,
                    y: e.clientY - rect.top
                }

                var centerPoint = {
                    y: (rect.bottom - rect.top)/2,
                    x: (rect.right - rect.left)/2
                }

                var offsetX = point.x - centerPoint.x;
                var offsetY = point.y - centerPoint.y;
                var r = Math.sqrt(Math.pow(offsetX, 2) + Math.pow(offsetY, 2));
                deg = Math.acos(offsetX/ r);
                deg = Math.round(deg * 180/Math.PI);
                // if (offsetY > 0) deg = 360 - deg;
                if (offsetY > 0)
                    deg = deg + 90;
                else
                    deg = 90 - deg;
                if (flag == "hour") {
                    document.querySelector("#hour").style.transform = "rotate(" + deg + "deg)";
                    hDeg = deg;
                } else {
                    document.querySelector("#minute").style.transform = "rotate(" + deg + "deg)";
                    mDeg = deg;
                }

                if (Math.abs(mDeg) > 2 || Math.abs(hDeg) > 2) { // when wrong position, alert
                    alert("I think you might need to check the time again!");
                } else {    // both hands are matched at 12 point, then route next page
                    var audio = new Audio('./public/alarm.mp3');
                    audio.play();
                    window.setTimeout(()=>{
                        this.opts.page("/9");
                    }, 3000);
                }
            }
            
        }
    </script>
</page8>