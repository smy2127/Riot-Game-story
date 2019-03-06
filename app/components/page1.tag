<!--  1st page tag  -->
<page1>
    <div class="1st-page centered">
        <br/>
        <!--  showing name from script code, so when changed the name on store, this name will be changed at same time  -->
        <h1>Once upon a planetoid, amid her tools and sprockets,a girl named {name}_ella dreamed of fixing fancy rockets.</h1>
        <br/>
        <!--  background image  -->
        <img src="./public/1st.gif" id="rocket" class="background" ref="rocket" usemap="#Map">
        <!--  define mouse click map of "glow" part  -->
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
        // when this tag is mounted on page, this function is called.
        this.on('mount', () => {
            // calculate of map coordination from original position.
            var coords = "451,74,440,120,437,167,430,230,453,273,460,222,519,257,545,199,579,247,579,180".split(",");
            // rate of current image width vs original image width. This is necessary for calculating of map coordination as the image width changed along with screen width
            var rate = this.refs.rocket.clientWidth/809;
            var realCoords = [];
            coords.forEach((p, index) => {
                realCoords.push(Math.round(rate * parseInt(p)));
            })
            // make new coordination of map
            this.coords = realCoords.join(",");
            // fetch user name from redux store of application
            this.name = this.store.getState().sampleReducer.name
            this.update();  // update this tag with new values
        })

        this.nextPage = () => {
            this.opts.page("/2");   // rounting next page when user mouse click screen
        }
    </script>
</page1>