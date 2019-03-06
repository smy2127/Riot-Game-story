<!--  13th page tag  -->
<page13>
    <div class="page13 centered">
        <br/>
        <h1>But Interstella {name}_ella knew just what to do. She zipzapped with her socket wrench – the ship was good as new!</h1>
        <br/>
        <img src="./public/13.png" class="background">
        <div class="foreground" onclick={askAnswer}>
            <span if={!flag}>What do you think the Prince thought when Cinderella fixed his ship?</span>
            <textarea rows="3" cols="20" ref="answer" if={flag} onkeypress={doKeypress}></textarea>
        </div>        
    </div>
    <style>
        .background {
            width: 100%
        }
        .foreground {
            position: absolute;
            color: deeppink;
            width: 300px;
            padding: 41px;
            height: 156px;
            right: 0;
            top: 28%;
            /* margin-top: -300px; */
            background: url(./public/13_1.png);
            background-size: cover;
        }
    </style>
    <script>
        // mounting
        this.on('mount', () => {
            this.flag = false;
            this.name = this.store.getState().sampleReducer.name
            this.update();
        })
        // routing when user type enter key
        this.doKeypress = (e) => {
            var keyCode = e.which || e.keyCode;
            if (keyCode == 13) {
                this.opts.page("/14");
            }
        }
        // when uer click question tab, then it'll replace with input element for answering
        this.askAnswer = () => {
            this.flag = true;
        }
    </script>
</page13>