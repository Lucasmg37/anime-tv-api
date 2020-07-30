.class Lco/frontyard/cordova/plugin/exoplayer/Player$5;
.super Ljava/lang/Object;
.source "Player.java"

# interfaces
.implements Lcom/google/android/exoplayer2/ui/PlaybackControlView$VisibilityListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/frontyard/cordova/plugin/exoplayer/Player;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lco/frontyard/cordova/plugin/exoplayer/Player;


# direct methods
.method constructor <init>(Lco/frontyard/cordova/plugin/exoplayer/Player;)V
    .locals 0
    .param p1, "this$0"    # Lco/frontyard/cordova/plugin/exoplayer/Player;

    .prologue
    .line 177
    iput-object p1, p0, Lco/frontyard/cordova/plugin/exoplayer/Player$5;->this$0:Lco/frontyard/cordova/plugin/exoplayer/Player;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVisibilityChange(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 180
    iget-object v0, p0, Lco/frontyard/cordova/plugin/exoplayer/Player$5;->this$0:Lco/frontyard/cordova/plugin/exoplayer/Player;

    invoke-static {v0, p1}, Lco/frontyard/cordova/plugin/exoplayer/Player;->access$502(Lco/frontyard/cordova/plugin/exoplayer/Player;I)I

    .line 181
    return-void
.end method
