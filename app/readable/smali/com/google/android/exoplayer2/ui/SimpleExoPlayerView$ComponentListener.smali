.class final Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView$ComponentListener;
.super Lcom/google/android/exoplayer2/Player$DefaultEventListener;
.source "SimpleExoPlayerView.java"

# interfaces
.implements Lcom/google/android/exoplayer2/text/TextOutput;
.implements Lcom/google/android/exoplayer2/SimpleExoPlayer$VideoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ComponentListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;)V
    .locals 0

    .prologue
    .line 932
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;

    invoke-direct {p0}, Lcom/google/android/exoplayer2/Player$DefaultEventListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;
    .param p2, "x1"    # Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView$1;

    .prologue
    .line 932
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView$ComponentListener;-><init>(Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;)V

    return-void
.end method


# virtual methods
.method public onCues(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer2/text/Cue;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 939
    .local p1, "cues":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/text/Cue;>;"
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->access$100(Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;)Lcom/google/android/exoplayer2/ui/SubtitleView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 940
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->access$100(Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;)Lcom/google/android/exoplayer2/ui/SubtitleView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/SubtitleView;->onCues(Ljava/util/List;)V

    .line 942
    :cond_0
    return-void
.end method

.method public onPlayerStateChanged(ZI)V
    .locals 2
    .param p1, "playWhenReady"    # Z
    .param p2, "playbackState"    # I

    .prologue
    .line 971
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->access$500(Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->access$600(Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 972
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->hideController()V

    .line 976
    :goto_0
    return-void

    .line 974
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->access$700(Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;Z)V

    goto :goto_0
.end method

.method public onPositionDiscontinuity(I)V
    .locals 1
    .param p1, "reason"    # I

    .prologue
    .line 980
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->access$500(Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->access$600(Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 981
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->hideController()V

    .line 983
    :cond_0
    return-void
.end method

.method public onRenderedFirstFrame()V
    .locals 2

    .prologue
    .line 957
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->access$300(Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 958
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->access$300(Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 960
    :cond_0
    return-void
.end method

.method public onTracksChanged(Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;)V
    .locals 1
    .param p1, "tracks"    # Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .param p2, "selections"    # Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;

    .prologue
    .line 964
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->access$400(Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;)V

    .line 965
    return-void
.end method

.method public onVideoSizeChanged(IIIF)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "unappliedRotationDegrees"    # I
    .param p4, "pixelWidthHeightRatio"    # F

    .prologue
    .line 949
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;

    invoke-static {v1}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->access$200(Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;)Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 950
    if-nez p2, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 951
    .local v0, "aspectRatio":F
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;

    invoke-static {v1}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->access$200(Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;)Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->setAspectRatio(F)V

    .line 953
    .end local v0    # "aspectRatio":F
    :cond_0
    return-void

    .line 950
    :cond_1
    int-to-float v1, p1

    mul-float/2addr v1, p4

    int-to-float v2, p2

    div-float v0, v1, v2

    goto :goto_0
.end method
