var add = function(a, b, callback){

    if( !typeof a === 'Numeric' || !typeof b === 'Numeric')
        callback();
    else
        return callback();
}



module.exports.add = add;