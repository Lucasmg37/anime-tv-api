.class final Lcom/google/android/exoplayer2/extractor/mp3/VbriSeeker;
.super Ljava/lang/Object;
.source "VbriSeeker.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor$Seeker;


# static fields
.field private static final TAG:Ljava/lang/String; = "VbriSeeker"


# instance fields
.field private final durationUs:J

.field private final positions:[J

.field private final timesUs:[J


# direct methods
.method private constructor <init>([J[JJ)V
    .locals 1
    .param p1, "timesUs"    # [J
    .param p2, "positions"    # [J
    .param p3, "durationUs"    # J

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp3/VbriSeeker;->timesUs:[J

    .line 99
    iput-object p2, p0, Lcom/google/android/exoplayer2/extractor/mp3/VbriSeeker;->positions:[J

    .line 100
    iput-wide p3, p0, Lcom/google/android/exoplayer2/extractor/mp3/VbriSeeker;->durationUs:J

    .line 101
    return-void
.end method

.method public static create(JJLcom/google/android/exoplayer2/extractor/MpegAudioHeader;Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/extractor/mp3/VbriSeeker;
    .locals 22
    .param p0, "inputLength"    # J
    .param p2, "position"    # J
    .param p4, "mpegAudioHeader"    # Lcom/google/android/exoplayer2/extractor/MpegAudioHeader;
    .param p5, "frame"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .prologue
    .line 46
    const/16 v2, 0xa

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 47
    invoke-virtual/range {p5 .. p5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v13

    .line 48
    .local v13, "numFrames":I
    if-gtz v13, :cond_0

    .line 49
    const/4 v2, 0x0

    .line 90
    :goto_0
    return-object v2

    .line 51
    :cond_0
    move-object/from16 v0, p4

    iget v0, v0, Lcom/google/android/exoplayer2/extractor/MpegAudioHeader;->sampleRate:I

    move/from16 v17, v0

    .line 52
    .local v17, "sampleRate":I
    int-to-long v2, v13

    const-wide/32 v6, 0xf4240

    const/16 v4, 0x7d00

    move/from16 v0, v17

    if-lt v0, v4, :cond_1

    const/16 v4, 0x480

    :goto_1
    int-to-long v4, v4

    mul-long/2addr v4, v6

    move/from16 v0, v17

    int-to-long v6, v0

    invoke-static/range {v2 .. v7}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v8

    .line 54
    .local v8, "durationUs":J
    invoke-virtual/range {p5 .. p5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v10

    .line 55
    .local v10, "entryCount":I
    invoke-virtual/range {p5 .. p5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v18

    .line 56
    .local v18, "scale":I
    invoke-virtual/range {p5 .. p5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v11

    .line 57
    .local v11, "entrySize":I
    const/4 v2, 0x2

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 59
    move-object/from16 v0, p4

    iget v2, v0, Lcom/google/android/exoplayer2/extractor/MpegAudioHeader;->frameSize:I

    int-to-long v2, v2

    add-long v14, p2, v2

    .line 61
    .local v14, "minPosition":J
    new-array v0, v10, [J

    move-object/from16 v20, v0

    .line 62
    .local v20, "timesUs":[J
    new-array v0, v10, [J

    move-object/from16 v16, v0

    .line 63
    .local v16, "positions":[J
    const/4 v12, 0x0

    .local v12, "index":I
    :goto_2
    if-ge v12, v10, :cond_2

    .line 64
    int-to-long v2, v12

    mul-long/2addr v2, v8

    int-to-long v4, v10

    div-long/2addr v2, v4

    aput-wide v2, v20, v12

    .line 67
    move-wide/from16 v0, p2

    invoke-static {v0, v1, v14, v15}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    aput-wide v2, v16, v12

    .line 69
    packed-switch v11, :pswitch_data_0

    .line 83
    const/4 v2, 0x0

    goto :goto_0

    .line 52
    .end local v8    # "durationUs":J
    .end local v10    # "entryCount":I
    .end local v11    # "entrySize":I
    .end local v12    # "index":I
    .end local v14    # "minPosition":J
    .end local v16    # "positions":[J
    .end local v18    # "scale":I
    .end local v20    # "timesUs":[J
    :cond_1
    const/16 v4, 0x240

    goto :goto_1

    .line 71
    .restart local v8    # "durationUs":J
    .restart local v10    # "entryCount":I
    .restart local v11    # "entrySize":I
    .restart local v12    # "index":I
    .restart local v14    # "minPosition":J
    .restart local v16    # "positions":[J
    .restart local v18    # "scale":I
    .restart local v20    # "timesUs":[J
    :pswitch_0
    invoke-virtual/range {p5 .. p5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v19

    .line 85
    .local v19, "segmentSize":I
    :goto_3
    mul-int v2, v19, v18

    int-to-long v2, v2

    add-long p2, p2, v2

    .line 63
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 74
    .end local v19    # "segmentSize":I
    :pswitch_1
    invoke-virtual/range {p5 .. p5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v19

    .line 75
    .restart local v19    # "segmentSize":I
    goto :goto_3

    .line 77
    .end local v19    # "segmentSize":I
    :pswitch_2
    invoke-virtual/range {p5 .. p5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt24()I

    move-result v19

    .line 78
    .restart local v19    # "segmentSize":I
    goto :goto_3

    .line 80
    .end local v19    # "segmentSize":I
    :pswitch_3
    invoke-virtual/range {p5 .. p5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v19

    .line 81
    .restart local v19    # "segmentSize":I
    goto :goto_3

    .line 87
    .end local v19    # "segmentSize":I
    :cond_2
    const-wide/16 v2, -0x1

    cmp-long v2, p0, v2

    if-eqz v2, :cond_3

    cmp-long v2, p0, p2

    if-eqz v2, :cond_3

    .line 88
    const-string v2, "VbriSeeker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VBRI data size mismatch: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p0

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p2

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :cond_3
    new-instance v2, Lcom/google/android/exoplayer2/extractor/mp3/VbriSeeker;

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-direct {v2, v0, v1, v8, v9}, Lcom/google/android/exoplayer2/extractor/mp3/VbriSeeker;-><init>([J[JJ)V

    goto/16 :goto_0

    .line 69
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public getDurationUs()J
    .locals 2

    .prologue
    .line 120
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/VbriSeeker;->durationUs:J

    return-wide v0
.end method

.method public getPosition(J)J
    .locals 3
    .param p1, "timeUs"    # J

    .prologue
    const/4 v2, 0x1

    .line 110
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/VbriSeeker;->positions:[J

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mp3/VbriSeeker;->timesUs:[J

    invoke-static {v1, p1, p2, v2, v2}, Lcom/google/android/exoplayer2/util/Util;->binarySearchFloor([JJZZ)I

    move-result v1

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public getTimeUs(J)J
    .locals 3
    .param p1, "position"    # J

    .prologue
    const/4 v2, 0x1

    .line 115
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/VbriSeeker;->timesUs:[J

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mp3/VbriSeeker;->positions:[J

    invoke-static {v1, p1, p2, v2, v2}, Lcom/google/android/exoplayer2/util/Util;->binarySearchFloor([JJZZ)I

    move-result v1

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public isSeekable()Z
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x1

    return v0
.end method
