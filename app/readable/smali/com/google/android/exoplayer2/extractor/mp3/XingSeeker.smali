.class final Lcom/google/android/exoplayer2/extractor/mp3/XingSeeker;
.super Ljava/lang/Object;
.source "XingSeeker.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor$Seeker;


# static fields
.field private static final TAG:Ljava/lang/String; = "XingSeeker"


# instance fields
.field private final dataSize:J

.field private final dataStartPosition:J

.field private final durationUs:J

.field private final tableOfContents:[J

.field private final xingFrameSize:I


# direct methods
.method private constructor <init>(JIJ)V
    .locals 9
    .param p1, "dataStartPosition"    # J
    .param p3, "xingFrameSize"    # I
    .param p4, "durationUs"    # J

    .prologue
    .line 92
    const-wide/16 v6, -0x1

    const/4 v8, 0x0

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    move-wide v4, p4

    invoke-direct/range {v0 .. v8}, Lcom/google/android/exoplayer2/extractor/mp3/XingSeeker;-><init>(JIJJ[J)V

    .line 93
    return-void
.end method

.method private constructor <init>(JIJJ[J)V
    .locals 0
    .param p1, "dataStartPosition"    # J
    .param p3, "xingFrameSize"    # I
    .param p4, "durationUs"    # J
    .param p6, "dataSize"    # J
    .param p8, "tableOfContents"    # [J

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/mp3/XingSeeker;->dataStartPosition:J

    .line 98
    iput p3, p0, Lcom/google/android/exoplayer2/extractor/mp3/XingSeeker;->xingFrameSize:I

    .line 99
    iput-wide p4, p0, Lcom/google/android/exoplayer2/extractor/mp3/XingSeeker;->durationUs:J

    .line 100
    iput-wide p6, p0, Lcom/google/android/exoplayer2/extractor/mp3/XingSeeker;->dataSize:J

    .line 101
    iput-object p8, p0, Lcom/google/android/exoplayer2/extractor/mp3/XingSeeker;->tableOfContents:[J

    .line 102
    return-void
.end method

.method public static create(JJLcom/google/android/exoplayer2/extractor/MpegAudioHeader;Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/extractor/mp3/XingSeeker;
    .locals 18
    .param p0, "inputLength"    # J
    .param p2, "position"    # J
    .param p4, "mpegAudioHeader"    # Lcom/google/android/exoplayer2/extractor/MpegAudioHeader;
    .param p5, "frame"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .prologue
    .line 46
    move-object/from16 v0, p4

    iget v15, v0, Lcom/google/android/exoplayer2/extractor/MpegAudioHeader;->samplesPerFrame:I

    .line 47
    .local v15, "samplesPerFrame":I
    move-object/from16 v0, p4

    iget v14, v0, Lcom/google/android/exoplayer2/extractor/MpegAudioHeader;->sampleRate:I

    .line 49
    .local v14, "sampleRate":I
    invoke-virtual/range {p5 .. p5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v11

    .line 51
    .local v11, "flags":I
    and-int/lit8 v2, v11, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    invoke-virtual/range {p5 .. p5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v12

    .local v12, "frameCount":I
    if-nez v12, :cond_1

    .line 53
    .end local v12    # "frameCount":I
    :cond_0
    const/4 v2, 0x0

    .line 75
    :goto_0
    return-object v2

    .line 55
    .restart local v12    # "frameCount":I
    :cond_1
    int-to-long v2, v12

    int-to-long v4, v15

    const-wide/32 v16, 0xf4240

    mul-long v4, v4, v16

    int-to-long v6, v14

    invoke-static/range {v2 .. v7}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v6

    .line 57
    .local v6, "durationUs":J
    and-int/lit8 v2, v11, 0x6

    const/4 v3, 0x6

    if-eq v2, v3, :cond_2

    .line 59
    new-instance v2, Lcom/google/android/exoplayer2/extractor/mp3/XingSeeker;

    move-object/from16 v0, p4

    iget v5, v0, Lcom/google/android/exoplayer2/extractor/MpegAudioHeader;->frameSize:I

    move-wide/from16 v3, p2

    invoke-direct/range {v2 .. v7}, Lcom/google/android/exoplayer2/extractor/mp3/XingSeeker;-><init>(JIJ)V

    goto :goto_0

    .line 62
    :cond_2
    invoke-virtual/range {p5 .. p5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v2

    int-to-long v8, v2

    .line 63
    .local v8, "dataSize":J
    const/16 v2, 0x64

    new-array v10, v2, [J

    .line 64
    .local v10, "tableOfContents":[J
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_1
    const/16 v2, 0x64

    if-ge v13, v2, :cond_3

    .line 65
    invoke-virtual/range {p5 .. p5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    int-to-long v2, v2

    aput-wide v2, v10, v13

    .line 64
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 72
    :cond_3
    const-wide/16 v2, -0x1

    cmp-long v2, p0, v2

    if-eqz v2, :cond_4

    add-long v2, p2, v8

    cmp-long v2, p0, v2

    if-eqz v2, :cond_4

    .line 73
    const-string v2, "XingSeeker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "XING data size mismatch: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p0

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-long v4, p2, v8

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    :cond_4
    new-instance v2, Lcom/google/android/exoplayer2/extractor/mp3/XingSeeker;

    move-object/from16 v0, p4

    iget v5, v0, Lcom/google/android/exoplayer2/extractor/MpegAudioHeader;->frameSize:I

    move-wide/from16 v3, p2

    invoke-direct/range {v2 .. v10}, Lcom/google/android/exoplayer2/extractor/mp3/XingSeeker;-><init>(JIJJ[J)V

    goto :goto_0
.end method

.method private getTimeUsForTableIndex(I)J
    .locals 4
    .param p1, "tableIndex"    # I

    .prologue
    .line 165
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/XingSeeker;->durationUs:J

    int-to-long v2, p1

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x64

    div-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public getDurationUs()J
    .locals 2

    .prologue
    .line 155
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/XingSeeker;->durationUs:J

    return-wide v0
.end method

.method public getPosition(J)J
    .locals 23
    .param p1, "timeUs"    # J

    .prologue
    .line 111
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/extractor/mp3/XingSeeker;->isSeekable()Z

    move-result v4

    if-nez v4, :cond_0

    .line 112
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/google/android/exoplayer2/extractor/mp3/XingSeeker;->dataStartPosition:J

    move-object/from16 v0, p0

    iget v6, v0, Lcom/google/android/exoplayer2/extractor/mp3/XingSeeker;->xingFrameSize:I

    int-to-long v6, v6

    add-long/2addr v4, v6

    .line 132
    :goto_0
    return-wide v4

    .line 114
    :cond_0
    move-wide/from16 v0, p1

    long-to-double v4, v0

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    mul-double/2addr v4, v6

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/google/android/exoplayer2/extractor/mp3/XingSeeker;->durationUs:J

    long-to-double v6, v6

    div-double v12, v4, v6

    .line 116
    .local v12, "percent":D
    const-wide/16 v4, 0x0

    cmpg-double v4, v12, v4

    if-gtz v4, :cond_1

    .line 117
    const-wide/16 v18, 0x0

    .line 129
    .local v18, "scaledPosition":D
    :goto_1
    const-wide/high16 v4, 0x4070000000000000L    # 256.0

    div-double v4, v18, v4

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/google/android/exoplayer2/extractor/mp3/XingSeeker;->dataSize:J

    long-to-double v6, v6

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    .line 131
    .local v2, "positionOffset":J
    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/exoplayer2/extractor/mp3/XingSeeker;->xingFrameSize:I

    int-to-long v4, v4

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/google/android/exoplayer2/extractor/mp3/XingSeeker;->dataSize:J

    const-wide/16 v20, 0x1

    sub-long v6, v6, v20

    invoke-static/range {v2 .. v7}, Lcom/google/android/exoplayer2/util/Util;->constrainValue(JJJ)J

    move-result-wide v2

    .line 132
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/google/android/exoplayer2/extractor/mp3/XingSeeker;->dataStartPosition:J

    add-long/2addr v4, v2

    goto :goto_0

    .line 118
    .end local v2    # "positionOffset":J
    .end local v18    # "scaledPosition":D
    :cond_1
    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    cmpl-double v4, v12, v4

    if-ltz v4, :cond_2

    .line 119
    const-wide/high16 v18, 0x4070000000000000L    # 256.0

    .restart local v18    # "scaledPosition":D
    goto :goto_1

    .line 121
    .end local v18    # "scaledPosition":D
    :cond_2
    double-to-int v0, v12

    move/from16 v16, v0

    .line 122
    .local v16, "prevTableIndex":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/mp3/XingSeeker;->tableOfContents:[J

    aget-wide v4, v4, v16

    long-to-double v14, v4

    .line 123
    .local v14, "prevScaledPosition":D
    const/16 v4, 0x63

    move/from16 v0, v16

    if-ne v0, v4, :cond_3

    const-wide/high16 v10, 0x4070000000000000L    # 256.0

    .line 125
    .local v10, "nextScaledPosition":D
    :goto_2
    move/from16 v0, v16

    int-to-double v4, v0

    sub-double v8, v12, v4

    .line 126
    .local v8, "interpolateFraction":D
    sub-double v4, v10, v14

    mul-double/2addr v4, v8

    add-double v18, v14, v4

    .restart local v18    # "scaledPosition":D
    goto :goto_1

    .line 123
    .end local v8    # "interpolateFraction":D
    .end local v10    # "nextScaledPosition":D
    .end local v18    # "scaledPosition":D
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/mp3/XingSeeker;->tableOfContents:[J

    add-int/lit8 v5, v16, 0x1

    aget-wide v4, v4, v5

    long-to-double v10, v4

    goto :goto_2
.end method

.method public getTimeUs(J)J
    .locals 25
    .param p1, "position"    # J

    .prologue
    .line 137
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/exoplayer2/extractor/mp3/XingSeeker;->dataStartPosition:J

    move-wide/from16 v20, v0

    sub-long v10, p1, v20

    .line 138
    .local v10, "positionOffset":J
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/extractor/mp3/XingSeeker;->isSeekable()Z

    move-result v15

    if-eqz v15, :cond_0

    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/android/exoplayer2/extractor/mp3/XingSeeker;->xingFrameSize:I

    int-to-long v0, v15

    move-wide/from16 v20, v0

    cmp-long v15, v10, v20

    if-gtz v15, :cond_1

    .line 139
    :cond_0
    const-wide/16 v20, 0x0

    .line 150
    :goto_0
    return-wide v20

    .line 141
    :cond_1
    long-to-double v0, v10

    move-wide/from16 v20, v0

    const-wide/high16 v22, 0x4070000000000000L    # 256.0

    mul-double v20, v20, v22

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/exoplayer2/extractor/mp3/XingSeeker;->dataSize:J

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    long-to-double v0, v0

    move-wide/from16 v22, v0

    div-double v18, v20, v22

    .line 142
    .local v18, "scaledPosition":D
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/exoplayer2/extractor/mp3/XingSeeker;->tableOfContents:[J

    move-wide/from16 v0, v18

    double-to-long v0, v0

    move-wide/from16 v20, v0

    const/16 v22, 0x1

    const/16 v23, 0x1

    move-wide/from16 v0, v20

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-static {v15, v0, v1, v2, v3}, Lcom/google/android/exoplayer2/util/Util;->binarySearchFloor([JJZZ)I

    move-result v14

    .line 143
    .local v14, "prevTableIndex":I
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/google/android/exoplayer2/extractor/mp3/XingSeeker;->getTimeUsForTableIndex(I)J

    move-result-wide v16

    .line 144
    .local v16, "prevTimeUs":J
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/exoplayer2/extractor/mp3/XingSeeker;->tableOfContents:[J

    aget-wide v12, v15, v14

    .line 145
    .local v12, "prevScaledPosition":J
    add-int/lit8 v15, v14, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/google/android/exoplayer2/extractor/mp3/XingSeeker;->getTimeUsForTableIndex(I)J

    move-result-wide v8

    .line 146
    .local v8, "nextTimeUs":J
    const/16 v15, 0x63

    if-ne v14, v15, :cond_2

    const-wide/16 v6, 0x100

    .line 148
    .local v6, "nextScaledPosition":J
    :goto_1
    cmp-long v15, v12, v6

    if-nez v15, :cond_3

    const-wide/16 v4, 0x0

    .line 150
    .local v4, "interpolateFraction":D
    :goto_2
    sub-long v20, v8, v16

    move-wide/from16 v0, v20

    long-to-double v0, v0

    move-wide/from16 v20, v0

    mul-double v20, v20, v4

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->round(D)J

    move-result-wide v20

    add-long v20, v20, v16

    goto :goto_0

    .line 146
    .end local v4    # "interpolateFraction":D
    .end local v6    # "nextScaledPosition":J
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/exoplayer2/extractor/mp3/XingSeeker;->tableOfContents:[J

    add-int/lit8 v20, v14, 0x1

    aget-wide v6, v15, v20

    goto :goto_1

    .line 148
    .restart local v6    # "nextScaledPosition":J
    :cond_3
    long-to-double v0, v12

    move-wide/from16 v20, v0

    sub-double v20, v18, v20

    sub-long v22, v6, v12

    move-wide/from16 v0, v22

    long-to-double v0, v0

    move-wide/from16 v22, v0

    div-double v4, v20, v22

    goto :goto_2
.end method

.method public isSeekable()Z
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/XingSeeker;->tableOfContents:[J

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
