'use strict';


/**
 * Says cardinal point
 *
 * cardinal_point String 
 * returns Region
 **/
exports.cardinalpoint = function(name) {
  return new Promise(function(resolve, reject) {
    sql.query("SELECT cardinal_point FROM regions WHERE name = ?", [name], function (err, res){
      if(err){
        console.log(err);
        reject(err);
      }
      else{
        console.log(res);
        resolve(res);
      }
    });
  });
}



/**
 * Finds region by pokemon
 *
 * pokemons String 
 * returns Region
 **/
exports.regionofpokemon = function(pokemons) {
  return new Promise(function(resolve, reject) {
    sql.query("SELECT * FROM regions WHERE poke_id = (SELECT * FROM pokemons WHERE id = ?)", [id], function (err, res){
      if(err){
        console.log(err);
        reject(err);
      }
      else{
        console.log(res);
        resolve(res);
      }
    });
  });
}

