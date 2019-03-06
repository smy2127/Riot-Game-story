<!--  3rd page tag  -->
<page3>
    <div class="1st-page centered">
        <br/>
        <h1>She fixed the robot dishwashers and zoombrooms in her care, but late each night she snuck away to study ship repair. </h1>
        <br/>
        <img src="./public/3.gif" id="rocket" class="background" ref="rocket" usemap="#Map">
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
        // when mounting this tag, initialize values and coordination
        this.on('mount', () => {
            var coords = "684,368,709,417,730,422,743,407,803,426,784,360".split(",");
            var rate = this.refs.rocket.clientWidth/941;
            var realCoords = [];
            coords.forEach((p, index) => {
                realCoords.push(Math.round(rate * parseInt(p)));
            })
            this.coords = realCoords.join(",");
            this.update();
        })
        // routing to next page
        this.nextPage = () => {
            this.opts.page("/4");
        }
    </script>
</page3>