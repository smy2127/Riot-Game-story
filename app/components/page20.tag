<!--  20th tag page  -->
<page20>
    <div class="page20 centered" onclick={ nextPage }>
        <br/>
        <h1>Quickly help {name}_ella fix her jet pack!</h1>
        <br/>
    </div>
    <style>
        .page20 {
            height: 100%;
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
            this.opts.page("/21");
        }
    </script>
</page20>