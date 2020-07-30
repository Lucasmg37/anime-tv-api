.class Lco/frontyard/cordova/plugin/exoplayer/Player$1;
.super Ljava/lang/Object;
.source "Player.java"

# interfaces
.implements Lcom/google/android/exoplayer2/ExoPlayer$EventListener;


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
    .line 72
    iput-object p1, p0, Lco/frontyard/cordova/plugin/exoplayer/Player$1;->this$0:Lco/frontyard/cordova/plugin/exoplayer/Player;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadingChanged(Z)V
    .locals 4
    .param p1, "isLoading"    # Z

    .prologue
    .line 75
    iget-object v1, p0, Lco/frontyard/cordova/plugin/exoplayer/Player$1;->this$0:Lco/frontyard/cordova/plugin/exoplayer/Player;

    invoke-static {v1}, Lco/frontyard/cordova/plugin/exoplayer/Player;->access$000(Lco/frontyard/cordova/plugin/exoplayer/Player;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v1

    invoke-static {v1, p1}, Lco/frontyard/cordova/plugin/exoplayer/Payload;->loadingEvent(Lcom/google/android/exoplayer2/ExoPlayer;Z)Lorg/json/JSONObject;

    move-result-object v0

    .line 76
    .local v0, "payload":Lorg/json/JSONObject;
    new-instance v1, Lco/frontyard/cordova/plugin/exoplayer/CallbackResponse;

    iget-object v2, p0, Lco/frontyard/cordova/plugin/exoplayer/Player$1;->this$0:Lco/frontyard/cordova/plugin/exoplayer/Player;

    invoke-static {v2}, Lco/frontyard/cordova/plugin/exoplayer/Player;->access$100(Lco/frontyard/cordova/plugin/exoplayer/Player;)Lorg/apache/cordova/CallbackContext;

    move-result-object v2

    invoke-direct {v1, v2}, Lco/frontyard/cordova/plugin/exoplayer/CallbackResponse;-><init>(Lorg/apache/cordova/CallbackContext;)V

    sget-object v2, Lorg/apache/cordova/PluginResult$Status;->OK:Lorg/apache/cordova/PluginResult$Status;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Lco/frontyard/cordova/plugin/exoplayer/CallbackResponse;->send(Lorg/apache/cordova/PluginResult$Status;Lorg/json/JSONObject;Z)V

    .line 77
    return-void
.end method

.method public onPlaybackParametersChanged(Lcom/google/android/exoplayer2/PlaybackParameters;)V
    .locals 2
    .param p1, "playbackParameters"    # Lcom/google/android/exoplayer2/PlaybackParameters;

    .prologue
    .line 81
    const-string v0, "ExoPlayerPlugin"

    const-string v1, "Playback parameters changed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    return-void
.end method

.method public onPlayerError(Lcom/google/android/exoplayer2/ExoPlaybackException;)V
    .locals 4
    .param p1, "error"    # Lcom/google/android/exoplayer2/ExoPlaybackException;

    .prologue
    .line 86
    iget-object v1, p0, Lco/frontyard/cordova/plugin/exoplayer/Player$1;->this$0:Lco/frontyard/cordova/plugin/exoplayer/Player;

    invoke-static {v1}, Lco/frontyard/cordova/plugin/exoplayer/Player;->access$000(Lco/frontyard/cordova/plugin/exoplayer/Player;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Lco/frontyard/cordova/plugin/exoplayer/Payload;->playerErrorEvent(Lcom/google/android/exoplayer2/ExoPlayer;Lcom/google/android/exoplayer2/ExoPlaybackException;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 87
    .local v0, "payload":Lorg/json/JSONObject;
    new-instance v1, Lco/frontyard/cordova/plugin/exoplayer/CallbackResponse;

    iget-object v2, p0, Lco/frontyard/cordova/plugin/exoplayer/Player$1;->this$0:Lco/frontyard/cordova/plugin/exoplayer/Player;

    invoke-static {v2}, Lco/frontyard/cordova/plugin/exoplayer/Player;->access$100(Lco/frontyard/cordova/plugin/exoplayer/Player;)Lorg/apache/cordova/CallbackContext;

    move-result-object v2

    invoke-direct {v1, v2}, Lco/frontyard/cordova/plugin/exoplayer/CallbackResponse;-><init>(Lorg/apache/cordova/CallbackContext;)V

    sget-object v2, Lorg/apache/cordova/PluginResult$Status;->ERROR:Lorg/apache/cordova/PluginResult$Status;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Lco/frontyard/cordova/plugin/exoplayer/CallbackResponse;->send(Lorg/apache/cordova/PluginResult$Status;Lorg/json/JSONObject;Z)V

    .line 88
    return-void
.end method

.method public onPlayerStateChanged(ZI)V
    .locals 6
    .param p1, "playWhenReady"    # Z
    .param p2, "playbackState"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 92
    iget-object v1, p0, Lco/frontyard/cordova/plugin/exoplayer/Player$1;->this$0:Lco/frontyard/cordova/plugin/exoplayer/Player;

    invoke-static {v1}, Lco/frontyard/cordova/plugin/exoplayer/Player;->access$200(Lco/frontyard/cordova/plugin/exoplayer/Player;)Lco/frontyard/cordova/plugin/exoplayer/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Lco/frontyard/cordova/plugin/exoplayer/Configuration;->getShowBuffering()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 93
    iget-object v1, p0, Lco/frontyard/cordova/plugin/exoplayer/Player$1;->this$0:Lco/frontyard/cordova/plugin/exoplayer/Player;

    invoke-static {v1}, Lco/frontyard/cordova/plugin/exoplayer/Player;->access$300(Lco/frontyard/cordova/plugin/exoplayer/Player;)Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;

    move-result-object v4

    iget-object v1, p0, Lco/frontyard/cordova/plugin/exoplayer/Player$1;->this$0:Lco/frontyard/cordova/plugin/exoplayer/Player;

    invoke-static {v1}, Lco/frontyard/cordova/plugin/exoplayer/Player;->access$400(Lco/frontyard/cordova/plugin/exoplayer/Player;)Landroid/app/Activity;

    move-result-object v5

    const/4 v1, 0x2

    if-ne p2, v1, :cond_2

    move v1, v2

    :goto_0
    invoke-static {v4, v5, v1}, Lco/frontyard/cordova/plugin/exoplayer/LayoutProvider;->setBufferingVisibility(Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;Landroid/app/Activity;Z)V

    .line 95
    :cond_0
    iget-object v1, p0, Lco/frontyard/cordova/plugin/exoplayer/Player$1;->this$0:Lco/frontyard/cordova/plugin/exoplayer/Player;

    invoke-static {v1}, Lco/frontyard/cordova/plugin/exoplayer/Player;->access$000(Lco/frontyard/cordova/plugin/exoplayer/Player;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v1

    iget-object v4, p0, Lco/frontyard/cordova/plugin/exoplayer/Player$1;->this$0:Lco/frontyard/cordova/plugin/exoplayer/Player;

    invoke-static {v4}, Lco/frontyard/cordova/plugin/exoplayer/Player;->access$500(Lco/frontyard/cordova/plugin/exoplayer/Player;)I

    move-result v4

    if-nez v4, :cond_1

    move v3, v2

    :cond_1
    invoke-static {v1, p2, v3}, Lco/frontyard/cordova/plugin/exoplayer/Payload;->stateEvent(Lcom/google/android/exoplayer2/ExoPlayer;IZ)Lorg/json/JSONObject;

    move-result-object v0

    .line 96
    .local v0, "payload":Lorg/json/JSONObject;
    new-instance v1, Lco/frontyard/cordova/plugin/exoplayer/CallbackResponse;

    iget-object v3, p0, Lco/frontyard/cordova/plugin/exoplayer/Player$1;->this$0:Lco/frontyard/cordova/plugin/exoplayer/Player;

    invoke-static {v3}, Lco/frontyard/cordova/plugin/exoplayer/Player;->access$100(Lco/frontyard/cordova/plugin/exoplayer/Player;)Lorg/apache/cordova/CallbackContext;

    move-result-object v3

    invoke-direct {v1, v3}, Lco/frontyard/cordova/plugin/exoplayer/CallbackResponse;-><init>(Lorg/apache/cordova/CallbackContext;)V

    sget-object v3, Lorg/apache/cordova/PluginResult$Status;->OK:Lorg/apache/cordova/PluginResult$Status;

    invoke-virtual {v1, v3, v0, v2}, Lco/frontyard/cordova/plugin/exoplayer/CallbackResponse;->send(Lorg/apache/cordova/PluginResult$Status;Lorg/json/JSONObject;Z)V

    .line 97
    return-void

    .end local v0    # "payload":Lorg/json/JSONObject;
    :cond_2
    move v1, v3

    .line 93
    goto :goto_0
.end method

.method public onPositionDiscontinuity(I)V
    .locals 4
    .param p1, "reason"    # I

    .prologue
    .line 101
    iget-object v1, p0, Lco/frontyard/cordova/plugin/exoplayer/Player$1;->this$0:Lco/frontyard/cordova/plugin/exoplayer/Player;

    invoke-static {v1}, Lco/frontyard/cordova/plugin/exoplayer/Player;->access$000(Lco/frontyard/cordova/plugin/exoplayer/Player;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v1

    invoke-static {v1, p1}, Lco/frontyard/cordova/plugin/exoplayer/Payload;->positionDiscontinuityEvent(Lcom/google/android/exoplayer2/ExoPlayer;I)Lorg/json/JSONObject;

    move-result-object v0

    .line 102
    .local v0, "payload":Lorg/json/JSONObject;
    new-instance v1, Lco/frontyard/cordova/plugin/exoplayer/CallbackResponse;

    iget-object v2, p0, Lco/frontyard/cordova/plugin/exoplayer/Player$1;->this$0:Lco/frontyard/cordova/plugin/exoplayer/Player;

    invoke-static {v2}, Lco/frontyard/cordova/plugin/exoplayer/Player;->access$100(Lco/frontyard/cordova/plugin/exoplayer/Player;)Lorg/apache/cordova/CallbackContext;

    move-result-object v2

    invoke-direct {v1, v2}, Lco/frontyard/cordova/plugin/exoplayer/CallbackResponse;-><init>(Lorg/apache/cordova/CallbackContext;)V

    sget-object v2, Lorg/apache/cordova/PluginResult$Status;->OK:Lorg/apache/cordova/PluginResult$Status;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Lco/frontyard/cordova/plugin/exoplayer/CallbackResponse;->send(Lorg/apache/cordova/PluginResult$Status;Lorg/json/JSONObject;Z)V

    .line 103
    return-void
.end method

.method public onRepeatModeChanged(I)V
    .locals 0
    .param p1, "newRepeatMode"    # I

    .prologue
    .line 108
    return-void
.end method

.method public onSeekProcessed()V
    .locals 0

    .prologue
    .line 112
    return-void
.end method

.method public onShuffleModeEnabledChanged(Z)V
    .locals 0
    .param p1, "shuffleModeEnabled"    # Z

    .prologue
    .line 116
    return-void
.end method

.method public onTimelineChanged(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;)V
    .locals 4
    .param p1, "timeline"    # Lcom/google/android/exoplayer2/Timeline;
    .param p2, "manifest"    # Ljava/lang/Object;

    .prologue
    .line 120
    iget-object v1, p0, Lco/frontyard/cordova/plugin/exoplayer/Player$1;->this$0:Lco/frontyard/cordova/plugin/exoplayer/Player;

    invoke-static {v1}, Lco/frontyard/cordova/plugin/exoplayer/Player;->access$000(Lco/frontyard/cordova/plugin/exoplayer/Player;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lco/frontyard/cordova/plugin/exoplayer/Payload;->timelineChangedEvent(Lcom/google/android/exoplayer2/ExoPlayer;Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    .line 121
    .local v0, "payload":Lorg/json/JSONObject;
    new-instance v1, Lco/frontyard/cordova/plugin/exoplayer/CallbackResponse;

    iget-object v2, p0, Lco/frontyard/cordova/plugin/exoplayer/Player$1;->this$0:Lco/frontyard/cordova/plugin/exoplayer/Player;

    invoke-static {v2}, Lco/frontyard/cordova/plugin/exoplayer/Player;->access$100(Lco/frontyard/cordova/plugin/exoplayer/Player;)Lorg/apache/cordova/CallbackContext;

    move-result-object v2

    invoke-direct {v1, v2}, Lco/frontyard/cordova/plugin/exoplayer/CallbackResponse;-><init>(Lorg/apache/cordova/CallbackContext;)V

    sget-object v2, Lorg/apache/cordova/PluginResult$Status;->OK:Lorg/apache/cordova/PluginResult$Status;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Lco/frontyard/cordova/plugin/exoplayer/CallbackResponse;->send(Lorg/apache/cordova/PluginResult$Status;Lorg/json/JSONObject;Z)V

    .line 122
    return-void
.end method

.method public onTracksChanged(Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;)V
    .locals 0
    .param p1, "trackGroups"    # Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .param p2, "trackSelections"    # Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;

    .prologue
    .line 127
    return-void
.end method
