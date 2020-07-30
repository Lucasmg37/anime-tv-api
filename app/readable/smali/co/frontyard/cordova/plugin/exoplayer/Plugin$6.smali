.class Lco/frontyard/cordova/plugin/exoplayer/Plugin$6;
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

.field final synthetic val$seekBy:J

.field final synthetic val$self:Lco/frontyard/cordova/plugin/exoplayer/Plugin;


# direct methods
.method constructor <init>(Lco/frontyard/cordova/plugin/exoplayer/Plugin;Lco/frontyard/cordova/plugin/exoplayer/Plugin;JLorg/apache/cordova/CallbackContext;)V
    .locals 1
    .param p1, "this$0"    # Lco/frontyard/cordova/plugin/exoplayer/Plugin;

    .prologue
    .line 110
    iput-object p1, p0, Lco/frontyard/cordova/plugin/exoplayer/Plugin$6;->this$0:Lco/frontyard/cordova/plugin/exoplayer/Plugin;

    iput-object p2, p0, Lco/frontyard/cordova/plugin/exoplayer/Plugin$6;->val$self:Lco/frontyard/cordova/plugin/exoplayer/Plugin;

    iput-wide p3, p0, Lco/frontyard/cordova/plugin/exoplayer/Plugin$6;->val$seekBy:J

    iput-object p5, p0, Lco/frontyard/cordova/plugin/exoplayer/Plugin$6;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 112
    iget-object v1, p0, Lco/frontyard/cordova/plugin/exoplayer/Plugin$6;->val$self:Lco/frontyard/cordova/plugin/exoplayer/Plugin;

    invoke-static {v1}, Lco/frontyard/cordova/plugin/exoplayer/Plugin;->access$000(Lco/frontyard/cordova/plugin/exoplayer/Plugin;)Lco/frontyard/cordova/plugin/exoplayer/Player;

    move-result-object v1

    iget-wide v2, p0, Lco/frontyard/cordova/plugin/exoplayer/Plugin$6;->val$seekBy:J

    invoke-virtual {v1, v2, v3}, Lco/frontyard/cordova/plugin/exoplayer/Player;->seekBy(J)Lorg/json/JSONObject;

    move-result-object v0

    .line 113
    .local v0, "payload":Lorg/json/JSONObject;
    new-instance v1, Lco/frontyard/cordova/plugin/exoplayer/CallbackResponse;

    iget-object v2, p0, Lco/frontyard/cordova/plugin/exoplayer/Plugin$6;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-direct {v1, v2}, Lco/frontyard/cordova/plugin/exoplayer/CallbackResponse;-><init>(Lorg/apache/cordova/CallbackContext;)V

    sget-object v2, Lorg/apache/cordova/PluginResult$Status;->OK:Lorg/apache/cordova/PluginResult$Status;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Lco/frontyard/cordova/plugin/exoplayer/CallbackResponse;->send(Lorg/apache/cordova/PluginResult$Status;Lorg/json/JSONObject;Z)V

    .line 114
    return-void
.end method
