var events  = require('events');
var emitter = events.EventEmitter();

var start = function start(){
emitter.emit("start", "Staeted working");
setTimeout(function(){
    emitter.emit('inprogress', "Inprogress Now")
}, 1000)
setTimeout(function(){
    emitter.emit('completed', "completed Now")
}, 1000)
}


module.exports.start = start;