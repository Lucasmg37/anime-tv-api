.class abstract Lcom/onesignal/PushRegistratorAbstractGoogle;
.super Ljava/lang/Object;
.source "PushRegistratorAbstractGoogle.java"

# interfaces
.implements Lcom/onesignal/PushRegistrator;


# static fields
.field private static REGISTRATION_RETRY_BACKOFF_MS:I

.field private static REGISTRATION_RETRY_COUNT:I


# instance fields
.field private firedCallback:Z

.field private registerThread:Ljava/lang/Thread;

.field private registeredHandler:Lcom/onesignal/PushRegistrator$RegisteredHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x5

    sput v0, Lcom/onesignal/PushRegistratorAbstractGoogle;->REGISTRATION_RETRY_COUNT:I

    .line 41
    const/16 v0, 0x2710

    sput v0, Lcom/onesignal/PushRegistratorAbstractGoogle;->REGISTRATION_RETRY_BACKOFF_MS:I

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .prologue
    .line 37
    sget v0, Lcom/onesignal/PushRegistratorAbstractGoogle;->REGISTRATION_RETRY_COUNT:I

    return v0
.end method

.method static synthetic access$100(Lcom/onesignal/PushRegistratorAbstractGoogle;Ljava/lang/String;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/onesignal/PushRegistratorAbstractGoogle;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/onesignal/PushRegistratorAbstractGoogle;->attemptRegistration(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200()I
    .locals 1

    .prologue
    .line 37
    sget v0, Lcom/onesignal/PushRegistratorAbstractGoogle;->REGISTRATION_RETRY_BACKOFF_MS:I

    return v0
.end method

.method private attemptRegistration(Ljava/lang/String;I)Z
    .locals 8
    .param p1, "senderId"    # Ljava/lang/String;
    .param p2, "currentRetry"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x1

    .line 97
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/onesignal/PushRegistratorAbstractGoogle;->getToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 98
    .local v1, "registrationId":Ljava/lang/String;
    sget-object v4, Lcom/onesignal/OneSignal$LOG_LEVEL;->INFO:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Device registered, push token = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 99
    iget-object v4, p0, Lcom/onesignal/PushRegistratorAbstractGoogle;->registeredHandler:Lcom/onesignal/PushRegistrator$RegisteredHandler;

    const/4 v5, 0x1

    invoke-interface {v4, v1, v5}, Lcom/onesignal/PushRegistrator$RegisteredHandler;->complete(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 127
    .end local v1    # "registrationId":Ljava/lang/String;
    :cond_0
    :goto_0
    return v3

    .line 101
    :catch_0
    move-exception v0

    .line 102
    .local v0, "e":Ljava/io/IOException;
    const-string v4, "SERVICE_NOT_AVAILABLE"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 103
    sget-object v4, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error Getting "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/onesignal/PushRegistratorAbstractGoogle;->getProviderName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Token"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 104
    iget-boolean v4, p0, Lcom/onesignal/PushRegistratorAbstractGoogle;->firedCallback:Z

    if-nez v4, :cond_0

    .line 105
    iget-object v4, p0, Lcom/onesignal/PushRegistratorAbstractGoogle;->registeredHandler:Lcom/onesignal/PushRegistrator$RegisteredHandler;

    const/16 v5, -0xb

    invoke-interface {v4, v7, v5}, Lcom/onesignal/PushRegistrator$RegisteredHandler;->complete(Ljava/lang/String;I)V

    goto :goto_0

    .line 109
    :cond_1
    sget v4, Lcom/onesignal/PushRegistratorAbstractGoogle;->REGISTRATION_RETRY_COUNT:I

    add-int/lit8 v4, v4, -0x1

    if-lt p2, v4, :cond_3

    .line 110
    sget-object v3, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Retry count of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/onesignal/PushRegistratorAbstractGoogle;->REGISTRATION_RETRY_COUNT:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " exceed! Could not get a "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/onesignal/PushRegistratorAbstractGoogle;->getProviderName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Token."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 127
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 112
    :cond_3
    sget-object v4, Lcom/onesignal/OneSignal$LOG_LEVEL;->INFO:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\'Google Play services\' returned SERVICE_NOT_AVAILABLE error. Current retry count: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 113
    const/4 v4, 0x2

    if-ne p2, v4, :cond_2

    .line 115
    iget-object v4, p0, Lcom/onesignal/PushRegistratorAbstractGoogle;->registeredHandler:Lcom/onesignal/PushRegistrator$RegisteredHandler;

    const/16 v5, -0x9

    invoke-interface {v4, v7, v5}, Lcom/onesignal/PushRegistrator$RegisteredHandler;->complete(Ljava/lang/String;I)V

    .line 116
    iput-boolean v3, p0, Lcom/onesignal/PushRegistratorAbstractGoogle;->firedCallback:Z

    goto/16 :goto_0

    .line 121
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 122
    .local v2, "t":Ljava/lang/Throwable;
    sget-object v4, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown error getting "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/onesignal/PushRegistratorAbstractGoogle;->getProviderName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Token"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 123
    iget-object v4, p0, Lcom/onesignal/PushRegistratorAbstractGoogle;->registeredHandler:Lcom/onesignal/PushRegistrator$RegisteredHandler;

    const/16 v5, -0xc

    invoke-interface {v4, v7, v5}, Lcom/onesignal/PushRegistrator$RegisteredHandler;->complete(Ljava/lang/String;I)V

    goto/16 :goto_0
.end method

.method private internalRegisterForPush(Ljava/lang/String;)V
    .locals 5
    .param p1, "senderId"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 56
    :try_start_0
    invoke-static {}, Lcom/onesignal/GooglePlayServicesUpgradePrompt;->isGMSInstalledAndEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 57
    invoke-direct {p0, p1}, Lcom/onesignal/PushRegistratorAbstractGoogle;->registerInBackground(Ljava/lang/String;)V

    .line 73
    :goto_0
    return-void

    .line 59
    :cond_0
    invoke-static {}, Lcom/onesignal/GooglePlayServicesUpgradePrompt;->ShowUpdateGPSDialog()V

    .line 60
    sget-object v1, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v2, "\'Google Play services\' app not installed or disabled on the device."

    invoke-static {v1, v2}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 61
    iget-object v1, p0, Lcom/onesignal/PushRegistratorAbstractGoogle;->registeredHandler:Lcom/onesignal/PushRegistrator$RegisteredHandler;

    const/4 v2, 0x0

    const/4 v3, -0x7

    invoke-interface {v1, v2, v3}, Lcom/onesignal/PushRegistrator$RegisteredHandler;->complete(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 63
    :catch_0
    move-exception v0

    .line 64
    .local v0, "t":Ljava/lang/Throwable;
    sget-object v1, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not register with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 67
    invoke-virtual {p0}, Lcom/onesignal/PushRegistratorAbstractGoogle;->getProviderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " due to an issue with your AndroidManifest.xml or with \'Google Play services\'."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 64
    invoke-static {v1, v2, v0}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 71
    iget-object v1, p0, Lcom/onesignal/PushRegistratorAbstractGoogle;->registeredHandler:Lcom/onesignal/PushRegistrator$RegisteredHandler;

    const/4 v2, -0x8

    invoke-interface {v1, v4, v2}, Lcom/onesignal/PushRegistrator$RegisteredHandler;->complete(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private isValidProjectNumber(Ljava/lang/String;Lcom/onesignal/PushRegistrator$RegisteredHandler;)Z
    .locals 4
    .param p1, "senderId"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/onesignal/PushRegistrator$RegisteredHandler;

    .prologue
    .line 133
    :try_start_0
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    const/4 v0, 0x1

    .line 139
    .local v0, "isProjectNumberValidFormat":Z
    :goto_0
    if-nez v0, :cond_0

    .line 140
    sget-object v2, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v3, "Missing Google Project number!\nPlease enter a Google Project number / Sender ID on under App Settings > Android > Configuration on the OneSignal dashboard."

    invoke-static {v2, v3}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 141
    const/4 v2, 0x0

    const/4 v3, -0x6

    invoke-interface {p2, v2, v3}, Lcom/onesignal/PushRegistrator$RegisteredHandler;->complete(Ljava/lang/String;I)V

    .line 142
    const/4 v2, 0x0

    .line 144
    :goto_1
    return v2

    .line 135
    .end local v0    # "isProjectNumberValidFormat":Z
    :catch_0
    move-exception v1

    .line 136
    .local v1, "t":Ljava/lang/Throwable;
    const/4 v0, 0x0

    .restart local v0    # "isProjectNumberValidFormat":Z
    goto :goto_0

    .line 144
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_0
    const/4 v2, 0x1

    goto :goto_1
.end method

.method private declared-synchronized registerInBackground(Ljava/lang/String;)V
    .locals 2
    .param p1, "senderId"    # Ljava/lang/String;

    .prologue
    .line 78
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/onesignal/PushRegistratorAbstractGoogle;->registerThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/onesignal/PushRegistratorAbstractGoogle;->registerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    :goto_0
    monitor-exit p0

    return-void

    .line 81
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/onesignal/PushRegistratorAbstractGoogle$1;

    invoke-direct {v1, p0, p1}, Lcom/onesignal/PushRegistratorAbstractGoogle$1;-><init>(Lcom/onesignal/PushRegistratorAbstractGoogle;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/onesignal/PushRegistratorAbstractGoogle;->registerThread:Ljava/lang/Thread;

    .line 91
    iget-object v0, p0, Lcom/onesignal/PushRegistratorAbstractGoogle;->registerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 78
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method abstract getProviderName()Ljava/lang/String;
.end method

.method abstract getToken(Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public registerForPush(Landroid/content/Context;Ljava/lang/String;Lcom/onesignal/PushRegistrator$RegisteredHandler;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "senderId"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/onesignal/PushRegistrator$RegisteredHandler;

    .prologue
    .line 48
    iput-object p3, p0, Lcom/onesignal/PushRegistratorAbstractGoogle;->registeredHandler:Lcom/onesignal/PushRegistrator$RegisteredHandler;

    .line 50
    invoke-direct {p0, p2, p3}, Lcom/onesignal/PushRegistratorAbstractGoogle;->isValidProjectNumber(Ljava/lang/String;Lcom/onesignal/PushRegistrator$RegisteredHandler;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    invoke-direct {p0, p2}, Lcom/onesignal/PushRegistratorAbstractGoogle;->internalRegisterForPush(Ljava/lang/String;)V

    .line 52
    :cond_0
    return-void
.end method
