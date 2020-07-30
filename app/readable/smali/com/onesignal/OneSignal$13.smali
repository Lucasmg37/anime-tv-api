.class final Lcom/onesignal/OneSignal$13;
.super Ljava/lang/Object;
.source "OneSignal.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/OneSignal;->getTags(Lcom/onesignal/OneSignal$GetTagsHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$getTagsHandler:Lcom/onesignal/OneSignal$GetTagsHandler;


# direct methods
.method constructor <init>(Lcom/onesignal/OneSignal$GetTagsHandler;)V
    .locals 0

    .prologue
    .line 1619
    iput-object p1, p0, Lcom/onesignal/OneSignal$13;->val$getTagsHandler:Lcom/onesignal/OneSignal$GetTagsHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1622
    iget-object v0, p0, Lcom/onesignal/OneSignal$13;->val$getTagsHandler:Lcom/onesignal/OneSignal$GetTagsHandler;

    if-nez v0, :cond_1

    .line 1623
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v1, "getTagsHandler is null!"

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 1631
    :cond_0
    :goto_0
    return-void

    .line 1627
    :cond_1
    invoke-static {}, Lcom/onesignal/OneSignal;->getUserId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1630
    invoke-static {}, Lcom/onesignal/OneSignal;->access$2600()Lcom/onesignal/OneSignal$GetTagsHandler;

    move-result-object v0

    invoke-static {v0}, Lcom/onesignal/OneSignal;->access$2700(Lcom/onesignal/OneSignal$GetTagsHandler;)V

    goto :goto_0
.end method
