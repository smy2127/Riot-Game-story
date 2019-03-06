/**
 * main.js
 * main entry of the app
 */
import riot from 'riot'               // import riot js 
import 'bootstrap'                    // import bootstrap module(latest version)
import 'riot-routehandler'            // html5 riot routing module
import StoreMixin from './store'      // redux store for manageing of app status
import './components/home.tag'        // home page tag
import './components/title-page.tag'   // title page tag
import './components/page1.tag'       // page 1 tag
import './components/page2.tag'
import './components/page3.tag'
import './components/page4.tag'
import './components/page5.tag'
import './components/page6.tag'
import './components/page7.tag'
import './components/page8.tag'
import './components/page9.tag'
import './components/page10.tag'
import './components/page11.tag'
import './components/page12.tag'
import './components/page13.tag'
import './components/page14.tag'
import './components/page15.tag'
import './components/page16.tag'
import './components/page17.tag'
import './components/page18.tag'
import './components/page19.tag'
import './components/page20.tag'
import './components/page21.tag'
import './components/page22.tag'      // page 22 tag

// integrating redux store to riot application
riot.mixin(StoreMixin)

// page routing
// all trasition of page is processed by riot router module. It seems working like to pagination
var routes = [
    { route:"/", tag:"home" },
    { route:"/home", tag:"home" },
    { route:"/title", tag:"title-page" },
    { route:"/1", tag:"page1" },
    { route:"/2", tag:"page2" },
    { route:"/3", tag:"page3" },
    { route:"/4", tag:"page4" },
    { route:"/5", tag:"page5" },
    { route:"/6", tag:"page6" },
    { route:"/7", tag:"page7" },
    { route:"/8", tag:"page8" },
    { route:"/9", tag:"page9" },
    { route:"/10", tag:"page10" },
    { route:"/11", tag:"page11" },
    { route:"/12", tag:"page12" },
    { route:"/13", tag:"page13" },
    { route:"/14", tag:"page14" },
    { route:"/15", tag:"page15" },
    { route:"/16", tag:"page16" },
    { route:"/17", tag:"page17" },
    { route:"/18", tag:"page18" },
    { route:"/19", tag:"page19" },
    { route:"/20", tag:"page20" },
    { route:"/21", tag:"page21" },
    { route:"/22", tag:"page22" },
    { route:"*", tag:"home" }//404
  ];

var app = riot.mount('routehandler',{routes:routes,options:{hashbang:true}});
