<!--  21th page tag  -->
<page21>
    <div class="page21 centered" onclick={ nextPage }>
        <br/>
        <h1>She landed right beside the prince. “That wrench is mine!” she cried. She quickly fixed the ailing ship. 
        The prince said, “Be my bride!”. {name}_ella thought this over carefully. “I’m far too young for marriage, but I’ll be your chief mechanic!”</h1>
        <br/>
        <div class="row">
            <div class="col-md-6">
                <img src="./public/21_1.png" class="background">        
            </div>
            <div class="col-md-6">
                <img src="./public/21_2.png" class="background">        
            </div>
        </div>
        
    </div>
    <style>
        .background {
            height: 65%
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
            this.opts.page("/22");
        }
    </script>
</page21>