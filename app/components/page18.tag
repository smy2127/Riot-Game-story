<!--  18th page tag  -->
<page18>
    <div class="page18 centered" onclick={ nextPage }>
        <br/>
        <h1>{name}_ella struggled, but the space rope held her tight. That is until Troid’s robotic teeth, cut through it with one bite</h1>
        <br/>
        <img src="./public/18.png" class="background">        
    </div>
    <style>
        .background {
            height: 80%
        }
    </style>
    <script>
        // mounting
        this.on('mount', () => {
            this.name = this.store.getState().sampleReducer.name
            this.update();
        })
        // routing to next page
        this.nextPage = () => {
            this.opts.page("/19");
        }
    </script>
</page18>