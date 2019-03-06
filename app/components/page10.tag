<!--  10th page tag  -->
<page10>
    <div class="1st-page centered">
        <br/>
        <h1>Help {name}_ella pick out the books which will help her learn more about ship repair </h1>
        <br/>
        <div class="row">
            <div class="col-md-4 offset-md-2">
                <div class="card text-center" id="hammor" onclick= { askAnswer }>
                    <img src="./public/10_1.png" class="card-img-top" alt="">                    
                </div>                
            </div>
            <div class="col-md-4">
                <div class="card text-center"  id="nail" onclick= { askAnswer }>
                    <img src="./public/10_2.png" class="card-img-top" alt="">                    
                </div>                
            </div>            
        </div>        
        <div class="row">
            <div class="col-md-4 offset-md-2">
                <div class="card text-center" id="doriva" onclick= { askAnswer }>
                    <img src="./public/10_3.png" class="card-img-top" alt="">                    
                </div>                
            </div>
            <div class="col-md-4">
                <div class="card text-center"  id="bolt" onclick= { askAnswer }>
                    <img src="./public/10_4.png" class="card-img-top" alt="">                    
                </div>                
            </div>            
        </div>        
        <div class="row">
            <div class="col-md-4 offset-md-2">
                <div class="card text-center" id="spana" onclick= { askAnswer }>
                    <img src="./public/10_5.png" class="card-img-top" alt="">                    
                </div>                
            </div>
            <div class="col-md-4">
                <div class="card text-center"  id="drill" onclick= { askAnswer }>
                    <img src="./public/10_6.png" class="card-img-top" alt="">                    
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
        .yellow {
            border: 1px solid yellow;
        }

        .green {
            border: 1px solid green;
        }

        .red {
            border: 1px solid red;
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
        var answers = [];   // array to store selected tool
        // mounting
        this.on('mount', () => {
            this.name = this.store.getState().sampleReducer.name
            this.update();
        })

        var flag = false;
        this.askAnswer = (e) => {
            // available match pair
            var matched = {
                "hammor" : "nail",
                "nail": "hammor",
                "doriva": "drill",
                "drill": "doriva",
                "spana" : "bolt",
                "bolt" : "spana"
            };
            
            var selectedId = e.target.closest(".card").id;
            var classNames = ['green', 'yellow', 'red'];
            if (answers.length > 0) {
                // detecting whether user matched available pair
                var index = answers.length - 1;
                if (answers.length % 2 && matched[answers[index]] == selectedId) {
                    flag = true;
                    answers.push(selectedId);
                } else if (answers.length % 2 == 0) {
                    flag = true;
                    answers.push(selectedId);
                } else {
                    flag = false;
                }

                // add border color for matched pair by clicking tool
                document.querySelector("#" + selectedId + " img").classList.add(classNames[Math.floor((answers.length - 1) / 2)])

                if (!flag) {    // if unmatched pair, then initialize all, so need to match again.
                    alert("Ops, that does not look like a good fit.");
                    answers = [];
                    flag = false;
                    document.querySelectorAll("img").forEach(oo => {
                        oo.className = '';
                    });
                } else {
                    if (answers.length >= 6) { // all matched as correct pair, then go to next page
                        this.opts.page("/11");
                    }
                }
            } else {    // first clicking of tool
                answers.push(selectedId);
                document.querySelector("#" + selectedId + " img").classList.add(classNames[Math.floor((answers.length - 1) / 2)])
            }
        }
    </script>
</page10>