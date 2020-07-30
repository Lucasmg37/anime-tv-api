.class public Lco/frontyard/cordova/plugin/exoplayer/Configuration;
.super Ljava/lang/Object;
.source "Configuration.java"


# instance fields
.field private final config:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "config"    # Lorg/json/JSONObject;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lco/frontyard/cordova/plugin/exoplayer/Configuration;->config:Lorg/json/JSONObject;

    .line 35
    return-void
.end method


# virtual methods
.method public autoPlay()Z
    .locals 3

    .prologue
    .line 58
    iget-object v0, p0, Lco/frontyard/cordova/plugin/exoplayer/Configuration;->config:Lorg/json/JSONObject;

    const-string v1, "autoPlay"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getConnectTimeout()I
    .locals 3

    .prologue
    .line 86
    iget-object v0, p0, Lco/frontyard/cordova/plugin/exoplayer/Configuration;->config:Lorg/json/JSONObject;

    const-string v1, "connectTimeout"

    const/16 v2, 0x7530

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final getController()Lorg/json/JSONObject;
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lco/frontyard/cordova/plugin/exoplayer/Configuration;->config:Lorg/json/JSONObject;

    const-string v1, "controller"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public final getDimensions()Lorg/json/JSONObject;
    .locals 2

    .prologue
    .line 42
    iget-object v0, p0, Lco/frontyard/cordova/plugin/exoplayer/Configuration;->config:Lorg/json/JSONObject;

    const-string v1, "dimensions"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public getForwardTimeMs()I
    .locals 3

    .prologue
    .line 74
    iget-object v0, p0, Lco/frontyard/cordova/plugin/exoplayer/Configuration;->config:Lorg/json/JSONObject;

    const-string v1, "forwardTime"

    const v2, 0xea60

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getHideTimeout()I
    .locals 3

    .prologue
    .line 70
    iget-object v0, p0, Lco/frontyard/cordova/plugin/exoplayer/Configuration;->config:Lorg/json/JSONObject;

    const-string v1, "hideTimeout"

    const/16 v2, 0x1388

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getReadTimeout()I
    .locals 3

    .prologue
    .line 90
    iget-object v0, p0, Lco/frontyard/cordova/plugin/exoplayer/Configuration;->config:Lorg/json/JSONObject;

    const-string v1, "readTimeout"

    const/16 v2, 0x7530

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getRetryCount()I
    .locals 3

    .prologue
    .line 94
    iget-object v0, p0, Lco/frontyard/cordova/plugin/exoplayer/Configuration;->config:Lorg/json/JSONObject;

    const-string v1, "retryCount"

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getRewindTimeMs()I
    .locals 3

    .prologue
    .line 78
    iget-object v0, p0, Lco/frontyard/cordova/plugin/exoplayer/Configuration;->config:Lorg/json/JSONObject;

    const-string v1, "rewindTime"

    const v2, 0xea60

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getSeekTo()J
    .locals 4

    .prologue
    .line 62
    iget-object v0, p0, Lco/frontyard/cordova/plugin/exoplayer/Configuration;->config:Lorg/json/JSONObject;

    const-string v1, "seekTo"

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getShowBuffering()Z
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lco/frontyard/cordova/plugin/exoplayer/Configuration;->config:Lorg/json/JSONObject;

    const-string v1, "showBuffering"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getSubtitleUrl()Ljava/lang/String;
    .locals 3

    .prologue
    .line 82
    iget-object v0, p0, Lco/frontyard/cordova/plugin/exoplayer/Configuration;->config:Lorg/json/JSONObject;

    const-string v1, "subtitleUrl"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getUri()Landroid/net/Uri;
    .locals 3

    .prologue
    .line 38
    iget-object v0, p0, Lco/frontyard/cordova/plugin/exoplayer/Configuration;->config:Lorg/json/JSONObject;

    const-string v1, "url"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getUserAgent()Ljava/lang/String;
    .locals 3

    .prologue
    .line 46
    iget-object v0, p0, Lco/frontyard/cordova/plugin/exoplayer/Configuration;->config:Lorg/json/JSONObject;

    const-string v1, "userAgent"

    const-string v2, "ExoPlayerPlugin"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isAspectRatioFillScreen()Z
    .locals 3

    .prologue
    .line 50
    iget-object v0, p0, Lco/frontyard/cordova/plugin/exoplayer/Configuration;->config:Lorg/json/JSONObject;

    const-string v1, "aspectRatio"

    const-string v2, "FIT_SCREEN"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "FILL_SCREEN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isAudioOnly()Z
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lco/frontyard/cordova/plugin/exoplayer/Configuration;->config:Lorg/json/JSONObject;

    const-string v1, "audioOnly"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
