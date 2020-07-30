.class Lco/frontyard/cordova/plugin/exoplayer/Plugin$1;
.super Ljava/lang/Object;
.source "Plugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/frontyard/cordova/plugin/exoplayer/Plugin;->execute(Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lco/frontyard/cordova/plugin/exoplayer/Plugin;

.field final synthetic val$callbackContext:Lorg/apache/cordova/CallbackContext;

.field final synthetic val$data:Lorg/json/JSONArray;

.field final synthetic val$self:Lco/frontyard/cordova/plugin/exoplayer/Plugin;


# direct methods
.method constructor <init>(Lco/frontyard/cordova/plugin/exoplayer/Plugin;Lco/frontyard/cordova/plugin/exoplayer/Plugin;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V
    .locals 0
    .param p1, "this$0"    # Lco/frontyard/cordova/plugin/exoplayer/Plugin;

    .prologue
    .line 39
    iput-object p1, p0, Lco/frontyard/cordova/plugin/exoplayer/Plugin$1;->this$0:Lco/frontyard/cordova/plugin/exoplayer/Plugin;

    iput-object p2, p0, Lco/frontyard/cordova/plugin/exoplayer/Plugin$1;->val$self:Lco/frontyard/cordova/plugin/exoplayer/Plugin;

    iput-object p3, p0, Lco/frontyard/cordova/plugin/exoplayer/Plugin$1;->val$data:Lorg/json/JSONArray;

    iput-object p4, p0, Lco/frontyard/cordova/plugin/exoplayer/Plugin$1;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 41
    iget-object v1, p0, Lco/frontyard/cordova/plugin/exoplayer/Plugin$1;->val$self:Lco/frontyard/cordova/plugin/exoplayer/Plugin;

    invoke-static {v1}, Lco/frontyard/cordova/plugin/exoplayer/Plugin;->access$000(Lco/frontyard/cordova/plugin/exoplayer/Plugin;)Lco/frontyard/cordova/plugin/exoplayer/Player;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 42
    iget-object v1, p0, Lco/frontyard/cordova/plugin/exoplayer/Plugin$1;->val$self:Lco/frontyard/cordova/plugin/exoplayer/Plugin;

    invoke-static {v1}, Lco/frontyard/cordova/plugin/exoplayer/Plugin;->access$000(Lco/frontyard/cordova/plugin/exoplayer/Plugin;)Lco/frontyard/cordova/plugin/exoplayer/Player;

    move-result-object v1

    invoke-virtual {v1}, Lco/frontyard/cordova/plugin/exoplayer/Player;->close()V

    .line 44
    :cond_0
    iget-object v1, p0, Lco/frontyard/cordova/plugin/exoplayer/Plugin$1;->val$data:Lorg/json/JSONArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 45
    .local v0, "params":Lorg/json/JSONObject;
    iget-object v1, p0, Lco/frontyard/cordova/plugin/exoplayer/Plugin$1;->val$self:Lco/frontyard/cordova/plugin/exoplayer/Plugin;

    new-instance v2, Lco/frontyard/cordova/plugin/exoplayer/Player;

    new-instance v3, Lco/frontyard/cordova/plugin/exoplayer/Configuration;

    invoke-direct {v3, v0}, Lco/frontyard/cordova/plugin/exoplayer/Configuration;-><init>(Lorg/json/JSONObject;)V

    iget-object v4, p0, Lco/frontyard/cordova/plugin/exoplayer/Plugin$1;->this$0:Lco/frontyard/cordova/plugin/exoplayer/Plugin;

    iget-object v4, v4, Lco/frontyard/cordova/plugin/exoplayer/Plugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v4}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget-object v5, p0, Lco/frontyard/cordova/plugin/exoplayer/Plugin$1;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    iget-object v6, p0, Lco/frontyard/cordova/plugin/exoplayer/Plugin$1;->this$0:Lco/frontyard/cordova/plugin/exoplayer/Plugin;

    iget-object v6, v6, Lco/frontyard/cordova/plugin/exoplayer/Plugin;->webView:Lorg/apache/cordova/CordovaWebView;

    invoke-direct {v2, v3, v4, v5, v6}, Lco/frontyard/cordova/plugin/exoplayer/Player;-><init>(Lco/frontyard/cordova/plugin/exoplayer/Configuration;Landroid/app/Activity;Lorg/apache/cordova/CallbackContext;Lorg/apache/cordova/CordovaWebView;)V

    invoke-static {v1, v2}, Lco/frontyard/cordova/plugin/exoplayer/Plugin;->access$002(Lco/frontyard/cordova/plugin/exoplayer/Plugin;Lco/frontyard/cordova/plugin/exoplayer/Player;)Lco/frontyard/cordova/plugin/exoplayer/Player;

    .line 46
    iget-object v1, p0, Lco/frontyard/cordova/plugin/exoplayer/Plugin$1;->val$self:Lco/frontyard/cordova/plugin/exoplayer/Plugin;

    invoke-static {v1}, Lco/frontyard/cordova/plugin/exoplayer/Plugin;->access$000(Lco/frontyard/cordova/plugin/exoplayer/Plugin;)Lco/frontyard/cordova/plugin/exoplayer/Player;

    move-result-object v1

    invoke-virtual {v1}, Lco/frontyard/cordova/plugin/exoplayer/Player;->createPlayer()V

    .line 47
    new-instance v1, Lco/frontyard/cordova/plugin/exoplayer/CallbackResponse;

    iget-object v2, p0, Lco/frontyard/cordova/plugin/exoplayer/Plugin$1;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-direct {v1, v2}, Lco/frontyard/cordova/plugin/exoplayer/CallbackResponse;-><init>(Lorg/apache/cordova/CallbackContext;)V

    sget-object v2, Lorg/apache/cordova/PluginResult$Status;->NO_RESULT:Lorg/apache/cordova/PluginResult$Status;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lco/frontyard/cordova/plugin/exoplayer/CallbackResponse;->send(Lorg/apache/cordova/PluginResult$Status;Z)V

    .line 48
    return-void
.end method
