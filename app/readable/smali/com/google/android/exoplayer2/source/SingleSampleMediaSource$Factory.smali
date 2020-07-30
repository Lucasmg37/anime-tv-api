.class public final Lcom/google/android/exoplayer2/source/SingleSampleMediaSource$Factory;
.super Ljava/lang/Object;
.source "SingleSampleMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/SingleSampleMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# instance fields
.field private final dataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

.field private isCreateCalled:Z

.field private minLoadableRetryCount:I

.field private treatLoadErrorsAsEndOfStream:Z


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V
    .locals 1
    .param p1, "dataSourceFactory"    # Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource$Factory;->dataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    .line 71
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource$Factory;->minLoadableRetryCount:I

    .line 72
    return-void
.end method


# virtual methods
.method public createMediaSource(Landroid/net/Uri;Lcom/google/android/exoplayer2/Format;J)Lcom/google/android/exoplayer2/source/SingleSampleMediaSource;
    .locals 9
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "format"    # Lcom/google/android/exoplayer2/Format;
    .param p3, "durationUs"    # J

    .prologue
    const/4 v6, 0x0

    .line 114
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v7, v6

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource$Factory;->createMediaSource(Landroid/net/Uri;Lcom/google/android/exoplayer2/Format;JLandroid/os/Handler;Lcom/google/android/exoplayer2/source/MediaSourceEventListener;)Lcom/google/android/exoplayer2/source/SingleSampleMediaSource;

    move-result-object v0

    return-object v0
.end method

.method public createMediaSource(Landroid/net/Uri;Lcom/google/android/exoplayer2/Format;JLandroid/os/Handler;Lcom/google/android/exoplayer2/source/MediaSourceEventListener;)Lcom/google/android/exoplayer2/source/SingleSampleMediaSource;
    .locals 11
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "format"    # Lcom/google/android/exoplayer2/Format;
    .param p3, "durationUs"    # J
    .param p5, "eventHandler"    # Landroid/os/Handler;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p6, "eventListener"    # Lcom/google/android/exoplayer2/source/MediaSourceEventListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 133
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource$Factory;->isCreateCalled:Z

    .line 134
    new-instance v0, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource$Factory;->dataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    iget v6, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource$Factory;->minLoadableRetryCount:I

    iget-boolean v9, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource$Factory;->treatLoadErrorsAsEndOfStream:Z

    const/4 v10, 0x0

    move-object v1, p1

    move-object v3, p2

    move-wide v4, p3

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v0 .. v10}, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource;-><init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/Format;JILandroid/os/Handler;Lcom/google/android/exoplayer2/source/MediaSourceEventListener;ZLcom/google/android/exoplayer2/source/SingleSampleMediaSource$1;)V

    return-object v0
.end method

.method public setMinLoadableRetryCount(I)Lcom/google/android/exoplayer2/source/SingleSampleMediaSource$Factory;
    .locals 1
    .param p1, "minLoadableRetryCount"    # I

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource$Factory;->isCreateCalled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 84
    iput p1, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource$Factory;->minLoadableRetryCount:I

    .line 85
    return-object p0

    .line 83
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTreatLoadErrorsAsEndOfStream(Z)Lcom/google/android/exoplayer2/source/SingleSampleMediaSource$Factory;
    .locals 1
    .param p1, "treatLoadErrorsAsEndOfStream"    # Z

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource$Factory;->isCreateCalled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 100
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource$Factory;->treatLoadErrorsAsEndOfStream:Z

    .line 101
    return-object p0

    .line 99
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
