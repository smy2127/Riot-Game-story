<!--  4th page tag  -->
<page4>
    <div class="1st-page centered">
        <br/>
        <h1>Help {name}_ella pick out the books which will help her learn more about ship repair </h1>
        <br/>
        <div class="row">
            <div class="col-md-4">
                <div class="card text-center" id="1" onclick= { askAnswer }>
                    <img src="./public/4_1.png" class="card-img-top" alt="The Ins and Outs of Ships">
                    <div class="card-body">
                        <h4 class="card-title">The Ins and Outs of Ships</h4>
                    </div>
                </div>                
            </div>
            <div class="col-md-4">
                <div class="card text-center"  id="2" onclick= { askAnswer }>
                    <img src="./public/4_2.png" class="card-img-top" alt="The Ins and Outs of Ships">
                    <div class="card-body">
                        <h4 class="card-title">Who Says Girls Can’t Build</h4>
                    </div>
                </div>                
            </div>
            <div class="col-md-4">
                <div class="card text-center"  id="3" onclick= { askAnswer }>
                    <img src="./public/4_3.png" class="card-img-top" alt="The Ins and Outs of Ships">
                    <div class="card-body">
                        <h4 class="card-title">Guide to the Universe</h4>
                    </div>
                </div>                
            </div>
        </div>
        <div class="row">
            <div class="col-md-4 offset-md-2">
                <div class="card text-center"  id="4" onclick= { askAnswer }>
                    <img src="./public/4_4.png" class="card-img-top" alt="The Ins and Outs of Ships">
                    <div class="card-body">
                        <h4 class="card-title">Space Monsters</h4>
                    </div>
                </div>                
            </div>
            <div class="col-md-4">
                <div class="card text-center"  id="5" onclick= { askAnswer }>
                    <img src="./public/4_5.png" class="card-img-top" alt="The Ins and Outs of Ships">
                    <div class="card-body">
                        <h4 class="card-title">Speedy Spaceships: How to make your ship fly faster</h4>
                    </div>
                </div>                
            </div>
        </div>
    </div>
    <style>
        .card {            
            padding-top: 5%;
            padding-left: 10%;
            padding-right: 10%;
            padding-bottom: 5%;
            border: 0px;            
        }
        .card img {
            width: 180px;
            margin: auto;
        }
        .card:hover {
            color: aqua;
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
            this.opts.page("/5");
        }

        // detecting whether user click correct book
        this.askAnswer = (e) => {
            var selectedId = e.target.closest(".card").id
            if ([1, 2, 5].indexOf(parseInt(selectedId)) >= 0) {
                alert("Good Idea!");
            } else {
                alert("Hmmm, I’m not so sure about that");
            }
            this.opts.page("/5")
        }
    </script>
</page4>