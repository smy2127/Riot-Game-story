<!-- 
Home tag
User can type his name for showing it on whole game screen.
When user type name, then it'll update the name of store on application.
So the updated name of store will be shown on whole game screen.
-->
<home>
    <div class="home centered">
        <br/>
        <h1>Hello! Before we begin reading this book, could you please tell me your name</h1>
        <br/>
        <br/>
        <br/>
        <br/>
        <br/>
        <br/>
        <br/>
        <!--  name tag: ref: name, value: name, onchange: changeName function, onkeypress: nextPage function  -->
        <h2>Your Name: <input type="text" ref="name" class="name" value="{ name }" onchange={ changeName } onkeypress={ nextPage }></h2>
    </div>
    <!--  style definion part of using on this tag  -->
    <style>
        .name {
            text-align: right;
            padding: 5px;
        }
    </style>
    <!--  action script of this tag  -->
    <script>
        // event listener when this tag is mounted
        this.on('mount', () => {
            // get the name from redex store of application. so at this point, the name contains initial name value as "Cinderella"
            this.name = this.store.getState().sampleReducer.name
            // update this tag with new values
            this.update()
        })

        // initialize function
        this.initialize = (e) => {
            // action definion of redux
            // get initial state of store as default
            let action = {
                type: 'ACTION',
                payload: new Promise((t, c) => {
                setTimeout(() => {
                    t()
                }, 1000)

                }) // use AJAX, Axios or other promise execute
            }

            // redux dispatch above action
            this.store.dispatch(action).then(() => {
                this.name = this.store.getState().sampleReducer.name
                this.update()
            })
        }

        // update name of redux when change the value of name
        this.changeName = (e) => {
            // get value from input element that have "name" of ref.
            var input = this.refs.name;
            // define update redux action
            let action = {
                type: 'UPDATE_NAME',
                name: input.value
            }
            // running above action.
            // so at this point, update name field of application store with above new value
            this.store.dispatch(action);
        }

        // go to next page when entered enter-key
        this.nextPage = (e) => {
            var keyCode = e.which || e.keyCode; // detection of keyboard code.
            if (keyCode == 13) {    // when pressed enter key
                e.preventDefault();
                // as we capsuled application with riot router, so all tags have opts of router. This attribute is used for routing of html5
                this.opts.page("/title"); // go to title page. we are using riot router module for going to any page.
            }
        }
    </script>
</home>