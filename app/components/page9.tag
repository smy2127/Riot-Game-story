<!--  9th page tag  -->
<page9>
    <div class="page5 centered" onclick={ nextPage }>
        <br/>
        <h1>“Oh, thank you!” { name }_ella said. She quickly fixed the rocket, then tucked the sonic socket wrench inside her space suit pocket. </h1>
        <br/>
        <img src="./public/9.png" class="background">        
    </div>
    <style>
        .background {
            height: 70%
        }
    </style>
    <script>
        this.on('mount', () => {
            this.name = this.store.getState().sampleReducer.name
            this.update();
        })

        this.nextPage = () => {
            this.opts.page("/10");
        }
    </script>
</page9>