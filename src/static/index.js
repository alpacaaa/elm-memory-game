require( './styles/app.css' );

// inject bundled Elm app into div#main
// var Elm = require( '../elm/Step5' );
var Elm = require( '../elm/Main' );
Elm.Main.embed( document.getElementById( 'main' ) );
