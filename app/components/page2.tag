<!--  2nd page. need to develop as new task for rocket game  -->
<page2>
    <div class="page1 centered" onclick={ nextPage }>
        <br/>
        <h1>Help {name}_ella make her dream come true!</h1>
        <br/>
        <p>pending...</p>
    </div>
    <style>
        .page1 {
            height: 100%;
        }
    </style>    
    <script>
        // when mounting, fetch user name from redux store of app
        this.on('mount', () => {
            this.name = this.store.getState().sampleReducer.name
            this.update()
        })

        // routing to next page
        this.nextPage = () => {
            this.opts.page("/3");
        }
    </script>
</page2>