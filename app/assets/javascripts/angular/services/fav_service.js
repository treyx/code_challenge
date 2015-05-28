app.service("FavoriteService", function($http){

  var urlFav= "/api/v1/favorites"

  this.addFav = function(item){
    return $http.post(urlFav+"?item="+item);
  };

});
