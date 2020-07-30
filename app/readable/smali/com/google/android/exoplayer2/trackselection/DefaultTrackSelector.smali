.class public Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;
.super Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;
.source "DefaultTrackSelector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioConfigurationTuple;,
        Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;,
        Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;
    }
.end annotation


# static fields
.field private static final FRACTION_TO_CONSIDER_FULLSCREEN:F = 0.98f

.field private static final NO_TRACKS:[I

.field private static final WITHIN_RENDERER_CAPABILITIES_BONUS:I = 0x3e8


# instance fields
.field private final adaptiveTrackSelectionFactory:Lcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;

.field private final paramsReference:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 463
    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->NO_TRACKS:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 473
    const/4 v0, 0x0

    check-cast v0, Lcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;-><init>(Lcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;)V

    .line 474
    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;)V
    .locals 2
    .param p1, "adaptiveTrackSelectionFactory"    # Lcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;

    .prologue
    .line 493
    invoke-direct {p0}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;-><init>()V

    .line 494
    iput-object p1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->adaptiveTrackSelectionFactory:Lcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;

    .line 495
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;-><init>()V

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->paramsReference:Ljava/util/concurrent/atomic/AtomicReference;

    .line 496
    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/BandwidthMeter;)V
    .locals 1
    .param p1, "bandwidthMeter"    # Lcom/google/android/exoplayer2/upstream/BandwidthMeter;

    .prologue
    .line 484
    new-instance v0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/BandwidthMeter;)V

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;-><init>(Lcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;)V

    .line 485
    return-void
.end method

.method static synthetic access$000(II)I
    .locals 1
    .param p0, "x0"    # I
    .param p1, "x1"    # I

    .prologue
    .line 75
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->compareInts(II)I

    move-result v0

    return v0
.end method

.method private static compareFormatValues(II)I
    .locals 1
    .param p0, "first"    # I
    .param p1, "second"    # I

    .prologue
    const/4 v0, -0x1

    .line 776
    if-ne p0, v0, :cond_1

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-ne p1, v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    sub-int v0, p0, p1

    goto :goto_0
.end method

.method private static compareInts(II)I
    .locals 1
    .param p0, "first"    # I
    .param p1, "second"    # I

    .prologue
    .line 1208
    if-le p0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    if-le p1, p0, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static filterAdaptiveVideoTrackCountForMimeType(Lcom/google/android/exoplayer2/source/TrackGroup;[IILjava/lang/String;IIILjava/util/List;)V
    .locals 10
    .param p0, "group"    # Lcom/google/android/exoplayer2/source/TrackGroup;
    .param p1, "formatSupport"    # [I
    .param p2, "requiredAdaptiveSupport"    # I
    .param p3, "mimeType"    # Ljava/lang/String;
    .param p4, "maxVideoWidth"    # I
    .param p5, "maxVideoHeight"    # I
    .param p6, "maxVideoBitrate"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/source/TrackGroup;",
            "[II",
            "Ljava/lang/String;",
            "III",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 685
    .local p7, "selectedTrackIndices":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface/range {p7 .. p7}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v8, v1, -0x1

    .local v8, "i":I
    :goto_0
    if-ltz v8, :cond_1

    .line 686
    move-object/from16 v0, p7

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 687
    .local v9, "trackIndex":I
    invoke-virtual {p0, v9}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v1

    aget v3, p1, v9

    move-object v2, p3

    move v4, p2

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    invoke-static/range {v1 .. v7}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->isSupportedAdaptiveVideoTrack(Lcom/google/android/exoplayer2/Format;Ljava/lang/String;IIIII)Z

    move-result v1

    if-nez v1, :cond_0

    .line 690
    move-object/from16 v0, p7

    invoke-interface {v0, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 685
    :cond_0
    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    .line 693
    .end local v9    # "trackIndex":I
    :cond_1
    return-void
.end method

.method protected static formatHasLanguage(Lcom/google/android/exoplayer2/Format;Ljava/lang/String;)Z
    .locals 1
    .param p0, "format"    # Lcom/google/android/exoplayer2/Format;
    .param p1, "language"    # Ljava/lang/String;

    .prologue
    .line 1039
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/Format;->language:Ljava/lang/String;

    .line 1040
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->normalizeLanguageCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static formatHasNoLanguage(Lcom/google/android/exoplayer2/Format;)Z
    .locals 1
    .param p0, "format"    # Lcom/google/android/exoplayer2/Format;

    .prologue
    .line 1026
    iget-object v0, p0, Lcom/google/android/exoplayer2/Format;->language:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "und"

    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->formatHasLanguage(Lcom/google/android/exoplayer2/Format;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getAdaptiveAudioTrackCount(Lcom/google/android/exoplayer2/source/TrackGroup;[ILcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioConfigurationTuple;)I
    .locals 4
    .param p0, "group"    # Lcom/google/android/exoplayer2/source/TrackGroup;
    .param p1, "formatSupport"    # [I
    .param p2, "configuration"    # Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioConfigurationTuple;

    .prologue
    .line 871
    const/4 v0, 0x0

    .line 872
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    if-ge v1, v2, :cond_1

    .line 873
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v2

    aget v3, p1, v1

    invoke-static {v2, v3, p2}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->isSupportedAdaptiveAudioTrack(Lcom/google/android/exoplayer2/Format;ILcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioConfigurationTuple;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 874
    add-int/lit8 v0, v0, 0x1

    .line 872
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 877
    :cond_1
    return v0
.end method

.method private static getAdaptiveAudioTracks(Lcom/google/android/exoplayer2/source/TrackGroup;[IZ)[I
    .locals 13
    .param p0, "group"    # Lcom/google/android/exoplayer2/source/TrackGroup;
    .param p1, "formatSupport"    # [I
    .param p2, "allowMixedMimeTypes"    # Z

    .prologue
    .line 838
    const/4 v9, 0x0

    .line 839
    .local v9, "selectedConfigurationTrackCount":I
    const/4 v8, 0x0

    .line 840
    .local v8, "selectedConfiguration":Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioConfigurationTuple;
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 841
    .local v7, "seenConfigurationTuples":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioConfigurationTuple;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget v10, p0, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    if-ge v4, v10, :cond_2

    .line 842
    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v3

    .line 843
    .local v3, "format":Lcom/google/android/exoplayer2/Format;
    new-instance v1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioConfigurationTuple;

    iget v11, v3, Lcom/google/android/exoplayer2/Format;->channelCount:I

    iget v12, v3, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    if-eqz p2, :cond_1

    const/4 v10, 0x0

    :goto_1
    invoke-direct {v1, v11, v12, v10}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioConfigurationTuple;-><init>(IILjava/lang/String;)V

    .line 846
    .local v1, "configuration":Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioConfigurationTuple;
    invoke-virtual {v7, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 847
    invoke-static {p0, p1, v1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->getAdaptiveAudioTrackCount(Lcom/google/android/exoplayer2/source/TrackGroup;[ILcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioConfigurationTuple;)I

    move-result v2

    .line 848
    .local v2, "configurationCount":I
    if-le v2, v9, :cond_0

    .line 849
    move-object v8, v1

    .line 850
    move v9, v2

    .line 841
    .end local v2    # "configurationCount":I
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 843
    .end local v1    # "configuration":Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioConfigurationTuple;
    :cond_1
    iget-object v10, v3, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    goto :goto_1

    .line 855
    .end local v3    # "format":Lcom/google/android/exoplayer2/Format;
    :cond_2
    const/4 v10, 0x1

    if-le v9, v10, :cond_4

    .line 856
    new-array v0, v9, [I

    .line 857
    .local v0, "adaptiveIndices":[I
    const/4 v5, 0x0

    .line 858
    .local v5, "index":I
    const/4 v4, 0x0

    :goto_2
    iget v10, p0, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    if-ge v4, v10, :cond_5

    .line 859
    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v10

    aget v11, p1, v4

    invoke-static {v10, v11, v8}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->isSupportedAdaptiveAudioTrack(Lcom/google/android/exoplayer2/Format;ILcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioConfigurationTuple;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 861
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "index":I
    .local v6, "index":I
    aput v4, v0, v5

    move v5, v6

    .line 858
    .end local v6    # "index":I
    .restart local v5    # "index":I
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 866
    .end local v0    # "adaptiveIndices":[I
    .end local v5    # "index":I
    :cond_4
    sget-object v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->NO_TRACKS:[I

    :cond_5
    return-object v0
.end method

.method private static getAdaptiveVideoTrackCountForMimeType(Lcom/google/android/exoplayer2/source/TrackGroup;[IILjava/lang/String;IIILjava/util/List;)I
    .locals 11
    .param p0, "group"    # Lcom/google/android/exoplayer2/source/TrackGroup;
    .param p1, "formatSupport"    # [I
    .param p2, "requiredAdaptiveSupport"    # I
    .param p3, "mimeType"    # Ljava/lang/String;
    .param p4, "maxVideoWidth"    # I
    .param p5, "maxVideoHeight"    # I
    .param p6, "maxVideoBitrate"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/source/TrackGroup;",
            "[II",
            "Ljava/lang/String;",
            "III",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 670
    .local p7, "selectedTrackIndices":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v8, 0x0

    .line 671
    .local v8, "adaptiveTrackCount":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    invoke-interface/range {p7 .. p7}, Ljava/util/List;->size()I

    move-result v1

    if-ge v9, v1, :cond_1

    .line 672
    move-object/from16 v0, p7

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 673
    .local v10, "trackIndex":I
    invoke-virtual {p0, v10}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v1

    aget v3, p1, v10

    move-object v2, p3

    move v4, p2

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-static/range {v1 .. v7}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->isSupportedAdaptiveVideoTrack(Lcom/google/android/exoplayer2/Format;Ljava/lang/String;IIIII)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 676
    add-int/lit8 v8, v8, 0x1

    .line 671
    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 679
    .end local v10    # "trackIndex":I
    :cond_1
    return v8
.end method

.method private static getAdaptiveVideoTracksForGroup(Lcom/google/android/exoplayer2/source/TrackGroup;[IZIIIIIIZ)[I
    .locals 25
    .param p0, "group"    # Lcom/google/android/exoplayer2/source/TrackGroup;
    .param p1, "formatSupport"    # [I
    .param p2, "allowMixedMimeTypes"    # Z
    .param p3, "requiredAdaptiveSupport"    # I
    .param p4, "maxVideoWidth"    # I
    .param p5, "maxVideoHeight"    # I
    .param p6, "maxVideoBitrate"    # I
    .param p7, "viewportWidth"    # I
    .param p8, "viewportHeight"    # I
    .param p9, "viewportOrientationMayChange"    # Z

    .prologue
    .line 630
    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    const/4 v5, 0x2

    if-ge v4, v5, :cond_0

    .line 631
    sget-object v4, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->NO_TRACKS:[I

    .line 664
    :goto_0
    return-object v4

    .line 634
    :cond_0
    move-object/from16 v0, p0

    move/from16 v1, p7

    move/from16 v2, p8

    move/from16 v3, p9

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->getViewportFilteredTrackIndices(Lcom/google/android/exoplayer2/source/TrackGroup;IIZ)Ljava/util/List;

    move-result-object v11

    .line 636
    .local v11, "selectedTrackIndices":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_1

    .line 637
    sget-object v4, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->NO_TRACKS:[I

    goto :goto_0

    .line 640
    :cond_1
    const/4 v15, 0x0

    .line 641
    .local v15, "selectedMimeType":Ljava/lang/String;
    if-nez p2, :cond_3

    .line 643
    new-instance v22, Ljava/util/HashSet;

    invoke-direct/range {v22 .. v22}, Ljava/util/HashSet;-><init>()V

    .line 644
    .local v22, "seenMimeTypes":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const/16 v23, 0x0

    .line 645
    .local v23, "selectedMimeTypeTrackCount":I
    const/16 v21, 0x0

    .local v21, "i":I
    :goto_1
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v4

    move/from16 v0, v21

    if-ge v0, v4, :cond_3

    .line 646
    move/from16 v0, v21

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v24

    .line 647
    .local v24, "trackIndex":I
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v4

    iget-object v7, v4, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 648
    .local v7, "sampleMimeType":Ljava/lang/String;
    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move/from16 v6, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    .line 649
    invoke-static/range {v4 .. v11}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->getAdaptiveVideoTrackCountForMimeType(Lcom/google/android/exoplayer2/source/TrackGroup;[IILjava/lang/String;IIILjava/util/List;)I

    move-result v20

    .line 652
    .local v20, "countForMimeType":I
    move/from16 v0, v20

    move/from16 v1, v23

    if-le v0, v1, :cond_2

    .line 653
    move-object v15, v7

    .line 654
    move/from16 v23, v20

    .line 645
    .end local v20    # "countForMimeType":I
    :cond_2
    add-int/lit8 v21, v21, 0x1

    goto :goto_1

    .end local v7    # "sampleMimeType":Ljava/lang/String;
    .end local v21    # "i":I
    .end local v22    # "seenMimeTypes":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v23    # "selectedMimeTypeTrackCount":I
    .end local v24    # "trackIndex":I
    :cond_3
    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move/from16 v14, p3

    move/from16 v16, p4

    move/from16 v17, p5

    move/from16 v18, p6

    move-object/from16 v19, v11

    .line 661
    invoke-static/range {v12 .. v19}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->filterAdaptiveVideoTrackCountForMimeType(Lcom/google/android/exoplayer2/source/TrackGroup;[IILjava/lang/String;IIILjava/util/List;)V

    .line 664
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_4

    sget-object v4, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->NO_TRACKS:[I

    goto :goto_0

    :cond_4
    invoke-static {v11}, Lcom/google/android/exoplayer2/util/Util;->toArray(Ljava/util/List;)[I

    move-result-object v4

    goto/16 :goto_0
.end method

.method private static getMaxVideoSizeInViewport(ZIIII)Landroid/graphics/Point;
    .locals 4
    .param p0, "orientationMayChange"    # Z
    .param p1, "viewportWidth"    # I
    .param p2, "viewportHeight"    # I
    .param p3, "videoWidth"    # I
    .param p4, "videoHeight"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1098
    if-eqz p0, :cond_0

    if-le p3, p4, :cond_1

    move v3, v1

    :goto_0
    if-le p1, p2, :cond_2

    :goto_1
    if-eq v3, v1, :cond_0

    .line 1100
    move v0, p1

    .line 1101
    .local v0, "tempViewportWidth":I
    move p1, p2

    .line 1102
    move p2, v0

    .line 1105
    .end local v0    # "tempViewportWidth":I
    :cond_0
    mul-int v1, p3, p2

    mul-int v2, p4, p1

    if-lt v1, v2, :cond_3

    .line 1107
    new-instance v1, Landroid/graphics/Point;

    mul-int v2, p1, p4

    invoke-static {v2, p3}, Lcom/google/android/exoplayer2/util/Util;->ceilDivide(II)I

    move-result v2

    invoke-direct {v1, p1, v2}, Landroid/graphics/Point;-><init>(II)V

    .line 1110
    :goto_2
    return-object v1

    :cond_1
    move v3, v2

    .line 1098
    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1

    .line 1110
    :cond_3
    new-instance v1, Landroid/graphics/Point;

    mul-int v2, p2, p3

    invoke-static {v2, p4}, Lcom/google/android/exoplayer2/util/Util;->ceilDivide(II)I

    move-result v2

    invoke-direct {v1, v2, p2}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_2
.end method

.method private static getViewportFilteredTrackIndices(Lcom/google/android/exoplayer2/source/TrackGroup;IIZ)Ljava/util/List;
    .locals 11
    .param p0, "group"    # Lcom/google/android/exoplayer2/source/TrackGroup;
    .param p1, "viewportWidth"    # I
    .param p2, "viewportHeight"    # I
    .param p3, "orientationMayChange"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/source/TrackGroup;",
            "IIZ)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const v10, 0x3f7ae148    # 0.98f

    const v9, 0x7fffffff

    .line 1048
    new-instance v5, Ljava/util/ArrayList;

    iget v7, p0, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 1049
    .local v5, "selectedTrackIndices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v7, p0, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    if-ge v1, v7, :cond_0

    .line 1050
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1049
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1053
    :cond_0
    if-eq p1, v9, :cond_1

    if-ne p2, v9, :cond_2

    .line 1089
    :cond_1
    return-object v5

    .line 1058
    :cond_2
    const v2, 0x7fffffff

    .line 1059
    .local v2, "maxVideoPixelsToRetain":I
    const/4 v1, 0x0

    :goto_1
    iget v7, p0, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    if-ge v1, v7, :cond_4

    .line 1060
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    .line 1064
    .local v0, "format":Lcom/google/android/exoplayer2/Format;
    iget v7, v0, Lcom/google/android/exoplayer2/Format;->width:I

    if-lez v7, :cond_3

    iget v7, v0, Lcom/google/android/exoplayer2/Format;->height:I

    if-lez v7, :cond_3

    .line 1065
    iget v7, v0, Lcom/google/android/exoplayer2/Format;->width:I

    iget v8, v0, Lcom/google/android/exoplayer2/Format;->height:I

    invoke-static {p3, p1, p2, v7, v8}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->getMaxVideoSizeInViewport(ZIIII)Landroid/graphics/Point;

    move-result-object v3

    .line 1067
    .local v3, "maxVideoSizeInViewport":Landroid/graphics/Point;
    iget v7, v0, Lcom/google/android/exoplayer2/Format;->width:I

    iget v8, v0, Lcom/google/android/exoplayer2/Format;->height:I

    mul-int v6, v7, v8

    .line 1068
    .local v6, "videoPixels":I
    iget v7, v0, Lcom/google/android/exoplayer2/Format;->width:I

    iget v8, v3, Landroid/graphics/Point;->x:I

    int-to-float v8, v8

    mul-float/2addr v8, v10

    float-to-int v8, v8

    if-lt v7, v8, :cond_3

    iget v7, v0, Lcom/google/android/exoplayer2/Format;->height:I

    iget v8, v3, Landroid/graphics/Point;->y:I

    int-to-float v8, v8

    mul-float/2addr v8, v10

    float-to-int v8, v8

    if-lt v7, v8, :cond_3

    if-ge v6, v2, :cond_3

    .line 1071
    move v2, v6

    .line 1059
    .end local v3    # "maxVideoSizeInViewport":Landroid/graphics/Point;
    .end local v6    # "videoPixels":I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1079
    .end local v0    # "format":Lcom/google/android/exoplayer2/Format;
    :cond_4
    if-eq v2, v9, :cond_1

    .line 1080
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v1, v7, -0x1

    :goto_2
    if-ltz v1, :cond_1

    .line 1081
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    .line 1082
    .restart local v0    # "format":Lcom/google/android/exoplayer2/Format;
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Format;->getPixelCount()I

    move-result v4

    .line 1083
    .local v4, "pixelCount":I
    const/4 v7, -0x1

    if-eq v4, v7, :cond_5

    if-le v4, v2, :cond_6

    .line 1084
    :cond_5
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1080
    :cond_6
    add-int/lit8 v1, v1, -0x1

    goto :goto_2
.end method

.method protected static isSupported(IZ)Z
    .locals 2
    .param p0, "formatSupport"    # I
    .param p1, "allowExceedsCapabilities"    # Z

    .prologue
    .line 1014
    and-int/lit8 v0, p0, 0x7

    .line 1015
    .local v0, "maskedSupport":I
    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    if-eqz p1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isSupportedAdaptiveAudioTrack(Lcom/google/android/exoplayer2/Format;ILcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioConfigurationTuple;)Z
    .locals 3
    .param p0, "format"    # Lcom/google/android/exoplayer2/Format;
    .param p1, "formatSupport"    # I
    .param p2, "configuration"    # Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioConfigurationTuple;

    .prologue
    const/4 v0, 0x0

    .line 882
    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->isSupported(IZ)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/google/android/exoplayer2/Format;->channelCount:I

    iget v2, p2, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioConfigurationTuple;->channelCount:I

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    iget v2, p2, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioConfigurationTuple;->sampleRate:I

    if-ne v1, v2, :cond_1

    iget-object v1, p2, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioConfigurationTuple;->mimeType:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p2, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioConfigurationTuple;->mimeType:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 885
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private static isSupportedAdaptiveVideoTrack(Lcom/google/android/exoplayer2/Format;Ljava/lang/String;IIIII)Z
    .locals 3
    .param p0, "format"    # Lcom/google/android/exoplayer2/Format;
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "formatSupport"    # I
    .param p3, "requiredAdaptiveSupport"    # I
    .param p4, "maxVideoWidth"    # I
    .param p5, "maxVideoHeight"    # I
    .param p6, "maxVideoBitrate"    # I

    .prologue
    const/4 v0, 0x0

    const/4 v2, -0x1

    .line 698
    invoke-static {p2, v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->isSupported(IZ)Z

    move-result v1

    if-eqz v1, :cond_4

    and-int v1, p2, p3

    if-eqz v1, :cond_4

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 699
    invoke-static {v1, p1}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_0
    iget v1, p0, Lcom/google/android/exoplayer2/Format;->width:I

    if-eq v1, v2, :cond_1

    iget v1, p0, Lcom/google/android/exoplayer2/Format;->width:I

    if-gt v1, p4, :cond_4

    :cond_1
    iget v1, p0, Lcom/google/android/exoplayer2/Format;->height:I

    if-eq v1, v2, :cond_2

    iget v1, p0, Lcom/google/android/exoplayer2/Format;->height:I

    if-gt v1, p5, :cond_4

    :cond_2
    iget v1, p0, Lcom/google/android/exoplayer2/Format;->bitrate:I

    if-eq v1, v2, :cond_3

    iget v1, p0, Lcom/google/android/exoplayer2/Format;->bitrate:I

    if-gt v1, p6, :cond_4

    :cond_3
    const/4 v0, 0x1

    :cond_4
    return v0
.end method

.method private static selectAdaptiveVideoTrack(Lcom/google/android/exoplayer2/RendererCapabilities;Lcom/google/android/exoplayer2/source/TrackGroupArray;[[ILcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;Lcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;)Lcom/google/android/exoplayer2/trackselection/TrackSelection;
    .locals 13
    .param p0, "rendererCapabilities"    # Lcom/google/android/exoplayer2/RendererCapabilities;
    .param p1, "groups"    # Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .param p2, "formatSupport"    # [[I
    .param p3, "params"    # Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;
    .param p4, "adaptiveTrackSelectionFactory"    # Lcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 608
    move-object/from16 v0, p3

    iget-boolean v2, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowNonSeamlessAdaptiveness:Z

    if-eqz v2, :cond_0

    const/16 v4, 0x18

    .line 611
    .local v4, "requiredAdaptiveSupport":I
    :goto_0
    move-object/from16 v0, p3

    iget-boolean v2, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowMixedMimeAdaptiveness:Z

    if-eqz v2, :cond_1

    .line 612
    invoke-interface {p0}, Lcom/google/android/exoplayer2/RendererCapabilities;->supportsMixedMimeTypeAdaptation()I

    move-result v2

    and-int/2addr v2, v4

    if-eqz v2, :cond_1

    const/4 v3, 0x1

    .line 613
    .local v3, "allowMixedMimeTypes":Z
    :goto_1
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_2
    iget v2, p1, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    if-ge v12, v2, :cond_3

    .line 614
    invoke-virtual {p1, v12}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->get(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v1

    .line 615
    .local v1, "group":Lcom/google/android/exoplayer2/source/TrackGroup;
    aget-object v2, p2, v12

    move-object/from16 v0, p3

    iget v5, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->maxVideoWidth:I

    move-object/from16 v0, p3

    iget v6, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->maxVideoHeight:I

    move-object/from16 v0, p3

    iget v7, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->maxVideoBitrate:I

    move-object/from16 v0, p3

    iget v8, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->viewportWidth:I

    move-object/from16 v0, p3

    iget v9, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->viewportHeight:I

    move-object/from16 v0, p3

    iget-boolean v10, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->viewportOrientationMayChange:Z

    invoke-static/range {v1 .. v10}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->getAdaptiveVideoTracksForGroup(Lcom/google/android/exoplayer2/source/TrackGroup;[IZIIIIIIZ)[I

    move-result-object v11

    .line 619
    .local v11, "adaptiveTracks":[I
    array-length v2, v11

    if-lez v2, :cond_2

    .line 620
    move-object/from16 v0, p4

    invoke-interface {v0, v1, v11}, Lcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;->createTrackSelection(Lcom/google/android/exoplayer2/source/TrackGroup;[I)Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    move-result-object v2

    .line 623
    .end local v1    # "group":Lcom/google/android/exoplayer2/source/TrackGroup;
    .end local v11    # "adaptiveTracks":[I
    :goto_3
    return-object v2

    .line 608
    .end local v3    # "allowMixedMimeTypes":Z
    .end local v4    # "requiredAdaptiveSupport":I
    .end local v12    # "i":I
    :cond_0
    const/16 v4, 0x10

    goto :goto_0

    .line 612
    .restart local v4    # "requiredAdaptiveSupport":I
    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 613
    .restart local v1    # "group":Lcom/google/android/exoplayer2/source/TrackGroup;
    .restart local v3    # "allowMixedMimeTypes":Z
    .restart local v11    # "adaptiveTracks":[I
    .restart local v12    # "i":I
    :cond_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 623
    .end local v1    # "group":Lcom/google/android/exoplayer2/source/TrackGroup;
    .end local v11    # "adaptiveTracks":[I
    :cond_3
    const/4 v2, 0x0

    goto :goto_3
.end method

.method private static selectFixedVideoTrack(Lcom/google/android/exoplayer2/source/TrackGroupArray;[[ILcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;)Lcom/google/android/exoplayer2/trackselection/TrackSelection;
    .locals 24
    .param p0, "groups"    # Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .param p1, "formatSupport"    # [[I
    .param p2, "params"    # Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    .prologue
    .line 707
    const/4 v12, 0x0

    .line 708
    .local v12, "selectedGroup":Lcom/google/android/exoplayer2/source/TrackGroup;
    const/4 v14, 0x0

    .line 709
    .local v14, "selectedTrackIndex":I
    const/16 v16, 0x0

    .line 710
    .local v16, "selectedTrackScore":I
    const/4 v11, -0x1

    .line 711
    .local v11, "selectedBitrate":I
    const/4 v13, -0x1

    .line 712
    .local v13, "selectedPixelCount":I
    const/4 v7, 0x0

    .local v7, "groupIndex":I
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v7, v0, :cond_11

    .line 713
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->get(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v18

    .line 714
    .local v18, "trackGroup":Lcom/google/android/exoplayer2/source/TrackGroup;
    move-object/from16 v0, p2

    iget v0, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->viewportWidth:I

    move/from16 v21, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->viewportHeight:I

    move/from16 v22, v0

    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->viewportOrientationMayChange:Z

    move/from16 v23, v0

    move-object/from16 v0, v18

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->getViewportFilteredTrackIndices(Lcom/google/android/exoplayer2/source/TrackGroup;IIZ)Ljava/util/List;

    move-result-object v15

    .line 716
    .local v15, "selectedTrackIndices":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    aget-object v17, p1, v7

    .line 717
    .local v17, "trackFormatSupport":[I
    const/16 v19, 0x0

    .local v19, "trackIndex":I
    :goto_1
    move-object/from16 v0, v18

    iget v0, v0, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    move/from16 v21, v0

    move/from16 v0, v19

    move/from16 v1, v21

    if-ge v0, v1, :cond_10

    .line 718
    aget v21, v17, v19

    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->exceedRendererCapabilitiesIfNecessary:Z

    move/from16 v22, v0

    invoke-static/range {v21 .. v22}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->isSupported(IZ)Z

    move-result v21

    if-eqz v21, :cond_3

    .line 720
    invoke-virtual/range {v18 .. v19}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v5

    .line 721
    .local v5, "format":Lcom/google/android/exoplayer2/Format;
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-interface {v15, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_4

    iget v0, v5, Lcom/google/android/exoplayer2/Format;->width:I

    move/from16 v21, v0

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_0

    iget v0, v5, Lcom/google/android/exoplayer2/Format;->width:I

    move/from16 v21, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->maxVideoWidth:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-gt v0, v1, :cond_4

    :cond_0
    iget v0, v5, Lcom/google/android/exoplayer2/Format;->height:I

    move/from16 v21, v0

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_1

    iget v0, v5, Lcom/google/android/exoplayer2/Format;->height:I

    move/from16 v21, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->maxVideoHeight:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-gt v0, v1, :cond_4

    :cond_1
    iget v0, v5, Lcom/google/android/exoplayer2/Format;->bitrate:I

    move/from16 v21, v0

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_2

    iget v0, v5, Lcom/google/android/exoplayer2/Format;->bitrate:I

    move/from16 v21, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->maxVideoBitrate:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-gt v0, v1, :cond_4

    :cond_2
    const/4 v9, 0x1

    .line 725
    .local v9, "isWithinConstraints":Z
    :goto_2
    if-nez v9, :cond_5

    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->exceedVideoConstraintsIfNecessary:Z

    move/from16 v21, v0

    if-nez v21, :cond_5

    .line 717
    .end local v5    # "format":Lcom/google/android/exoplayer2/Format;
    .end local v9    # "isWithinConstraints":Z
    :cond_3
    :goto_3
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_1

    .line 721
    .restart local v5    # "format":Lcom/google/android/exoplayer2/Format;
    :cond_4
    const/4 v9, 0x0

    goto :goto_2

    .line 729
    .restart local v9    # "isWithinConstraints":Z
    :cond_5
    if-eqz v9, :cond_8

    const/16 v20, 0x2

    .line 730
    .local v20, "trackScore":I
    :goto_4
    aget v21, v17, v19

    const/16 v22, 0x0

    invoke-static/range {v21 .. v22}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->isSupported(IZ)Z

    move-result v8

    .line 731
    .local v8, "isWithinCapabilities":Z
    if-eqz v8, :cond_6

    .line 732
    move/from16 v0, v20

    add-int/lit16 v0, v0, 0x3e8

    move/from16 v20, v0

    .line 734
    :cond_6
    move/from16 v0, v20

    move/from16 v1, v16

    if-le v0, v1, :cond_9

    const/4 v10, 0x1

    .line 735
    .local v10, "selectTrack":Z
    :goto_5
    move/from16 v0, v20

    move/from16 v1, v16

    if-ne v0, v1, :cond_7

    .line 736
    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->forceLowestBitrate:Z

    move/from16 v21, v0

    if-eqz v21, :cond_b

    .line 738
    iget v0, v5, Lcom/google/android/exoplayer2/Format;->bitrate:I

    move/from16 v21, v0

    move/from16 v0, v21

    invoke-static {v0, v11}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->compareFormatValues(II)I

    move-result v21

    if-gez v21, :cond_a

    const/4 v10, 0x1

    .line 752
    :cond_7
    :goto_6
    if-eqz v10, :cond_3

    .line 753
    move-object/from16 v12, v18

    .line 754
    move/from16 v14, v19

    .line 755
    move/from16 v16, v20

    .line 756
    iget v11, v5, Lcom/google/android/exoplayer2/Format;->bitrate:I

    .line 757
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/Format;->getPixelCount()I

    move-result v13

    goto :goto_3

    .line 729
    .end local v8    # "isWithinCapabilities":Z
    .end local v10    # "selectTrack":Z
    .end local v20    # "trackScore":I
    :cond_8
    const/16 v20, 0x1

    goto :goto_4

    .line 734
    .restart local v8    # "isWithinCapabilities":Z
    .restart local v20    # "trackScore":I
    :cond_9
    const/4 v10, 0x0

    goto :goto_5

    .line 738
    .restart local v10    # "selectTrack":Z
    :cond_a
    const/4 v10, 0x0

    goto :goto_6

    .line 744
    :cond_b
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/Format;->getPixelCount()I

    move-result v6

    .line 745
    .local v6, "formatPixelCount":I
    if-eq v6, v13, :cond_c

    .line 746
    invoke-static {v6, v13}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->compareFormatValues(II)I

    move-result v4

    .line 748
    .local v4, "comparisonResult":I
    :goto_7
    if-eqz v8, :cond_e

    if-eqz v9, :cond_e

    if-lez v4, :cond_d

    const/4 v10, 0x1

    :goto_8
    goto :goto_6

    .line 746
    .end local v4    # "comparisonResult":I
    :cond_c
    iget v0, v5, Lcom/google/android/exoplayer2/Format;->bitrate:I

    move/from16 v21, v0

    .line 747
    move/from16 v0, v21

    invoke-static {v0, v11}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->compareFormatValues(II)I

    move-result v4

    goto :goto_7

    .line 748
    .restart local v4    # "comparisonResult":I
    :cond_d
    const/4 v10, 0x0

    goto :goto_8

    :cond_e
    if-gez v4, :cond_f

    const/4 v10, 0x1

    goto :goto_8

    :cond_f
    const/4 v10, 0x0

    goto :goto_8

    .line 712
    .end local v4    # "comparisonResult":I
    .end local v5    # "format":Lcom/google/android/exoplayer2/Format;
    .end local v6    # "formatPixelCount":I
    .end local v8    # "isWithinCapabilities":Z
    .end local v9    # "isWithinConstraints":Z
    .end local v10    # "selectTrack":Z
    .end local v20    # "trackScore":I
    :cond_10
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 762
    .end local v15    # "selectedTrackIndices":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v17    # "trackFormatSupport":[I
    .end local v18    # "trackGroup":Lcom/google/android/exoplayer2/source/TrackGroup;
    .end local v19    # "trackIndex":I
    :cond_11
    if-nez v12, :cond_12

    const/16 v21, 0x0

    :goto_9
    return-object v21

    :cond_12
    new-instance v21, Lcom/google/android/exoplayer2/trackselection/FixedTrackSelection;

    move-object/from16 v0, v21

    invoke-direct {v0, v12, v14}, Lcom/google/android/exoplayer2/trackselection/FixedTrackSelection;-><init>(Lcom/google/android/exoplayer2/source/TrackGroup;I)V

    goto :goto_9
.end method


# virtual methods
.method public getParameters()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;
    .locals 1

    .prologue
    .line 516
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->paramsReference:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    return-object v0
.end method

.method protected selectAudioTrack(Lcom/google/android/exoplayer2/source/TrackGroupArray;[[ILcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;Lcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;)Lcom/google/android/exoplayer2/trackselection/TrackSelection;
    .locals 14
    .param p1, "groups"    # Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .param p2, "formatSupport"    # [[I
    .param p3, "params"    # Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;
    .param p4, "adaptiveTrackSelectionFactory"    # Lcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 798
    const/4 v6, -0x1

    .line 799
    .local v6, "selectedTrackIndex":I
    const/4 v5, -0x1

    .line 800
    .local v5, "selectedGroupIndex":I
    const/4 v7, 0x0

    .line 801
    .local v7, "selectedTrackScore":Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;
    const/4 v3, 0x0

    .local v3, "groupIndex":I
    :goto_0
    iget v12, p1, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    if-ge v3, v12, :cond_3

    .line 802
    invoke-virtual {p1, v3}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->get(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v9

    .line 803
    .local v9, "trackGroup":Lcom/google/android/exoplayer2/source/TrackGroup;
    aget-object v8, p2, v3

    .line 804
    .local v8, "trackFormatSupport":[I
    const/4 v10, 0x0

    .local v10, "trackIndex":I
    :goto_1
    iget v12, v9, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    if-ge v10, v12, :cond_2

    .line 805
    aget v12, v8, v10

    move-object/from16 v0, p3

    iget-boolean v13, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->exceedRendererCapabilitiesIfNecessary:Z

    invoke-static {v12, v13}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->isSupported(IZ)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 807
    invoke-virtual {v9, v10}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v2

    .line 808
    .local v2, "format":Lcom/google/android/exoplayer2/Format;
    new-instance v11, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;

    aget v12, v8, v10

    move-object/from16 v0, p3

    invoke-direct {v11, v2, v0, v12}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;-><init>(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;I)V

    .line 810
    .local v11, "trackScore":Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;
    if-eqz v7, :cond_0

    invoke-virtual {v11, v7}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;->compareTo(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;)I

    move-result v12

    if-lez v12, :cond_1

    .line 811
    :cond_0
    move v5, v3

    .line 812
    move v6, v10

    .line 813
    move-object v7, v11

    .line 804
    .end local v2    # "format":Lcom/google/android/exoplayer2/Format;
    .end local v11    # "trackScore":Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;
    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 801
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 819
    .end local v8    # "trackFormatSupport":[I
    .end local v9    # "trackGroup":Lcom/google/android/exoplayer2/source/TrackGroup;
    .end local v10    # "trackIndex":I
    :cond_3
    const/4 v12, -0x1

    if-ne v5, v12, :cond_4

    .line 820
    const/4 v12, 0x0

    .line 833
    :goto_2
    return-object v12

    .line 823
    :cond_4
    invoke-virtual {p1, v5}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->get(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v4

    .line 824
    .local v4, "selectedGroup":Lcom/google/android/exoplayer2/source/TrackGroup;
    move-object/from16 v0, p3

    iget-boolean v12, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->forceLowestBitrate:Z

    if-nez v12, :cond_5

    if-eqz p4, :cond_5

    .line 826
    aget-object v12, p2, v5

    move-object/from16 v0, p3

    iget-boolean v13, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowMixedMimeAdaptiveness:Z

    invoke-static {v4, v12, v13}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->getAdaptiveAudioTracks(Lcom/google/android/exoplayer2/source/TrackGroup;[IZ)[I

    move-result-object v1

    .line 828
    .local v1, "adaptiveTracks":[I
    array-length v12, v1

    if-lez v12, :cond_5

    .line 829
    move-object/from16 v0, p4

    invoke-interface {v0, v4, v1}, Lcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;->createTrackSelection(Lcom/google/android/exoplayer2/source/TrackGroup;[I)Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    move-result-object v12

    goto :goto_2

    .line 833
    .end local v1    # "adaptiveTracks":[I
    :cond_5
    new-instance v12, Lcom/google/android/exoplayer2/trackselection/FixedTrackSelection;

    invoke-direct {v12, v4, v6}, Lcom/google/android/exoplayer2/trackselection/FixedTrackSelection;-><init>(Lcom/google/android/exoplayer2/source/TrackGroup;I)V

    goto :goto_2
.end method

.method protected selectOtherTrack(ILcom/google/android/exoplayer2/source/TrackGroupArray;[[ILcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;)Lcom/google/android/exoplayer2/trackselection/TrackSelection;
    .locals 13
    .param p1, "trackType"    # I
    .param p2, "groups"    # Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .param p3, "formatSupport"    # [[I
    .param p4, "params"    # Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 973
    const/4 v4, 0x0

    .line 974
    .local v4, "selectedGroup":Lcom/google/android/exoplayer2/source/TrackGroup;
    const/4 v5, 0x0

    .line 975
    .local v5, "selectedTrackIndex":I
    const/4 v6, 0x0

    .line 976
    .local v6, "selectedTrackScore":I
    const/4 v2, 0x0

    .local v2, "groupIndex":I
    :goto_0
    iget v11, p2, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    if-ge v2, v11, :cond_5

    .line 977
    invoke-virtual {p2, v2}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->get(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v8

    .line 978
    .local v8, "trackGroup":Lcom/google/android/exoplayer2/source/TrackGroup;
    aget-object v7, p3, v2

    .line 979
    .local v7, "trackFormatSupport":[I
    const/4 v9, 0x0

    .local v9, "trackIndex":I
    :goto_1
    iget v11, v8, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    if-ge v9, v11, :cond_4

    .line 980
    aget v11, v7, v9

    move-object/from16 v0, p4

    iget-boolean v12, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->exceedRendererCapabilitiesIfNecessary:Z

    invoke-static {v11, v12}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->isSupported(IZ)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 982
    invoke-virtual {v8, v9}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v1

    .line 983
    .local v1, "format":Lcom/google/android/exoplayer2/Format;
    iget v11, v1, Lcom/google/android/exoplayer2/Format;->selectionFlags:I

    and-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_2

    const/4 v3, 0x1

    .line 984
    .local v3, "isDefault":Z
    :goto_2
    if-eqz v3, :cond_3

    const/4 v10, 0x2

    .line 985
    .local v10, "trackScore":I
    :goto_3
    aget v11, v7, v9

    const/4 v12, 0x0

    invoke-static {v11, v12}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->isSupported(IZ)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 986
    add-int/lit16 v10, v10, 0x3e8

    .line 988
    :cond_0
    if-le v10, v6, :cond_1

    .line 989
    move-object v4, v8

    .line 990
    move v5, v9

    .line 991
    move v6, v10

    .line 979
    .end local v1    # "format":Lcom/google/android/exoplayer2/Format;
    .end local v3    # "isDefault":Z
    .end local v10    # "trackScore":I
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 983
    .restart local v1    # "format":Lcom/google/android/exoplayer2/Format;
    :cond_2
    const/4 v3, 0x0

    goto :goto_2

    .line 984
    .restart local v3    # "isDefault":Z
    :cond_3
    const/4 v10, 0x1

    goto :goto_3

    .line 976
    .end local v1    # "format":Lcom/google/android/exoplayer2/Format;
    .end local v3    # "isDefault":Z
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 996
    .end local v7    # "trackFormatSupport":[I
    .end local v8    # "trackGroup":Lcom/google/android/exoplayer2/source/TrackGroup;
    .end local v9    # "trackIndex":I
    :cond_5
    if-nez v4, :cond_6

    const/4 v11, 0x0

    :goto_4
    return-object v11

    :cond_6
    new-instance v11, Lcom/google/android/exoplayer2/trackselection/FixedTrackSelection;

    invoke-direct {v11, v4, v5}, Lcom/google/android/exoplayer2/trackselection/FixedTrackSelection;-><init>(Lcom/google/android/exoplayer2/source/TrackGroup;I)V

    goto :goto_4
.end method

.method protected selectTextTrack(Lcom/google/android/exoplayer2/source/TrackGroupArray;[[ILcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;)Lcom/google/android/exoplayer2/trackselection/TrackSelection;
    .locals 16
    .param p1, "groups"    # Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .param p2, "formatSupport"    # [[I
    .param p3, "params"    # Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 903
    const/4 v6, 0x0

    .line 904
    .local v6, "selectedGroup":Lcom/google/android/exoplayer2/source/TrackGroup;
    const/4 v7, 0x0

    .line 905
    .local v7, "selectedTrackIndex":I
    const/4 v8, 0x0

    .line 906
    .local v8, "selectedTrackScore":I
    const/4 v2, 0x0

    .local v2, "groupIndex":I
    :goto_0
    move-object/from16 v0, p1

    iget v14, v0, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    if-ge v2, v14, :cond_b

    .line 907
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->get(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v11

    .line 908
    .local v11, "trackGroup":Lcom/google/android/exoplayer2/source/TrackGroup;
    aget-object v10, p2, v2

    .line 909
    .local v10, "trackFormatSupport":[I
    const/4 v12, 0x0

    .local v12, "trackIndex":I
    :goto_1
    iget v14, v11, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    if-ge v12, v14, :cond_a

    .line 910
    aget v14, v10, v12

    move-object/from16 v0, p3

    iget-boolean v15, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->exceedRendererCapabilitiesIfNecessary:Z

    invoke-static {v14, v15}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->isSupported(IZ)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 912
    invoke-virtual {v11, v12}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v1

    .line 913
    .local v1, "format":Lcom/google/android/exoplayer2/Format;
    iget v14, v1, Lcom/google/android/exoplayer2/Format;->selectionFlags:I

    and-int/lit8 v14, v14, 0x1

    if-eqz v14, :cond_2

    const/4 v3, 0x1

    .line 914
    .local v3, "isDefault":Z
    :goto_2
    iget v14, v1, Lcom/google/android/exoplayer2/Format;->selectionFlags:I

    and-int/lit8 v14, v14, 0x2

    if-eqz v14, :cond_3

    const/4 v4, 0x1

    .line 916
    .local v4, "isForced":Z
    :goto_3
    move-object/from16 v0, p3

    iget-object v14, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->preferredTextLanguage:Ljava/lang/String;

    invoke-static {v1, v14}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->formatHasLanguage(Lcom/google/android/exoplayer2/Format;Ljava/lang/String;)Z

    move-result v5

    .line 917
    .local v5, "preferredLanguageFound":Z
    if-nez v5, :cond_0

    move-object/from16 v0, p3

    iget-boolean v14, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->selectUndeterminedTextLanguage:Z

    if-eqz v14, :cond_7

    .line 918
    invoke-static {v1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->formatHasNoLanguage(Lcom/google/android/exoplayer2/Format;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 919
    :cond_0
    if-eqz v3, :cond_4

    .line 920
    const/16 v13, 0x8

    .line 929
    .local v13, "trackScore":I
    :goto_4
    if-eqz v5, :cond_6

    const/4 v14, 0x1

    :goto_5
    add-int/2addr v13, v14

    .line 942
    .end local v13    # "trackScore":I
    :goto_6
    aget v14, v10, v12

    const/4 v15, 0x0

    invoke-static {v14, v15}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->isSupported(IZ)Z

    move-result v14

    if-eqz v14, :cond_d

    .line 943
    add-int/lit16 v9, v13, 0x3e8

    .line 945
    :goto_7
    if-le v9, v8, :cond_1

    .line 946
    move-object v6, v11

    .line 947
    move v7, v12

    .end local v8    # "selectedTrackScore":I
    .local v9, "selectedTrackScore":I
    move v8, v9

    .line 909
    .end local v1    # "format":Lcom/google/android/exoplayer2/Format;
    .end local v3    # "isDefault":Z
    .end local v4    # "isForced":Z
    .end local v5    # "preferredLanguageFound":Z
    .end local v9    # "selectedTrackScore":I
    .restart local v8    # "selectedTrackScore":I
    :cond_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 913
    .restart local v1    # "format":Lcom/google/android/exoplayer2/Format;
    :cond_2
    const/4 v3, 0x0

    goto :goto_2

    .line 914
    .restart local v3    # "isDefault":Z
    :cond_3
    const/4 v4, 0x0

    goto :goto_3

    .line 921
    .restart local v4    # "isForced":Z
    .restart local v5    # "preferredLanguageFound":Z
    :cond_4
    if-nez v4, :cond_5

    .line 925
    const/4 v13, 0x6

    .restart local v13    # "trackScore":I
    goto :goto_4

    .line 927
    .end local v13    # "trackScore":I
    :cond_5
    const/4 v13, 0x4

    .restart local v13    # "trackScore":I
    goto :goto_4

    .line 929
    :cond_6
    const/4 v14, 0x0

    goto :goto_5

    .line 930
    .end local v13    # "trackScore":I
    :cond_7
    if-eqz v3, :cond_8

    .line 931
    const/4 v13, 0x3

    .restart local v13    # "trackScore":I
    goto :goto_6

    .line 932
    .end local v13    # "trackScore":I
    :cond_8
    if-eqz v4, :cond_1

    .line 933
    move-object/from16 v0, p3

    iget-object v14, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->preferredAudioLanguage:Ljava/lang/String;

    invoke-static {v1, v14}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->formatHasLanguage(Lcom/google/android/exoplayer2/Format;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 934
    const/4 v13, 0x2

    .restart local v13    # "trackScore":I
    goto :goto_6

    .line 936
    .end local v13    # "trackScore":I
    :cond_9
    const/4 v13, 0x1

    goto :goto_6

    .line 906
    .end local v1    # "format":Lcom/google/android/exoplayer2/Format;
    .end local v3    # "isDefault":Z
    .end local v4    # "isForced":Z
    .end local v5    # "preferredLanguageFound":Z
    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 953
    .end local v10    # "trackFormatSupport":[I
    .end local v11    # "trackGroup":Lcom/google/android/exoplayer2/source/TrackGroup;
    .end local v12    # "trackIndex":I
    :cond_b
    if-nez v6, :cond_c

    const/4 v14, 0x0

    :goto_8
    return-object v14

    :cond_c
    new-instance v14, Lcom/google/android/exoplayer2/trackselection/FixedTrackSelection;

    invoke-direct {v14, v6, v7}, Lcom/google/android/exoplayer2/trackselection/FixedTrackSelection;-><init>(Lcom/google/android/exoplayer2/source/TrackGroup;I)V

    goto :goto_8

    .restart local v1    # "format":Lcom/google/android/exoplayer2/Format;
    .restart local v3    # "isDefault":Z
    .restart local v4    # "isForced":Z
    .restart local v5    # "preferredLanguageFound":Z
    .restart local v10    # "trackFormatSupport":[I
    .restart local v11    # "trackGroup":Lcom/google/android/exoplayer2/source/TrackGroup;
    .restart local v12    # "trackIndex":I
    :cond_d
    move v9, v13

    goto :goto_7
.end method

.method protected selectTracks([Lcom/google/android/exoplayer2/RendererCapabilities;[Lcom/google/android/exoplayer2/source/TrackGroupArray;[[[I)[Lcom/google/android/exoplayer2/trackselection/TrackSelection;
    .locals 13
    .param p1, "rendererCapabilities"    # [Lcom/google/android/exoplayer2/RendererCapabilities;
    .param p2, "rendererTrackGroupArrays"    # [Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .param p3, "rendererFormatSupports"    # [[[I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 526
    array-length v7, p1

    .line 527
    .local v7, "rendererCount":I
    new-array v8, v7, [Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    .line 528
    .local v8, "rendererTrackSelections":[Lcom/google/android/exoplayer2/trackselection/TrackSelection;
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->paramsReference:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    .line 530
    .local v4, "params":Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;
    const/4 v9, 0x0

    .line 531
    .local v9, "seenVideoRendererWithMappedTracks":Z
    const/4 v12, 0x0

    .line 532
    .local v12, "selectedVideoTracks":Z
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v7, :cond_4

    .line 533
    const/4 v0, 0x2

    aget-object v1, p1, v6

    invoke-interface {v1}, Lcom/google/android/exoplayer2/RendererCapabilities;->getTrackType()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 534
    if-nez v12, :cond_0

    .line 535
    aget-object v1, p1, v6

    aget-object v2, p2, v6

    aget-object v3, p3, v6

    iget-object v5, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->adaptiveTrackSelectionFactory:Lcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->selectVideoTrack(Lcom/google/android/exoplayer2/RendererCapabilities;Lcom/google/android/exoplayer2/source/TrackGroupArray;[[ILcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;Lcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;)Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    move-result-object v0

    aput-object v0, v8, v6

    .line 538
    aget-object v0, v8, v6

    if-eqz v0, :cond_2

    const/4 v12, 0x1

    .line 540
    :cond_0
    :goto_1
    aget-object v0, p2, v6

    iget v0, v0, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    if-lez v0, :cond_3

    const/4 v0, 0x1

    :goto_2
    or-int/2addr v9, v0

    .line 532
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 538
    :cond_2
    const/4 v12, 0x0

    goto :goto_1

    .line 540
    :cond_3
    const/4 v0, 0x0

    goto :goto_2

    .line 544
    :cond_4
    const/4 v10, 0x0

    .line 545
    .local v10, "selectedAudioTracks":Z
    const/4 v11, 0x0

    .line 546
    .local v11, "selectedTextTracks":Z
    const/4 v6, 0x0

    :goto_3
    if-ge v6, v7, :cond_9

    .line 547
    aget-object v0, p1, v6

    invoke-interface {v0}, Lcom/google/android/exoplayer2/RendererCapabilities;->getTrackType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 567
    aget-object v0, p1, v6

    invoke-interface {v0}, Lcom/google/android/exoplayer2/RendererCapabilities;->getTrackType()I

    move-result v0

    aget-object v1, p2, v6

    aget-object v2, p3, v6

    invoke-virtual {p0, v0, v1, v2, v4}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->selectOtherTrack(ILcom/google/android/exoplayer2/source/TrackGroupArray;[[ILcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;)Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    move-result-object v0

    aput-object v0, v8, v6

    .line 546
    :cond_5
    :goto_4
    :pswitch_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 552
    :pswitch_1
    if-nez v10, :cond_5

    .line 553
    aget-object v1, p2, v6

    aget-object v2, p3, v6

    if-eqz v9, :cond_6

    const/4 v0, 0x0

    :goto_5
    invoke-virtual {p0, v1, v2, v4, v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->selectAudioTrack(Lcom/google/android/exoplayer2/source/TrackGroupArray;[[ILcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;Lcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;)Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    move-result-object v0

    aput-object v0, v8, v6

    .line 556
    aget-object v0, v8, v6

    if-eqz v0, :cond_7

    const/4 v10, 0x1

    :goto_6
    goto :goto_4

    .line 553
    :cond_6
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->adaptiveTrackSelectionFactory:Lcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;

    goto :goto_5

    .line 556
    :cond_7
    const/4 v10, 0x0

    goto :goto_6

    .line 560
    :pswitch_2
    if-nez v11, :cond_5

    .line 561
    aget-object v0, p2, v6

    aget-object v1, p3, v6

    invoke-virtual {p0, v0, v1, v4}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->selectTextTrack(Lcom/google/android/exoplayer2/source/TrackGroupArray;[[ILcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;)Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    move-result-object v0

    aput-object v0, v8, v6

    .line 563
    aget-object v0, v8, v6

    if-eqz v0, :cond_8

    const/4 v11, 0x1

    :goto_7
    goto :goto_4

    :cond_8
    const/4 v11, 0x0

    goto :goto_7

    .line 572
    :cond_9
    return-object v8

    .line 547
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected selectVideoTrack(Lcom/google/android/exoplayer2/RendererCapabilities;Lcom/google/android/exoplayer2/source/TrackGroupArray;[[ILcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;Lcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;)Lcom/google/android/exoplayer2/trackselection/TrackSelection;
    .locals 2
    .param p1, "rendererCapabilities"    # Lcom/google/android/exoplayer2/RendererCapabilities;
    .param p2, "groups"    # Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .param p3, "formatSupport"    # [[I
    .param p4, "params"    # Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;
    .param p5, "adaptiveTrackSelectionFactory"    # Lcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 594
    const/4 v0, 0x0

    .line 595
    .local v0, "selection":Lcom/google/android/exoplayer2/trackselection/TrackSelection;
    iget-boolean v1, p4, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->forceLowestBitrate:Z

    if-nez v1, :cond_0

    if-eqz p5, :cond_0

    .line 596
    invoke-static {p1, p2, p3, p4, p5}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->selectAdaptiveVideoTrack(Lcom/google/android/exoplayer2/RendererCapabilities;Lcom/google/android/exoplayer2/source/TrackGroupArray;[[ILcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;Lcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;)Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    move-result-object v0

    .line 599
    :cond_0
    if-nez v0, :cond_1

    .line 600
    invoke-static {p2, p3, p4}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->selectFixedVideoTrack(Lcom/google/android/exoplayer2/source/TrackGroupArray;[[ILcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;)Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    move-result-object v0

    .line 602
    :cond_1
    return-object v0
.end method

.method public setParameters(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;)V
    .locals 1
    .param p1, "params"    # Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    .prologue
    .line 504
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 505
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->paramsReference:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 506
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->invalidate()V

    .line 508
    :cond_0
    return-void
.end method
