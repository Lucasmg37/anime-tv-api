.class public final Lcom/google/android/exoplayer2/text/subrip/SubripDecoder;
.super Lcom/google/android/exoplayer2/text/SimpleSubtitleDecoder;
.source "SubripDecoder.java"


# static fields
.field private static final SUBRIP_TIMECODE:Ljava/lang/String; = "(?:(\\d+):)?(\\d+):(\\d+),(\\d+)"

.field private static final SUBRIP_TIMING_LINE:Ljava/util/regex/Pattern;

.field private static final TAG:Ljava/lang/String; = "SubripDecoder"


# instance fields
.field private final textBuilder:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-string v0, "\\s*((?:(\\d+):)?(\\d+):(\\d+),(\\d+))\\s*-->\\s*((?:(\\d+):)?(\\d+):(\\d+),(\\d+))?\\s*"

    .line 39
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/text/subrip/SubripDecoder;->SUBRIP_TIMING_LINE:Ljava/util/regex/Pattern;

    .line 38
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    const-string v0, "SubripDecoder"

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/text/SimpleSubtitleDecoder;-><init>(Ljava/lang/String;)V

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/subrip/SubripDecoder;->textBuilder:Ljava/lang/StringBuilder;

    .line 46
    return-void
.end method

.method private static parseTimecode(Ljava/util/regex/Matcher;I)J
    .locals 8
    .param p0, "matcher"    # Ljava/util/regex/Matcher;
    .param p1, "groupOffset"    # I

    .prologue
    const-wide/16 v6, 0x3c

    const-wide/16 v4, 0x3e8

    .line 112
    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    mul-long/2addr v2, v6

    mul-long/2addr v2, v6

    mul-long v0, v2, v4

    .line 113
    .local v0, "timestampMs":J
    add-int/lit8 v2, p1, 0x2

    invoke-virtual {p0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    mul-long/2addr v2, v6

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 114
    add-int/lit8 v2, p1, 0x3

    invoke-virtual {p0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 115
    add-int/lit8 v2, p1, 0x4

    invoke-virtual {p0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 116
    mul-long v2, v0, v4

    return-wide v2
.end method


# virtual methods
.method protected bridge synthetic decode([BIZ)Lcom/google/android/exoplayer2/text/Subtitle;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation

    .prologue
    .line 33
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/text/subrip/SubripDecoder;->decode([BIZ)Lcom/google/android/exoplayer2/text/subrip/SubripSubtitle;

    move-result-object v0

    return-object v0
.end method

.method protected decode([BIZ)Lcom/google/android/exoplayer2/text/subrip/SubripSubtitle;
    .locals 13
    .param p1, "bytes"    # [B
    .param p2, "length"    # I
    .param p3, "reset"    # Z

    .prologue
    .line 50
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 51
    .local v2, "cues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/text/Cue;>;"
    new-instance v0, Lcom/google/android/exoplayer2/util/LongArray;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/util/LongArray;-><init>()V

    .line 52
    .local v0, "cueTimesUs":Lcom/google/android/exoplayer2/util/LongArray;
    new-instance v8, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {v8, p1, p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>([BI)V

    .line 55
    .local v8, "subripData":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    :cond_0
    :goto_0
    invoke-virtual {v8}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLine()Ljava/lang/String;

    move-result-object v4

    .local v4, "currentLine":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 56
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v10

    if-eqz v10, :cond_0

    .line 63
    :try_start_0
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    const/4 v6, 0x0

    .line 71
    .local v6, "haveEndTimecode":Z
    invoke-virtual {v8}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 72
    if-nez v4, :cond_2

    .line 73
    const-string v10, "SubripDecoder"

    const-string v11, "Unexpected end"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    .end local v6    # "haveEndTimecode":Z
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v10

    new-array v3, v10, [Lcom/google/android/exoplayer2/text/Cue;

    .line 106
    .local v3, "cuesArray":[Lcom/google/android/exoplayer2/text/Cue;
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 107
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/LongArray;->toArray()[J

    move-result-object v1

    .line 108
    .local v1, "cueTimesUsArray":[J
    new-instance v10, Lcom/google/android/exoplayer2/text/subrip/SubripSubtitle;

    invoke-direct {v10, v3, v1}, Lcom/google/android/exoplayer2/text/subrip/SubripSubtitle;-><init>([Lcom/google/android/exoplayer2/text/Cue;[J)V

    return-object v10

    .line 64
    .end local v1    # "cueTimesUsArray":[J
    .end local v3    # "cuesArray":[Lcom/google/android/exoplayer2/text/Cue;
    :catch_0
    move-exception v5

    .line 65
    .local v5, "e":Ljava/lang/NumberFormatException;
    const-string v10, "SubripDecoder"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Skipping invalid index: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 77
    .end local v5    # "e":Ljava/lang/NumberFormatException;
    .restart local v6    # "haveEndTimecode":Z
    :cond_2
    sget-object v10, Lcom/google/android/exoplayer2/text/subrip/SubripDecoder;->SUBRIP_TIMING_LINE:Ljava/util/regex/Pattern;

    invoke-virtual {v10, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    .line 78
    .local v7, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->matches()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 79
    const/4 v10, 0x1

    invoke-static {v7, v10}, Lcom/google/android/exoplayer2/text/subrip/SubripDecoder;->parseTimecode(Ljava/util/regex/Matcher;I)J

    move-result-wide v10

    invoke-virtual {v0, v10, v11}, Lcom/google/android/exoplayer2/util/LongArray;->add(J)V

    .line 80
    const/4 v10, 0x6

    invoke-virtual {v7, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 81
    const/4 v6, 0x1

    .line 82
    const/4 v10, 0x6

    invoke-static {v7, v10}, Lcom/google/android/exoplayer2/text/subrip/SubripDecoder;->parseTimecode(Ljava/util/regex/Matcher;I)J

    move-result-wide v10

    invoke-virtual {v0, v10, v11}, Lcom/google/android/exoplayer2/util/LongArray;->add(J)V

    .line 90
    :cond_3
    iget-object v10, p0, Lcom/google/android/exoplayer2/text/subrip/SubripDecoder;->textBuilder:Ljava/lang/StringBuilder;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 91
    :goto_1
    invoke-virtual {v8}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLine()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_6

    .line 92
    iget-object v10, p0, Lcom/google/android/exoplayer2/text/subrip/SubripDecoder;->textBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    if-lez v10, :cond_4

    .line 93
    iget-object v10, p0, Lcom/google/android/exoplayer2/text/subrip/SubripDecoder;->textBuilder:Ljava/lang/StringBuilder;

    const-string v11, "<br>"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    :cond_4
    iget-object v10, p0, Lcom/google/android/exoplayer2/text/subrip/SubripDecoder;->textBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 85
    :cond_5
    const-string v10, "SubripDecoder"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Skipping invalid timing: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 98
    :cond_6
    iget-object v10, p0, Lcom/google/android/exoplayer2/text/subrip/SubripDecoder;->textBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v9

    .line 99
    .local v9, "text":Landroid/text/Spanned;
    new-instance v10, Lcom/google/android/exoplayer2/text/Cue;

    invoke-direct {v10, v9}, Lcom/google/android/exoplayer2/text/Cue;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    if-eqz v6, :cond_0

    .line 101
    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method
