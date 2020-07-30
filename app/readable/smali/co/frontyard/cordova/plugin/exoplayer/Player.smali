.class public Lco/frontyard/cordova/plugin/exoplayer/Player;
.super Ljava/lang/Object;
.source "Player.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ExoPlayerPlugin"


# instance fields
.field private final activity:Landroid/app/Activity;

.field private audioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private audioManager:Landroid/media/AudioManager;

.field private final callbackContext:Lorg/apache/cordova/CallbackContext;

.field private final config:Lco/frontyard/cordova/plugin/exoplayer/Configuration;

.field private controllerVisibility:I

.field private dialog:Landroid/app/Dialog;

.field private dismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private exoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

.field private exoView:Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;

.field private onKeyListener:Landroid/content/DialogInterface$OnKeyListener;

.field private onTouchListener:Landroid/view/View$OnTouchListener;

.field private paused:Z

.field private playbackControlVisibilityListener:Lcom/google/android/exoplayer2/ui/PlaybackControlView$VisibilityListener;

.field private playerEventListener:Lcom/google/android/exoplayer2/ExoPlayer$EventListener;

.field private webView:Lorg/apache/cordova/CordovaWebView;


# direct methods
.method public constructor <init>(Lco/frontyard/cordova/plugin/exoplayer/Configuration;Landroid/app/Activity;Lorg/apache/cordova/CallbackContext;Lorg/apache/cordova/CordovaWebView;)V
    .locals 1
    .param p1, "config"    # Lco/frontyard/cordova/plugin/exoplayer/Configuration;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "callbackContext"    # Lorg/apache/cordova/CallbackContext;
    .param p4, "webView"    # Lorg/apache/cordova/CordovaWebView;

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lco/frontyard/cordova/plugin/exoplayer/Player;->paused:Z

    .line 72
    new-instance v0, Lco/frontyard/cordova/plugin/exoplayer/Player$1;

    invoke-direct {v0, p0}, Lco/frontyard/cordova/plugin/exoplayer/Player$1;-><init>(Lco/frontyard/cordova/plugin/exoplayer/Player;)V

    iput-object v0, p0, Lco/frontyard/cordova/plugin/exoplayer/Player;->playerEventListener:Lcom/google/android/exoplayer2/ExoPlayer$EventListener;

    .line 130
    new-instance v0, Lco/frontyard/cordova/plugin/exoplayer/Player$2;

    invoke-direct {v0, p0}, Lco/frontyard/cordova/plugin/exoplayer/Player$2;-><init>(Lco/frontyard/cordova/plugin/exoplayer/Player;)V

    iput-object v0, p0, Lco/frontyard/cordova/plugin/exoplayer/Player;->dismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 142
    new-instance v0, Lco/frontyard/cordova/plugin/exoplayer/Player$3;

    invoke-direct {v0, p0}, Lco/frontyard/cordova/plugin/exoplayer/Player$3;-><init>(Lco/frontyard/cordova/plugin/exoplayer/Player;)V

    iput-object v0, p0, Lco/frontyard/cordova/plugin/exoplayer/Player;->onKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    .line 162
    new-instance v0, Lco/frontyard/cordova/plugin/exoplayer/Player$4;

    invoke-direct {v0, p0}, Lco/frontyard/cordova/plugin/exoplayer/Player$4;-><init>(Lco/frontyard/cordova/plugin/exoplayer/Player;)V

    iput-object v0, p0, Lco/frontyard/cordova/plugin/exoplayer/Player;->onTouchListener:Landroid/view/View$OnTouchListener;

    .line 177
    new-instance v0, Lco/frontyard/cordova/plugin/exoplayer/Player$5;

    invoke-direct {v0, p0}, Lco/frontyard/cordova/plugin/exoplayer/Player$5;-><init>(Lco/frontyard/cordova/plugin/exoplayer/Player;)V

    iput-object v0, p0, Lco/frontyard/cordova/plugin/exoplayer/Player;->playbackControlVisibilityListener:Lcom/google/android/exoplayer2/ui/PlaybackControlView$VisibilityListener;

    .line 184
    new-instance v0, Lco/frontyard/cordova/plugin/exoplayer/Player$6;

    invoke-direct {v0, p0}, Lco/frontyard/cordova/plugin/exoplayer/Player$6;-><init>(Lco/frontyard/cordova/plugin/exoplayer/Player;)V

    iput-object v0, p0, Lco/frontyard/cordova/plugin/exoplayer/Player;->audioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 65
    iput-object p1, p0, Lco/frontyard/cordova/plugin/exoplayer/Player;->config:Lco/frontyard/cordova/plugin/exoplayer/Configuration;

    .line 66
    iput-object p2, p0, Lco/frontyard/cordova/plugin/exoplayer/Player;->activity:Landroid/app/Activity;

    .line 67
    iput-object p3, p0, Lco/frontyard/cordova/plugin/exoplayer/Player;->callbackContext:Lorg/apache/cordova/CallbackContext;

    .line 68
    iput-object p4, p0, Lco/frontyard/cordova/plugin/exoplayer/Player;->webView:Lorg/apache/cordova/CordovaWebView;

    .line 69
    const-string v0, "audio"

    invoke-virtual {p2, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lco/frontyard/cordova/plugin/exoplayer/Player;->audioManager:Landroid/media/AudioManager;

    .line 70
    return-void
.end method

.method static synthetic access$000(Lco/frontyard/cordova/plugin/exoplayer/Player;)Lcom/google/android/exoplayer2/SimpleExoPlayer;
    .locals 1
    .param p0, "x0"    # Lco/frontyard/cordova/plugin/exoplayer/Player;

    .prologue
    .line 51
    iget-object v0, p0, Lco/frontyard/cordova/plugin/exoplayer/Player;->exoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    return-object v0
.end method

.method static synthetic access$002(Lco/frontyard/cordova/plugin/exoplayer/Player;Lcom/google/android/exoplayer2/SimpleExoPlayer;)Lcom/google/android/exoplayer2/SimpleExoPlayer;
    .locals 0
    .param p0, "x0"    # Lco/frontyard/cordova/plugin/exoplayer/Player;
    .param p1, "x1"    # Lcom/google/android/exoplayer2/SimpleExoPlayer;

    .prologue
    .line 51
    iput-object p1, p0, Lco/frontyard/cordova/plugin/exoplayer/Player;->exoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    return-object p1
.end method

.method static synthetic access$100(Lco/frontyard/cordova/plugin/exoplayer/Player;)Lorg/apache/cordova/CallbackContext;
    .locals 1
    .param p0, "x0"    # Lco/frontyard/cordova/plugin/exoplayer/Player;

    .prologue
    .line 51
    iget-object v0, p0, Lco/frontyard/cordova/plugin/exoplayer/Player;->callbackContext:Lorg/apache/cordova/CallbackContext;

    return-object v0
.end method

.method static synthetic access$200(Lco/frontyard/cordova/plugin/exoplayer/Player;)Lco/frontyard/cordova/plugin/exoplayer/Configuration;
    .locals 1
    .param p0, "x0"    # Lco/frontyard/cordova/plugin/exoplayer/Player;

    .prologue
    .line 51
    iget-object v0, p0, Lco/frontyard/cordova/plugin/exoplayer/Player;->config:Lco/frontyard/cordova/plugin/exoplayer/Configuration;

    return-object v0
.end method

.method static synthetic access$300(Lco/frontyard/cordova/plugin/exoplayer/Player;)Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;
    .locals 1
    .param p0, "x0"    # Lco/frontyard/cordova/plugin/exoplayer/Player;

    .prologue
    .line 51
    iget-object v0, p0, Lco/frontyard/cordova/plugin/exoplayer/Player;->exoView:Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;

    return-object v0
.end method

.method static synthetic access$400(Lco/frontyard/cordova/plugin/exoplayer/Player;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lco/frontyard/cordova/plugin/exoplayer/Player;

    .prologue
    .line 51
    iget-object v0, p0, Lco/frontyard/cordova/plugin/exoplayer/Player;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$500(Lco/frontyard/cordova/plugin/exoplayer/Player;)I
    .locals 1
    .param p0, "x0"    # Lco/frontyard/cordova/plugin/exoplayer/Player;

    .prologue
    .line 51
    iget v0, p0, Lco/frontyard/cordova/plugin/exoplayer/Player;->controllerVisibility:I

    return v0
.end method

.method static synthetic access$502(Lco/frontyard/cordova/plugin/exoplayer/Player;I)I
    .locals 0
    .param p0, "x0"    # Lco/frontyard/cordova/plugin/exoplayer/Player;
    .param p1, "x1"    # I

    .prologue
    .line 51
    iput p1, p0, Lco/frontyard/cordova/plugin/exoplayer/Player;->controllerVisibility:I

    return p1
.end method

.method private getMediaSource(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;)Lcom/google/android/exoplayer2/source/MediaSource;
    .locals 35
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "bandwidthMeter"    # Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;

    .prologue
    .line 284
    move-object/from16 v0, p0

    iget-object v4, v0, Lco/frontyard/cordova/plugin/exoplayer/Player;->activity:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v8, v0, Lco/frontyard/cordova/plugin/exoplayer/Player;->config:Lco/frontyard/cordova/plugin/exoplayer/Configuration;

    invoke-virtual {v8}, Lco/frontyard/cordova/plugin/exoplayer/Configuration;->getUserAgent()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Lcom/google/android/exoplayer2/util/Util;->getUserAgent(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 285
    .local v3, "userAgent":Ljava/lang/String;
    new-instance v14, Landroid/os/Handler;

    invoke-direct {v14}, Landroid/os/Handler;-><init>()V

    .line 286
    .local v14, "mainHandler":Landroid/os/Handler;
    move-object/from16 v0, p0

    iget-object v4, v0, Lco/frontyard/cordova/plugin/exoplayer/Player;->config:Lco/frontyard/cordova/plugin/exoplayer/Configuration;

    invoke-virtual {v4}, Lco/frontyard/cordova/plugin/exoplayer/Configuration;->getConnectTimeout()I

    move-result v5

    .line 287
    .local v5, "connectTimeout":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lco/frontyard/cordova/plugin/exoplayer/Player;->config:Lco/frontyard/cordova/plugin/exoplayer/Configuration;

    invoke-virtual {v4}, Lco/frontyard/cordova/plugin/exoplayer/Configuration;->getReadTimeout()I

    move-result v6

    .line 288
    .local v6, "readTimeout":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lco/frontyard/cordova/plugin/exoplayer/Player;->config:Lco/frontyard/cordova/plugin/exoplayer/Configuration;

    invoke-virtual {v4}, Lco/frontyard/cordova/plugin/exoplayer/Configuration;->getRetryCount()I

    move-result v11

    .line 290
    .local v11, "retryCount":I
    new-instance v2, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSourceFactory;

    const/4 v7, 0x1

    move-object/from16 v4, p2

    invoke-direct/range {v2 .. v7}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSourceFactory;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/TransferListener;IIZ)V

    .line 291
    .local v2, "httpDataSourceFactory":Lcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;
    new-instance v9, Lcom/google/android/exoplayer2/upstream/DefaultDataSourceFactory;

    move-object/from16 v0, p0

    iget-object v4, v0, Lco/frontyard/cordova/plugin/exoplayer/Player;->activity:Landroid/app/Activity;

    move-object/from16 v0, p2

    invoke-direct {v9, v4, v0, v2}, Lcom/google/android/exoplayer2/upstream/DefaultDataSourceFactory;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/upstream/TransferListener;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    .line 293
    .local v9, "dataSourceFactory":Lcom/google/android/exoplayer2/upstream/DataSource$Factory;
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/Util;->inferContentType(Landroid/net/Uri;)I

    move-result v34

    .line 294
    .local v34, "type":I
    packed-switch v34, :pswitch_data_0

    .line 311
    new-instance v22, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;

    invoke-direct/range {v22 .. v22}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;-><init>()V

    .line 312
    .local v22, "extractorsFactory":Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;
    new-instance v7, Lcom/google/android/exoplayer2/source/ExtractorMediaSource;

    const/16 v24, 0x0

    move-object/from16 v19, v7

    move-object/from16 v20, p1

    move-object/from16 v21, v9

    move-object/from16 v23, v14

    invoke-direct/range {v19 .. v24}, Lcom/google/android/exoplayer2/source/ExtractorMediaSource;-><init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;Landroid/os/Handler;Lcom/google/android/exoplayer2/source/ExtractorMediaSource$EventListener;)V

    .line 316
    .end local v22    # "extractorsFactory":Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;
    .local v7, "mediaSource":Lcom/google/android/exoplayer2/source/MediaSource;
    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lco/frontyard/cordova/plugin/exoplayer/Player;->config:Lco/frontyard/cordova/plugin/exoplayer/Configuration;

    invoke-virtual {v4}, Lco/frontyard/cordova/plugin/exoplayer/Configuration;->getSubtitleUrl()Ljava/lang/String;

    move-result-object v33

    .line 317
    .local v33, "subtitleUrl":Ljava/lang/String;
    if-eqz v33, :cond_0

    .line 318
    invoke-static/range {v33 .. v33}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v32

    .line 319
    .local v32, "subtitleUri":Landroid/net/Uri;
    invoke-static/range {v32 .. v32}, Lco/frontyard/cordova/plugin/exoplayer/Player;->inferSubtitleType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v24

    .line 320
    .local v24, "subtitleType":Ljava/lang/String;
    const-string v4, "ExoPlayerPlugin"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Subtitle present: "

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v32

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v15, ", type="

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v24

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    const/16 v23, 0x0

    const/16 v25, 0x0

    const/16 v26, -0x1

    const/16 v27, -0x1

    const-string v28, "en"

    const/16 v29, 0x0

    const-wide/16 v30, 0x0

    invoke-static/range {v23 .. v31}, Lcom/google/android/exoplayer2/Format;->createTextSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData;J)Lcom/google/android/exoplayer2/Format;

    move-result-object v29

    .line 322
    .local v29, "textFormat":Lcom/google/android/exoplayer2/Format;
    new-instance v26, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource;

    const-wide v30, -0x7fffffffffffffffL    # -4.9E-324

    move-object/from16 v27, v32

    move-object/from16 v28, v2

    invoke-direct/range {v26 .. v31}, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource;-><init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/Format;J)V

    .line 323
    .local v26, "subtitleSource":Lcom/google/android/exoplayer2/source/MediaSource;
    new-instance v4, Lcom/google/android/exoplayer2/source/MergingMediaSource;

    const/4 v8, 0x2

    new-array v8, v8, [Lcom/google/android/exoplayer2/source/MediaSource;

    const/4 v15, 0x0

    aput-object v7, v8, v15

    const/4 v15, 0x1

    aput-object v26, v8, v15

    invoke-direct {v4, v8}, Lcom/google/android/exoplayer2/source/MergingMediaSource;-><init>([Lcom/google/android/exoplayer2/source/MediaSource;)V

    move-object v7, v4

    .line 326
    .end local v7    # "mediaSource":Lcom/google/android/exoplayer2/source/MediaSource;
    .end local v24    # "subtitleType":Ljava/lang/String;
    .end local v26    # "subtitleSource":Lcom/google/android/exoplayer2/source/MediaSource;
    .end local v29    # "textFormat":Lcom/google/android/exoplayer2/Format;
    .end local v32    # "subtitleUri":Landroid/net/Uri;
    :cond_0
    return-object v7

    .line 296
    .end local v33    # "subtitleUrl":Ljava/lang/String;
    :pswitch_0
    const-wide/16 v12, -0x1

    .line 297
    .local v12, "livePresentationDelayMs":J
    new-instance v10, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$Factory;

    invoke-direct {v10, v9}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    .line 299
    .local v10, "dashChunkSourceFactory":Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$Factory;
    new-instance v7, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;

    const/4 v15, 0x0

    move-object/from16 v8, p1

    invoke-direct/range {v7 .. v15}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;-><init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/source/dash/DashChunkSource$Factory;IJLandroid/os/Handler;Lcom/google/android/exoplayer2/source/MediaSourceEventListener;)V

    .line 300
    .restart local v7    # "mediaSource":Lcom/google/android/exoplayer2/source/MediaSource;
    goto :goto_0

    .line 303
    .end local v7    # "mediaSource":Lcom/google/android/exoplayer2/source/MediaSource;
    .end local v10    # "dashChunkSourceFactory":Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$Factory;
    .end local v12    # "livePresentationDelayMs":J
    :pswitch_1
    new-instance v7, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;

    const/16 v20, 0x0

    move-object v15, v7

    move-object/from16 v16, p1

    move-object/from16 v17, v9

    move/from16 v18, v11

    move-object/from16 v19, v14

    invoke-direct/range {v15 .. v20}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;-><init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;ILandroid/os/Handler;Lcom/google/android/exoplayer2/source/MediaSourceEventListener;)V

    .line 304
    .restart local v7    # "mediaSource":Lcom/google/android/exoplayer2/source/MediaSource;
    goto/16 :goto_0

    .line 306
    .end local v7    # "mediaSource":Lcom/google/android/exoplayer2/source/MediaSource;
    :pswitch_2
    new-instance v18, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource$Factory;

    move-object/from16 v0, v18

    invoke-direct {v0, v9}, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    .line 308
    .local v18, "ssChunkSourceFactory":Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource$Factory;
    new-instance v7, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;

    const/16 v20, 0x0

    move-object v15, v7

    move-object/from16 v16, p1

    move-object/from16 v17, v9

    move-object/from16 v19, v14

    invoke-direct/range {v15 .. v20}, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;-><init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/source/smoothstreaming/SsChunkSource$Factory;Landroid/os/Handler;Lcom/google/android/exoplayer2/source/MediaSourceEventListener;)V

    .line 309
    .restart local v7    # "mediaSource":Lcom/google/android/exoplayer2/source/MediaSource;
    goto/16 :goto_0

    .line 294
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private static inferSubtitleType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 331
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 333
    .local v0, "fileName":Ljava/lang/String;
    const-string v1, ".vtt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 334
    const-string v1, "text/vtt"

    .line 338
    :goto_0
    return-object v1

    :cond_0
    const-string v1, "application/x-subrip"

    goto :goto_0
.end method

.method private normalizeOffset(J)J
    .locals 5
    .param p1, "newTime"    # J

    .prologue
    const-wide/16 v2, 0x0

    .line 388
    iget-object v4, p0, Lco/frontyard/cordova/plugin/exoplayer/Player;->exoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getDuration()J

    move-result-wide v0

    .line 389
    .local v0, "duration":J
    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    :goto_0
    return-wide v2

    :cond_0
    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    goto :goto_0
.end method

.method private pause()V
    .locals 2

    .prologue
    .line 373
    const/4 v0, 0x1

    iput-boolean v0, p0, Lco/frontyard/cordova/plugin/exoplayer/Player;->paused:Z

    .line 374
    iget-object v0, p0, Lco/frontyard/cordova/plugin/exoplayer/Player;->exoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setPlayWhenReady(Z)V

    .line 375
    return-void
.end method

.method private play()V
    .locals 2

    .prologue
    .line 378
    const/4 v0, 0x0

    iput-boolean v0, p0, Lco/frontyard/cordova/plugin/exoplayer/Player;->paused:Z

    .line 379
    iget-object v0, p0, Lco/frontyard/cordova/plugin/exoplayer/Player;->exoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setPlayWhenReady(Z)V

    .line 380
    return-void
.end method

.method private preparePlayer(Landroid/net/Uri;)V
    .locals 14
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v11, 0x1

    .line 248
    invoke-direct {p0}, Lco/frontyard/cordova/plugin/exoplayer/Player;->setupAudio()I

    move-result v0

    .line 249
    .local v0, "audioFocusResult":I
    if-nez v0, :cond_2

    const-string v1, "AUDIOFOCUS_REQUEST_FAILED"

    .line 252
    .local v1, "audioFocusString":Ljava/lang/String;
    :goto_0
    new-instance v3, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;

    invoke-direct {v3}, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;-><init>()V

    .line 254
    .local v3, "bandwidthMeter":Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;
    new-instance v9, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-direct {v9}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;-><init>()V

    .line 255
    .local v9, "trackSelector":Lcom/google/android/exoplayer2/trackselection/TrackSelector;
    new-instance v4, Lcom/google/android/exoplayer2/DefaultLoadControl;

    invoke-direct {v4}, Lcom/google/android/exoplayer2/DefaultLoadControl;-><init>()V

    .line 257
    .local v4, "loadControl":Lcom/google/android/exoplayer2/LoadControl;
    iget-object v10, p0, Lco/frontyard/cordova/plugin/exoplayer/Player;->activity:Landroid/app/Activity;

    invoke-static {v10, v9, v4}, Lcom/google/android/exoplayer2/ExoPlayerFactory;->newSimpleInstance(Landroid/content/Context;Lcom/google/android/exoplayer2/trackselection/TrackSelector;Lcom/google/android/exoplayer2/LoadControl;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v10

    iput-object v10, p0, Lco/frontyard/cordova/plugin/exoplayer/Player;->exoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    .line 258
    iget-object v10, p0, Lco/frontyard/cordova/plugin/exoplayer/Player;->exoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    iget-object v12, p0, Lco/frontyard/cordova/plugin/exoplayer/Player;->playerEventListener:Lcom/google/android/exoplayer2/ExoPlayer$EventListener;

    invoke-virtual {v10, v12}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->addListener(Lcom/google/android/exoplayer2/Player$EventListener;)V

    .line 259
    iget-object v10, p0, Lco/frontyard/cordova/plugin/exoplayer/Player;->exoView:Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;

    if-eqz v10, :cond_0

    .line 260
    iget-object v10, p0, Lco/frontyard/cordova/plugin/exoplayer/Player;->exoView:Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;

    iget-object v12, p0, Lco/frontyard/cordova/plugin/exoplayer/Player;->exoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v10, v12}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->setPlayer(Lcom/google/android/exoplayer2/SimpleExoPlayer;)V

    .line 263
    :cond_0
    invoke-direct {p0, p1, v3}, Lco/frontyard/cordova/plugin/exoplayer/Player;->getMediaSource(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;)Lcom/google/android/exoplayer2/source/MediaSource;

    move-result-object v5

    .line 264
    .local v5, "mediaSource":Lcom/google/android/exoplayer2/source/MediaSource;
    if-eqz v5, :cond_4

    .line 265
    iget-object v10, p0, Lco/frontyard/cordova/plugin/exoplayer/Player;->config:Lco/frontyard/cordova/plugin/exoplayer/Configuration;

    invoke-virtual {v10}, Lco/frontyard/cordova/plugin/exoplayer/Configuration;->getSeekTo()J

    move-result-wide v6

    .line 266
    .local v6, "offset":J
    iget-object v10, p0, Lco/frontyard/cordova/plugin/exoplayer/Player;->config:Lco/frontyard/cordova/plugin/exoplayer/Configuration;

    invoke-virtual {v10}, Lco/frontyard/cordova/plugin/exoplayer/Configuration;->autoPlay()Z

    move-result v2

    .line 267
    .local v2, "autoPlay":Z
    const-wide/16 v12, -0x1

    cmp-long v10, v6, v12

    if-lez v10, :cond_1

    .line 268
    iget-object v10, p0, Lco/frontyard/cordova/plugin/exoplayer/Player;->exoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v10, v6, v7}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->seekTo(J)V

    .line 270
    :cond_1
    iget-object v10, p0, Lco/frontyard/cordova/plugin/exoplayer/Player;->exoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v10, v5}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->prepare(Lcom/google/android/exoplayer2/source/MediaSource;)V

    .line 272
    iget-object v10, p0, Lco/frontyard/cordova/plugin/exoplayer/Player;->exoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v10, v2}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setPlayWhenReady(Z)V

    .line 273
    if-nez v2, :cond_3

    move v10, v11

    :goto_1
    iput-boolean v10, p0, Lco/frontyard/cordova/plugin/exoplayer/Player;->paused:Z

    .line 275
    iget-object v10, p0, Lco/frontyard/cordova/plugin/exoplayer/Player;->exoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-static {v10, v1}, Lco/frontyard/cordova/plugin/exoplayer/Payload;->startEvent(Lcom/google/android/exoplayer2/ExoPlayer;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    .line 276
    .local v8, "payload":Lorg/json/JSONObject;
    new-instance v10, Lco/frontyard/cordova/plugin/exoplayer/CallbackResponse;

    iget-object v12, p0, Lco/frontyard/cordova/plugin/exoplayer/Player;->callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-direct {v10, v12}, Lco/frontyard/cordova/plugin/exoplayer/CallbackResponse;-><init>(Lorg/apache/cordova/CallbackContext;)V

    sget-object v12, Lorg/apache/cordova/PluginResult$Status;->OK:Lorg/apache/cordova/PluginResult$Status;

    invoke-virtual {v10, v12, v8, v11}, Lco/frontyard/cordova/plugin/exoplayer/CallbackResponse;->send(Lorg/apache/cordova/PluginResult$Status;Lorg/json/JSONObject;Z)V

    .line 281
    .end local v2    # "autoPlay":Z
    .end local v6    # "offset":J
    .end local v8    # "payload":Lorg/json/JSONObject;
    :goto_2
    return-void

    .line 249
    .end local v1    # "audioFocusString":Ljava/lang/String;
    .end local v3    # "bandwidthMeter":Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;
    .end local v4    # "loadControl":Lcom/google/android/exoplayer2/LoadControl;
    .end local v5    # "mediaSource":Lcom/google/android/exoplayer2/source/MediaSource;
    .end local v9    # "trackSelector":Lcom/google/android/exoplayer2/trackselection/TrackSelector;
    :cond_2
    const-string v1, "AUDIOFOCUS_REQUEST_GRANTED"

    goto :goto_0

    .line 273
    .restart local v1    # "audioFocusString":Ljava/lang/String;
    .restart local v2    # "autoPlay":Z
    .restart local v3    # "bandwidthMeter":Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;
    .restart local v4    # "loadControl":Lcom/google/android/exoplayer2/LoadControl;
    .restart local v5    # "mediaSource":Lcom/google/android/exoplayer2/source/MediaSource;
    .restart local v6    # "offset":J
    .restart local v9    # "trackSelector":Lcom/google/android/exoplayer2/trackselection/TrackSelector;
    :cond_3
    const/4 v10, 0x0

    goto :goto_1

    .line 279
    .end local v2    # "autoPlay":Z
    .end local v6    # "offset":J
    :cond_4
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to construct mediaSource for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lco/frontyard/cordova/plugin/exoplayer/Player;->sendError(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private sendError(Ljava/lang/String;)V
    .locals 4
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 431
    const-string v1, "ExoPlayerPlugin"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    iget-object v1, p0, Lco/frontyard/cordova/plugin/exoplayer/Player;->exoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    const/4 v2, 0x0

    invoke-static {v1, v2, p1}, Lco/frontyard/cordova/plugin/exoplayer/Payload;->playerErrorEvent(Lcom/google/android/exoplayer2/ExoPlayer;Lcom/google/android/exoplayer2/ExoPlaybackException;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 433
    .local v0, "payload":Lorg/json/JSONObject;
    new-instance v1, Lco/frontyard/cordova/plugin/exoplayer/CallbackResponse;

    iget-object v2, p0, Lco/frontyard/cordova/plugin/exoplayer/Player;->callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-direct {v1, v2}, Lco/frontyard/cordova/plugin/exoplayer/CallbackResponse;-><init>(Lorg/apache/cordova/CallbackContext;)V

    sget-object v2, Lorg/apache/cordova/PluginResult$Status;->ERROR:Lorg/apache/cordova/PluginResult$Status;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Lco/frontyard/cordova/plugin/exoplayer/CallbackResponse;->send(Lorg/apache/cordova/PluginResult$Status;Lorg/json/JSONObject;Z)V

    .line 434
    return-void
.end method

.method private setupAudio()I
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 243
    iget-object v0, p0, Lco/frontyard/cordova/plugin/exoplayer/Player;->activity:Landroid/app/Activity;

    invoke-virtual {v0, v3}, Landroid/app/Activity;->setVolumeControlStream(I)V

    .line 244
    iget-object v0, p0, Lco/frontyard/cordova/plugin/exoplayer/Player;->audioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lco/frontyard/cordova/plugin/exoplayer/Player;->audioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    return v0
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 343
    iget-object v0, p0, Lco/frontyard/cordova/plugin/exoplayer/Player;->audioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lco/frontyard/cordova/plugin/exoplayer/Player;->audioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 344
    iget-object v0, p0, Lco/frontyard/cordova/plugin/exoplayer/Player;->exoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_0

    .line 345
    iget-object v0, p0, Lco/frontyard/cordova/plugin/exoplayer/Player;->exoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->release()V

    .line 346
    const/4 v0, 0x0

    iput-object v0, p0, Lco/frontyard/cordova/plugin/exoplayer/Player;->exoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    .line 348
    :cond_0
    iget-object v0, p0, Lco/frontyard/cordova/plugin/exoplayer/Player;->dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    .line 349
    iget-object v0, p0, Lco/frontyard/cordova/plugin/exoplayer/Player;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 351
    :cond_1
    return-void
.end method

.method public createDialog()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 213
    new-instance v3, Landroid/app/Dialog;

    iget-object v4, p0, Lco/frontyard/cordova/plugin/exoplayer/Player;->activity:Landroid/app/Activity;

    const v5, 0x103000a

    invoke-direct {v3, v4, v5}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Lco/frontyard/cordova/plugin/exoplayer/Player;->dialog:Landroid/app/Dialog;

    .line 214
    iget-object v3, p0, Lco/frontyard/cordova/plugin/exoplayer/Player;->dialog:Landroid/app/Dialog;

    iget-object v4, p0, Lco/frontyard/cordova/plugin/exoplayer/Player;->onKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 215
    iget-object v3, p0, Lco/frontyard/cordova/plugin/exoplayer/Player;->dialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    const v4, 0x1030002

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 216
    iget-object v3, p0, Lco/frontyard/cordova/plugin/exoplayer/Player;->dialog:Landroid/app/Dialog;

    invoke-virtual {v3, v6}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 217
    iget-object v3, p0, Lco/frontyard/cordova/plugin/exoplayer/Player;->dialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 218
    .local v0, "decorView":Landroid/view/View;
    const/16 v2, 0x1706

    .line 224
    .local v2, "uiOptions":I
    invoke-virtual {v0, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 225
    iget-object v3, p0, Lco/frontyard/cordova/plugin/exoplayer/Player;->dialog:Landroid/app/Dialog;

    invoke-virtual {v3, v6}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 226
    iget-object v3, p0, Lco/frontyard/cordova/plugin/exoplayer/Player;->dialog:Landroid/app/Dialog;

    iget-object v4, p0, Lco/frontyard/cordova/plugin/exoplayer/Player;->dismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 228
    iget-object v3, p0, Lco/frontyard/cordova/plugin/exoplayer/Player;->activity:Landroid/app/Activity;

    invoke-static {v3}, Lco/frontyard/cordova/plugin/exoplayer/LayoutProvider;->getMainLayout(Landroid/app/Activity;)Landroid/widget/FrameLayout;

    move-result-object v1

    .line 229
    .local v1, "mainLayout":Landroid/widget/FrameLayout;
    iget-object v3, p0, Lco/frontyard/cordova/plugin/exoplayer/Player;->activity:Landroid/app/Activity;

    iget-object v4, p0, Lco/frontyard/cordova/plugin/exoplayer/Player;->config:Lco/frontyard/cordova/plugin/exoplayer/Configuration;

    invoke-static {v3, v4}, Lco/frontyard/cordova/plugin/exoplayer/LayoutProvider;->getExoPlayerView(Landroid/app/Activity;Lco/frontyard/cordova/plugin/exoplayer/Configuration;)Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;

    move-result-object v3

    iput-object v3, p0, Lco/frontyard/cordova/plugin/exoplayer/Player;->exoView:Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;

    .line 230
    iget-object v3, p0, Lco/frontyard/cordova/plugin/exoplayer/Player;->exoView:Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;

    iget-object v4, p0, Lco/frontyard/cordova/plugin/exoplayer/Player;->playbackControlVisibilityListener:Lcom/google/android/exoplayer2/ui/PlaybackControlView$VisibilityListener;

    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->setControllerVisibilityListener(Lcom/google/android/exoplayer2/ui/PlaybackControlView$VisibilityListener;)V

    .line 232
    iget-object v3, p0, Lco/frontyard/cordova/plugin/exoplayer/Player;->exoView:Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 233
    iget-object v3, p0, Lco/frontyard/cordova/plugin/exoplayer/Player;->dialog:Landroid/app/Dialog;

    invoke-virtual {v3, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 234
    iget-object v3, p0, Lco/frontyard/cordova/plugin/exoplayer/Player;->dialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    .line 236
    iget-object v3, p0, Lco/frontyard/cordova/plugin/exoplayer/Player;->dialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    iget-object v4, p0, Lco/frontyard/cordova/plugin/exoplayer/Player;->activity:Landroid/app/Activity;

    iget-object v5, p0, Lco/frontyard/cordova/plugin/exoplayer/Player;->config:Lco/frontyard/cordova/plugin/exoplayer/Configuration;

    iget-object v6, p0, Lco/frontyard/cordova/plugin/exoplayer/Player;->dialog:Landroid/app/Dialog;

    invoke-static {v4, v5, v6}, Lco/frontyard/cordova/plugin/exoplayer/LayoutProvider;->getDialogLayoutParams(Landroid/app/Activity;Lco/frontyard/cordova/plugin/exoplayer/Configuration;Landroid/app/Dialog;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 237
    iget-object v3, p0, Lco/frontyard/cordova/plugin/exoplayer/Player;->exoView:Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->requestFocus()Z

    .line 238
    iget-object v3, p0, Lco/frontyard/cordova/plugin/exoplayer/Player;->exoView:Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;

    iget-object v4, p0, Lco/frontyard/cordova/plugin/exoplayer/Player;->onTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 239
    iget-object v3, p0, Lco/frontyard/cordova/plugin/exoplayer/Player;->exoView:Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;

    iget-object v4, p0, Lco/frontyard/cordova/plugin/exoplayer/Player;->activity:Landroid/app/Activity;

    iget-object v5, p0, Lco/frontyard/cordova/plugin/exoplayer/Player;->config:Lco/frontyard/cordova/plugin/exoplayer/Configuration;

    invoke-virtual {v5}, Lco/frontyard/cordova/plugin/exoplayer/Configuration;->getController()Lorg/json/JSONObject;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lco/frontyard/cordova/plugin/exoplayer/LayoutProvider;->setupController(Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;Landroid/app/Activity;Lorg/json/JSONObject;)V

    .line 240
    return-void
.end method

.method public createPlayer()V
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lco/frontyard/cordova/plugin/exoplayer/Player;->config:Lco/frontyard/cordova/plugin/exoplayer/Configuration;

    invoke-virtual {v0}, Lco/frontyard/cordova/plugin/exoplayer/Configuration;->isAudioOnly()Z

    move-result v0

    if-nez v0, :cond_0

    .line 207
    invoke-virtual {p0}, Lco/frontyard/cordova/plugin/exoplayer/Player;->createDialog()V

    .line 209
    :cond_0
    iget-object v0, p0, Lco/frontyard/cordova/plugin/exoplayer/Player;->config:Lco/frontyard/cordova/plugin/exoplayer/Configuration;

    invoke-virtual {v0}, Lco/frontyard/cordova/plugin/exoplayer/Configuration;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lco/frontyard/cordova/plugin/exoplayer/Player;->preparePlayer(Landroid/net/Uri;)V

    .line 210
    return-void
.end method

.method public getPlayerState()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 407
    iget-object v2, p0, Lco/frontyard/cordova/plugin/exoplayer/Player;->exoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    iget-object v0, p0, Lco/frontyard/cordova/plugin/exoplayer/Player;->exoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lco/frontyard/cordova/plugin/exoplayer/Player;->exoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    .line 408
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getPlaybackState()I

    move-result v0

    :goto_0
    iget v1, p0, Lco/frontyard/cordova/plugin/exoplayer/Player;->controllerVisibility:I

    if-nez v1, :cond_1

    const/4 v1, 0x1

    .line 407
    :goto_1
    invoke-static {v2, v0, v1}, Lco/frontyard/cordova/plugin/exoplayer/Payload;->stateEvent(Lcom/google/android/exoplayer2/ExoPlayer;IZ)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0

    .line 408
    :cond_0
    const/4 v0, 0x4

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public hideController()V
    .locals 1

    .prologue
    .line 419
    iget-object v0, p0, Lco/frontyard/cordova/plugin/exoplayer/Player;->exoView:Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;

    if-eqz v0, :cond_0

    .line 420
    iget-object v0, p0, Lco/frontyard/cordova/plugin/exoplayer/Player;->exoView:Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->hideController()V

    .line 422
    :cond_0
    return-void
.end method

.method public playPause()V
    .locals 1

    .prologue
    .line 364
    iget-boolean v0, p0, Lco/frontyard/cordova/plugin/exoplayer/Player;->paused:Z

    if-eqz v0, :cond_0

    .line 365
    invoke-direct {p0}, Lco/frontyard/cordova/plugin/exoplayer/Player;->play()V

    .line 370
    :goto_0
    return-void

    .line 368
    :cond_0
    invoke-direct {p0}, Lco/frontyard/cordova/plugin/exoplayer/Player;->pause()V

    goto :goto_0
.end method

.method public seekBy(J)Lorg/json/JSONObject;
    .locals 7
    .param p1, "timeMillis"    # J

    .prologue
    .line 400
    iget-object v3, p0, Lco/frontyard/cordova/plugin/exoplayer/Player;->exoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getCurrentPosition()J

    move-result-wide v4

    add-long/2addr v4, p1

    invoke-direct {p0, v4, v5}, Lco/frontyard/cordova/plugin/exoplayer/Player;->normalizeOffset(J)J

    move-result-wide v0

    .line 401
    .local v0, "newTime":J
    iget-object v3, p0, Lco/frontyard/cordova/plugin/exoplayer/Player;->exoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v3, v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->seekTo(J)V

    .line 402
    iget-object v3, p0, Lco/frontyard/cordova/plugin/exoplayer/Player;->exoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-static {v3, v0, v1}, Lco/frontyard/cordova/plugin/exoplayer/Payload;->seekEvent(Lcom/google/android/exoplayer2/ExoPlayer;J)Lorg/json/JSONObject;

    move-result-object v2

    .line 403
    .local v2, "payload":Lorg/json/JSONObject;
    return-object v2
.end method

.method public seekTo(J)Lorg/json/JSONObject;
    .locals 5
    .param p1, "timeMillis"    # J

    .prologue
    .line 393
    invoke-direct {p0, p1, p2}, Lco/frontyard/cordova/plugin/exoplayer/Player;->normalizeOffset(J)J

    move-result-wide v0

    .line 394
    .local v0, "newTime":J
    iget-object v3, p0, Lco/frontyard/cordova/plugin/exoplayer/Player;->exoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v3, v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->seekTo(J)V

    .line 395
    iget-object v3, p0, Lco/frontyard/cordova/plugin/exoplayer/Player;->exoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-static {v3, v0, v1}, Lco/frontyard/cordova/plugin/exoplayer/Payload;->seekEvent(Lcom/google/android/exoplayer2/ExoPlayer;J)Lorg/json/JSONObject;

    move-result-object v2

    .line 396
    .local v2, "payload":Lorg/json/JSONObject;
    return-object v2
.end method

.method public setController(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "controller"    # Lorg/json/JSONObject;

    .prologue
    .line 425
    iget-object v0, p0, Lco/frontyard/cordova/plugin/exoplayer/Player;->exoView:Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;

    if-eqz v0, :cond_0

    .line 426
    iget-object v0, p0, Lco/frontyard/cordova/plugin/exoplayer/Player;->exoView:Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;

    iget-object v1, p0, Lco/frontyard/cordova/plugin/exoplayer/Player;->activity:Landroid/app/Activity;

    invoke-static {v0, v1, p1}, Lco/frontyard/cordova/plugin/exoplayer/LayoutProvider;->setupController(Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;Landroid/app/Activity;Lorg/json/JSONObject;)V

    .line 428
    :cond_0
    return-void
.end method

.method public setStream(Landroid/net/Uri;Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "controller"    # Lorg/json/JSONObject;

    .prologue
    .line 354
    if-eqz p1, :cond_0

    .line 355
    new-instance v0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;-><init>()V

    .line 356
    .local v0, "bandwidthMeter":Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;
    invoke-direct {p0, p1, v0}, Lco/frontyard/cordova/plugin/exoplayer/Player;->getMediaSource(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;)Lcom/google/android/exoplayer2/source/MediaSource;

    move-result-object v1

    .line 357
    .local v1, "mediaSource":Lcom/google/android/exoplayer2/source/MediaSource;
    iget-object v2, p0, Lco/frontyard/cordova/plugin/exoplayer/Player;->exoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->prepare(Lcom/google/android/exoplayer2/source/MediaSource;)V

    .line 358
    invoke-direct {p0}, Lco/frontyard/cordova/plugin/exoplayer/Player;->play()V

    .line 360
    .end local v0    # "bandwidthMeter":Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;
    .end local v1    # "mediaSource":Lcom/google/android/exoplayer2/source/MediaSource;
    :cond_0
    invoke-virtual {p0, p2}, Lco/frontyard/cordova/plugin/exoplayer/Player;->setController(Lorg/json/JSONObject;)V

    .line 361
    return-void
.end method

.method public showController()V
    .locals 1

    .prologue
    .line 413
    iget-object v0, p0, Lco/frontyard/cordova/plugin/exoplayer/Player;->exoView:Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;

    if-eqz v0, :cond_0

    .line 414
    iget-object v0, p0, Lco/frontyard/cordova/plugin/exoplayer/Player;->exoView:Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->showController()V

    .line 416
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 383
    const/4 v0, 0x0

    iput-boolean v0, p0, Lco/frontyard/cordova/plugin/exoplayer/Player;->paused:Z

    .line 384
    iget-object v0, p0, Lco/frontyard/cordova/plugin/exoplayer/Player;->exoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->stop()V

    .line 385
    return-void
.end method
