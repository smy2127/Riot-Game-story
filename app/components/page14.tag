<!--  page 14 tag  -->
<page14>
    <div class="page11 centered" onclick={ nextPage }>
        <br/>
        <h1>The prince invited her aboard. They talked for hours of rocket ships. The time went whizzing by.
         Then {name}_ella saw the clock and said, “I have to fly!”<br/>“But wait!” the prince called, “How will I find…”The girl was gone – but she had left her socket wrench behind. </h1>
        <br/>
        <img src="./public/14.png" class="background">        
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
            this.opts.page("/15");
        }
    </script>
</page14>