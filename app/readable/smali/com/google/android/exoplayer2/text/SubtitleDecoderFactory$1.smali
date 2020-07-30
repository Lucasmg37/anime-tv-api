.class final Lcom/google/android/exoplayer2/text/SubtitleDecoderFactory$1;
.super Ljava/lang/Object;
.source "SubtitleDecoderFactory.java"

# interfaces
.implements Lcom/google/android/exoplayer2/text/SubtitleDecoderFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/text/SubtitleDecoderFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createDecoder(Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/text/SubtitleDecoder;
    .locals 3
    .param p1, "format"    # Lcom/google/android/exoplayer2/Format;

    .prologue
    .line 88
    iget-object v1, p1, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 109
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Attempted to create decoder for unsupported format"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :sswitch_0
    const-string v2, "text/vtt"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v2, "text/x-ssa"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string v2, "application/x-mp4-vtt"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string v2, "application/ttml+xml"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_4
    const-string v2, "application/x-subrip"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :sswitch_5
    const-string v2, "application/x-quicktime-tx3g"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    :sswitch_6
    const-string v2, "application/cea-608"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x6

    goto :goto_0

    :sswitch_7
    const-string v2, "application/x-mp4-cea-608"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x7

    goto :goto_0

    :sswitch_8
    const-string v2, "application/cea-708"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :sswitch_9
    const-string v2, "application/dvbsubs"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x9

    goto :goto_0

    .line 90
    :pswitch_0
    new-instance v0, Lcom/google/android/exoplayer2/text/webvtt/WebvttDecoder;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/text/webvtt/WebvttDecoder;-><init>()V

    .line 107
    :goto_1
    return-object v0

    .line 92
    :pswitch_1
    new-instance v0, Lcom/google/android/exoplayer2/text/ssa/SsaDecoder;

    iget-object v1, p1, Lcom/google/android/exoplayer2/Format;->initializationData:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/text/ssa/SsaDecoder;-><init>(Ljava/util/List;)V

    goto :goto_1

    .line 94
    :pswitch_2
    new-instance v0, Lcom/google/android/exoplayer2/text/webvtt/Mp4WebvttDecoder;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/text/webvtt/Mp4WebvttDecoder;-><init>()V

    goto :goto_1

    .line 96
    :pswitch_3
    new-instance v0, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;-><init>()V

    goto :goto_1

    .line 98
    :pswitch_4
    new-instance v0, Lcom/google/android/exoplayer2/text/subrip/SubripDecoder;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/text/subrip/SubripDecoder;-><init>()V

    goto :goto_1

    .line 100
    :pswitch_5
    new-instance v0, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;

    iget-object v1, p1, Lcom/google/android/exoplayer2/Format;->initializationData:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;-><init>(Ljava/util/List;)V

    goto :goto_1

    .line 103
    :pswitch_6
    new-instance v0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;

    iget-object v1, p1, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    iget v2, p1, Lcom/google/android/exoplayer2/Format;->accessibilityChannel:I

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;-><init>(Ljava/lang/String;I)V

    goto :goto_1

    .line 105
    :pswitch_7
    new-instance v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;

    iget v1, p1, Lcom/google/android/exoplayer2/Format;->accessibilityChannel:I

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;-><init>(I)V

    goto :goto_1

    .line 107
    :pswitch_8
    new-instance v0, Lcom/google/android/exoplayer2/text/dvb/DvbDecoder;

    iget-object v1, p1, Lcom/google/android/exoplayer2/Format;->initializationData:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/text/dvb/DvbDecoder;-><init>(Ljava/util/List;)V

    goto :goto_1

    .line 88
    nop

    :sswitch_data_0
    .sparse-switch
        -0x5091057c -> :sswitch_9
        -0x3d28a9ba -> :sswitch_2
        -0x3be2f26c -> :sswitch_0
        0x2935f49f -> :sswitch_5
        0x310bebca -> :sswitch_1
        0x37713300 -> :sswitch_7
        0x5d578071 -> :sswitch_6
        0x5d578432 -> :sswitch_8
        0x63771bad -> :sswitch_4
        0x64f8068a -> :sswitch_3
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public supportsFormat(Lcom/google/android/exoplayer2/Format;)Z
    .locals 2
    .param p1, "format"    # Lcom/google/android/exoplayer2/Format;

    .prologue
    .line 73
    iget-object v0, p1, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 74
    .local v0, "mimeType":Ljava/lang/String;
    const-string v1, "text/vtt"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "text/x-ssa"

    .line 75
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "application/ttml+xml"

    .line 76
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "application/x-mp4-vtt"

    .line 77
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "application/x-subrip"

    .line 78
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "application/x-quicktime-tx3g"

    .line 79
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "application/cea-608"

    .line 80
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "application/x-mp4-cea-608"

    .line 81
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "application/cea-708"

    .line 82
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "application/dvbsubs"

    .line 83
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
