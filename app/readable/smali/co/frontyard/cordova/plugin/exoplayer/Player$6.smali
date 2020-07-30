.class Lco/frontyard/cordova/plugin/exoplayer/Player$6;
.super Ljava/lang/Object;
.source "Player.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


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
    .line 184
    iput-object p1, p0, Lco/frontyard/cordova/plugin/exoplayer/Player$6;->this$0:Lco/frontyard/cordova/plugin/exoplayer/Player;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 4
    .param p1, "focusChange"    # I

    .prologue
    const/4 v3, 0x1

    .line 186
    const/4 v1, -0x2

    if-ne p1, v1, :cond_1

    .line 187
    iget-object v1, p0, Lco/frontyard/cordova/plugin/exoplayer/Player$6;->this$0:Lco/frontyard/cordova/plugin/exoplayer/Player;

    invoke-static {v1}, Lco/frontyard/cordova/plugin/exoplayer/Player;->access$000(Lco/frontyard/cordova/plugin/exoplayer/Player;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v1

    const-string v2, "AUDIOFOCUS_LOSS_TRANSIENT"

    invoke-static {v1, v2}, Lco/frontyard/cordova/plugin/exoplayer/Payload;->audioFocusEvent(Lcom/google/android/exoplayer2/ExoPlayer;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 188
    .local v0, "payload":Lorg/json/JSONObject;
    new-instance v1, Lco/frontyard/cordova/plugin/exoplayer/CallbackResponse;

    iget-object v2, p0, Lco/frontyard/cordova/plugin/exoplayer/Player$6;->this$0:Lco/frontyard/cordova/plugin/exoplayer/Player;

    invoke-static {v2}, Lco/frontyard/cordova/plugin/exoplayer/Player;->access$100(Lco/frontyard/cordova/plugin/exoplayer/Player;)Lorg/apache/cordova/CallbackContext;

    move-result-object v2

    invoke-direct {v1, v2}, Lco/frontyard/cordova/plugin/exoplayer/CallbackResponse;-><init>(Lorg/apache/cordova/CallbackContext;)V

    sget-object v2, Lorg/apache/cordova/PluginResult$Status;->OK:Lorg/apache/cordova/PluginResult$Status;

    invoke-virtual {v1, v2, v0, v3}, Lco/frontyard/cordova/plugin/exoplayer/CallbackResponse;->send(Lorg/apache/cordova/PluginResult$Status;Lorg/json/JSONObject;Z)V

    .line 202
    .end local v0    # "payload":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-void

    .line 190
    :cond_1
    const/4 v1, -0x3

    if-ne p1, v1, :cond_2

    .line 191
    iget-object v1, p0, Lco/frontyard/cordova/plugin/exoplayer/Player$6;->this$0:Lco/frontyard/cordova/plugin/exoplayer/Player;

    invoke-static {v1}, Lco/frontyard/cordova/plugin/exoplayer/Player;->access$000(Lco/frontyard/cordova/plugin/exoplayer/Player;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v1

    const-string v2, "AUDIOFOCUS_LOSS_TRANSIENT_CAN_DUCK"

    invoke-static {v1, v2}, Lco/frontyard/cordova/plugin/exoplayer/Payload;->audioFocusEvent(Lcom/google/android/exoplayer2/ExoPlayer;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 192
    .restart local v0    # "payload":Lorg/json/JSONObject;
    new-instance v1, Lco/frontyard/cordova/plugin/exoplayer/CallbackResponse;

    iget-object v2, p0, Lco/frontyard/cordova/plugin/exoplayer/Player$6;->this$0:Lco/frontyard/cordova/plugin/exoplayer/Player;

    invoke-static {v2}, Lco/frontyard/cordova/plugin/exoplayer/Player;->access$100(Lco/frontyard/cordova/plugin/exoplayer/Player;)Lorg/apache/cordova/CallbackContext;

    move-result-object v2

    invoke-direct {v1, v2}, Lco/frontyard/cordova/plugin/exoplayer/CallbackResponse;-><init>(Lorg/apache/cordova/CallbackContext;)V

    sget-object v2, Lorg/apache/cordova/PluginResult$Status;->OK:Lorg/apache/cordova/PluginResult$Status;

    invoke-virtual {v1, v2, v0, v3}, Lco/frontyard/cordova/plugin/exoplayer/CallbackResponse;->send(Lorg/apache/cordova/PluginResult$Status;Lorg/json/JSONObject;Z)V

    goto :goto_0

    .line 194
    .end local v0    # "payload":Lorg/json/JSONObject;
    :cond_2
    if-ne p1, v3, :cond_3

    .line 195
    iget-object v1, p0, Lco/frontyard/cordova/plugin/exoplayer/Player$6;->this$0:Lco/frontyard/cordova/plugin/exoplayer/Player;

    invoke-static {v1}, Lco/frontyard/cordova/plugin/exoplayer/Player;->access$000(Lco/frontyard/cordova/plugin/exoplayer/Player;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v1

    const-string v2, "AUDIOFOCUS_GAIN"

    invoke-static {v1, v2}, Lco/frontyard/cordova/plugin/exoplayer/Payload;->audioFocusEvent(Lcom/google/android/exoplayer2/ExoPlayer;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 196
    .restart local v0    # "payload":Lorg/json/JSONObject;
    new-instance v1, Lco/frontyard/cordova/plugin/exoplayer/CallbackResponse;

    iget-object v2, p0, Lco/frontyard/cordova/plugin/exoplayer/Player$6;->this$0:Lco/frontyard/cordova/plugin/exoplayer/Player;

    invoke-static {v2}, Lco/frontyard/cordova/plugin/exoplayer/Player;->access$100(Lco/frontyard/cordova/plugin/exoplayer/Player;)Lorg/apache/cordova/CallbackContext;

    move-result-object v2

    invoke-direct {v1, v2}, Lco/frontyard/cordova/plugin/exoplayer/CallbackResponse;-><init>(Lorg/apache/cordova/CallbackContext;)V

    sget-object v2, Lorg/apache/cordova/PluginResult$Status;->OK:Lorg/apache/cordova/PluginResult$Status;

    invoke-virtual {v1, v2, v0, v3}, Lco/frontyard/cordova/plugin/exoplayer/CallbackResponse;->send(Lorg/apache/cordova/PluginResult$Status;Lorg/json/JSONObject;Z)V

    goto :goto_0

    .line 198
    .end local v0    # "payload":Lorg/json/JSONObject;
    :cond_3
    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    .line 199
    iget-object v1, p0, Lco/frontyard/cordova/plugin/exoplayer/Player$6;->this$0:Lco/frontyard/cordova/plugin/exoplayer/Player;

    invoke-static {v1}, Lco/frontyard/cordova/plugin/exoplayer/Player;->access$000(Lco/frontyard/cordova/plugin/exoplayer/Player;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v1

    const-string v2, "AUDIOFOCUS_LOSS"

    invoke-static {v1, v2}, Lco/frontyard/cordova/plugin/exoplayer/Payload;->audioFocusEvent(Lcom/google/android/exoplayer2/ExoPlayer;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 200
    .restart local v0    # "payload":Lorg/json/JSONObject;
    new-instance v1, Lco/frontyard/cordova/plugin/exoplayer/CallbackResponse;

    iget-object v2, p0, Lco/frontyard/cordova/plugin/exoplayer/Player$6;->this$0:Lco/frontyard/cordova/plugin/exoplayer/Player;

    invoke-static {v2}, Lco/frontyard/cordova/plugin/exoplayer/Player;->access$100(Lco/frontyard/cordova/plugin/exoplayer/Player;)Lorg/apache/cordova/CallbackContext;

    move-result-object v2

    invoke-direct {v1, v2}, Lco/frontyard/cordova/plugin/exoplayer/CallbackResponse;-><init>(Lorg/apache/cordova/CallbackContext;)V

    sget-object v2, Lorg/apache/cordova/PluginResult$Status;->OK:Lorg/apache/cordova/PluginResult$Status;

    invoke-virtual {v1, v2, v0, v3}, Lco/frontyard/cordova/plugin/exoplayer/CallbackResponse;->send(Lorg/apache/cordova/PluginResult$Status;Lorg/json/JSONObject;Z)V

    goto :goto_0
.end method
