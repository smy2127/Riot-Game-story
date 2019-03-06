<!--  5th page tag  -->
<page5>
    <div class="page5 centered" onclick={ nextPage }>
        <br/>
        <h1>One day her wicker stepsisters came dashing in, excited. “The Prince’s Royal Ball! Our family’s invited!”
        “I wish that you could come, my dear,” {name}_ella’s stepmum said, “But alas, there is no room… why don’t you fix that broken ship and fly there on your own?”</h1>
        <br/>
        <img src="./public/5.png" class="background">        
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
        // routing next page
        this.nextPage = () => {
            this.opts.page("/6");
        }
    </script>
</page5>