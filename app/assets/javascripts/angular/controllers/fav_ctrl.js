app.controller("FavsCtrl", ["FavoriteService", "$scope", function(FavoriteService, $scope) {

  $scope.favorites = [];


  $scope.addFavorite = function() {
    var div = document.getElementById("div-item-data");

    var item = {name: div.getAttribute("data-item-name"),
                description:   div.getAttribute("data-item-desc")
    };
    FavoriteService.addFav(item.name).success(function(data){
      console.log(data)
      $scope.favorites.push(data);
    });
  };

}]);
