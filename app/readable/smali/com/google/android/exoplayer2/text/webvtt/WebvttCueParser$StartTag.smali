.class final Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$StartTag;
.super Ljava/lang/Object;
.source "WebvttCueParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "StartTag"
.end annotation


# static fields
.field private static final NO_CLASSES:[Ljava/lang/String;


# instance fields
.field public final classes:[Ljava/lang/String;

.field public final name:Ljava/lang/String;

.field public final position:I

.field public final voice:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 494
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$StartTag;->NO_CLASSES:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "position"    # I
    .param p3, "voice"    # Ljava/lang/String;
    .param p4, "classes"    # [Ljava/lang/String;

    .prologue
    .line 501
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 502
    iput p2, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$StartTag;->position:I

    .line 503
    iput-object p1, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$StartTag;->name:Ljava/lang/String;

    .line 504
    iput-object p3, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$StartTag;->voice:Ljava/lang/String;

    .line 505
    iput-object p4, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$StartTag;->classes:[Ljava/lang/String;

    .line 506
    return-void
.end method

.method public static buildStartTag(Ljava/lang/String;I)Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$StartTag;
    .locals 8
    .param p0, "fullTagExpression"    # Ljava/lang/String;
    .param p1, "position"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 509
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 510
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 511
    const/4 v5, 0x0

    .line 529
    :goto_0
    return-object v5

    .line 513
    :cond_0
    const-string v5, " "

    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 515
    .local v4, "voiceStartIndex":I
    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    .line 516
    const-string v3, ""

    .line 521
    .local v3, "voice":Ljava/lang/String;
    :goto_1
    const-string v5, "\\."

    invoke-virtual {p0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 522
    .local v2, "nameAndClasses":[Ljava/lang/String;
    aget-object v1, v2, v6

    .line 524
    .local v1, "name":Ljava/lang/String;
    array-length v5, v2

    if-le v5, v7, :cond_2

    .line 525
    array-length v5, v2

    invoke-static {v2, v7, v5}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 529
    .local v0, "classes":[Ljava/lang/String;
    :goto_2
    new-instance v5, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$StartTag;

    invoke-direct {v5, v1, p1, v3, v0}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$StartTag;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 518
    .end local v0    # "classes":[Ljava/lang/String;
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "nameAndClasses":[Ljava/lang/String;
    .end local v3    # "voice":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 519
    .restart local v3    # "voice":Ljava/lang/String;
    invoke-virtual {p0, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 527
    .restart local v1    # "name":Ljava/lang/String;
    .restart local v2    # "nameAndClasses":[Ljava/lang/String;
    :cond_2
    sget-object v0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$StartTag;->NO_CLASSES:[Ljava/lang/String;

    .restart local v0    # "classes":[Ljava/lang/String;
    goto :goto_2
.end method

.method public static buildWholeCueVirtualTag()Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$StartTag;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 533
    new-instance v0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$StartTag;

    const-string v1, ""

    const-string v2, ""

    new-array v3, v4, [Ljava/lang/String;

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$StartTag;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    return-object v0
.end method
