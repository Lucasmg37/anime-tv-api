.class final Lcom/onesignal/OneSignal$9;
.super Ljava/lang/Object;
.source "OneSignal.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/OneSignal;->setEmail(Ljava/lang/String;Ljava/lang/String;Lcom/onesignal/OneSignal$EmailUpdateHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$email:Ljava/lang/String;

.field final synthetic val$emailAuthHash:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1344
    iput-object p1, p0, Lcom/onesignal/OneSignal$9;->val$email:Ljava/lang/String;

    iput-object p2, p0, Lcom/onesignal/OneSignal$9;->val$emailAuthHash:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1347
    iget-object v2, p0, Lcom/onesignal/OneSignal$9;->val$email:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 1349
    .local v1, "trimmedEmail":Ljava/lang/String;
    iget-object v0, p0, Lcom/onesignal/OneSignal$9;->val$emailAuthHash:Ljava/lang/String;

    .line 1350
    .local v0, "internalEmailAuthHash":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1351
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 1353
    :cond_0
    sget-object v2, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/onesignal/OneSignal;->access$2500(Landroid/content/Context;)Lcom/onesignal/OSEmailSubscriptionState;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/onesignal/OSEmailSubscriptionState;->setEmailAddress(Ljava/lang/String;)V

    .line 1354
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/onesignal/OneSignalStateSynchronizer;->setEmail(Ljava/lang/String;Ljava/lang/String;)V

    .line 1355
    return-void
.end method
