module.exports = {
    show: function(parameters, successCallback, errorCallback) {
        cordova.exec(successCallback, errorCallback, "ExoPlayer", "show", [parameters])
    },
    setStream: function(url, controller, successCallback, errorCallback) {
        cordova.exec(successCallback, errorCallback, "ExoPlayer", "setStream", [url, controller])
    },
    playPause: function(successCallback, errorCallback) {
        cordova.exec(successCallback, errorCallback, "ExoPlayer", "playPause", [])
    },
    stop: function(successCallback, errorCallback) {
        cordova.exec(successCallback, errorCallback, "ExoPlayer", "stop", [])
    },
    seekTo: function(milliseconds, successCallback, errorCallback) {
        cordova.exec(successCallback, errorCallback, "ExoPlayer", "seekTo", [milliseconds])
    },
    seekBy: function(milliseconds, successCallback, errorCallback) {
        cordova.exec(successCallback, errorCallback, "ExoPlayer", "seekBy", [milliseconds])
    },
    getState: function(successCallback, errorCallback) {
        cordova.exec(successCallback, errorCallback, "ExoPlayer", "getState", [])
    },
    showController: function(successCallback, errorCallback) {
        cordova.exec(successCallback, errorCallback, "ExoPlayer", "showController", [])
    },
    hideController: function(successCallback, errorCallback) {
        cordova.exec(successCallback, errorCallback, "ExoPlayer", "hideController", [])
    },
    setController: function(controller, successCallback, errorCallback) {
        cordova.exec(successCallback, errorCallback, "ExoPlayer", "setController", [controller])
    },
    close: function(successCallback, errorCallback) {
        cordova.exec(successCallback, errorCallback, "ExoPlayer", "close", [])
    }
};