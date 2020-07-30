.class final Lcom/google/android/exoplayer2/ui/PlaybackControlView$ComponentListener;
.super Lcom/google/android/exoplayer2/Player$DefaultEventListener;
.source "PlaybackControlView.java"

# interfaces
.implements Lcom/google/android/exoplayer2/ui/TimeBar$OnScrubListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/ui/PlaybackControlView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ComponentListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer2/ui/PlaybackControlView;


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)V
    .locals 0

    .prologue
    .line 1051
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-direct {p0}, Lcom/google/android/exoplayer2/Player$DefaultEventListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/ui/PlaybackControlView;Lcom/google/android/exoplayer2/ui/PlaybackControlView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/android/exoplayer2/ui/PlaybackControlView;
    .param p2, "x1"    # Lcom/google/android/exoplayer2/ui/PlaybackControlView$1;

    .prologue
    .line 1051
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/PlaybackControlView$ComponentListener;-><init>(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1109
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-static {v2}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->access$800(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)Lcom/google/android/exoplayer2/Player;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1110
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-static {v2}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->access$1600(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)Landroid/view/View;

    move-result-object v2

    if-ne v2, p1, :cond_1

    .line 1111
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->access$1700(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)V

    .line 1129
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->access$1000(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)V

    .line 1130
    return-void

    .line 1112
    :cond_1
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-static {v2}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->access$1800(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)Landroid/view/View;

    move-result-object v2

    if-ne v2, p1, :cond_2

    .line 1113
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->access$1900(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)V

    goto :goto_0

    .line 1114
    :cond_2
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-static {v2}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->access$2000(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)Landroid/view/View;

    move-result-object v2

    if-ne v2, p1, :cond_3

    .line 1115
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->access$2100(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)V

    goto :goto_0

    .line 1116
    :cond_3
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-static {v2}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->access$2200(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)Landroid/view/View;

    move-result-object v2

    if-ne v2, p1, :cond_4

    .line 1117
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->access$2300(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)V

    goto :goto_0

    .line 1118
    :cond_4
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-static {v2}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->access$2400(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)Landroid/view/View;

    move-result-object v2

    if-ne v2, p1, :cond_5

    .line 1119
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-static {v1}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->access$2500(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)Lcom/google/android/exoplayer2/ControlDispatcher;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-static {v2}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->access$800(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)Lcom/google/android/exoplayer2/Player;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/google/android/exoplayer2/ControlDispatcher;->dispatchSetPlayWhenReady(Lcom/google/android/exoplayer2/Player;Z)Z

    goto :goto_0

    .line 1120
    :cond_5
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-static {v2}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->access$2600(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)Landroid/view/View;

    move-result-object v2

    if-ne v2, p1, :cond_6

    .line 1121
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->access$2500(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)Lcom/google/android/exoplayer2/ControlDispatcher;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-static {v2}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->access$800(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)Lcom/google/android/exoplayer2/Player;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Lcom/google/android/exoplayer2/ControlDispatcher;->dispatchSetPlayWhenReady(Lcom/google/android/exoplayer2/Player;Z)Z

    goto :goto_0

    .line 1122
    :cond_6
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-static {v2}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->access$2700(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)Landroid/widget/ImageView;

    move-result-object v2

    if-ne v2, p1, :cond_7

    .line 1123
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->access$2500(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)Lcom/google/android/exoplayer2/ControlDispatcher;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-static {v1}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->access$800(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)Lcom/google/android/exoplayer2/Player;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    .line 1124
    invoke-static {v2}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->access$800(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)Lcom/google/android/exoplayer2/Player;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/exoplayer2/Player;->getRepeatMode()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-static {v3}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->access$2800(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)I

    move-result v3

    .line 1123
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/RepeatModeUtil;->getNextRepeatMode(II)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/exoplayer2/ControlDispatcher;->dispatchSetRepeatMode(Lcom/google/android/exoplayer2/Player;I)Z

    goto/16 :goto_0

    .line 1125
    :cond_7
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-static {v2}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->access$2900(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)Landroid/view/View;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 1126
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-static {v2}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->access$2500(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)Lcom/google/android/exoplayer2/ControlDispatcher;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-static {v3}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->access$800(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)Lcom/google/android/exoplayer2/Player;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-static {v4}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->access$800(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)Lcom/google/android/exoplayer2/Player;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/exoplayer2/Player;->getShuffleModeEnabled()Z

    move-result v4

    if-nez v4, :cond_8

    :goto_1
    invoke-interface {v2, v3, v0}, Lcom/google/android/exoplayer2/ControlDispatcher;->dispatchSetShuffleModeEnabled(Lcom/google/android/exoplayer2/Player;Z)Z

    goto/16 :goto_0

    :cond_8
    move v0, v1

    goto :goto_1
.end method

.method public onPlayerStateChanged(ZI)V
    .locals 1
    .param p1, "playWhenReady"    # Z
    .param p2, "playbackState"    # I

    .prologue
    .line 1078
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->access$1100(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)V

    .line 1079
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->access$100(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)V

    .line 1080
    return-void
.end method

.method public onPositionDiscontinuity(I)V
    .locals 1
    .param p1, "reason"    # I

    .prologue
    .line 1096
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->access$1300(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)V

    .line 1097
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->access$100(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)V

    .line 1098
    return-void
.end method

.method public onRepeatModeChanged(I)V
    .locals 1
    .param p1, "repeatMode"    # I

    .prologue
    .line 1084
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->access$1200(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)V

    .line 1085
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->access$1300(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)V

    .line 1086
    return-void
.end method

.method public onScrubMove(Lcom/google/android/exoplayer2/ui/TimeBar;J)V
    .locals 4
    .param p1, "timeBar"    # Lcom/google/android/exoplayer2/ui/TimeBar;
    .param p2, "position"    # J

    .prologue
    .line 1062
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->access$500(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1063
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->access$500(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-static {v1}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->access$600(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-static {v2}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->access$700(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)Ljava/util/Formatter;

    move-result-object v2

    invoke-static {v1, v2, p2, p3}, Lcom/google/android/exoplayer2/util/Util;->getStringForTime(Ljava/lang/StringBuilder;Ljava/util/Formatter;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1065
    :cond_0
    return-void
.end method

.method public onScrubStart(Lcom/google/android/exoplayer2/ui/TimeBar;J)V
    .locals 2
    .param p1, "timeBar"    # Lcom/google/android/exoplayer2/ui/TimeBar;
    .param p2, "position"    # J

    .prologue
    .line 1056
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-static {v1}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->access$300(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1057
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->access$402(Lcom/google/android/exoplayer2/ui/PlaybackControlView;Z)Z

    .line 1058
    return-void
.end method

.method public onScrubStop(Lcom/google/android/exoplayer2/ui/TimeBar;JZ)V
    .locals 2
    .param p1, "timeBar"    # Lcom/google/android/exoplayer2/ui/TimeBar;
    .param p2, "position"    # J
    .param p4, "canceled"    # Z

    .prologue
    .line 1069
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->access$402(Lcom/google/android/exoplayer2/ui/PlaybackControlView;Z)Z

    .line 1070
    if-nez p4, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->access$800(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)Lcom/google/android/exoplayer2/Player;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1071
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-static {v0, p2, p3}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->access$900(Lcom/google/android/exoplayer2/ui/PlaybackControlView;J)V

    .line 1073
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->access$1000(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)V

    .line 1074
    return-void
.end method

.method public onShuffleModeEnabledChanged(Z)V
    .locals 1
    .param p1, "shuffleModeEnabled"    # Z

    .prologue
    .line 1090
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->access$1400(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)V

    .line 1091
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->access$1300(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)V

    .line 1092
    return-void
.end method

.method public onTimelineChanged(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;)V
    .locals 1
    .param p1, "timeline"    # Lcom/google/android/exoplayer2/Timeline;
    .param p2, "manifest"    # Ljava/lang/Object;

    .prologue
    .line 1102
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->access$1300(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)V

    .line 1103
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->access$1500(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)V

    .line 1104
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->access$100(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)V

    .line 1105
    return-void
.end method
