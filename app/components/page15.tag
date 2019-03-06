<!--  15th page tag  -->
<page15>
    <div class="page11 centered" onclick={ nextPage }>
        <br/>
        <h1>The prince sent a transmission to the farthest edge of space. “I’ll search the universe for her. How I wish I had seen her face!”</h1>
        <br/>
        <img src="./public/15.png" class="background">        
    </div>
    <style>
        .background {
            width: 100%
        }
    </style>
    <script>
        // routing to next page
        this.nextPage = () => {
            this.opts.page("/16");
        }
    </script>
</page15>