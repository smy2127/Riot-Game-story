<!--  12th page tag  -->
<page12>
    <div class="page12 centered">
        <br/>
        <h1>The Prince’s spaceship jerked and hissed and spewed a cloud of grit. The prince hopped out. “Oh blast! What now? My chief mechanic quit!”</h1>
        <br/>
        <img src={imageSrc} id="rocket" class="background" ref="rocket" usemap="#Map">
        <map name="Map" id="Map">
            <area alt="" title="" onclick={nextPage} shape="poly" coords={coords} />            
        </map>
    </div>
    <style>
        .background {
            width: 100%
        }
    </style>
    <script>
        // mounting and recalulating of coordination of map
        this.on('mount', () => {
            this.imageSrc = './public/12.gif';
            var coords = "148,2,216,66,246,62,265,81,255,100,272,111,289,111,372,97,302,277,206,367,96,411,0,434,1,1".split(",");
            var rate = this.refs.rocket.clientWidth/809;
            var realCoords = [];
            coords.forEach((p, index) => {
                realCoords.push(Math.round(rate * parseInt(p)));
            })
            this.coords = realCoords.join(",");
            this.update();
        })

        // routing to next page
        this.nextPage = () => {
            // ship shudders
            this.imageSrc = './public/12_1.gif';
            window.setTimeout(() => {
                this.opts.page("/13");
            }, 3000)
        }
    </script>
</page12>