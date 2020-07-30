.class public final Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;
.super Ljava/lang/Object;
.source "AdsMediaSource.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/MediaSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$ComponentListener;,
        Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$EventListener;,
        Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$MediaSourceFactory;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AdsMediaSource"


# instance fields
.field private adDurationsUs:[[J

.field private adGroupMediaSources:[[Lcom/google/android/exoplayer2/source/MediaSource;

.field private final adMediaSourceFactory:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$MediaSourceFactory;

.field private adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

.field private final adUiViewGroup:Landroid/view/ViewGroup;

.field private final adsLoader:Lcom/google/android/exoplayer2/source/ads/AdsLoader;

.field private final componentListener:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$ComponentListener;

.field private contentManifest:Ljava/lang/Object;

.field private final contentMediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

.field private contentTimeline:Lcom/google/android/exoplayer2/Timeline;

.field private final deferredMediaPeriodByAdMediaSource:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/exoplayer2/source/MediaSource;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer2/source/DeferredMediaPeriod;",
            ">;>;"
        }
    .end annotation
.end field

.field private final eventHandler:Landroid/os/Handler;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final eventListener:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$EventListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private listener:Lcom/google/android/exoplayer2/source/MediaSource$Listener;

.field private final mainHandler:Landroid/os/Handler;

.field private final period:Lcom/google/android/exoplayer2/Timeline$Period;

.field private player:Lcom/google/android/exoplayer2/ExoPlayer;

.field private playerHandler:Landroid/os/Handler;

.field private volatile released:Z


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/MediaSource;Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$MediaSourceFactory;Lcom/google/android/exoplayer2/source/ads/AdsLoader;Landroid/view/ViewGroup;Landroid/os/Handler;Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$EventListener;)V
    .locals 3
    .param p1, "contentMediaSource"    # Lcom/google/android/exoplayer2/source/MediaSource;
    .param p2, "adMediaSourceFactory"    # Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$MediaSourceFactory;
    .param p3, "adsLoader"    # Lcom/google/android/exoplayer2/source/ads/AdsLoader;
    .param p4, "adUiViewGroup"    # Landroid/view/ViewGroup;
    .param p5, "eventHandler"    # Landroid/os/Handler;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p6, "eventListener"    # Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$EventListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->contentMediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    .line 190
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adMediaSourceFactory:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$MediaSourceFactory;

    .line 191
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adsLoader:Lcom/google/android/exoplayer2/source/ads/AdsLoader;

    .line 192
    iput-object p4, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adUiViewGroup:Landroid/view/ViewGroup;

    .line 193
    iput-object p5, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->eventHandler:Landroid/os/Handler;

    .line 194
    iput-object p6, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->eventListener:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$EventListener;

    .line 195
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->mainHandler:Landroid/os/Handler;

    .line 196
    new-instance v0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$ComponentListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$ComponentListener;-><init>(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$1;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->componentListener:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$ComponentListener;

    .line 197
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->deferredMediaPeriodByAdMediaSource:Ljava/util/Map;

    .line 198
    new-instance v0, Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/Timeline$Period;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    .line 199
    new-array v0, v2, [[Lcom/google/android/exoplayer2/source/MediaSource;

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adGroupMediaSources:[[Lcom/google/android/exoplayer2/source/MediaSource;

    .line 200
    new-array v0, v2, [[J

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adDurationsUs:[[J

    .line 201
    invoke-interface {p2}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$MediaSourceFactory;->getSupportedTypes()[I

    move-result-object v0

    invoke-interface {p3, v0}, Lcom/google/android/exoplayer2/source/ads/AdsLoader;->setSupportedContentTypes([I)V

    .line 202
    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/source/MediaSource;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/source/ads/AdsLoader;Landroid/view/ViewGroup;)V
    .locals 7
    .param p1, "contentMediaSource"    # Lcom/google/android/exoplayer2/source/MediaSource;
    .param p2, "dataSourceFactory"    # Lcom/google/android/exoplayer2/upstream/DataSource$Factory;
    .param p3, "adsLoader"    # Lcom/google/android/exoplayer2/source/ads/AdsLoader;
    .param p4, "adUiViewGroup"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v5, 0x0

    .line 135
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;-><init>(Lcom/google/android/exoplayer2/source/MediaSource;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/source/ads/AdsLoader;Landroid/view/ViewGroup;Landroid/os/Handler;Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$EventListener;)V

    .line 142
    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/source/MediaSource;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/source/ads/AdsLoader;Landroid/view/ViewGroup;Landroid/os/Handler;Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$EventListener;)V
    .locals 7
    .param p1, "contentMediaSource"    # Lcom/google/android/exoplayer2/source/MediaSource;
    .param p2, "dataSourceFactory"    # Lcom/google/android/exoplayer2/upstream/DataSource$Factory;
    .param p3, "adsLoader"    # Lcom/google/android/exoplayer2/source/ads/AdsLoader;
    .param p4, "adUiViewGroup"    # Landroid/view/ViewGroup;
    .param p5, "eventHandler"    # Landroid/os/Handler;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p6, "eventListener"    # Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$EventListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 162
    new-instance v2, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;

    invoke-direct {v2, p2}, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;-><init>(Lcom/google/android/exoplayer2/source/MediaSource;Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$MediaSourceFactory;Lcom/google/android/exoplayer2/source/ads/AdsLoader;Landroid/view/ViewGroup;Landroid/os/Handler;Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$EventListener;)V

    .line 169
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;
    .param p1, "x1"    # Lcom/google/android/exoplayer2/Timeline;
    .param p2, "x2"    # Ljava/lang/Object;

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->onContentSourceInfoRefreshed(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->eventHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;Ljava/io/IOException;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;
    .param p1, "x1"    # Ljava/io/IOException;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->onLoadError(Ljava/io/IOException;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;)Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$ComponentListener;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->componentListener:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$ComponentListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adUiViewGroup:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;)Lcom/google/android/exoplayer2/source/ads/AdsLoader;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adsLoader:Lcom/google/android/exoplayer2/source/ads/AdsLoader;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;Lcom/google/android/exoplayer2/source/MediaSource;IILcom/google/android/exoplayer2/Timeline;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;
    .param p1, "x1"    # Lcom/google/android/exoplayer2/source/MediaSource;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # Lcom/google/android/exoplayer2/Timeline;

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->onAdSourceInfoRefreshed(Lcom/google/android/exoplayer2/source/MediaSource;IILcom/google/android/exoplayer2/Timeline;)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->released:Z

    return v0
.end method

.method static synthetic access$700(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;)Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$EventListener;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->eventListener:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$EventListener;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;
    .param p1, "x1"    # Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->onAdPlaybackState(Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;)V

    return-void
.end method

.method static synthetic access$900(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->playerHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private maybeUpdateSourceInfo()V
    .locals 12

    .prologue
    .line 354
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->contentTimeline:Lcom/google/android/exoplayer2/Timeline;

    if-eqz v1, :cond_0

    .line 355
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    iget v1, v1, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adGroupCount:I

    if-nez v1, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->contentTimeline:Lcom/google/android/exoplayer2/Timeline;

    .line 360
    .local v0, "timeline":Lcom/google/android/exoplayer2/Timeline;
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->listener:Lcom/google/android/exoplayer2/source/MediaSource$Listener;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->contentManifest:Ljava/lang/Object;

    invoke-interface {v1, p0, v0, v2}, Lcom/google/android/exoplayer2/source/MediaSource$Listener;->onSourceInfoRefreshed(Lcom/google/android/exoplayer2/source/MediaSource;Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;)V

    .line 362
    .end local v0    # "timeline":Lcom/google/android/exoplayer2/Timeline;
    :cond_0
    return-void

    .line 355
    :cond_1
    new-instance v1, Lcom/google/android/exoplayer2/source/ads/SinglePeriodAdTimeline;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->contentTimeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    iget-object v3, v3, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adGroupTimesUs:[J

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    iget-object v4, v4, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adCounts:[I

    iget-object v5, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    iget-object v5, v5, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adsLoadedCounts:[I

    iget-object v6, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    iget-object v6, v6, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adsPlayedCounts:[I

    iget-object v7, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adDurationsUs:[[J

    iget-object v8, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    iget-wide v8, v8, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adResumePositionUs:J

    iget-object v10, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    iget-wide v10, v10, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->contentDurationUs:J

    invoke-direct/range {v1 .. v11}, Lcom/google/android/exoplayer2/source/ads/SinglePeriodAdTimeline;-><init>(Lcom/google/android/exoplayer2/Timeline;[J[I[I[I[[JJJ)V

    move-object v0, v1

    goto :goto_0
.end method

.method private onAdPlaybackState(Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;)V
    .locals 3
    .param p1, "adPlaybackState"    # Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    .prologue
    const/4 v2, 0x0

    .line 309
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    if-nez v0, :cond_0

    .line 310
    iget v0, p1, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adGroupCount:I

    new-array v0, v0, [[Lcom/google/android/exoplayer2/source/MediaSource;

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adGroupMediaSources:[[Lcom/google/android/exoplayer2/source/MediaSource;

    .line 311
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adGroupMediaSources:[[Lcom/google/android/exoplayer2/source/MediaSource;

    new-array v1, v2, [Lcom/google/android/exoplayer2/source/MediaSource;

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 312
    iget v0, p1, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adGroupCount:I

    new-array v0, v0, [[J

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adDurationsUs:[[J

    .line 313
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adDurationsUs:[[J

    new-array v1, v2, [J

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 315
    :cond_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    .line 316
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->maybeUpdateSourceInfo()V

    .line 317
    return-void
.end method

.method private onAdSourceInfoRefreshed(Lcom/google/android/exoplayer2/source/MediaSource;IILcom/google/android/exoplayer2/Timeline;)V
    .locals 6
    .param p1, "mediaSource"    # Lcom/google/android/exoplayer2/source/MediaSource;
    .param p2, "adGroupIndex"    # I
    .param p3, "adIndexInAdGroup"    # I
    .param p4, "timeline"    # Lcom/google/android/exoplayer2/Timeline;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 341
    invoke-virtual {p4}, Lcom/google/android/exoplayer2/Timeline;->getPeriodCount()I

    move-result v4

    if-ne v4, v2, :cond_0

    :goto_0
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 342
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adDurationsUs:[[J

    aget-object v2, v2, p2

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {p4, v3, v4}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/Timeline$Period;->getDurationUs()J

    move-result-wide v4

    aput-wide v4, v2, p3

    .line 343
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->deferredMediaPeriodByAdMediaSource:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 344
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->deferredMediaPeriodByAdMediaSource:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 345
    .local v1, "mediaPeriods":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/DeferredMediaPeriod;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 346
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/source/DeferredMediaPeriod;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/source/DeferredMediaPeriod;->createPeriod()V

    .line 345
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0    # "i":I
    .end local v1    # "mediaPeriods":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/DeferredMediaPeriod;>;"
    :cond_0
    move v2, v3

    .line 341
    goto :goto_0

    .line 348
    .restart local v0    # "i":I
    .restart local v1    # "mediaPeriods":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/DeferredMediaPeriod;>;"
    :cond_1
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->deferredMediaPeriodByAdMediaSource:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    .end local v0    # "i":I
    .end local v1    # "mediaPeriods":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/DeferredMediaPeriod;>;"
    :cond_2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->maybeUpdateSourceInfo()V

    .line 351
    return-void
.end method

.method private onContentSourceInfoRefreshed(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;)V
    .locals 0
    .param p1, "timeline"    # Lcom/google/android/exoplayer2/Timeline;
    .param p2, "manifest"    # Ljava/lang/Object;

    .prologue
    .line 334
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->contentTimeline:Lcom/google/android/exoplayer2/Timeline;

    .line 335
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->contentManifest:Ljava/lang/Object;

    .line 336
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->maybeUpdateSourceInfo()V

    .line 337
    return-void
.end method

.method private onLoadError(Ljava/io/IOException;)V
    .locals 2
    .param p1, "error"    # Ljava/io/IOException;

    .prologue
    .line 320
    const-string v0, "AdsMediaSource"

    const-string v1, "Ad load error"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 321
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->eventHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->eventListener:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$EventListener;

    if-eqz v0, :cond_0

    .line 322
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->eventHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$5;

    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$5;-><init>(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;Ljava/io/IOException;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 331
    :cond_0
    return-void
.end method


# virtual methods
.method public createPeriod(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/upstream/Allocator;)Lcom/google/android/exoplayer2/source/MediaPeriod;
    .locals 16
    .param p1, "id"    # Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .param p2, "allocator"    # Lcom/google/android/exoplayer2/upstream/Allocator;

    .prologue
    .line 238
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    iget v12, v12, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adGroupCount:I

    if-lez v12, :cond_3

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 239
    move-object/from16 v0, p1

    iget v3, v0, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    .line 240
    .local v3, "adGroupIndex":I
    move-object/from16 v0, p1

    iget v4, v0, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    .line 241
    .local v4, "adIndexInAdGroup":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adGroupMediaSources:[[Lcom/google/android/exoplayer2/source/MediaSource;

    aget-object v12, v12, v3

    array-length v12, v12

    if-gt v12, v4, :cond_1

    .line 242
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    iget-object v12, v12, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adUris:[[Landroid/net/Uri;

    move-object/from16 v0, p1

    iget v13, v0, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    aget-object v12, v12, v13

    move-object/from16 v0, p1

    iget v13, v0, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    aget-object v6, v12, v13

    .line 243
    .local v6, "adUri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adMediaSourceFactory:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$MediaSourceFactory;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->eventHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->eventListener:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$EventListener;

    .line 244
    invoke-interface {v12, v6, v13, v14}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$MediaSourceFactory;->createMediaSource(Landroid/net/Uri;Landroid/os/Handler;Lcom/google/android/exoplayer2/source/MediaSourceEventListener;)Lcom/google/android/exoplayer2/source/MediaSource;

    move-result-object v5

    .line 245
    .local v5, "adMediaSource":Lcom/google/android/exoplayer2/source/MediaSource;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adGroupMediaSources:[[Lcom/google/android/exoplayer2/source/MediaSource;

    move-object/from16 v0, p1

    iget v13, v0, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    aget-object v12, v12, v13

    array-length v11, v12

    .line 246
    .local v11, "oldAdCount":I
    if-lt v4, v11, :cond_0

    .line 247
    add-int/lit8 v2, v4, 0x1

    .line 248
    .local v2, "adCount":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adGroupMediaSources:[[Lcom/google/android/exoplayer2/source/MediaSource;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adGroupMediaSources:[[Lcom/google/android/exoplayer2/source/MediaSource;

    aget-object v12, v12, v3

    .line 249
    invoke-static {v12, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Lcom/google/android/exoplayer2/source/MediaSource;

    aput-object v12, v13, v3

    .line 250
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adDurationsUs:[[J

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adDurationsUs:[[J

    aget-object v13, v13, v3

    invoke-static {v13, v2}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v13

    aput-object v13, v12, v3

    .line 251
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adDurationsUs:[[J

    aget-object v12, v12, v3

    const-wide v14, -0x7fffffffffffffffL    # -4.9E-324

    invoke-static {v12, v11, v2, v14, v15}, Ljava/util/Arrays;->fill([JIIJ)V

    .line 253
    .end local v2    # "adCount":I
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adGroupMediaSources:[[Lcom/google/android/exoplayer2/source/MediaSource;

    aget-object v12, v12, v3

    aput-object v5, v12, v4

    .line 254
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->deferredMediaPeriodByAdMediaSource:Ljava/util/Map;

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v12, v5, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    const/4 v13, 0x0

    new-instance v14, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$3;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v5, v3, v4}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$3;-><init>(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;Lcom/google/android/exoplayer2/source/MediaSource;II)V

    invoke-interface {v5, v12, v13, v14}, Lcom/google/android/exoplayer2/source/MediaSource;->prepareSource(Lcom/google/android/exoplayer2/ExoPlayer;ZLcom/google/android/exoplayer2/source/MediaSource$Listener;)V

    .line 263
    .end local v5    # "adMediaSource":Lcom/google/android/exoplayer2/source/MediaSource;
    .end local v6    # "adUri":Landroid/net/Uri;
    .end local v11    # "oldAdCount":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adGroupMediaSources:[[Lcom/google/android/exoplayer2/source/MediaSource;

    aget-object v12, v12, v3

    aget-object v10, v12, v4

    .line 264
    .local v10, "mediaSource":Lcom/google/android/exoplayer2/source/MediaSource;
    new-instance v7, Lcom/google/android/exoplayer2/source/DeferredMediaPeriod;

    new-instance v12, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    const/4 v13, 0x0

    invoke-direct {v12, v13}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;-><init>(I)V

    move-object/from16 v0, p2

    invoke-direct {v7, v10, v12, v0}, Lcom/google/android/exoplayer2/source/DeferredMediaPeriod;-><init>(Lcom/google/android/exoplayer2/source/MediaSource;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/upstream/Allocator;)V

    .line 266
    .local v7, "deferredMediaPeriod":Lcom/google/android/exoplayer2/source/DeferredMediaPeriod;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->deferredMediaPeriodByAdMediaSource:Ljava/util/Map;

    invoke-interface {v12, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 267
    .local v9, "mediaPeriods":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/DeferredMediaPeriod;>;"
    if-nez v9, :cond_2

    .line 268
    invoke-virtual {v7}, Lcom/google/android/exoplayer2/source/DeferredMediaPeriod;->createPeriod()V

    .line 278
    .end local v3    # "adGroupIndex":I
    .end local v4    # "adIndexInAdGroup":I
    .end local v7    # "deferredMediaPeriod":Lcom/google/android/exoplayer2/source/DeferredMediaPeriod;
    .end local v9    # "mediaPeriods":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/DeferredMediaPeriod;>;"
    .end local v10    # "mediaSource":Lcom/google/android/exoplayer2/source/MediaSource;
    :goto_0
    return-object v7

    .line 272
    .restart local v3    # "adGroupIndex":I
    .restart local v4    # "adIndexInAdGroup":I
    .restart local v7    # "deferredMediaPeriod":Lcom/google/android/exoplayer2/source/DeferredMediaPeriod;
    .restart local v9    # "mediaPeriods":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/DeferredMediaPeriod;>;"
    .restart local v10    # "mediaSource":Lcom/google/android/exoplayer2/source/MediaSource;
    :cond_2
    invoke-interface {v9, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 276
    .end local v3    # "adGroupIndex":I
    .end local v4    # "adIndexInAdGroup":I
    .end local v7    # "deferredMediaPeriod":Lcom/google/android/exoplayer2/source/DeferredMediaPeriod;
    .end local v9    # "mediaPeriods":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/DeferredMediaPeriod;>;"
    .end local v10    # "mediaSource":Lcom/google/android/exoplayer2/source/MediaSource;
    :cond_3
    new-instance v8, Lcom/google/android/exoplayer2/source/DeferredMediaPeriod;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->contentMediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-direct {v8, v12, v0, v1}, Lcom/google/android/exoplayer2/source/DeferredMediaPeriod;-><init>(Lcom/google/android/exoplayer2/source/MediaSource;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/upstream/Allocator;)V

    .line 277
    .local v8, "mediaPeriod":Lcom/google/android/exoplayer2/source/DeferredMediaPeriod;
    invoke-virtual {v8}, Lcom/google/android/exoplayer2/source/DeferredMediaPeriod;->createPeriod()V

    move-object v7, v8

    .line 278
    goto :goto_0
.end method

.method public maybeThrowSourceInfoRefreshError()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 226
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->contentMediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    invoke-interface {v2}, Lcom/google/android/exoplayer2/source/MediaSource;->maybeThrowSourceInfoRefreshError()V

    .line 227
    iget-object v5, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adGroupMediaSources:[[Lcom/google/android/exoplayer2/source/MediaSource;

    array-length v6, v5

    move v4, v3

    :goto_0
    if-ge v4, v6, :cond_2

    aget-object v1, v5, v4

    .line 228
    .local v1, "mediaSources":[Lcom/google/android/exoplayer2/source/MediaSource;
    array-length v7, v1

    move v2, v3

    :goto_1
    if-ge v2, v7, :cond_1

    aget-object v0, v1, v2

    .line 229
    .local v0, "mediaSource":Lcom/google/android/exoplayer2/source/MediaSource;
    if-eqz v0, :cond_0

    .line 230
    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/MediaSource;->maybeThrowSourceInfoRefreshError()V

    .line 228
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 227
    .end local v0    # "mediaSource":Lcom/google/android/exoplayer2/source/MediaSource;
    :cond_1
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_0

    .line 234
    .end local v1    # "mediaSources":[Lcom/google/android/exoplayer2/source/MediaSource;
    :cond_2
    return-void
.end method

.method public prepareSource(Lcom/google/android/exoplayer2/ExoPlayer;ZLcom/google/android/exoplayer2/source/MediaSource$Listener;)V
    .locals 3
    .param p1, "player"    # Lcom/google/android/exoplayer2/ExoPlayer;
    .param p2, "isTopLevelSource"    # Z
    .param p3, "listener"    # Lcom/google/android/exoplayer2/source/MediaSource$Listener;

    .prologue
    .line 206
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 207
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->listener:Lcom/google/android/exoplayer2/source/MediaSource$Listener;

    .line 208
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    .line 209
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->playerHandler:Landroid/os/Handler;

    .line 210
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->contentMediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    const/4 v1, 0x0

    new-instance v2, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$1;

    invoke-direct {v2, p0}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$1;-><init>(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;)V

    invoke-interface {v0, p1, v1, v2}, Lcom/google/android/exoplayer2/source/MediaSource;->prepareSource(Lcom/google/android/exoplayer2/ExoPlayer;ZLcom/google/android/exoplayer2/source/MediaSource$Listener;)V

    .line 216
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$2;

    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$2;-><init>(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;Lcom/google/android/exoplayer2/ExoPlayer;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 222
    return-void
.end method

.method public releasePeriod(Lcom/google/android/exoplayer2/source/MediaPeriod;)V
    .locals 0
    .param p1, "mediaPeriod"    # Lcom/google/android/exoplayer2/source/MediaPeriod;

    .prologue
    .line 284
    check-cast p1, Lcom/google/android/exoplayer2/source/DeferredMediaPeriod;

    .end local p1    # "mediaPeriod":Lcom/google/android/exoplayer2/source/MediaPeriod;
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/DeferredMediaPeriod;->releasePeriod()V

    .line 285
    return-void
.end method

.method public releaseSource()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 289
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->released:Z

    .line 290
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->contentMediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    invoke-interface {v2}, Lcom/google/android/exoplayer2/source/MediaSource;->releaseSource()V

    .line 291
    iget-object v5, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adGroupMediaSources:[[Lcom/google/android/exoplayer2/source/MediaSource;

    array-length v6, v5

    move v4, v3

    :goto_0
    if-ge v4, v6, :cond_2

    aget-object v1, v5, v4

    .line 292
    .local v1, "mediaSources":[Lcom/google/android/exoplayer2/source/MediaSource;
    array-length v7, v1

    move v2, v3

    :goto_1
    if-ge v2, v7, :cond_1

    aget-object v0, v1, v2

    .line 293
    .local v0, "mediaSource":Lcom/google/android/exoplayer2/source/MediaSource;
    if-eqz v0, :cond_0

    .line 294
    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/MediaSource;->releaseSource()V

    .line 292
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 291
    .end local v0    # "mediaSource":Lcom/google/android/exoplayer2/source/MediaSource;
    :cond_1
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_0

    .line 298
    .end local v1    # "mediaSources":[Lcom/google/android/exoplayer2/source/MediaSource;
    :cond_2
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->mainHandler:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$4;

    invoke-direct {v3, p0}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$4;-><init>(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 304
    return-void
.end method
