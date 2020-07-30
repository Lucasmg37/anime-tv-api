.class final Lcom/google/android/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;
.super Ljava/lang/Object;
.source "ClippingMediaPeriod.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/SampleStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ClippingSampleStream"
.end annotation


# instance fields
.field private final endUs:J

.field private pendingDiscontinuity:Z

.field private sentEos:Z

.field private final startUs:J

.field private final stream:Lcom/google/android/exoplayer2/source/SampleStream;

.field final synthetic this$0:Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;Lcom/google/android/exoplayer2/source/SampleStream;JJZ)V
    .locals 1
    .param p2, "stream"    # Lcom/google/android/exoplayer2/source/SampleStream;
    .param p3, "startUs"    # J
    .param p5, "endUs"    # J
    .param p7, "pendingDiscontinuity"    # Z

    .prologue
    .line 235
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;->this$0:Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 236
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;->stream:Lcom/google/android/exoplayer2/source/SampleStream;

    .line 237
    iput-wide p3, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;->startUs:J

    .line 238
    iput-wide p5, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;->endUs:J

    .line 239
    iput-boolean p7, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;->pendingDiscontinuity:Z

    .line 240
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;)Lcom/google/android/exoplayer2/source/SampleStream;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;

    .prologue
    .line 225
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;->stream:Lcom/google/android/exoplayer2/source/SampleStream;

    return-object v0
.end method


# virtual methods
.method public clearPendingDiscontinuity()V
    .locals 1

    .prologue
    .line 243
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;->pendingDiscontinuity:Z

    .line 244
    return-void
.end method

.method public clearSentEos()V
    .locals 1

    .prologue
    .line 247
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;->sentEos:Z

    .line 248
    return-void
.end method

.method public isReady()Z
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;->stream:Lcom/google/android/exoplayer2/source/SampleStream;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/SampleStream;->isReady()Z

    move-result v0

    return v0
.end method

.method public maybeThrowError()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 257
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;->stream:Lcom/google/android/exoplayer2/source/SampleStream;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/SampleStream;->maybeThrowError()V

    .line 258
    return-void
.end method

.method public readData(Lcom/google/android/exoplayer2/FormatHolder;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;Z)I
    .locals 8
    .param p1, "formatHolder"    # Lcom/google/android/exoplayer2/FormatHolder;
    .param p2, "buffer"    # Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;
    .param p3, "requireFormat"    # Z

    .prologue
    .line 263
    iget-boolean v4, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;->pendingDiscontinuity:Z

    if-eqz v4, :cond_1

    .line 264
    const/4 v3, -0x3

    .line 291
    :cond_0
    :goto_0
    return v3

    .line 266
    :cond_1
    iget-boolean v4, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;->sentEos:Z

    if-eqz v4, :cond_2

    .line 267
    const/4 v4, 0x4

    invoke-virtual {p2, v4}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->setFlags(I)V

    .line 268
    const/4 v3, -0x4

    goto :goto_0

    .line 270
    :cond_2
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;->stream:Lcom/google/android/exoplayer2/source/SampleStream;

    invoke-interface {v4, p1, p2, p3}, Lcom/google/android/exoplayer2/source/SampleStream;->readData(Lcom/google/android/exoplayer2/FormatHolder;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;Z)I

    move-result v3

    .line 271
    .local v3, "result":I
    const/4 v4, -0x5

    if-ne v3, v4, :cond_5

    .line 273
    iget-object v2, p1, Lcom/google/android/exoplayer2/FormatHolder;->format:Lcom/google/android/exoplayer2/Format;

    .line 274
    .local v2, "format":Lcom/google/android/exoplayer2/Format;
    iget-wide v4, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;->startUs:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_3

    const/4 v0, 0x0

    .line 275
    .local v0, "encoderDelay":I
    :goto_1
    iget-wide v4, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;->endUs:J

    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v4, v4, v6

    if-eqz v4, :cond_4

    const/4 v1, 0x0

    .line 276
    .local v1, "encoderPadding":I
    :goto_2
    invoke-virtual {v2, v0, v1}, Lcom/google/android/exoplayer2/Format;->copyWithGaplessInfo(II)Lcom/google/android/exoplayer2/Format;

    move-result-object v4

    iput-object v4, p1, Lcom/google/android/exoplayer2/FormatHolder;->format:Lcom/google/android/exoplayer2/Format;

    .line 277
    const/4 v3, -0x5

    goto :goto_0

    .line 274
    .end local v0    # "encoderDelay":I
    .end local v1    # "encoderPadding":I
    :cond_3
    iget v0, v2, Lcom/google/android/exoplayer2/Format;->encoderDelay:I

    goto :goto_1

    .line 275
    .restart local v0    # "encoderDelay":I
    :cond_4
    iget v1, v2, Lcom/google/android/exoplayer2/Format;->encoderPadding:I

    goto :goto_2

    .line 279
    .end local v0    # "encoderDelay":I
    .end local v2    # "format":Lcom/google/android/exoplayer2/Format;
    :cond_5
    iget-wide v4, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;->endUs:J

    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v4, v4, v6

    if-eqz v4, :cond_8

    const/4 v4, -0x4

    if-ne v3, v4, :cond_6

    iget-wide v4, p2, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->timeUs:J

    iget-wide v6, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;->endUs:J

    cmp-long v4, v4, v6

    if-gez v4, :cond_7

    :cond_6
    const/4 v4, -0x3

    if-ne v3, v4, :cond_8

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;->this$0:Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;

    .line 282
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->getBufferedPositionUs()J

    move-result-wide v4

    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v4, v4, v6

    if-nez v4, :cond_8

    .line 283
    :cond_7
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->clear()V

    .line 284
    const/4 v4, 0x4

    invoke-virtual {p2, v4}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->setFlags(I)V

    .line 285
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;->sentEos:Z

    .line 286
    const/4 v3, -0x4

    goto :goto_0

    .line 288
    :cond_8
    const/4 v4, -0x4

    if-ne v3, v4, :cond_0

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->isEndOfStream()Z

    move-result v4

    if-nez v4, :cond_0

    .line 289
    iget-wide v4, p2, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->timeUs:J

    iget-wide v6, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;->startUs:J

    sub-long/2addr v4, v6

    iput-wide v4, p2, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->timeUs:J

    goto :goto_0
.end method

.method public skipData(J)I
    .locals 5
    .param p1, "positionUs"    # J

    .prologue
    .line 296
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;->stream:Lcom/google/android/exoplayer2/source/SampleStream;

    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;->startUs:J

    add-long/2addr v2, p1

    invoke-interface {v0, v2, v3}, Lcom/google/android/exoplayer2/source/SampleStream;->skipData(J)I

    move-result v0

    return v0
.end method
