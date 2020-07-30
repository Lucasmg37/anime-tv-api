.class final Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;
.super Ljava/lang/Object;
.source "SingleSampleMediaPeriod.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/Loader$Loadable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SourceLoadable"
.end annotation


# instance fields
.field private final dataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

.field public final dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

.field private sampleData:[B

.field private sampleSize:I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/DataSpec;Lcom/google/android/exoplayer2/upstream/DataSource;)V
    .locals 0
    .param p1, "dataSpec"    # Lcom/google/android/exoplayer2/upstream/DataSpec;
    .param p2, "dataSource"    # Lcom/google/android/exoplayer2/upstream/DataSource;

    .prologue
    .line 297
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 298
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    .line 299
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;->dataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    .line 300
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;

    .prologue
    .line 288
    iget v0, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;->sampleSize:I

    return v0
.end method

.method static synthetic access$200(Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;)[B
    .locals 1
    .param p0, "x0"    # Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;

    .prologue
    .line 288
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;->sampleData:[B

    return-object v0
.end method


# virtual methods
.method public cancelLoad()V
    .locals 0

    .prologue
    .line 305
    return-void
.end method

.method public isLoadCanceled()Z
    .locals 1

    .prologue
    .line 309
    const/4 v0, 0x0

    return v0
.end method

.method public load()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 315
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;->sampleSize:I

    .line 318
    :try_start_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;->dataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/upstream/DataSource;->open(Lcom/google/android/exoplayer2/upstream/DataSpec;)J

    .line 320
    const/4 v0, 0x0

    .line 321
    .local v0, "result":I
    :goto_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 322
    iget v1, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;->sampleSize:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;->sampleSize:I

    .line 323
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;->sampleData:[B

    if-nez v1, :cond_1

    .line 324
    const/16 v1, 0x400

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;->sampleData:[B

    .line 328
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;->dataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;->sampleData:[B

    iget v3, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;->sampleSize:I

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;->sampleData:[B

    array-length v4, v4

    iget v5, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;->sampleSize:I

    sub-int/2addr v4, v5

    invoke-interface {v1, v2, v3, v4}, Lcom/google/android/exoplayer2/upstream/DataSource;->read([BII)I

    move-result v0

    goto :goto_0

    .line 325
    :cond_1
    iget v1, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;->sampleSize:I

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;->sampleData:[B

    array-length v2, v2

    if-ne v1, v2, :cond_0

    .line 326
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;->sampleData:[B

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;->sampleData:[B

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;->sampleData:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 331
    .end local v0    # "result":I
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;->dataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Util;->closeQuietly(Lcom/google/android/exoplayer2/upstream/DataSource;)V

    throw v1

    .restart local v0    # "result":I
    :cond_2
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;->dataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Util;->closeQuietly(Lcom/google/android/exoplayer2/upstream/DataSource;)V

    .line 333
    return-void
.end method
