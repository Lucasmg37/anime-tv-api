.class public final Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;
.super Ljava/lang/Object;
.source "FlvExtractor.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/Extractor;


# static fields
.field public static final FACTORY:Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;

.field private static final FLV_HEADER_SIZE:I = 0x9

.field private static final FLV_TAG:I

.field private static final FLV_TAG_HEADER_SIZE:I = 0xb

.field private static final STATE_READING_FLV_HEADER:I = 0x1

.field private static final STATE_READING_TAG_DATA:I = 0x4

.field private static final STATE_READING_TAG_HEADER:I = 0x3

.field private static final STATE_SKIPPING_TO_TAG_HEADER:I = 0x2

.field private static final TAG_TYPE_AUDIO:I = 0x8

.field private static final TAG_TYPE_SCRIPT_DATA:I = 0x12

.field private static final TAG_TYPE_VIDEO:I = 0x9


# instance fields
.field private audioReader:Lcom/google/android/exoplayer2/extractor/flv/AudioTagPayloadReader;

.field private bytesToNextTagHeader:I

.field private extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

.field private final headerBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field private mediaTagTimestampOffsetUs:J

.field private final metadataReader:Lcom/google/android/exoplayer2/extractor/flv/ScriptTagPayloadReader;

.field private outputSeekMap:Z

.field private final scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field private state:I

.field private final tagData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field private tagDataSize:I

.field private final tagHeaderBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field private tagTimestampUs:J

.field private tagType:I

.field private videoReader:Lcom/google/android/exoplayer2/extractor/flv/VideoTagPayloadReader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor$1;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor$1;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->FACTORY:Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;

    .line 71
    const-string v0, "FLV"

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->FLV_TAG:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 92
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->headerBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 93
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->tagHeaderBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 94
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->tagData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 95
    new-instance v0, Lcom/google/android/exoplayer2/extractor/flv/ScriptTagPayloadReader;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/extractor/flv/ScriptTagPayloadReader;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->metadataReader:Lcom/google/android/exoplayer2/extractor/flv/ScriptTagPayloadReader;

    .line 96
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->state:I

    .line 97
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->mediaTagTimestampOffsetUs:J

    .line 98
    return-void
.end method

.method private ensureReadyForMediaOutput()V
    .locals 4

    .prologue
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 295
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->outputSeekMap:Z

    if-nez v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    new-instance v1, Lcom/google/android/exoplayer2/extractor/SeekMap$Unseekable;

    invoke-direct {v1, v2, v3}, Lcom/google/android/exoplayer2/extractor/SeekMap$Unseekable;-><init>(J)V

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->seekMap(Lcom/google/android/exoplayer2/extractor/SeekMap;)V

    .line 297
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->outputSeekMap:Z

    .line 299
    :cond_0
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->mediaTagTimestampOffsetUs:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 300
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->metadataReader:Lcom/google/android/exoplayer2/extractor/flv/ScriptTagPayloadReader;

    .line 301
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/flv/ScriptTagPayloadReader;->getDurationUs()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->tagTimestampUs:J

    neg-long v0, v0

    :goto_0
    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->mediaTagTimestampOffsetUs:J

    .line 303
    :cond_1
    return-void

    .line 301
    :cond_2
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method private prepareTagData(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .locals 4
    .param p1, "input"    # Lcom/google/android/exoplayer2/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 284
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->tagDataSize:I

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->tagData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->capacity()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 285
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->tagData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->tagData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->capacity()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->tagDataSize:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-array v1, v1, [B

    invoke-virtual {v0, v1, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset([BI)V

    .line 289
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->tagData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->tagDataSize:I

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setLimit(I)V

    .line 290
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->tagData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v0, v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->tagDataSize:I

    invoke-interface {p1, v0, v3, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    .line 291
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->tagData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    return-object v0

    .line 287
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->tagData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    goto :goto_0
.end method

.method private readFlvHeader(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z
    .locals 9
    .param p1, "input"    # Lcom/google/android/exoplayer2/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x9

    const/4 v7, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 187
    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->headerBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v5, v5, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-interface {p1, v5, v3, v8, v4}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BIIZ)Z

    move-result v5

    if-nez v5, :cond_0

    .line 210
    :goto_0
    return v3

    .line 192
    :cond_0
    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->headerBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v5, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 193
    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->headerBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 194
    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->headerBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    .line 195
    .local v0, "flags":I
    and-int/lit8 v5, v0, 0x4

    if-eqz v5, :cond_3

    move v1, v4

    .line 196
    .local v1, "hasAudio":Z
    :goto_1
    and-int/lit8 v5, v0, 0x1

    if-eqz v5, :cond_4

    move v2, v4

    .line 197
    .local v2, "hasVideo":Z
    :goto_2
    if-eqz v1, :cond_1

    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->audioReader:Lcom/google/android/exoplayer2/extractor/flv/AudioTagPayloadReader;

    if-nez v3, :cond_1

    .line 198
    new-instance v3, Lcom/google/android/exoplayer2/extractor/flv/AudioTagPayloadReader;

    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    const/16 v6, 0x8

    .line 199
    invoke-interface {v5, v6, v4}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->track(II)Lcom/google/android/exoplayer2/extractor/TrackOutput;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/google/android/exoplayer2/extractor/flv/AudioTagPayloadReader;-><init>(Lcom/google/android/exoplayer2/extractor/TrackOutput;)V

    iput-object v3, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->audioReader:Lcom/google/android/exoplayer2/extractor/flv/AudioTagPayloadReader;

    .line 201
    :cond_1
    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->videoReader:Lcom/google/android/exoplayer2/extractor/flv/VideoTagPayloadReader;

    if-nez v3, :cond_2

    .line 202
    new-instance v3, Lcom/google/android/exoplayer2/extractor/flv/VideoTagPayloadReader;

    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    .line 203
    invoke-interface {v5, v8, v7}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->track(II)Lcom/google/android/exoplayer2/extractor/TrackOutput;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/google/android/exoplayer2/extractor/flv/VideoTagPayloadReader;-><init>(Lcom/google/android/exoplayer2/extractor/TrackOutput;)V

    iput-object v3, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->videoReader:Lcom/google/android/exoplayer2/extractor/flv/VideoTagPayloadReader;

    .line 205
    :cond_2
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    invoke-interface {v3}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->endTracks()V

    .line 208
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->headerBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v3

    add-int/lit8 v3, v3, -0x9

    add-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->bytesToNextTagHeader:I

    .line 209
    iput v7, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->state:I

    move v3, v4

    .line 210
    goto :goto_0

    .end local v1    # "hasAudio":Z
    .end local v2    # "hasVideo":Z
    :cond_3
    move v1, v3

    .line 195
    goto :goto_1

    .restart local v1    # "hasAudio":Z
    :cond_4
    move v2, v3

    .line 196
    goto :goto_2
.end method

.method private readTagData(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z
    .locals 10
    .param p1, "input"    # Lcom/google/android/exoplayer2/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 259
    const/4 v2, 0x1

    .line 260
    .local v2, "wasConsumed":Z
    iget v3, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->tagType:I

    const/16 v4, 0x8

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->audioReader:Lcom/google/android/exoplayer2/extractor/flv/AudioTagPayloadReader;

    if-eqz v3, :cond_1

    .line 261
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->ensureReadyForMediaOutput()V

    .line 262
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->audioReader:Lcom/google/android/exoplayer2/extractor/flv/AudioTagPayloadReader;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->prepareTagData(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Lcom/google/android/exoplayer2/util/ParsableByteArray;

    move-result-object v4

    iget-wide v6, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->mediaTagTimestampOffsetUs:J

    iget-wide v8, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->tagTimestampUs:J

    add-long/2addr v6, v8

    invoke-virtual {v3, v4, v6, v7}, Lcom/google/android/exoplayer2/extractor/flv/AudioTagPayloadReader;->consume(Lcom/google/android/exoplayer2/util/ParsableByteArray;J)V

    .line 277
    :cond_0
    :goto_0
    const/4 v3, 0x4

    iput v3, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->bytesToNextTagHeader:I

    .line 278
    const/4 v3, 0x2

    iput v3, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->state:I

    .line 279
    return v2

    .line 263
    :cond_1
    iget v3, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->tagType:I

    const/16 v4, 0x9

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->videoReader:Lcom/google/android/exoplayer2/extractor/flv/VideoTagPayloadReader;

    if-eqz v3, :cond_2

    .line 264
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->ensureReadyForMediaOutput()V

    .line 265
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->videoReader:Lcom/google/android/exoplayer2/extractor/flv/VideoTagPayloadReader;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->prepareTagData(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Lcom/google/android/exoplayer2/util/ParsableByteArray;

    move-result-object v4

    iget-wide v6, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->mediaTagTimestampOffsetUs:J

    iget-wide v8, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->tagTimestampUs:J

    add-long/2addr v6, v8

    invoke-virtual {v3, v4, v6, v7}, Lcom/google/android/exoplayer2/extractor/flv/VideoTagPayloadReader;->consume(Lcom/google/android/exoplayer2/util/ParsableByteArray;J)V

    goto :goto_0

    .line 266
    :cond_2
    iget v3, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->tagType:I

    const/16 v4, 0x12

    if-ne v3, v4, :cond_3

    iget-boolean v3, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->outputSeekMap:Z

    if-nez v3, :cond_3

    .line 267
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->metadataReader:Lcom/google/android/exoplayer2/extractor/flv/ScriptTagPayloadReader;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->prepareTagData(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Lcom/google/android/exoplayer2/util/ParsableByteArray;

    move-result-object v4

    iget-wide v6, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->tagTimestampUs:J

    invoke-virtual {v3, v4, v6, v7}, Lcom/google/android/exoplayer2/extractor/flv/ScriptTagPayloadReader;->consume(Lcom/google/android/exoplayer2/util/ParsableByteArray;J)V

    .line 268
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->metadataReader:Lcom/google/android/exoplayer2/extractor/flv/ScriptTagPayloadReader;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/extractor/flv/ScriptTagPayloadReader;->getDurationUs()J

    move-result-wide v0

    .line 269
    .local v0, "durationUs":J
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, v0, v4

    if-eqz v3, :cond_0

    .line 270
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    new-instance v4, Lcom/google/android/exoplayer2/extractor/SeekMap$Unseekable;

    invoke-direct {v4, v0, v1}, Lcom/google/android/exoplayer2/extractor/SeekMap$Unseekable;-><init>(J)V

    invoke-interface {v3, v4}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->seekMap(Lcom/google/android/exoplayer2/extractor/SeekMap;)V

    .line 271
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->outputSeekMap:Z

    goto :goto_0

    .line 274
    .end local v0    # "durationUs":J
    :cond_3
    iget v3, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->tagDataSize:I

    invoke-interface {p1, v3}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    .line 275
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private readTagHeader(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z
    .locals 6
    .param p1, "input"    # Lcom/google/android/exoplayer2/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 235
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->tagHeaderBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v2, v2, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    const/16 v3, 0xb

    invoke-interface {p1, v2, v0, v3, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BIIZ)Z

    move-result v2

    if-nez v2, :cond_0

    .line 247
    :goto_0
    return v0

    .line 240
    :cond_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->tagHeaderBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v2, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 241
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->tagHeaderBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->tagType:I

    .line 242
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->tagHeaderBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt24()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->tagDataSize:I

    .line 243
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->tagHeaderBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt24()I

    move-result v0

    int-to-long v2, v0

    iput-wide v2, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->tagTimestampUs:J

    .line 244
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->tagHeaderBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    shl-int/lit8 v0, v0, 0x18

    int-to-long v2, v0

    iget-wide v4, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->tagTimestampUs:J

    or-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->tagTimestampUs:J

    .line 245
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->tagHeaderBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 246
    const/4 v0, 0x4

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->state:I

    move v0, v1

    .line 247
    goto :goto_0
.end method

.method private skipToTagHeader(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)V
    .locals 1
    .param p1, "input"    # Lcom/google/android/exoplayer2/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 221
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->bytesToNextTagHeader:I

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    .line 222
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->bytesToNextTagHeader:I

    .line 223
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->state:I

    .line 224
    return-void
.end method


# virtual methods
.method public init(Lcom/google/android/exoplayer2/extractor/ExtractorOutput;)V
    .locals 0
    .param p1, "output"    # Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    .line 134
    return-void
.end method

.method public read(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/PositionHolder;)I
    .locals 2
    .param p1, "input"    # Lcom/google/android/exoplayer2/extractor/ExtractorInput;
    .param p2, "seekPosition"    # Lcom/google/android/exoplayer2/extractor/PositionHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v0, -0x1

    .line 152
    :cond_0
    :goto_0
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->state:I

    packed-switch v1, :pswitch_data_0

    .line 173
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 154
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->readFlvHeader(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 168
    :goto_1
    return v0

    .line 159
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->skipToTagHeader(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)V

    goto :goto_0

    .line 162
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->readTagHeader(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 167
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->readTagData(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 168
    const/4 v0, 0x0

    goto :goto_1

    .line 152
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public release()V
    .locals 0

    .prologue
    .line 146
    return-void
.end method

.method public seek(JJ)V
    .locals 2
    .param p1, "position"    # J
    .param p3, "timeUs"    # J

    .prologue
    .line 138
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->state:I

    .line 139
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->mediaTagTimestampOffsetUs:J

    .line 140
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->bytesToNextTagHeader:I

    .line 141
    return-void
.end method

.method public sniff(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z
    .locals 5
    .param p1, "input"    # Lcom/google/android/exoplayer2/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x4

    const/4 v1, 0x0

    .line 103
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v2, v2, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    const/4 v3, 0x3

    invoke-interface {p1, v2, v1, v3}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    .line 104
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 105
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt24()I

    move-result v2

    sget v3, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->FLV_TAG:I

    if-eq v2, v3, :cond_1

    .line 128
    :cond_0
    :goto_0
    return v1

    .line 110
    :cond_1
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v2, v2, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    const/4 v3, 0x2

    invoke-interface {p1, v2, v1, v3}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    .line 111
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 112
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v2

    and-int/lit16 v2, v2, 0xfa

    if-nez v2, :cond_0

    .line 117
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v2, v2, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-interface {p1, v2, v1, v4}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    .line 118
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 119
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 121
    .local v0, "dataOffset":I
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    .line 122
    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->advancePeekPosition(I)V

    .line 125
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v2, v2, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-interface {p1, v2, v1, v4}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    .line 126
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 128
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method
