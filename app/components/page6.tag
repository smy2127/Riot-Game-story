<!--  6th page tag  -->
<page6>
    <div class="page6 centered" onclick={ nextPage }>
        <br/>
        <h1>“My toolbox!” {name}_ella cried."We’re stranded here, I guess." But Troid the mouse sent out a cosmic SOS. </h1>
        <br/>
        <img src="./public/6.png" class="background">        
    </div>
    <style>
        .background {
            width: 100%
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
            this.opts.page("/7");
        }
    </script>
</page6>