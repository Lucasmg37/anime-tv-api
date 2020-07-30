.class public abstract Lcom/onesignal/NotificationExtenderService;
.super Lcom/onesignal/JobIntentService;
.source "NotificationExtenderService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onesignal/NotificationExtenderService$OverrideSettings;
    }
.end annotation


# static fields
.field static final EXTENDER_SERVICE_JOB_ID:I = 0x7b7e1b69


# instance fields
.field private currentBaseOverrideSettings:Lcom/onesignal/NotificationExtenderService$OverrideSettings;

.field private currentJsonPayload:Lorg/json/JSONObject;

.field private currentlyRestoring:Z

.field private osNotificationDisplayedResult:Lcom/onesignal/OSNotificationDisplayedResult;

.field private restoreTimestamp:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/onesignal/JobIntentService;-><init>()V

    .line 95
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/onesignal/NotificationExtenderService;->currentBaseOverrideSettings:Lcom/onesignal/NotificationExtenderService$OverrideSettings;

    return-void
.end method

.method private createNotifJobFromCurrent()Lcom/onesignal/NotificationGenerationJob;
    .locals 2

    .prologue
    .line 224
    new-instance v0, Lcom/onesignal/NotificationGenerationJob;

    invoke-direct {v0, p0}, Lcom/onesignal/NotificationGenerationJob;-><init>(Landroid/content/Context;)V

    .line 225
    .local v0, "notifJob":Lcom/onesignal/NotificationGenerationJob;
    iget-boolean v1, p0, Lcom/onesignal/NotificationExtenderService;->currentlyRestoring:Z

    iput-boolean v1, v0, Lcom/onesignal/NotificationGenerationJob;->restoring:Z

    .line 226
    iget-object v1, p0, Lcom/onesignal/NotificationExtenderService;->currentJsonPayload:Lorg/json/JSONObject;

    iput-object v1, v0, Lcom/onesignal/NotificationGenerationJob;->jsonPayload:Lorg/json/JSONObject;

    .line 227
    iget-object v1, p0, Lcom/onesignal/NotificationExtenderService;->restoreTimestamp:Ljava/lang/Long;

    iput-object v1, v0, Lcom/onesignal/NotificationGenerationJob;->shownTimeStamp:Ljava/lang/Long;

    .line 228
    iget-object v1, p0, Lcom/onesignal/NotificationExtenderService;->currentBaseOverrideSettings:Lcom/onesignal/NotificationExtenderService$OverrideSettings;

    iput-object v1, v0, Lcom/onesignal/NotificationGenerationJob;->overrideSettings:Lcom/onesignal/NotificationExtenderService$OverrideSettings;

    .line 230
    return-object v0
.end method

.method static getIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 212
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 213
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v4, "com.onesignal.NotificationExtender"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 214
    .local v0, "intent":Landroid/content/Intent;
    const/16 v3, 0x80

    invoke-virtual {v1, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 215
    .local v2, "resolveInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v3, v4, :cond_0

    .line 216
    const/4 v0, 0x0

    .line 220
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return-object v0

    .line 218
    .restart local v0    # "intent":Landroid/content/Intent;
    :cond_0
    new-instance v4, Landroid/content/ComponentName;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v4, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private processIntent(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 128
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 132
    .local v0, "bundle":Landroid/os/Bundle;
    if-nez v0, :cond_1

    .line 133
    sget-object v3, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No extras sent to NotificationExtenderService in its Intent!\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 159
    :cond_0
    :goto_0
    return-void

    .line 137
    :cond_1
    const-string v3, "json_payload"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 138
    .local v2, "jsonStrPayload":Ljava/lang/String;
    if-nez v2, :cond_2

    .line 139
    sget-object v3, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "json_payload key is nonexistent from bundle passed to NotificationExtenderService: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    goto :goto_0

    .line 144
    :cond_2
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/onesignal/NotificationExtenderService;->currentJsonPayload:Lorg/json/JSONObject;

    .line 145
    const-string v3, "restoring"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/onesignal/NotificationExtenderService;->currentlyRestoring:Z

    .line 146
    const-string v3, "android_notif_id"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 147
    new-instance v3, Lcom/onesignal/NotificationExtenderService$OverrideSettings;

    invoke-direct {v3}, Lcom/onesignal/NotificationExtenderService$OverrideSettings;-><init>()V

    iput-object v3, p0, Lcom/onesignal/NotificationExtenderService;->currentBaseOverrideSettings:Lcom/onesignal/NotificationExtenderService$OverrideSettings;

    .line 148
    iget-object v3, p0, Lcom/onesignal/NotificationExtenderService;->currentBaseOverrideSettings:Lcom/onesignal/NotificationExtenderService$OverrideSettings;

    const-string v4, "android_notif_id"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v3, Lcom/onesignal/NotificationExtenderService$OverrideSettings;->androidNotificationId:Ljava/lang/Integer;

    .line 151
    :cond_3
    iget-boolean v3, p0, Lcom/onesignal/NotificationExtenderService;->currentlyRestoring:Z

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/onesignal/NotificationExtenderService;->currentJsonPayload:Lorg/json/JSONObject;

    invoke-static {p0, v3}, Lcom/onesignal/OneSignal;->notValidOrDuplicated(Landroid/content/Context;Lorg/json/JSONObject;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 154
    :cond_4
    const-string v3, "timestamp"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, p0, Lcom/onesignal/NotificationExtenderService;->restoreTimestamp:Ljava/lang/Long;

    .line 155
    iget-object v3, p0, Lcom/onesignal/NotificationExtenderService;->currentJsonPayload:Lorg/json/JSONObject;

    iget-boolean v4, p0, Lcom/onesignal/NotificationExtenderService;->currentlyRestoring:Z

    invoke-virtual {p0, v3, v4}, Lcom/onesignal/NotificationExtenderService;->processJsonObject(Lorg/json/JSONObject;Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 156
    :catch_0
    move-exception v1

    .line 157
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method protected final displayNotification(Lcom/onesignal/NotificationExtenderService$OverrideSettings;)Lcom/onesignal/OSNotificationDisplayedResult;
    .locals 3
    .param p1, "overrideSettings"    # Lcom/onesignal/NotificationExtenderService$OverrideSettings;

    .prologue
    .line 101
    iget-object v1, p0, Lcom/onesignal/NotificationExtenderService;->osNotificationDisplayedResult:Lcom/onesignal/OSNotificationDisplayedResult;

    if-nez v1, :cond_0

    if-nez p1, :cond_1

    .line 102
    :cond_0
    const/4 v1, 0x0

    .line 111
    :goto_0
    return-object v1

    .line 104
    :cond_1
    iget-object v1, p0, Lcom/onesignal/NotificationExtenderService;->currentBaseOverrideSettings:Lcom/onesignal/NotificationExtenderService$OverrideSettings;

    invoke-virtual {p1, v1}, Lcom/onesignal/NotificationExtenderService$OverrideSettings;->override(Lcom/onesignal/NotificationExtenderService$OverrideSettings;)V

    .line 105
    new-instance v1, Lcom/onesignal/OSNotificationDisplayedResult;

    invoke-direct {v1}, Lcom/onesignal/OSNotificationDisplayedResult;-><init>()V

    iput-object v1, p0, Lcom/onesignal/NotificationExtenderService;->osNotificationDisplayedResult:Lcom/onesignal/OSNotificationDisplayedResult;

    .line 107
    invoke-direct {p0}, Lcom/onesignal/NotificationExtenderService;->createNotifJobFromCurrent()Lcom/onesignal/NotificationGenerationJob;

    move-result-object v0

    .line 108
    .local v0, "notifJob":Lcom/onesignal/NotificationGenerationJob;
    iput-object p1, v0, Lcom/onesignal/NotificationGenerationJob;->overrideSettings:Lcom/onesignal/NotificationExtenderService$OverrideSettings;

    .line 110
    iget-object v1, p0, Lcom/onesignal/NotificationExtenderService;->osNotificationDisplayedResult:Lcom/onesignal/OSNotificationDisplayedResult;

    invoke-static {v0}, Lcom/onesignal/NotificationBundleProcessor;->ProcessJobForDisplay(Lcom/onesignal/NotificationGenerationJob;)I

    move-result v2

    iput v2, v1, Lcom/onesignal/OSNotificationDisplayedResult;->androidNotificationId:I

    .line 111
    iget-object v1, p0, Lcom/onesignal/NotificationExtenderService;->osNotificationDisplayedResult:Lcom/onesignal/OSNotificationDisplayedResult;

    goto :goto_0
.end method

.method public bridge synthetic isStopped()Z
    .locals 1

    .prologue
    .line 69
    invoke-super {p0}, Lcom/onesignal/JobIntentService;->isStopped()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 69
    invoke-super {p0, p1}, Lcom/onesignal/JobIntentService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic onCreate()V
    .locals 0

    .prologue
    .line 69
    invoke-super {p0}, Lcom/onesignal/JobIntentService;->onCreate()V

    return-void
.end method

.method public bridge synthetic onDestroy()V
    .locals 0

    .prologue
    .line 69
    invoke-super {p0}, Lcom/onesignal/JobIntentService;->onDestroy()V

    return-void
.end method

.method protected final onHandleWork(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 120
    if-nez p1, :cond_0

    .line 125
    :goto_0
    return-void

    .line 123
    :cond_0
    invoke-direct {p0, p1}, Lcom/onesignal/NotificationExtenderService;->processIntent(Landroid/content/Intent;)V

    .line 124
    invoke-static {p1}, Lcom/onesignal/GcmBroadcastReceiver;->completeWakefulIntent(Landroid/content/Intent;)Z

    goto :goto_0
.end method

.method protected abstract onNotificationProcessing(Lcom/onesignal/OSNotificationReceivedResult;)Z
.end method

.method public bridge synthetic onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .param p1    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 69
    invoke-super {p0, p1, p2, p3}, Lcom/onesignal/JobIntentService;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method

.method public bridge synthetic onStopCurrentWork()Z
    .locals 1

    .prologue
    .line 69
    invoke-super {p0}, Lcom/onesignal/JobIntentService;->onStopCurrentWork()Z

    move-result v0

    return v0
.end method

.method processJsonObject(Lorg/json/JSONObject;Z)V
    .locals 9
    .param p1, "currentJsonPayload"    # Lorg/json/JSONObject;
    .param p2, "restoring"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 162
    new-instance v3, Lcom/onesignal/OSNotificationReceivedResult;

    invoke-direct {v3}, Lcom/onesignal/OSNotificationReceivedResult;-><init>()V

    .line 163
    .local v3, "receivedResult":Lcom/onesignal/OSNotificationReceivedResult;
    invoke-static {p1}, Lcom/onesignal/NotificationBundleProcessor;->OSNotificationPayloadFrom(Lorg/json/JSONObject;)Lcom/onesignal/OSNotificationPayload;

    move-result-object v7

    iput-object v7, v3, Lcom/onesignal/OSNotificationReceivedResult;->payload:Lcom/onesignal/OSNotificationPayload;

    .line 164
    iput-boolean p2, v3, Lcom/onesignal/OSNotificationReceivedResult;->restoring:Z

    .line 165
    invoke-static {}, Lcom/onesignal/OneSignal;->isAppActive()Z

    move-result v7

    iput-boolean v7, v3, Lcom/onesignal/OSNotificationReceivedResult;->isAppInFocus:Z

    .line 167
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/onesignal/NotificationExtenderService;->osNotificationDisplayedResult:Lcom/onesignal/OSNotificationDisplayedResult;

    .line 168
    const/4 v0, 0x0

    .line 170
    .local v0, "developerProcessed":Z
    :try_start_0
    invoke-virtual {p0, v3}, Lcom/onesignal/NotificationExtenderService;->onNotificationProcessing(Lcom/onesignal/OSNotificationReceivedResult;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 180
    :goto_0
    iget-object v7, p0, Lcom/onesignal/NotificationExtenderService;->osNotificationDisplayedResult:Lcom/onesignal/OSNotificationDisplayedResult;

    if-nez v7, :cond_1

    .line 183
    if-nez v0, :cond_3

    const-string v7, "alert"

    .line 184
    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/onesignal/NotificationBundleProcessor;->shouldDisplay(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    move v1, v5

    .line 186
    .local v1, "display":Z
    :goto_1
    if-nez v1, :cond_5

    .line 187
    if-nez p2, :cond_4

    .line 188
    new-instance v2, Lcom/onesignal/NotificationGenerationJob;

    invoke-direct {v2, p0}, Lcom/onesignal/NotificationGenerationJob;-><init>(Landroid/content/Context;)V

    .line 189
    .local v2, "notifJob":Lcom/onesignal/NotificationGenerationJob;
    iput-object p1, v2, Lcom/onesignal/NotificationGenerationJob;->jsonPayload:Lorg/json/JSONObject;

    .line 190
    new-instance v7, Lcom/onesignal/NotificationExtenderService$OverrideSettings;

    invoke-direct {v7}, Lcom/onesignal/NotificationExtenderService$OverrideSettings;-><init>()V

    iput-object v7, v2, Lcom/onesignal/NotificationGenerationJob;->overrideSettings:Lcom/onesignal/NotificationExtenderService$OverrideSettings;

    .line 191
    iget-object v7, v2, Lcom/onesignal/NotificationGenerationJob;->overrideSettings:Lcom/onesignal/NotificationExtenderService$OverrideSettings;

    const/4 v8, -0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iput-object v8, v7, Lcom/onesignal/NotificationExtenderService$OverrideSettings;->androidNotificationId:Ljava/lang/Integer;

    .line 193
    invoke-static {v2, v5}, Lcom/onesignal/NotificationBundleProcessor;->saveNotification(Lcom/onesignal/NotificationGenerationJob;Z)V

    .line 194
    invoke-static {p1}, Lcom/onesignal/NotificationBundleProcessor;->newJsonArray(Lorg/json/JSONObject;)Lorg/json/JSONArray;

    move-result-object v5

    invoke-static {v5, v6, v6}, Lcom/onesignal/OneSignal;->handleNotificationReceived(Lorg/json/JSONArray;ZZ)V

    .line 206
    .end local v2    # "notifJob":Lcom/onesignal/NotificationGenerationJob;
    :cond_0
    :goto_2
    if-eqz p2, :cond_1

    .line 207
    const/16 v5, 0x64

    invoke-static {v5}, Lcom/onesignal/OSUtils;->sleep(I)V

    .line 209
    .end local v1    # "display":Z
    :cond_1
    return-void

    .line 171
    :catch_0
    move-exception v4

    .line 173
    .local v4, "t":Ljava/lang/Throwable;
    iget-object v7, p0, Lcom/onesignal/NotificationExtenderService;->osNotificationDisplayedResult:Lcom/onesignal/OSNotificationDisplayedResult;

    if-nez v7, :cond_2

    .line 174
    sget-object v7, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v8, "onNotificationProcessing throw an exception. Displaying normal OneSignal notification."

    invoke-static {v7, v8, v4}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 176
    :cond_2
    sget-object v7, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v8, "onNotificationProcessing throw an exception. Extended notification displayed but custom processing did not finish."

    invoke-static {v7, v8, v4}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .end local v4    # "t":Ljava/lang/Throwable;
    :cond_3
    move v1, v6

    .line 184
    goto :goto_1

    .line 198
    .restart local v1    # "display":Z
    :cond_4
    iget-object v5, p0, Lcom/onesignal/NotificationExtenderService;->currentBaseOverrideSettings:Lcom/onesignal/NotificationExtenderService$OverrideSettings;

    if-eqz v5, :cond_0

    .line 199
    invoke-direct {p0}, Lcom/onesignal/NotificationExtenderService;->createNotifJobFromCurrent()Lcom/onesignal/NotificationGenerationJob;

    move-result-object v5

    invoke-static {v5}, Lcom/onesignal/NotificationBundleProcessor;->markRestoredNotificationAsDismissed(Lcom/onesignal/NotificationGenerationJob;)V

    goto :goto_2

    .line 202
    :cond_5
    invoke-direct {p0}, Lcom/onesignal/NotificationExtenderService;->createNotifJobFromCurrent()Lcom/onesignal/NotificationGenerationJob;

    move-result-object v5

    invoke-static {v5}, Lcom/onesignal/NotificationBundleProcessor;->ProcessJobForDisplay(Lcom/onesignal/NotificationGenerationJob;)I

    goto :goto_2
.end method

.method public bridge synthetic setInterruptIfStopped(Z)V
    .locals 0

    .prologue
    .line 69
    invoke-super {p0, p1}, Lcom/onesignal/JobIntentService;->setInterruptIfStopped(Z)V

    return-void
.end method
