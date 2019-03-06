<!--  title page tag  -->
<title-page>
    <div class="title centered" onclick={ nextPage }>
        <br/>
        <h1>Title Page</h1>
        <image src="./public/title.png" style="height: 90%"/>
    </div>
    <script>
        // routing to next page
        this.nextPage = (e) => {
            this.opts.page("/1");
        }
    </script>
</title-page>