.class public Lco/frontyard/cordova/plugin/exoplayer/CallbackResponse;
.super Ljava/lang/Object;
.source "CallbackResponse.java"


# instance fields
.field private callbackContext:Lorg/apache/cordova/CallbackContext;


# direct methods
.method public constructor <init>(Lorg/apache/cordova/CallbackContext;)V
    .locals 0
    .param p1, "callbackContext"    # Lorg/apache/cordova/CallbackContext;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lco/frontyard/cordova/plugin/exoplayer/CallbackResponse;->callbackContext:Lorg/apache/cordova/CallbackContext;

    .line 34
    return-void
.end method


# virtual methods
.method public send(Lorg/apache/cordova/PluginResult$Status;Lorg/json/JSONObject;Z)V
    .locals 2
    .param p1, "status"    # Lorg/apache/cordova/PluginResult$Status;
    .param p2, "message"    # Lorg/json/JSONObject;
    .param p3, "keepCallback"    # Z

    .prologue
    .line 46
    iget-object v1, p0, Lco/frontyard/cordova/plugin/exoplayer/CallbackResponse;->callbackContext:Lorg/apache/cordova/CallbackContext;

    if-nez v1, :cond_0

    .line 52
    :goto_0
    return-void

    .line 49
    :cond_0
    new-instance v0, Lorg/apache/cordova/PluginResult;

    invoke-direct {v0, p1, p2}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;Lorg/json/JSONObject;)V

    .line 50
    .local v0, "result":Lorg/apache/cordova/PluginResult;
    invoke-virtual {v0, p3}, Lorg/apache/cordova/PluginResult;->setKeepCallback(Z)V

    .line 51
    iget-object v1, p0, Lco/frontyard/cordova/plugin/exoplayer/CallbackResponse;->callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v1, v0}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    goto :goto_0
.end method

.method public send(Lorg/apache/cordova/PluginResult$Status;Z)V
    .locals 2
    .param p1, "status"    # Lorg/apache/cordova/PluginResult$Status;
    .param p2, "keepCallback"    # Z

    .prologue
    .line 37
    iget-object v1, p0, Lco/frontyard/cordova/plugin/exoplayer/CallbackResponse;->callbackContext:Lorg/apache/cordova/CallbackContext;

    if-nez v1, :cond_0

    .line 43
    :goto_0
    return-void

    .line 40
    :cond_0
    new-instance v0, Lorg/apache/cordova/PluginResult;

    invoke-direct {v0, p1}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;)V

    .line 41
    .local v0, "result":Lorg/apache/cordova/PluginResult;
    invoke-virtual {v0, p2}, Lorg/apache/cordova/PluginResult;->setKeepCallback(Z)V

    .line 42
    iget-object v1, p0, Lco/frontyard/cordova/plugin/exoplayer/CallbackResponse;->callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v1, v0}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    goto :goto_0
.end method
