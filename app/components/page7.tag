<!--  7th page tag  -->
<page7>
    <div class="page6 centered" onclick={ nextPage }>
        <br/>
        <h1>“I’m here – your fairy godbot! I’ll make you brand-new tools. You’ll fix the ship in no time, 
        and here’s a new space suit too! This power gem will speed your ship across the starry sky. It only lasts till midnight- after that your ship won’t fly.”</h1>
        <br/>
        <img src="./public/7.png" class="background">        
    </div>
    <style>
        .background {
            height: 70%
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
            this.opts.page("/8");
        }
    </script>
</page7>