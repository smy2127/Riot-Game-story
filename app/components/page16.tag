<!--  16th page tag  -->
<page16>
    <div class="page16 centered" onclick={ nextPage }>
        <br/>
        <h1>“The prince’s ship!” stepsister screeched. Her sister squealer in fear. 
        “The prince won’t marry one of us if {name}_ella’s here!”Their mother said, “Don’t worry. I’ve trapped her in the attic.”</h1>
        <br/>
        <img src="./public/16.png" class="background">        
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
            this.opts.page("/17");
        }
    </script>
</page16>