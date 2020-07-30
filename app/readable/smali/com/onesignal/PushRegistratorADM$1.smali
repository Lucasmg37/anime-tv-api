.class Lcom/onesignal/PushRegistratorADM$1;
.super Ljava/lang/Object;
.source "PushRegistratorADM.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/PushRegistratorADM;->registerForPush(Landroid/content/Context;Ljava/lang/String;Lcom/onesignal/PushRegistrator$RegisteredHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/onesignal/PushRegistratorADM;

.field final synthetic val$callback:Lcom/onesignal/PushRegistrator$RegisteredHandler;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/onesignal/PushRegistratorADM;Landroid/content/Context;Lcom/onesignal/PushRegistrator$RegisteredHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/onesignal/PushRegistratorADM;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/onesignal/PushRegistratorADM$1;->this$0:Lcom/onesignal/PushRegistratorADM;

    iput-object p2, p0, Lcom/onesignal/PushRegistratorADM$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/onesignal/PushRegistratorADM$1;->val$callback:Lcom/onesignal/PushRegistrator$RegisteredHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 44
    new-instance v0, Lcom/amazon/device/messaging/ADM;

    iget-object v2, p0, Lcom/onesignal/PushRegistratorADM$1;->val$context:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/amazon/device/messaging/ADM;-><init>(Landroid/content/Context;)V

    .line 45
    .local v0, "adm":Lcom/amazon/device/messaging/ADM;
    invoke-virtual {v0}, Lcom/amazon/device/messaging/ADM;->getRegistrationId()Ljava/lang/String;

    move-result-object v1

    .line 46
    .local v1, "registrationId":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 47
    invoke-virtual {v0}, Lcom/amazon/device/messaging/ADM;->startRegister()V

    .line 54
    :goto_0
    const-wide/16 v2, 0x7530

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    :goto_1
    invoke-static {}, Lcom/onesignal/PushRegistratorADM;->access$000()Z

    move-result v2

    if-nez v2, :cond_0

    .line 58
    sget-object v2, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v3, "com.onesignal.ADMMessageHandler timed out, please check that your have the receiver, service, and your package name matches(NOTE: Case Sensitive) per the OneSignal instructions."

    invoke-static {v2, v3}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 59
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/onesignal/PushRegistratorADM;->fireCallback(Ljava/lang/String;)V

    .line 61
    :cond_0
    return-void

    .line 49
    :cond_1
    sget-object v2, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ADM Already registered with ID:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 50
    iget-object v2, p0, Lcom/onesignal/PushRegistratorADM$1;->val$callback:Lcom/onesignal/PushRegistrator$RegisteredHandler;

    const/4 v3, 0x1

    invoke-interface {v2, v1, v3}, Lcom/onesignal/PushRegistrator$RegisteredHandler;->complete(Ljava/lang/String;I)V

    goto :goto_0

    .line 55
    :catch_0
    move-exception v2

    goto :goto_1
.end method
