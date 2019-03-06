<!--  22th page tag  -->
<page22>
    <div class="page19 centered" onclick={ nextPage }>
        <br/>
        <h1>Amid her fleet of sparkling ships, and friends both old and new, a joyful {name}_ella cried, “My stars! Dreams do come true!”</h1>
        <br/>
        <img src="./public/22.png" class="background">        
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
            this.opts.page("/home");
        }
    </script>
</page22>