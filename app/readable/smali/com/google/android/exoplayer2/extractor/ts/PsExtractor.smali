.class public final Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;
.super Ljava/lang/Object;
.source "PsExtractor.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/Extractor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;
    }
.end annotation


# static fields
.field public static final AUDIO_STREAM:I = 0xc0

.field public static final AUDIO_STREAM_MASK:I = 0xe0

.field public static final FACTORY:Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;

.field private static final MAX_SEARCH_LENGTH:J = 0x100000L

.field private static final MAX_STREAM_ID_PLUS_ONE:I = 0x100

.field private static final MPEG_PROGRAM_END_CODE:I = 0x1b9

.field private static final PACKET_START_CODE_PREFIX:I = 0x1

.field private static final PACK_START_CODE:I = 0x1ba

.field public static final PRIVATE_STREAM_1:I = 0xbd

.field private static final SYSTEM_HEADER_START_CODE:I = 0x1bb

.field public static final VIDEO_STREAM:I = 0xe0

.field public static final VIDEO_STREAM_MASK:I = 0xf0


# instance fields
.field private foundAllTracks:Z

.field private foundAudioTrack:Z

.field private foundVideoTrack:Z

.field private output:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

.field private final psPacketBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field private final psPayloadReaders:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;",
            ">;"
        }
    .end annotation
.end field

.field private final timestampAdjuster:Lcom/google/android/exoplayer2/util/TimestampAdjuster;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    new-instance v0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor$1;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor$1;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->FACTORY:Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .line 74
    new-instance v0, Lcom/google/android/exoplayer2/util/TimestampAdjuster;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Lcom/google/android/exoplayer2/util/TimestampAdjuster;-><init>(J)V

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;-><init>(Lcom/google/android/exoplayer2/util/TimestampAdjuster;)V

    .line 75
    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/util/TimestampAdjuster;)V
    .locals 2
    .param p1, "timestampAdjuster"    # Lcom/google/android/exoplayer2/util/TimestampAdjuster;

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->timestampAdjuster:Lcom/google/android/exoplayer2/util/TimestampAdjuster;

    .line 79
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/16 v1, 0x1000

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->psPacketBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 80
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->psPayloadReaders:Landroid/util/SparseArray;

    .line 81
    return-void
.end method


# virtual methods
.method public init(Lcom/google/android/exoplayer2/extractor/ExtractorOutput;)V
    .locals 4
    .param p1, "output"    # Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->output:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    .line 127
    new-instance v0, Lcom/google/android/exoplayer2/extractor/SeekMap$Unseekable;

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v0, v2, v3}, Lcom/google/android/exoplayer2/extractor/SeekMap$Unseekable;-><init>(J)V

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->seekMap(Lcom/google/android/exoplayer2/extractor/SeekMap;)V

    .line 128
    return-void
.end method

.method public read(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/PositionHolder;)I
    .locals 14
    .param p1, "input"    # Lcom/google/android/exoplayer2/extractor/ExtractorInput;
    .param p2, "seekPosition"    # Lcom/google/android/exoplayer2/extractor/PositionHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 147
    iget-object v9, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->psPacketBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v9, v9, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    const/4 v10, 0x0

    const/4 v11, 0x4

    const/4 v12, 0x1

    invoke-interface {p1, v9, v10, v11, v12}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BIIZ)Z

    move-result v9

    if-nez v9, :cond_0

    .line 148
    const/4 v9, -0x1

    .line 235
    :goto_0
    return v9

    .line 151
    :cond_0
    iget-object v9, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->psPacketBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 152
    iget-object v9, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->psPacketBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v9}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v2

    .line 153
    .local v2, "nextStartCode":I
    const/16 v9, 0x1b9

    if-ne v2, v9, :cond_1

    .line 154
    const/4 v9, -0x1

    goto :goto_0

    .line 155
    :cond_1
    const/16 v9, 0x1ba

    if-ne v2, v9, :cond_2

    .line 157
    iget-object v9, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->psPacketBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v9, v9, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    const/4 v10, 0x0

    const/16 v11, 0xa

    invoke-interface {p1, v9, v10, v11}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    .line 160
    iget-object v9, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->psPacketBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/16 v10, 0x9

    invoke-virtual {v9, v10}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 163
    iget-object v9, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->psPacketBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v9}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v9

    and-int/lit8 v3, v9, 0x7

    .line 166
    .local v3, "packStuffingLength":I
    add-int/lit8 v9, v3, 0xe

    invoke-interface {p1, v9}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    .line 167
    const/4 v9, 0x0

    goto :goto_0

    .line 168
    .end local v3    # "packStuffingLength":I
    :cond_2
    const/16 v9, 0x1bb

    if-ne v2, v9, :cond_3

    .line 170
    iget-object v9, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->psPacketBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v9, v9, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    const/4 v10, 0x0

    const/4 v11, 0x2

    invoke-interface {p1, v9, v10, v11}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    .line 173
    iget-object v9, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->psPacketBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 174
    iget-object v9, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->psPacketBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v9}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v8

    .line 175
    .local v8, "systemHeaderLength":I
    add-int/lit8 v9, v8, 0x6

    invoke-interface {p1, v9}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    .line 176
    const/4 v9, 0x0

    goto :goto_0

    .line 177
    .end local v8    # "systemHeaderLength":I
    :cond_3
    and-int/lit16 v9, v2, -0x100

    shr-int/lit8 v9, v9, 0x8

    const/4 v10, 0x1

    if-eq v9, v10, :cond_4

    .line 178
    const/4 v9, 0x1

    invoke-interface {p1, v9}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    .line 179
    const/4 v9, 0x0

    goto :goto_0

    .line 184
    :cond_4
    and-int/lit16 v7, v2, 0xff

    .line 187
    .local v7, "streamId":I
    iget-object v9, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->psPayloadReaders:Landroid/util/SparseArray;

    invoke-virtual {v9, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;

    .line 188
    .local v5, "payloadReader":Lcom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;
    iget-boolean v9, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->foundAllTracks:Z

    if-nez v9, :cond_9

    .line 189
    if-nez v5, :cond_6

    .line 190
    const/4 v0, 0x0

    .line 191
    .local v0, "elementaryStreamReader":Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;
    iget-boolean v9, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->foundAudioTrack:Z

    if-nez v9, :cond_a

    const/16 v9, 0xbd

    if-ne v7, v9, :cond_a

    .line 195
    new-instance v0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;

    .end local v0    # "elementaryStreamReader":Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;
    invoke-direct {v0}, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;-><init>()V

    .line 196
    .restart local v0    # "elementaryStreamReader":Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->foundAudioTrack:Z

    .line 204
    :cond_5
    :goto_1
    if-eqz v0, :cond_6

    .line 205
    new-instance v1, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;

    const/16 v9, 0x100

    invoke-direct {v1, v7, v9}, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;-><init>(II)V

    .line 206
    .local v1, "idGenerator":Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;
    iget-object v9, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->output:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    invoke-interface {v0, v9, v1}, Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;->createTracks(Lcom/google/android/exoplayer2/extractor/ExtractorOutput;Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;)V

    .line 207
    new-instance v5, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;

    .end local v5    # "payloadReader":Lcom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;
    iget-object v9, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->timestampAdjuster:Lcom/google/android/exoplayer2/util/TimestampAdjuster;

    invoke-direct {v5, v0, v9}, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;-><init>(Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;Lcom/google/android/exoplayer2/util/TimestampAdjuster;)V

    .line 208
    .restart local v5    # "payloadReader":Lcom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;
    iget-object v9, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->psPayloadReaders:Landroid/util/SparseArray;

    invoke-virtual {v9, v7, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 211
    .end local v0    # "elementaryStreamReader":Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;
    .end local v1    # "idGenerator":Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;
    :cond_6
    iget-boolean v9, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->foundAudioTrack:Z

    if-eqz v9, :cond_7

    iget-boolean v9, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->foundVideoTrack:Z

    if-nez v9, :cond_8

    :cond_7
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v10

    const-wide/32 v12, 0x100000

    cmp-long v9, v10, v12

    if-lez v9, :cond_9

    .line 212
    :cond_8
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->foundAllTracks:Z

    .line 213
    iget-object v9, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->output:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    invoke-interface {v9}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->endTracks()V

    .line 218
    :cond_9
    iget-object v9, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->psPacketBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v9, v9, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    const/4 v10, 0x0

    const/4 v11, 0x2

    invoke-interface {p1, v9, v10, v11}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    .line 219
    iget-object v9, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->psPacketBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 220
    iget-object v9, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->psPacketBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v9}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v4

    .line 221
    .local v4, "payloadLength":I
    add-int/lit8 v6, v4, 0x6

    .line 223
    .local v6, "pesLength":I
    if-nez v5, :cond_c

    .line 225
    invoke-interface {p1, v6}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    .line 235
    :goto_2
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 197
    .end local v4    # "payloadLength":I
    .end local v6    # "pesLength":I
    .restart local v0    # "elementaryStreamReader":Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;
    :cond_a
    iget-boolean v9, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->foundAudioTrack:Z

    if-nez v9, :cond_b

    and-int/lit16 v9, v7, 0xe0

    const/16 v10, 0xc0

    if-ne v9, v10, :cond_b

    .line 198
    new-instance v0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;

    .end local v0    # "elementaryStreamReader":Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;
    invoke-direct {v0}, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;-><init>()V

    .line 199
    .restart local v0    # "elementaryStreamReader":Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->foundAudioTrack:Z

    goto :goto_1

    .line 200
    :cond_b
    iget-boolean v9, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->foundVideoTrack:Z

    if-nez v9, :cond_5

    and-int/lit16 v9, v7, 0xf0

    const/16 v10, 0xe0

    if-ne v9, v10, :cond_5

    .line 201
    new-instance v0, Lcom/google/android/exoplayer2/extractor/ts/H262Reader;

    .end local v0    # "elementaryStreamReader":Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;
    invoke-direct {v0}, Lcom/google/android/exoplayer2/extractor/ts/H262Reader;-><init>()V

    .line 202
    .restart local v0    # "elementaryStreamReader":Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->foundVideoTrack:Z

    goto :goto_1

    .line 227
    .end local v0    # "elementaryStreamReader":Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;
    .restart local v4    # "payloadLength":I
    .restart local v6    # "pesLength":I
    :cond_c
    iget-object v9, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->psPacketBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v9, v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset(I)V

    .line 229
    iget-object v9, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->psPacketBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v9, v9, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    const/4 v10, 0x0

    invoke-interface {p1, v9, v10, v6}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    .line 230
    iget-object v9, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->psPacketBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/4 v10, 0x6

    invoke-virtual {v9, v10}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 231
    iget-object v9, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->psPacketBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v5, v9}, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;->consume(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V

    .line 232
    iget-object v9, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->psPacketBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v10, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->psPacketBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v10}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->capacity()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setLimit(I)V

    goto :goto_2
.end method

.method public release()V
    .locals 0

    .prologue
    .line 141
    return-void
.end method

.method public seek(JJ)V
    .locals 2
    .param p1, "position"    # J
    .param p3, "timeUs"    # J

    .prologue
    .line 132
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->timestampAdjuster:Lcom/google/android/exoplayer2/util/TimestampAdjuster;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->reset()V

    .line 133
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->psPayloadReaders:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 134
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;->psPayloadReaders:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;->seek()V

    .line 133
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 136
    :cond_0
    return-void
.end method

.method public sniff(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z
    .locals 10
    .param p1, "input"    # Lcom/google/android/exoplayer2/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 87
    const/16 v4, 0xe

    new-array v1, v4, [B

    .line 88
    .local v1, "scratch":[B
    const/16 v4, 0xe

    invoke-interface {p1, v1, v3, v4}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    .line 91
    const/16 v4, 0x1ba

    aget-byte v5, v1, v3

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x18

    aget-byte v6, v1, v2

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v5, v6

    aget-byte v6, v1, v9

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v5, v6

    aget-byte v6, v1, v7

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v5, v6

    if-eq v4, v5, :cond_1

    .line 120
    :cond_0
    :goto_0
    return v3

    .line 96
    :cond_1
    aget-byte v4, v1, v8

    and-int/lit16 v4, v4, 0xc4

    const/16 v5, 0x44

    if-ne v4, v5, :cond_0

    .line 100
    const/4 v4, 0x6

    aget-byte v4, v1, v4

    and-int/lit8 v4, v4, 0x4

    if-ne v4, v8, :cond_0

    .line 104
    const/16 v4, 0x8

    aget-byte v4, v1, v4

    and-int/lit8 v4, v4, 0x4

    if-ne v4, v8, :cond_0

    .line 108
    const/16 v4, 0x9

    aget-byte v4, v1, v4

    and-int/lit8 v4, v4, 0x1

    if-ne v4, v2, :cond_0

    .line 112
    const/16 v4, 0xc

    aget-byte v4, v1, v4

    and-int/lit8 v4, v4, 0x3

    if-ne v4, v7, :cond_0

    .line 116
    const/16 v4, 0xd

    aget-byte v4, v1, v4

    and-int/lit8 v0, v4, 0x7

    .line 117
    .local v0, "packStuffingLength":I
    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->advancePeekPosition(I)V

    .line 119
    invoke-interface {p1, v1, v3, v7}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    .line 120
    aget-byte v4, v1, v3

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    aget-byte v5, v1, v2

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    aget-byte v5, v1, v9

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v4, v5

    if-ne v2, v4, :cond_2

    :goto_1
    move v3, v2

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_1
.end method
