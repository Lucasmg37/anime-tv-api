.class Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$3;
.super Ljava/lang/Object;
.source "AdsMediaSource.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/MediaSource$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->createPeriod(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/upstream/Allocator;)Lcom/google/android/exoplayer2/source/MediaPeriod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;

.field final synthetic val$adGroupIndex:I

.field final synthetic val$adIndexInAdGroup:I

.field final synthetic val$adMediaSource:Lcom/google/android/exoplayer2/source/MediaSource;


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;Lcom/google/android/exoplayer2/source/MediaSource;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;

    .prologue
    .line 255
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$3;->this$0:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$3;->val$adMediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    iput p3, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$3;->val$adGroupIndex:I

    iput p4, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$3;->val$adIndexInAdGroup:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSourceInfoRefreshed(Lcom/google/android/exoplayer2/source/MediaSource;Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;)V
    .locals 4
    .param p1, "source"    # Lcom/google/android/exoplayer2/source/MediaSource;
    .param p2, "timeline"    # Lcom/google/android/exoplayer2/Timeline;
    .param p3, "manifest"    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 259
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$3;->this$0:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$3;->val$adMediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    iget v2, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$3;->val$adGroupIndex:I

    iget v3, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$3;->val$adIndexInAdGroup:I

    invoke-static {v0, v1, v2, v3, p2}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->access$500(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;Lcom/google/android/exoplayer2/source/MediaSource;IILcom/google/android/exoplayer2/Timeline;)V

    .line 260
    return-void
.end method
