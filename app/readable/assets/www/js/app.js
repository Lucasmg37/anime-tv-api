angular.module("app", ["ionic", "app.controllers", "app.services", "jett.ionic.filter.bar"]).config(["$ionicConfigProvider", "$sceProvider", "$compileProvider", "$stateProvider", "$urlRouterProvider", function($ionicConfigProvider, $sceProvider, $compileProvider, $stateProvider, $urlRouterProvider) {
    $sceProvider.enabled(!1), $ionicConfigProvider.scrolling.jsScrolling(!1), $compileProvider.debugInfoEnabled(!1), $stateProvider.state("noticias", {
        url: "/noticias",
        templateUrl: "templates/noticias.html",
        controller: "noticiasCtrl"
    }).state("animes", {
        url: "/animes/:letra",
        templateUrl: "templates/animes.html",
        controller: "animesCtrl"
    }).state("animeinfo", {
        url: "/animeinfo/:id",
        templateUrl: "templates/animeinfo.html",
        controller: "animeinfoCtrl"
    }).state("animescategoria", {
        url: "/animescategoria/:cat",
        templateUrl: "templates/animescategoria.html",
        controller: "animescategoriaCtrl"
    }).state("letras", {
        url: "/letras/",
        templateUrl: "templates/letras.html",
        controller: "letrasCtrl"
    }).state("suporte", {
        url: "/suporte/",
        templateUrl: "templates/suporte.html",
        controller: "suporteCtrl"
    }).state("faq", {
        url: "/faq/",
        templateUrl: "templates/faq.html",
        controller: "faqCtrl"
    }).state("categorias", {
        url: "/categorias/:pag",
        templateUrl: "templates/categorias.html",
        controller: "categoriasCtrl"
    }).state("lancamentos", {
        cache: !1,
        url: "/lancamentos/",
        templateUrl: "templates/lancamentos.html",
        controller: "lancamentosCtrl"
    }).state("populares", {
        url: "/populares/",
        templateUrl: "templates/populares.html",
        controller: "popularesCtrl"
    }).state("favoritos", {
        cache: !1,
        url: "/favoritos/",
        templateUrl: "templates/favoritos.html",
        controller: "favoritosCtrl"
    }).state("assistidos", {
        cache: !1,
        url: "/assistidos/",
        templateUrl: "templates/assistidos.html",
        controller: "assistidosCtrl"
    }).state("pesquisar", {
        url: "/pesquisar/",
        templateUrl: "templates/pesquisar.html",
        controller: "pesquisarCtrl"
    }).state("dublados", {
        url: "/dublados/",
        templateUrl: "templates/dublados.html",
        controller: "dubladosCtrl"
    }).state("episodios", {
        cache: !1,
        url: "/episodios/:id",
        templateUrl: "templates/episodios.html",
        controller: "episodiosCtrl"
    }), $urlRouterProvider.otherwise("/lancamentos/")
}]).run(["$ionicPlatform", "$http", "$timeout", "$rootScope", function($ionicPlatform, $http, $timeout, $rootScope) {
    $ionicPlatform.ready(function() {
        if (ionic.Platform.fullScreen(), window.ga.startTrackerWithId("UA-149516289-1"), window.ga.setAppVersion("8.0"), window.ga.setUserId("device.uuid"), window.plugins.OneSignal.startInit("bc13a05c-bb72-4e4c-b5a8-41fb597e6516", "937659541419").endInit(), window.plugins.OneSignal.getPermissionSubscriptionState(function(status) {}), window.plugins.OneSignal.sendTag("versao", "achance"), $http.get("https://appanimeplus.tk/api-achance.php?config").then(function(response) {
                window.sessionStorage.setItem("ad", response.data.ad), window.sessionStorage.setItem("interstitial", response.data.interstitial), $rootScope.msg = response.data.msg, "BR" != response.data.country && alert(response.data.countrymsg), "null" != response.data.alerta && alert(response.data.alerta), "update" == response.data.mode && window.open(response.data.update, "_system"), "null" === response.data.adbanner && (window.admob.banner.config({
                    id: response.data.banner,
                    isTesting: !1,
                    autoShow: !0
                }), window.admob.banner.prepare(), window.admob.banner.show())
            }), window.cordova && window.cordova.plugins && window.cordova.plugins.Keyboard && (cordova.plugins.Keyboard.hideKeyboardAccessoryBar(!0), cordova.plugins.Keyboard.disableScroll(!0)), window.StatusBar) return StatusBar.hide()
    })
}]);