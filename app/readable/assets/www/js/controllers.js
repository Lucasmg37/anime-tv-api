angular.module("app.controllers", []).controller("faqCtrl", ["$scope", "$http", "LoadingService", function($scope, $http, LoadingService) {
    LoadingService.show(), $http.get("https://appanimeplus.tk/api-achance.php?faq").then(function(response) {
        $scope.faq = response.data
    }), LoadingService.hide(), $scope.$on("$ionicView.afterEnter", function() {
        window.ga.trackView("FAQ")
    })
}]).controller("suporteCtrl", ["$scope", "$http", "LoadingService", function($scope, $http, LoadingService) {
    LoadingService.show(), $http.get("https://appanimeplus.tk/api-achance.php?suporte").then(function(response) {
        $scope.suporte = response.data
    }), LoadingService.hide(), $scope.$on("$ionicView.afterEnter", function() {
        window.ga.trackView("Suporte")
    })
}]).controller("popularesCtrl", ["$scope", "$http", "LoadingService", function($scope, $http, LoadingService) {
    LoadingService.show(), $http.get("https://appanimeplus.tk/api-achance.php?populares").then(function(response) {
        $scope.populares = response.data, LoadingService.hide()
    }), $scope.$on("$ionicView.afterEnter", function() {
        window.ga.trackView("Populares")
    })
}]).controller("noticiasCtrl", ["$scope", "LoadingService", "$http", function($scope, LoadingService, $http) {
    LoadingService.show(), $http.get("https://appanimeplus.tk/api-achance.php?noticias").then(function(response) {
        $scope.noticias = response.data
    }), LoadingService.hide(), "null" === window.sessionStorage.getItem("ad") && (window.admob.interstitial.config({
        id: window.sessionStorage.getItem("interstitial"),
        isTesting: !1,
        autoShow: !0
    }), window.admob.interstitial.prepare(), window.admob.interstitial.show()), $scope.$on("$ionicView.afterEnter", function() {
        window.ga.trackView("Noticias")
    })
}]).controller("lancamentosCtrl", ["$scope", "LoadingService", "$http", "$rootScope", function($scope, LoadingService, $http, $rootScope) {
    $scope.msg = $rootScope.msg, LoadingService.show(), $http.get("https://appanimeplus.tk/api-achance.php?latest").then(function(response) {
        $scope.ultimos = response.data
    }, function(resp) {
        alert("Ocorreu um erro ao carregar os lancamentos, feche o app, limpe os dados e tente novamente.")
    }), LoadingService.hide(), $scope.sair = function() {
        ionic.Platform.exitApp()
    }
}]).controller("dubladosCtrl", ["$scope", "LoadingService", "$http", "$ionicFilterBar", function($scope, LoadingService, $http, $ionicFilterBar) {
    LoadingService.show(), $http.get("https://appanimeplus.tk/api-achance.php?categoria=dublado").then(function(response) {
        $scope.animes = response.data, $scope.showFilterBar = function() {
            $ionicFilterBar.show({
                items: $scope.animes,
                filterProperties: ["category_name"],
                update: function(filteredItems) {
                    $scope.animes = filteredItems
                }
            })
        }, LoadingService.hide()
    }, function(resp) {
        alert("Erro ao carregar! Verifique sua conexao com a internet.")
    }), $scope.$on("$ionicView.afterEnter", function() {
        window.ga.trackView("Dublados")
    })
}]).controller("animesCtrl", ["$scope", "$http", "$stateParams", "$ionicFilterBar", "LoadingService", function($scope, $http, $stateParams, $ionicFilterBar, LoadingService) {
    LoadingService.show(), $http.get("https://appanimeplus.tk/api-achance.php?letra=" + $stateParams.letra).then(function(response) {
        $scope.animes = response.data, $scope.showFilterBar = function() {
            $ionicFilterBar.show({
                items: $scope.animes,
                filterProperties: ["category_name"],
                update: function(filteredItems) {
                    $scope.animes = filteredItems
                }
            })
        }, LoadingService.hide()
    }, function(resp) {
        alert("Erro ao carregar! Verifique sua conexao com a internet.")
    }), $scope.$on("$ionicView.afterEnter", function() {
        window.ga.trackView("Animes")
    })
}]).controller("animescategoriaCtrl", ["$scope", "$http", "$stateParams", "$ionicFilterBar", "LoadingService", function($scope, $http, $stateParams, $ionicFilterBar, LoadingService) {
    LoadingService.show(), $http.get("https://appanimeplus.tk/api-achance.php?categoria=" + $stateParams.cat).then(function(response) {
        $scope.animes = response.data, $scope.showFilterBar = function() {
            $ionicFilterBar.show({
                items: $scope.animes,
                filterProperties: ["category_name"],
                update: function(filteredItems) {
                    $scope.animes = filteredItems
                }
            })
        }, LoadingService.hide()
    }, function(resp) {
        alert("Erro ao carregar! Verifique sua conexao com a internet.")
    }), $scope.$on("$ionicView.afterEnter", function() {
        window.ga.trackView("Animes Categoria")
    })
}]).controller("animeinfoCtrl", ["$scope", "$http", "$stateParams", "favoritosApi", "$ionicFilterBar", "LoadingService", function($scope, $http, $stateParams, favoritosApi, $ionicFilterBar, LoadingService) {
    var achou;
    LoadingService.show(), $scope.toggle = !0;
    for (var i = 0; i < favoritosApi.getFavoritos().length; i++) {
        if (angular.equals(favoritosApi.getFavoritos()[i].id, $stateParams.id)) {
            $scope.toggle = !1;
            break
        }
        $scope.toggle = !0
    }
    $http.get("https://appanimeplus.tk/api-achance.php?info=" + $stateParams.id).then(function(response) {
        $scope.animeinfo = response.data, window.ga.trackEvent("AnimeInfo", $scope.animeinfo[0].category_name)
    }, function(resp) {
        alert("Erro ao carregar! Verifique sua conexao com a internet.")
    }), $http.get("https://appanimeplus.tk/api-achance.php?cat_id=" + $stateParams.id).then(function(resp) {
        $scope.animes = resp.data, $scope.showFilterBar = function() {
            $ionicFilterBar.show({
                items: $scope.animes,
                filterProperties: ["title"],
                update: function(filteredItems) {
                    $scope.animes = filteredItems
                }
            })
        }, LoadingService.hide()
    }, function(resp) {
        alert("Erro ao carregar! Verifique sua conexao com a internet.")
    }), $scope.favoritar = function(fav, id) {
        for (var i = 0; i < favoritosApi.getFavoritos().length; i++) {
            if (angular.equals(favoritosApi.getFavoritos()[i].id, $scope.animeinfo[0].id)) {
                achou = 0;
                break
            }
            achou = 1
        }
        0 === achou ? (favoritosApi.deleteFavorito(fav), $scope.toggle = !0, window.plugins.OneSignal && window.plugins.OneSignal.getPermissionSubscriptionState(function(status) {
            $http.get("https://appanimeplus.tk/api-achance.php?nfav=" + id + "&player=" + status.subscriptionStatus.userId)
        })) : (favoritosApi.addFavorito(fav), $scope.toggle = !1, window.plugins.OneSignal && window.plugins.OneSignal.getPermissionSubscriptionState(function(status) {
            $http.get("https://appanimeplus.tk/api-achance.php?fav=" + id + "&player=" + status.subscriptionStatus.userId)
        }))
    }, $scope.$on("$ionicView.afterEnter", function() {
        window.ga.trackView("Animes Info")
    })
}]).controller("letrasCtrl", ["$scope", function($scope) {
    $scope.letras = [{
        letra: "#"
    }, {
        letra: "A"
    }, {
        letra: "B"
    }, {
        letra: "C"
    }, {
        letra: "D"
    }, {
        letra: "E"
    }, {
        letra: "F"
    }, {
        letra: "G"
    }, {
        letra: "H"
    }, {
        letra: "I"
    }, {
        letra: "J"
    }, {
        letra: "K"
    }, {
        letra: "L"
    }, {
        letra: "M"
    }, {
        letra: "N"
    }, {
        letra: "O"
    }, {
        letra: "P"
    }, {
        letra: "Q"
    }, {
        letra: "R"
    }, {
        letra: "S"
    }, {
        letra: "T"
    }, {
        letra: "U"
    }, {
        letra: "V"
    }, {
        letra: "W"
    }, {
        letra: "X"
    }, {
        letra: "Y"
    }, {
        letra: "Z"
    }], $scope.$on("$ionicView.afterEnter", function() {
        window.ga.trackView("Letras")
    })
}]).controller("categoriasCtrl", ["$scope", "$stateParams", "$http", function($scope, $stateParams, $http) {
    "categorias" == $stateParams.pag ? ($scope.titulo = "Categorias", $scope.pag = "categorias") : "calendario" == $stateParams.pag && ($scope.pag = "calendario", $scope.titulo = "Calendario", $http.get("https://appanimeplus.tk/api-achance.php?calendario").then(function(response) {
        $scope.calendario = response.data, "null" === window.sessionStorage.getItem("ad") && (window.admob.interstitial.config({
            id: window.sessionStorage.getItem("interstitial"),
            isTesting: !1,
            autoShow: !0
        }), window.admob.interstitial.prepare(), window.admob.interstitial.show())
    })), $scope.$on("$ionicView.afterEnter", function() {
        window.ga.trackView($scope.titulo)
    })
}]).controller("assistidosCtrl", ["$scope", "$http", "assistidosApi", function($scope, $http, assistidosApi) {
    $scope.assistidos = assistidosApi.getAssistidos(), $scope.$on("$ionicView.afterEnter", function() {
        window.ga.trackView("Assistidos")
    })
}]).controller("favoritosCtrl", ["$scope", "$http", "favoritosApi", "LoadingFavorites", "$timeout", function($scope, $http, favoritosApi, LoadingFavorites, $timeout) {
    null != favoritosApi.getFavoritos().length && 0 != favoritosApi.getFavoritos().length && null != favoritosApi.getFavoritos().length || (LoadingFavorites.show(), $timeout(function() {
        window.plugins.OneSignal && window.plugins.OneSignal.getPermissionSubscriptionState(function(status) {
            $http.get("https://appanimeplus.tk/api-achance.php?favoritos=" + status.subscriptionStatus.userId).then(function(response) {
                null != response.data && null != status.subscriptionStatus.userId && localStorage.setItem("favoritos", JSON.stringify(response.data)), $scope.favoritos = response.data, LoadingFavorites.hide()
            }, function(resp) {
                LoadingFavorites.hide(), alert("Erro ao carregar! Por favor feche e abra novamente o app.")
            })
        })
    }, 3e3)), $scope.favoritos = favoritosApi.getFavoritos(), $scope.$on("$ionicView.afterEnter", function() {
        window.ga.trackView("Favoritos")
    })
}]).controller("pesquisarCtrl", ["$scope", "$http", function($scope, $http) {
    $scope.buscar = function(texto) {
        $http.get("https://appanimeplus.tk/api-achance.php?search=" + texto).then(function(response) {
            $scope.resultados = response.data, null == $scope.resultados ? $scope.mensagem = "<p>Anime nao encontrado, verifique se voce digitou corretamente, ou entre em contato com nosso <a ui-sref='suporte'>suporte</a> para que possamos adiciona-lo!</p>" : $scope.mensagem = ""
        }, function(resp) {
            alert("Erro ao carregar! Verifique sua conexao com a internet.")
        })
    }, $scope.$on("$ionicView.afterEnter", function() {
        window.ga.trackView("Pesquisar")
    })
}]).controller("episodiosCtrl", ["$scope", "$http", "$stateParams", "assistidosApi", function($scope, $http, $stateParams, assistidosApi) {
    var achou;
    $scope.toggle = !0, "null" === window.sessionStorage.getItem("ad") && (window.admob.interstitial.config({
        id: window.sessionStorage.getItem("interstitial"),
        isTesting: !1,
        autoShow: !0
    }), window.admob.interstitial.prepare(), window.admob.interstitial.show());
    for (var i = 0; i < assistidosApi.getAssistidos().length; i++) {
        if (angular.equals(assistidosApi.getAssistidos()[i].video_id, $stateParams.id)) {
            $scope.toggle = !1;
            break
        }
        $scope.toggle = !0
    }
    $http.get("https://appanimeplus.tk/api-achance.php?episodios=" + $stateParams.id).then(function(response) {
        $scope.episodio = response.data, $scope.opensys = function(url) {
            try {
                window.open(url, "_system"), window.ga.trackEvent("Download", $scope.episodio[0].title)
            } catch (err) {
                alert(err)
            }
        }, $scope.abrir = function(videolink) {
            window.ga.trackEvent("Play", $scope.episodio[0].title), window.screen.orientation.lock("landscape");
            var params = {
                url: videolink,
                userAgent: "ExoCastDemoPlayer",
                aspectRatio: "FULL_SCREEN",
                hideTimeout: 1e3,
                connectTimeout: 3e4,
                readTimeout: 3e4,
                retryCount: 5,
                autoplay: !0,
                forwardTime: 5e3,
                rewindTime: 5e3,
                showBuffering: !1,
                controller: {
                    hideProgress: !1,
                    hidePosition: !1,
                    hideDuration: !1,
                    controlIcons: {},
                    textColor: "#ffffffff",
                    buttonsColor: "#ffffffff",
                    bufferingColor: "#00dddddd"
                }
            };
            window.ExoPlayer.show(params, function(json) {
                "TOUCH_EVENT" == json.eventType ? ExoPlayer.showController() : "STOP_EVENT" == json.eventType ? window.screen.orientation.unlock() : "KEYCODE_HOME" == json.eventKeycode && ExoPlayer.pause()
            }, function(error) {})
        }
    }, function(resp) {
        alert("Erro ao carregar! Verifique sua conexao com a internet.")
    }), $scope.next = function(id, catid) {
        "null" === window.sessionStorage.getItem("ad") && (window.admob.interstitial.config({
            id: window.sessionStorage.getItem("interstitial"),
            isTesting: !1,
            autoShow: !0
        }), window.admob.interstitial.prepare(), window.admob.interstitial.show()), $http.get("https://appanimeplus.tk/api-achance.php?episodios=" + id + "&catid=" + catid + "&next").then(function(response) {
            if ($scope.episodio = response.data, $scope.episodio)
                for (var i = 0; i < assistidosApi.getAssistidos().length; i++) {
                    if (!angular.equals(assistidosApi.getAssistidos()[i].video_id, $scope.episodio[0].video_id)) {
                        $scope.toggle = !0;
                        break
                    }
                    $scope.toggle = !1
                } else $http.get("https://appanimeplus.tk/api-achance.php?episodios=" + $stateParams.id).then(function(response) {
                    $scope.episodio = response.data
                }, function(resp) {
                    alert("Erro ao carregar! Verifique sua conexao com a internet.")
                })
        }, function(resp) {
            alert("Erro ao carregar! Verifique sua conexao com a internet.")
        })
    }, $scope.previous = function(id, catid) {
        $http.get("https://appanimeplus.tk/api-achance.php?episodios=" + id + "&catid=" + catid + "&previous").then(function(response) {
            if ($scope.episodio = response.data, $scope.episodio)
                for (var i = 0; i < assistidosApi.getAssistidos().length; i++) {
                    if (!angular.equals(assistidosApi.getAssistidos()[i].video_id, $scope.episodio[0].video_id)) {
                        $scope.toggle = !0;
                        break
                    }
                    $scope.toggle = !1
                } else $http.get("https://appanimeplus.tk/api-achance.php?episodios=" + $stateParams.id).then(function(response) {
                    $scope.episodio = response.data
                }, function(resp) {
                    alert("Erro ao carregar! Verifique sua conexao com a internet.")
                })
        }, function(resp) {
            alert("Erro ao carregar! Verifique sua conexao com a internet.")
        })
    }, $scope.assistir = function(fav, id) {
        for (var i = 0; i < assistidosApi.getAssistidos().length; i++) {
            if (angular.equals(assistidosApi.getAssistidos()[i].video_id, $scope.episodio[0].video_id)) {
                achou = 0;
                break
            }
            achou = 1
        }
        0 === achou ? (assistidosApi.deleteAssistido(fav), $scope.toggle = !0, window.plugins.OneSignal && window.plugins.OneSignal.getPermissionSubscriptionState(function(status) {
            $http.get("https://appanimeplus.tk/api-achance.php?nwatch=" + id + "&player=" + status.subscriptionStatus.userId)
        })) : (assistidosApi.addAssistido(fav), $scope.toggle = !1, window.plugins.OneSignal && window.plugins.OneSignal.getPermissionSubscriptionState(function(status) {
            $http.get("https://appanimeplus.tk/api-achance.php?watch=" + id + "&player=" + status.subscriptionStatus.userId)
        }))
    }, $scope.reportar = function(id) {
        $http.get("https://appanimeplus.tk/api-achance.php?report=" + id), alert("Episodio com problemas informado, nossa equipe estará analisando.")
    }, $scope.$on("$ionicView.afterEnter", function() {
        window.ga.trackView("Episodios")
    })
}]);