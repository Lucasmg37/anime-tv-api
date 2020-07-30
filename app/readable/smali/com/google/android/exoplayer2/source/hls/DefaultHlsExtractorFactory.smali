.class public final Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;
.super Ljava/lang/Object;
.source "DefaultHlsExtractorFactory.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory;


# static fields
.field public static final AAC_FILE_EXTENSION:Ljava/lang/String; = ".aac"

.field public static final AC3_FILE_EXTENSION:Ljava/lang/String; = ".ac3"

.field public static final EC3_FILE_EXTENSION:Ljava/lang/String; = ".ec3"

.field public static final M4_FILE_EXTENSION_PREFIX:Ljava/lang/String; = ".m4"

.field public static final MP3_FILE_EXTENSION:Ljava/lang/String; = ".mp3"

.field public static final MP4_FILE_EXTENSION:Ljava/lang/String; = ".mp4"

.field public static final MP4_FILE_EXTENSION_PREFIX:Ljava/lang/String; = ".mp4"

.field public static final VTT_FILE_EXTENSION:Ljava/lang/String; = ".vtt"

.field public static final WEBVTT_FILE_EXTENSION:Ljava/lang/String; = ".webvtt"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createExtractor(Lcom/google/android/exoplayer2/extractor/Extractor;Landroid/net/Uri;Lcom/google/android/exoplayer2/Format;Ljava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;Lcom/google/android/exoplayer2/util/TimestampAdjuster;)Landroid/util/Pair;
    .locals 12
    .param p1, "previousExtractor"    # Lcom/google/android/exoplayer2/extractor/Extractor;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "format"    # Lcom/google/android/exoplayer2/Format;
    .param p5, "drmInitData"    # Lcom/google/android/exoplayer2/drm/DrmInitData;
    .param p6, "timestampAdjuster"    # Lcom/google/android/exoplayer2/util/TimestampAdjuster;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/extractor/Extractor;",
            "Landroid/net/Uri;",
            "Lcom/google/android/exoplayer2/Format;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer2/Format;",
            ">;",
            "Lcom/google/android/exoplayer2/drm/DrmInitData;",
            "Lcom/google/android/exoplayer2/util/TimestampAdjuster;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Lcom/google/android/exoplayer2/extractor/Extractor;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 54
    .local p4, "muxedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/Format;>;"
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v11

    .line 55
    .local v11, "lastPathSegment":Ljava/lang/String;
    const/4 v10, 0x0

    .line 57
    .local v10, "isPackedAudioExtractor":Z
    const-string v3, "text/vtt"

    iget-object v4, p3, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, ".webvtt"

    .line 58
    invoke-virtual {v11, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, ".vtt"

    .line 59
    invoke-virtual {v11, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 60
    :cond_0
    new-instance v2, Lcom/google/android/exoplayer2/source/hls/WebvttExtractor;

    iget-object v3, p3, Lcom/google/android/exoplayer2/Format;->language:Ljava/lang/String;

    move-object/from16 v0, p6

    invoke-direct {v2, v3, v0}, Lcom/google/android/exoplayer2/source/hls/WebvttExtractor;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/util/TimestampAdjuster;)V

    .line 104
    .local v2, "extractor":Lcom/google/android/exoplayer2/extractor/Extractor;
    :goto_0
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    return-object v3

    .line 61
    .end local v2    # "extractor":Lcom/google/android/exoplayer2/extractor/Extractor;
    :cond_1
    const-string v3, ".aac"

    invoke-virtual {v11, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 62
    const/4 v10, 0x1

    .line 63
    new-instance v2, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;

    invoke-direct {v2}, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;-><init>()V

    .restart local v2    # "extractor":Lcom/google/android/exoplayer2/extractor/Extractor;
    goto :goto_0

    .line 64
    .end local v2    # "extractor":Lcom/google/android/exoplayer2/extractor/Extractor;
    :cond_2
    const-string v3, ".ac3"

    invoke-virtual {v11, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, ".ec3"

    .line 65
    invoke-virtual {v11, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 66
    :cond_3
    const/4 v10, 0x1

    .line 67
    new-instance v2, Lcom/google/android/exoplayer2/extractor/ts/Ac3Extractor;

    invoke-direct {v2}, Lcom/google/android/exoplayer2/extractor/ts/Ac3Extractor;-><init>()V

    .restart local v2    # "extractor":Lcom/google/android/exoplayer2/extractor/Extractor;
    goto :goto_0

    .line 68
    .end local v2    # "extractor":Lcom/google/android/exoplayer2/extractor/Extractor;
    :cond_4
    const-string v3, ".mp3"

    invoke-virtual {v11, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 69
    const/4 v10, 0x1

    .line 70
    new-instance v2, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    invoke-direct {v2, v3, v4, v5}, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;-><init>(IJ)V

    .restart local v2    # "extractor":Lcom/google/android/exoplayer2/extractor/Extractor;
    goto :goto_0

    .line 71
    .end local v2    # "extractor":Lcom/google/android/exoplayer2/extractor/Extractor;
    :cond_5
    if-eqz p1, :cond_6

    .line 73
    move-object v2, p1

    .restart local v2    # "extractor":Lcom/google/android/exoplayer2/extractor/Extractor;
    goto :goto_0

    .line 74
    .end local v2    # "extractor":Lcom/google/android/exoplayer2/extractor/Extractor;
    :cond_6
    const-string v3, ".mp4"

    invoke-virtual {v11, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, ".m4"

    .line 75
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x4

    invoke-virtual {v11, v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, ".mp4"

    .line 76
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x5

    invoke-virtual {v11, v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 77
    :cond_7
    new-instance v2, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;

    const/4 v3, 0x0

    const/4 v5, 0x0

    if-eqz p4, :cond_8

    move-object/from16 v7, p4

    :goto_1
    move-object/from16 v4, p6

    move-object/from16 v6, p5

    .line 78
    invoke-direct/range {v2 .. v7}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;-><init>(ILcom/google/android/exoplayer2/util/TimestampAdjuster;Lcom/google/android/exoplayer2/extractor/mp4/Track;Lcom/google/android/exoplayer2/drm/DrmInitData;Ljava/util/List;)V

    .restart local v2    # "extractor":Lcom/google/android/exoplayer2/extractor/Extractor;
    goto :goto_0

    .end local v2    # "extractor":Lcom/google/android/exoplayer2/extractor/Extractor;
    :cond_8
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v7

    goto :goto_1

    .line 82
    :cond_9
    const/16 v9, 0x10

    .line 83
    .local v9, "esReaderFactoryFlags":I
    if-eqz p4, :cond_c

    .line 85
    or-int/lit8 v9, v9, 0x20

    .line 89
    :goto_2
    iget-object v8, p3, Lcom/google/android/exoplayer2/Format;->codecs:Ljava/lang/String;

    .line 90
    .local v8, "codecs":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 94
    const-string v3, "audio/mp4a-latm"

    invoke-static {v8}, Lcom/google/android/exoplayer2/util/MimeTypes;->getAudioMediaMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 95
    or-int/lit8 v9, v9, 0x2

    .line 97
    :cond_a
    const-string v3, "video/avc"

    invoke-static {v8}, Lcom/google/android/exoplayer2/util/MimeTypes;->getVideoMediaMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 98
    or-int/lit8 v9, v9, 0x4

    .line 101
    :cond_b
    new-instance v2, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;

    const/4 v3, 0x2

    new-instance v4, Lcom/google/android/exoplayer2/extractor/ts/DefaultTsPayloadReaderFactory;

    move-object/from16 v0, p4

    invoke-direct {v4, v9, v0}, Lcom/google/android/exoplayer2/extractor/ts/DefaultTsPayloadReaderFactory;-><init>(ILjava/util/List;)V

    move-object/from16 v0, p6

    invoke-direct {v2, v3, v0, v4}, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;-><init>(ILcom/google/android/exoplayer2/util/TimestampAdjuster;Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$Factory;)V

    .restart local v2    # "extractor":Lcom/google/android/exoplayer2/extractor/Extractor;
    goto/16 :goto_0

    .line 87
    .end local v2    # "extractor":Lcom/google/android/exoplayer2/extractor/Extractor;
    .end local v8    # "codecs":Ljava/lang/String;
    :cond_c
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p4

    goto :goto_2
.end method
