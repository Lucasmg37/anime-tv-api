.class Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;
.super Ljava/lang/Object;
.source "Cea608Decoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CueBuilder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder$CueStyle;
    }
.end annotation


# static fields
.field private static final BASE_ROW:I = 0xf

.field private static final POSITION_UNSET:I = -0x1

.field private static final SCREEN_CHARWIDTH:I = 0x20


# instance fields
.field private captionMode:I

.field private captionRowCount:I

.field private final captionStringBuilder:Landroid/text/SpannableStringBuilder;

.field private indent:I

.field private final midrowStyles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder$CueStyle;",
            ">;"
        }
    .end annotation
.end field

.field private final preambleStyles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/text/style/CharacterStyle;",
            ">;"
        }
    .end annotation
.end field

.field private final rolledUpCaptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/text/SpannableString;",
            ">;"
        }
    .end annotation
.end field

.field private row:I

.field private tabOffset:I

.field private underlineStartPosition:I


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "captionMode"    # I
    .param p2, "captionRowCount"    # I

    .prologue
    .line 604
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 605
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->preambleStyles:Ljava/util/List;

    .line 606
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->midrowStyles:Ljava/util/List;

    .line 607
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->rolledUpCaptions:Ljava/util/List;

    .line 608
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->captionStringBuilder:Landroid/text/SpannableStringBuilder;

    .line 609
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->reset(I)V

    .line 610
    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->setCaptionRowCount(I)V

    .line 611
    return-void
.end method


# virtual methods
.method public append(C)V
    .locals 1
    .param p1, "text"    # C

    .prologue
    .line 690
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->captionStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 691
    return-void
.end method

.method public backspace()V
    .locals 3

    .prologue
    .line 635
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->captionStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    .line 636
    .local v0, "length":I
    if-lez v0, :cond_0

    .line 637
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->captionStringBuilder:Landroid/text/SpannableStringBuilder;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2, v0}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 639
    :cond_0
    return-void
.end method

.method public build()Lcom/google/android/exoplayer2/text/Cue;
    .locals 14

    .prologue
    .line 722
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 724
    .local v1, "cueString":Landroid/text/SpannableStringBuilder;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->rolledUpCaptions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v10, v0, :cond_0

    .line 725
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->rolledUpCaptions:Ljava/util/List;

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 726
    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 724
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 729
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->buildSpannableString()Landroid/text/SpannableString;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 731
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 733
    const/4 v0, 0x0

    .line 779
    :goto_1
    return-object v0

    .line 739
    :cond_1
    iget v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->indent:I

    iget v2, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->tabOffset:I

    add-int v13, v0, v2

    .line 741
    .local v13, "startPadding":I
    rsub-int/lit8 v0, v13, 0x20

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    sub-int v9, v0, v2

    .line 742
    .local v9, "endPadding":I
    sub-int v12, v13, v9

    .line 743
    .local v12, "startEndPaddingDelta":I
    iget v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->captionMode:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_4

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v2, 0x3

    if-lt v0, v2, :cond_2

    if-gez v9, :cond_4

    .line 747
    :cond_2
    const/high16 v6, 0x3f000000    # 0.5f

    .line 748
    .local v6, "position":F
    const/4 v7, 0x1

    .line 766
    .local v7, "positionAnchor":I
    :goto_2
    iget v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->captionMode:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    iget v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->row:I

    const/4 v2, 0x7

    if-le v0, v2, :cond_6

    .line 767
    :cond_3
    const/4 v5, 0x2

    .line 768
    .local v5, "lineAnchor":I
    iget v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->row:I

    add-int/lit8 v11, v0, -0xf

    .line 771
    .local v11, "line":I
    add-int/lit8 v11, v11, -0x2

    .line 779
    :goto_3
    new-instance v0, Lcom/google/android/exoplayer2/text/Cue;

    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    int-to-float v3, v11

    const/4 v4, 0x1

    const/4 v8, 0x1

    invoke-direct/range {v0 .. v8}, Lcom/google/android/exoplayer2/text/Cue;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;FIIFIF)V

    goto :goto_1

    .line 749
    .end local v5    # "lineAnchor":I
    .end local v6    # "position":F
    .end local v7    # "positionAnchor":I
    .end local v11    # "line":I
    :cond_4
    iget v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->captionMode:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_5

    if-lez v12, :cond_5

    .line 751
    rsub-int/lit8 v0, v9, 0x20

    int-to-float v0, v0

    const/high16 v2, 0x42000000    # 32.0f

    div-float v6, v0, v2

    .line 753
    .restart local v6    # "position":F
    const v0, 0x3f4ccccd    # 0.8f

    mul-float/2addr v0, v6

    const v2, 0x3dcccccd    # 0.1f

    add-float v6, v0, v2

    .line 754
    const/4 v7, 0x2

    .restart local v7    # "positionAnchor":I
    goto :goto_2

    .line 757
    .end local v6    # "position":F
    .end local v7    # "positionAnchor":I
    :cond_5
    int-to-float v0, v13

    const/high16 v2, 0x42000000    # 32.0f

    div-float v6, v0, v2

    .line 759
    .restart local v6    # "position":F
    const v0, 0x3f4ccccd    # 0.8f

    mul-float/2addr v0, v6

    const v2, 0x3dcccccd    # 0.1f

    add-float v6, v0, v2

    .line 760
    const/4 v7, 0x0

    .restart local v7    # "positionAnchor":I
    goto :goto_2

    .line 773
    :cond_6
    const/4 v5, 0x0

    .line 776
    .restart local v5    # "lineAnchor":I
    iget v11, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->row:I

    .restart local v11    # "line":I
    goto :goto_3
.end method

.method public buildSpannableString()Landroid/text/SpannableString;
    .locals 8

    .prologue
    const/16 v7, 0x21

    .line 694
    iget-object v4, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->captionStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    .line 697
    .local v3, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v4, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->preambleStyles:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 698
    iget-object v4, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->captionStringBuilder:Landroid/text/SpannableStringBuilder;

    iget-object v5, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->preambleStyles:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, v3, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 697
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 703
    :cond_0
    const/4 v2, 0x0

    :goto_1
    iget-object v4, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->midrowStyles:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 704
    iget-object v4, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->midrowStyles:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder$CueStyle;

    .line 705
    .local v0, "cueStyle":Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder$CueStyle;
    iget-object v4, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->midrowStyles:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    iget v5, v0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder$CueStyle;->nextStyleIncrement:I

    sub-int/2addr v4, v5

    if-ge v2, v4, :cond_1

    iget-object v4, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->midrowStyles:Ljava/util/List;

    iget v5, v0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder$CueStyle;->nextStyleIncrement:I

    add-int/2addr v5, v2

    .line 706
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder$CueStyle;

    iget v1, v4, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder$CueStyle;->start:I

    .line 708
    .local v1, "end":I
    :goto_2
    iget-object v4, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->captionStringBuilder:Landroid/text/SpannableStringBuilder;

    iget-object v5, v0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder$CueStyle;->style:Landroid/text/style/CharacterStyle;

    iget v6, v0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder$CueStyle;->start:I

    invoke-virtual {v4, v5, v6, v1, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 703
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v1    # "end":I
    :cond_1
    move v1, v3

    .line 706
    goto :goto_2

    .line 713
    .end local v0    # "cueStyle":Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder$CueStyle;
    :cond_2
    iget v4, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->underlineStartPosition:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_3

    .line 714
    iget-object v4, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->captionStringBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v5, Landroid/text/style/UnderlineSpan;

    invoke-direct {v5}, Landroid/text/style/UnderlineSpan;-><init>()V

    iget v6, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->underlineStartPosition:I

    invoke-virtual {v4, v5, v6, v3, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 718
    :cond_3
    new-instance v4, Landroid/text/SpannableString;

    iget-object v5, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->captionStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-direct {v4, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    return-object v4
.end method

.method public getRow()I
    .locals 1

    .prologue
    .line 642
    iget v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->row:I

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 630
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->preambleStyles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->midrowStyles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->rolledUpCaptions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->captionStringBuilder:Landroid/text/SpannableStringBuilder;

    .line 631
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reset(I)V
    .locals 2
    .param p1, "captionMode"    # I

    .prologue
    const/4 v1, 0x0

    .line 614
    iput p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->captionMode:I

    .line 615
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->preambleStyles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 616
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->midrowStyles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 617
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->rolledUpCaptions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 618
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->captionStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 619
    const/16 v0, 0xf

    iput v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->row:I

    .line 620
    iput v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->indent:I

    .line 621
    iput v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->tabOffset:I

    .line 622
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->underlineStartPosition:I

    .line 623
    return-void
.end method

.method public rollUp()V
    .locals 3

    .prologue
    .line 650
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->rolledUpCaptions:Ljava/util/List;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->buildSpannableString()Landroid/text/SpannableString;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 651
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->captionStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 652
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->preambleStyles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 653
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->midrowStyles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 654
    const/4 v1, -0x1

    iput v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->underlineStartPosition:I

    .line 656
    iget v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->captionRowCount:I

    iget v2, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->row:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 657
    .local v0, "numRows":I
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->rolledUpCaptions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v1, v0, :cond_0

    .line 658
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->rolledUpCaptions:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 660
    :cond_0
    return-void
.end method

.method public setCaptionRowCount(I)V
    .locals 0
    .param p1, "captionRowCount"    # I

    .prologue
    .line 626
    iput p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->captionRowCount:I

    .line 627
    return-void
.end method

.method public setIndent(I)V
    .locals 0
    .param p1, "indent"    # I

    .prologue
    .line 663
    iput p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->indent:I

    .line 664
    return-void
.end method

.method public setMidrowStyle(Landroid/text/style/CharacterStyle;I)V
    .locals 3
    .param p1, "style"    # Landroid/text/style/CharacterStyle;
    .param p2, "nextStyleIncrement"    # I

    .prologue
    .line 675
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->midrowStyles:Ljava/util/List;

    new-instance v1, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder$CueStyle;

    iget-object v2, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->captionStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    invoke-direct {v1, p1, v2, p2}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder$CueStyle;-><init>(Landroid/text/style/CharacterStyle;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 676
    return-void
.end method

.method public setPreambleStyle(Landroid/text/style/CharacterStyle;)V
    .locals 1
    .param p1, "style"    # Landroid/text/style/CharacterStyle;

    .prologue
    .line 671
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->preambleStyles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 672
    return-void
.end method

.method public setRow(I)V
    .locals 0
    .param p1, "row"    # I

    .prologue
    .line 646
    iput p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->row:I

    .line 647
    return-void
.end method

.method public setTab(I)V
    .locals 0
    .param p1, "tabs"    # I

    .prologue
    .line 667
    iput p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->tabOffset:I

    .line 668
    return-void
.end method

.method public setUnderline(Z)V
    .locals 6
    .param p1, "enabled"    # Z

    .prologue
    const/4 v5, -0x1

    .line 679
    if-eqz p1, :cond_1

    .line 680
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->captionStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->underlineStartPosition:I

    .line 687
    :cond_0
    :goto_0
    return-void

    .line 681
    :cond_1
    iget v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->underlineStartPosition:I

    if-eq v0, v5, :cond_0

    .line 683
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->captionStringBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v1, Landroid/text/style/UnderlineSpan;

    invoke-direct {v1}, Landroid/text/style/UnderlineSpan;-><init>()V

    iget v2, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->underlineStartPosition:I

    iget-object v3, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->captionStringBuilder:Landroid/text/SpannableStringBuilder;

    .line 684
    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    const/16 v4, 0x21

    .line 683
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 685
    iput v5, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->underlineStartPosition:I

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 785
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->captionStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
