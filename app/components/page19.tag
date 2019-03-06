<!--  19th page tag  -->
<page19>
    <div class="page19 centered" onclick={ nextPage }>
        <br/>
        <h1>“The ship! It’s leaving! Wait – what’s this?” She made a fast repaid, then strapped the rusty jet pack on and blasted through the air.</h1>
        <br/>
        <img src="./public/19.png" class="background">        
    </div>
    <style>
        .background {
            height: 70%
        }
    </style>
    <script>
        // routing to next page
        this.nextPage = () => {
            this.opts.page("/20");
        }
    </script>
</page19>