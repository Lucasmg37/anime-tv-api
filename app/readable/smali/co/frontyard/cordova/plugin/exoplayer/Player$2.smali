.class Lco/frontyard/cordova/plugin/exoplayer/Player$2;
.super Ljava/lang/Object;
.source "Player.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/frontyard/cordova/plugin/exoplayer/Player;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lco/frontyard/cordova/plugin/exoplayer/Player;


# direct methods
.method constructor <init>(Lco/frontyard/cordova/plugin/exoplayer/Player;)V
    .locals 0
    .param p1, "this$0"    # Lco/frontyard/cordova/plugin/exoplayer/Player;

    .prologue
    .line 130
    iput-object p1, p0, Lco/frontyard/cordova/plugin/exoplayer/Player$2;->this$0:Lco/frontyard/cordova/plugin/exoplayer/Player;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 133
    iget-object v1, p0, Lco/frontyard/cordova/plugin/exoplayer/Player$2;->this$0:Lco/frontyard/cordova/plugin/exoplayer/Player;

    invoke-static {v1}, Lco/frontyard/cordova/plugin/exoplayer/Player;->access$000(Lco/frontyard/cordova/plugin/exoplayer/Player;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 134
    iget-object v1, p0, Lco/frontyard/cordova/plugin/exoplayer/Player$2;->this$0:Lco/frontyard/cordova/plugin/exoplayer/Player;

    invoke-static {v1}, Lco/frontyard/cordova/plugin/exoplayer/Player;->access$000(Lco/frontyard/cordova/plugin/exoplayer/Player;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->release()V

    .line 136
    :cond_0
    iget-object v1, p0, Lco/frontyard/cordova/plugin/exoplayer/Player$2;->this$0:Lco/frontyard/cordova/plugin/exoplayer/Player;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lco/frontyard/cordova/plugin/exoplayer/Player;->access$002(Lco/frontyard/cordova/plugin/exoplayer/Player;Lcom/google/android/exoplayer2/SimpleExoPlayer;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    .line 137
    iget-object v1, p0, Lco/frontyard/cordova/plugin/exoplayer/Player$2;->this$0:Lco/frontyard/cordova/plugin/exoplayer/Player;

    invoke-static {v1}, Lco/frontyard/cordova/plugin/exoplayer/Player;->access$000(Lco/frontyard/cordova/plugin/exoplayer/Player;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v1

    invoke-static {v1}, Lco/frontyard/cordova/plugin/exoplayer/Payload;->stopEvent(Lcom/google/android/exoplayer2/ExoPlayer;)Lorg/json/JSONObject;

    move-result-object v0

    .line 138
    .local v0, "payload":Lorg/json/JSONObject;
    new-instance v1, Lco/frontyard/cordova/plugin/exoplayer/CallbackResponse;

    iget-object v2, p0, Lco/frontyard/cordova/plugin/exoplayer/Player$2;->this$0:Lco/frontyard/cordova/plugin/exoplayer/Player;

    invoke-static {v2}, Lco/frontyard/cordova/plugin/exoplayer/Player;->access$100(Lco/frontyard/cordova/plugin/exoplayer/Player;)Lorg/apache/cordova/CallbackContext;

    move-result-object v2

    invoke-direct {v1, v2}, Lco/frontyard/cordova/plugin/exoplayer/CallbackResponse;-><init>(Lorg/apache/cordova/CallbackContext;)V

    sget-object v2, Lorg/apache/cordova/PluginResult$Status;->OK:Lorg/apache/cordova/PluginResult$Status;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Lco/frontyard/cordova/plugin/exoplayer/CallbackResponse;->send(Lorg/apache/cordova/PluginResult$Status;Lorg/json/JSONObject;Z)V

    .line 139
    return-void
.end method
