.class Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher$2;
.super Ljava/lang/Object;
.source "VideoRendererEventListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->decoderInitialized(Ljava/lang/String;JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

.field final synthetic val$decoderName:Ljava/lang/String;

.field final synthetic val$initializationDurationMs:J

.field final synthetic val$initializedTimestampMs:J


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;Ljava/lang/String;JJ)V
    .locals 1
    .param p1, "this$0"    # Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    .prologue
    .line 147
    iput-object p1, p0, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher$2;->this$0:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    iput-object p2, p0, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher$2;->val$decoderName:Ljava/lang/String;

    iput-wide p3, p0, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher$2;->val$initializedTimestampMs:J

    iput-wide p5, p0, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher$2;->val$initializationDurationMs:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 150
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher$2;->this$0:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    invoke-static {v0}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->access$000(Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;)Lcom/google/android/exoplayer2/video/VideoRendererEventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher$2;->val$decoderName:Ljava/lang/String;

    iget-wide v2, p0, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher$2;->val$initializedTimestampMs:J

    iget-wide v4, p0, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher$2;->val$initializationDurationMs:J

    invoke-interface/range {v0 .. v5}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener;->onVideoDecoderInitialized(Ljava/lang/String;JJ)V

    .line 152
    return-void
.end method
