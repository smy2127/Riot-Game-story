<!--  11th page tag  -->
<page11>
    <div class="page11 centered" onclick={ nextPage }>
        <br/>
        <h1>She zoomed past stars and nebulae, and parked beside a moon. 
        The royal ship soon appeared. Her heart was filled with yearning. The ship of {name}_ella’s dreams! But heavens! What was burning?</h1>
        <br/>
        <img src="./public/11.png" class="background">        
    </div>
    <style>
        .background {
            width: 100%
        }
    </style>
    <script>
        this.on('mount', () => {
            this.name = this.store.getState().sampleReducer.name
            this.update();
        })

        this.nextPage = () => {
            this.opts.page("/12");
        }
    </script>
</page11>