.class Lcom/google/android/exoplayer2/extractor/ogg/FlacReader$FlacOggSeeker;
.super Ljava/lang/Object;
.source "FlacReader.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/ogg/OggSeeker;
.implements Lcom/google/android/exoplayer2/extractor/SeekMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/extractor/ogg/FlacReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FlacOggSeeker"
.end annotation


# static fields
.field private static final METADATA_LENGTH_OFFSET:I = 0x1

.field private static final SEEK_POINT_SIZE:I = 0x12


# instance fields
.field private firstFrameOffset:J

.field private pendingSeekGranule:J

.field private seekPointGranules:[J

.field private seekPointOffsets:[J

.field final synthetic this$0:Lcom/google/android/exoplayer2/extractor/ogg/FlacReader;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/extractor/ogg/FlacReader;)V
    .locals 2

    .prologue
    const-wide/16 v0, -0x1

    .line 136
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ogg/FlacReader$FlacOggSeeker;->this$0:Lcom/google/android/exoplayer2/extractor/ogg/FlacReader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/FlacReader$FlacOggSeeker;->firstFrameOffset:J

    .line 138
    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/FlacReader$FlacOggSeeker;->pendingSeekGranule:J

    .line 139
    return-void
.end method


# virtual methods
.method public createSeekMap()Lcom/google/android/exoplayer2/extractor/SeekMap;
    .locals 0

    .prologue
    .line 186
    return-object p0
.end method

.method public getDurationUs()J
    .locals 2

    .prologue
    .line 203
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/FlacReader$FlacOggSeeker;->this$0:Lcom/google/android/exoplayer2/extractor/ogg/FlacReader;

    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/ogg/FlacReader;->access$000(Lcom/google/android/exoplayer2/extractor/ogg/FlacReader;)Lcom/google/android/exoplayer2/util/FlacStreamInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/FlacStreamInfo;->durationUs()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPosition(J)J
    .locals 9
    .param p1, "timeUs"    # J

    .prologue
    const/4 v4, 0x1

    .line 196
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/ogg/FlacReader$FlacOggSeeker;->this$0:Lcom/google/android/exoplayer2/extractor/ogg/FlacReader;

    invoke-virtual {v3, p1, p2}, Lcom/google/android/exoplayer2/extractor/ogg/FlacReader;->convertTimeToGranule(J)J

    move-result-wide v0

    .line 197
    .local v0, "granule":J
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/ogg/FlacReader$FlacOggSeeker;->seekPointGranules:[J

    invoke-static {v3, v0, v1, v4, v4}, Lcom/google/android/exoplayer2/util/Util;->binarySearchFloor([JJZZ)I

    move-result v2

    .line 198
    .local v2, "index":I
    iget-wide v4, p0, Lcom/google/android/exoplayer2/extractor/ogg/FlacReader$FlacOggSeeker;->firstFrameOffset:J

    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/ogg/FlacReader$FlacOggSeeker;->seekPointOffsets:[J

    aget-wide v6, v3, v2

    add-long/2addr v4, v6

    return-wide v4
.end method

.method public isSeekable()Z
    .locals 1

    .prologue
    .line 191
    const/4 v0, 0x1

    return v0
.end method

.method public parseSeekTable(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V
    .locals 6
    .param p1, "data"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .prologue
    .line 154
    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 155
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt24()I

    move-result v1

    .line 156
    .local v1, "length":I
    div-int/lit8 v2, v1, 0x12

    .line 157
    .local v2, "numberOfSeekPoints":I
    new-array v3, v2, [J

    iput-object v3, p0, Lcom/google/android/exoplayer2/extractor/ogg/FlacReader$FlacOggSeeker;->seekPointGranules:[J

    .line 158
    new-array v3, v2, [J

    iput-object v3, p0, Lcom/google/android/exoplayer2/extractor/ogg/FlacReader$FlacOggSeeker;->seekPointOffsets:[J

    .line 159
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 160
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/ogg/FlacReader$FlacOggSeeker;->seekPointGranules:[J

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLong()J

    move-result-wide v4

    aput-wide v4, v3, v0

    .line 161
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/ogg/FlacReader$FlacOggSeeker;->seekPointOffsets:[J

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLong()J

    move-result-wide v4

    aput-wide v4, v3, v0

    .line 162
    const/4 v3, 0x2

    invoke-virtual {p1, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 159
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 164
    :cond_0
    return-void
.end method

.method public read(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)J
    .locals 8
    .param p1, "input"    # Lcom/google/android/exoplayer2/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const-wide/16 v2, -0x1

    .line 168
    iget-wide v4, p0, Lcom/google/android/exoplayer2/extractor/ogg/FlacReader$FlacOggSeeker;->pendingSeekGranule:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-ltz v4, :cond_0

    .line 169
    iget-wide v4, p0, Lcom/google/android/exoplayer2/extractor/ogg/FlacReader$FlacOggSeeker;->pendingSeekGranule:J

    const-wide/16 v6, 0x2

    add-long/2addr v4, v6

    neg-long v0, v4

    .line 170
    .local v0, "result":J
    iput-wide v2, p0, Lcom/google/android/exoplayer2/extractor/ogg/FlacReader$FlacOggSeeker;->pendingSeekGranule:J

    .line 173
    .end local v0    # "result":J
    :goto_0
    return-wide v0

    :cond_0
    move-wide v0, v2

    goto :goto_0
.end method

.method public setFirstFrameOffset(J)V
    .locals 1
    .param p1, "firstFrameOffset"    # J

    .prologue
    .line 142
    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/ogg/FlacReader$FlacOggSeeker;->firstFrameOffset:J

    .line 143
    return-void
.end method

.method public startSeek(J)J
    .locals 7
    .param p1, "timeUs"    # J

    .prologue
    const/4 v4, 0x1

    .line 178
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/ogg/FlacReader$FlacOggSeeker;->this$0:Lcom/google/android/exoplayer2/extractor/ogg/FlacReader;

    invoke-virtual {v3, p1, p2}, Lcom/google/android/exoplayer2/extractor/ogg/FlacReader;->convertTimeToGranule(J)J

    move-result-wide v0

    .line 179
    .local v0, "granule":J
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/ogg/FlacReader$FlacOggSeeker;->seekPointGranules:[J

    invoke-static {v3, v0, v1, v4, v4}, Lcom/google/android/exoplayer2/util/Util;->binarySearchFloor([JJZZ)I

    move-result v2

    .line 180
    .local v2, "index":I
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/ogg/FlacReader$FlacOggSeeker;->seekPointGranules:[J

    aget-wide v4, v3, v2

    iput-wide v4, p0, Lcom/google/android/exoplayer2/extractor/ogg/FlacReader$FlacOggSeeker;->pendingSeekGranule:J

    .line 181
    return-wide v0
.end method
