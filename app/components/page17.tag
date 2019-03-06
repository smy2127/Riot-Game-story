<!--  17th tag page  -->
<page17>
    <div class="page17 centered" onclick={ nextPage }>
        <br/>
        <h1>The prince’s cargo door revealed a broken craft within. “The girl I seek can fix a ship – so who’d like to begin?”Alas neither girl could fix the ship and neither could their mother. 
        The prince began to take his leave, back into the sky.</h1>
        <br/>
        <img src="./public/17.png" class="background">        
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
            this.opts.page("/18");
        }
    </script>
</page17>