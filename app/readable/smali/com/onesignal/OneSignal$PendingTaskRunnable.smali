.class Lcom/onesignal/OneSignal$PendingTaskRunnable;
.super Ljava/lang/Object;
.source "OneSignal.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onesignal/OneSignal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PendingTaskRunnable"
.end annotation


# instance fields
.field private innerTask:Ljava/lang/Runnable;

.field private taskId:J


# direct methods
.method constructor <init>(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "innerTask"    # Ljava/lang/Runnable;

    .prologue
    .line 681
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 682
    iput-object p1, p0, Lcom/onesignal/OneSignal$PendingTaskRunnable;->innerTask:Ljava/lang/Runnable;

    .line 683
    return-void
.end method

.method static synthetic access$400(Lcom/onesignal/OneSignal$PendingTaskRunnable;)J
    .locals 2
    .param p0, "x0"    # Lcom/onesignal/OneSignal$PendingTaskRunnable;

    .prologue
    .line 677
    iget-wide v0, p0, Lcom/onesignal/OneSignal$PendingTaskRunnable;->taskId:J

    return-wide v0
.end method

.method static synthetic access$402(Lcom/onesignal/OneSignal$PendingTaskRunnable;J)J
    .locals 1
    .param p0, "x0"    # Lcom/onesignal/OneSignal$PendingTaskRunnable;
    .param p1, "x1"    # J

    .prologue
    .line 677
    iput-wide p1, p0, Lcom/onesignal/OneSignal$PendingTaskRunnable;->taskId:J

    return-wide p1
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 687
    iget-object v0, p0, Lcom/onesignal/OneSignal$PendingTaskRunnable;->innerTask:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 688
    iget-wide v0, p0, Lcom/onesignal/OneSignal$PendingTaskRunnable;->taskId:J

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->access$300(J)V

    .line 689
    return-void
.end method
