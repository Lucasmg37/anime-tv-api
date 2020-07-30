.class Lcom/onesignal/TrackFirebaseAnalytics;
.super Ljava/lang/Object;
.source "TrackFirebaseAnalytics.java"


# static fields
.field private static final EVENT_NOTIFICATION_INFLUENCE_OPEN:Ljava/lang/String; = "os_notification_influence_open"

.field private static final EVENT_NOTIFICATION_OPENED:Ljava/lang/String; = "os_notification_opened"

.field private static final EVENT_NOTIFICATION_RECEIVED:Ljava/lang/String; = "os_notification_received"

.field private static FirebaseAnalyticsClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static lastOpenedTime:Ljava/util/concurrent/atomic/AtomicLong;

.field private static lastReceivedPayload:Lcom/onesignal/OSNotificationPayload;

.field private static lastReceivedTime:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field private appContext:Landroid/content/Context;

.field private mFirebaseAnalyticsInstance:Ljava/lang/Object;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "activity"    # Landroid/content/Context;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/onesignal/TrackFirebaseAnalytics;->appContext:Landroid/content/Context;

    .line 53
    return-void
.end method

.method static CanTrack()Z
    .locals 2

    .prologue
    .line 57
    :try_start_0
    const-string v1, "com.google.firebase.analytics.FirebaseAnalytics"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/onesignal/TrackFirebaseAnalytics;->FirebaseAnalyticsClass:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    const/4 v1, 0x1

    .line 60
    .local v0, "t":Ljava/lang/Throwable;
    :goto_0
    return v1

    .line 59
    .end local v0    # "t":Ljava/lang/Throwable;
    :catch_0
    move-exception v0

    .line 60
    .restart local v0    # "t":Ljava/lang/Throwable;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getCampaignNameFromPayload(Lcom/onesignal/OSNotificationPayload;)Ljava/lang/String;
    .locals 4
    .param p1, "payload"    # Lcom/onesignal/OSNotificationPayload;

    .prologue
    .line 152
    iget-object v0, p1, Lcom/onesignal/OSNotificationPayload;->templateName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/onesignal/OSNotificationPayload;->templateId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lcom/onesignal/OSNotificationPayload;->templateName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/onesignal/OSNotificationPayload;->templateId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 157
    :goto_0
    return-object v0

    .line 154
    :cond_0
    iget-object v0, p1, Lcom/onesignal/OSNotificationPayload;->title:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 155
    iget-object v0, p1, Lcom/onesignal/OSNotificationPayload;->title:Ljava/lang/String;

    const/4 v1, 0x0

    const/16 v2, 0xa

    iget-object v3, p1, Lcom/onesignal/OSNotificationPayload;->title:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 157
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method private getFirebaseAnalyticsInstance(Landroid/content/Context;)Ljava/lang/Object;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 162
    iget-object v3, p0, Lcom/onesignal/TrackFirebaseAnalytics;->mFirebaseAnalyticsInstance:Ljava/lang/Object;

    if-nez v3, :cond_0

    .line 163
    sget-object v3, Lcom/onesignal/TrackFirebaseAnalytics;->FirebaseAnalyticsClass:Ljava/lang/Class;

    invoke-static {v3}, Lcom/onesignal/TrackFirebaseAnalytics;->getInstanceMethod(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 165
    .local v1, "getInstanceMethod":Ljava/lang/reflect/Method;
    const/4 v3, 0x0

    const/4 v4, 0x1

    :try_start_0
    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p0, Lcom/onesignal/TrackFirebaseAnalytics;->mFirebaseAnalyticsInstance:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    .end local v1    # "getInstanceMethod":Ljava/lang/reflect/Method;
    :cond_0
    iget-object v2, p0, Lcom/onesignal/TrackFirebaseAnalytics;->mFirebaseAnalyticsInstance:Ljava/lang/Object;

    :goto_0
    return-object v2

    .line 166
    .restart local v1    # "getInstanceMethod":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 167
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private static getInstanceMethod(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 5
    .param p0, "clazz"    # Ljava/lang/Class;

    .prologue
    .line 186
    :try_start_0
    const-string v1, "getInstance"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 189
    :goto_0
    return-object v1

    .line 187
    :catch_0
    move-exception v0

    .line 188
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 189
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static getTrackMethod(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 5
    .param p0, "clazz"    # Ljava/lang/Class;

    .prologue
    .line 177
    :try_start_0
    const-string v1, "logEvent"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Landroid/os/Bundle;

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 180
    :goto_0
    return-object v1

    .line 178
    :catch_0
    move-exception v0

    .line 179
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 180
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method trackInfluenceOpenEvent()V
    .locals 12

    .prologue
    .line 65
    sget-object v7, Lcom/onesignal/TrackFirebaseAnalytics;->lastReceivedTime:Ljava/util/concurrent/atomic/AtomicLong;

    if-eqz v7, :cond_0

    sget-object v7, Lcom/onesignal/TrackFirebaseAnalytics;->lastReceivedPayload:Lcom/onesignal/OSNotificationPayload;

    if-nez v7, :cond_1

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 69
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 70
    .local v4, "now":J
    sget-object v7, Lcom/onesignal/TrackFirebaseAnalytics;->lastReceivedTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v8

    sub-long v8, v4, v8

    const-wide/32 v10, 0x1d4c0

    cmp-long v7, v8, v10

    if-gtz v7, :cond_0

    .line 75
    sget-object v7, Lcom/onesignal/TrackFirebaseAnalytics;->lastOpenedTime:Ljava/util/concurrent/atomic/AtomicLong;

    if-eqz v7, :cond_2

    sget-object v7, Lcom/onesignal/TrackFirebaseAnalytics;->lastOpenedTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v8

    sub-long v8, v4, v8

    const-wide/16 v10, 0x7530

    cmp-long v7, v8, v10

    if-ltz v7, :cond_0

    .line 79
    :cond_2
    :try_start_0
    iget-object v7, p0, Lcom/onesignal/TrackFirebaseAnalytics;->appContext:Landroid/content/Context;

    invoke-direct {p0, v7}, Lcom/onesignal/TrackFirebaseAnalytics;->getFirebaseAnalyticsInstance(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v2

    .line 81
    .local v2, "firebaseAnalyticsInstance":Ljava/lang/Object;
    sget-object v7, Lcom/onesignal/TrackFirebaseAnalytics;->FirebaseAnalyticsClass:Ljava/lang/Class;

    invoke-static {v7}, Lcom/onesignal/TrackFirebaseAnalytics;->getTrackMethod(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 83
    .local v6, "trackMethod":Ljava/lang/reflect/Method;
    const-string v1, "os_notification_influence_open"

    .line 86
    .local v1, "event":Ljava/lang/String;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 87
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v7, "source"

    const-string v8, "OneSignal"

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const-string v7, "medium"

    const-string v8, "notification"

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const-string v7, "notification_id"

    sget-object v8, Lcom/onesignal/TrackFirebaseAnalytics;->lastReceivedPayload:Lcom/onesignal/OSNotificationPayload;

    iget-object v8, v8, Lcom/onesignal/OSNotificationPayload;->notificationID:Ljava/lang/String;

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const-string v7, "campaign"

    sget-object v8, Lcom/onesignal/TrackFirebaseAnalytics;->lastReceivedPayload:Lcom/onesignal/OSNotificationPayload;

    invoke-direct {p0, v8}, Lcom/onesignal/TrackFirebaseAnalytics;->getCampaignNameFromPayload(Lcom/onesignal/OSNotificationPayload;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v1, v7, v8

    const/4 v8, 0x1

    aput-object v0, v7, v8

    invoke-virtual {v6, v2, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 93
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "event":Ljava/lang/String;
    .end local v2    # "firebaseAnalyticsInstance":Ljava/lang/Object;
    .end local v6    # "trackMethod":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v3

    .line 94
    .local v3, "t":Ljava/lang/Throwable;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method trackOpenedEvent(Lcom/onesignal/OSNotificationOpenResult;)V
    .locals 8
    .param p1, "openResult"    # Lcom/onesignal/OSNotificationOpenResult;

    .prologue
    .line 99
    sget-object v4, Lcom/onesignal/TrackFirebaseAnalytics;->lastOpenedTime:Ljava/util/concurrent/atomic/AtomicLong;

    if-nez v4, :cond_0

    .line 100
    new-instance v4, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v4}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    sput-object v4, Lcom/onesignal/TrackFirebaseAnalytics;->lastOpenedTime:Ljava/util/concurrent/atomic/AtomicLong;

    .line 101
    :cond_0
    sget-object v4, Lcom/onesignal/TrackFirebaseAnalytics;->lastOpenedTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 105
    :try_start_0
    iget-object v4, p0, Lcom/onesignal/TrackFirebaseAnalytics;->appContext:Landroid/content/Context;

    invoke-direct {p0, v4}, Lcom/onesignal/TrackFirebaseAnalytics;->getFirebaseAnalyticsInstance(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    .line 107
    .local v1, "firebaseAnalyticsInstance":Ljava/lang/Object;
    sget-object v4, Lcom/onesignal/TrackFirebaseAnalytics;->FirebaseAnalyticsClass:Ljava/lang/Class;

    invoke-static {v4}, Lcom/onesignal/TrackFirebaseAnalytics;->getTrackMethod(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 110
    .local v3, "trackMethod":Ljava/lang/reflect/Method;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 111
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v4, "source"

    const-string v5, "OneSignal"

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const-string v4, "medium"

    const-string v5, "notification"

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const-string v4, "notification_id"

    iget-object v5, p1, Lcom/onesignal/OSNotificationOpenResult;->notification:Lcom/onesignal/OSNotification;

    iget-object v5, v5, Lcom/onesignal/OSNotification;->payload:Lcom/onesignal/OSNotificationPayload;

    iget-object v5, v5, Lcom/onesignal/OSNotificationPayload;->notificationID:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    const-string v4, "campaign"

    iget-object v5, p1, Lcom/onesignal/OSNotificationOpenResult;->notification:Lcom/onesignal/OSNotification;

    iget-object v5, v5, Lcom/onesignal/OSNotification;->payload:Lcom/onesignal/OSNotificationPayload;

    invoke-direct {p0, v5}, Lcom/onesignal/TrackFirebaseAnalytics;->getCampaignNameFromPayload(Lcom/onesignal/OSNotificationPayload;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "os_notification_opened"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v0, v4, v5

    invoke-virtual {v3, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "firebaseAnalyticsInstance":Ljava/lang/Object;
    .end local v3    # "trackMethod":Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 118
    :catch_0
    move-exception v2

    .line 119
    .local v2, "t":Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method trackReceivedEvent(Lcom/onesignal/OSNotificationOpenResult;)V
    .locals 8
    .param p1, "receivedResult"    # Lcom/onesignal/OSNotificationOpenResult;

    .prologue
    .line 128
    :try_start_0
    iget-object v4, p0, Lcom/onesignal/TrackFirebaseAnalytics;->appContext:Landroid/content/Context;

    invoke-direct {p0, v4}, Lcom/onesignal/TrackFirebaseAnalytics;->getFirebaseAnalyticsInstance(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    .line 130
    .local v1, "firebaseAnalyticsInstance":Ljava/lang/Object;
    sget-object v4, Lcom/onesignal/TrackFirebaseAnalytics;->FirebaseAnalyticsClass:Ljava/lang/Class;

    invoke-static {v4}, Lcom/onesignal/TrackFirebaseAnalytics;->getTrackMethod(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 132
    .local v3, "trackMethod":Ljava/lang/reflect/Method;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 133
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v4, "source"

    const-string v5, "OneSignal"

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    const-string v4, "medium"

    const-string v5, "notification"

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    const-string v4, "notification_id"

    iget-object v5, p1, Lcom/onesignal/OSNotificationOpenResult;->notification:Lcom/onesignal/OSNotification;

    iget-object v5, v5, Lcom/onesignal/OSNotification;->payload:Lcom/onesignal/OSNotificationPayload;

    iget-object v5, v5, Lcom/onesignal/OSNotificationPayload;->notificationID:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    const-string v4, "campaign"

    iget-object v5, p1, Lcom/onesignal/OSNotificationOpenResult;->notification:Lcom/onesignal/OSNotification;

    iget-object v5, v5, Lcom/onesignal/OSNotification;->payload:Lcom/onesignal/OSNotificationPayload;

    invoke-direct {p0, v5}, Lcom/onesignal/TrackFirebaseAnalytics;->getCampaignNameFromPayload(Lcom/onesignal/OSNotificationPayload;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "os_notification_received"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v0, v4, v5

    invoke-virtual {v3, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    sget-object v4, Lcom/onesignal/TrackFirebaseAnalytics;->lastReceivedTime:Ljava/util/concurrent/atomic/AtomicLong;

    if-nez v4, :cond_0

    .line 141
    new-instance v4, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v4}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    sput-object v4, Lcom/onesignal/TrackFirebaseAnalytics;->lastReceivedTime:Ljava/util/concurrent/atomic/AtomicLong;

    .line 142
    :cond_0
    sget-object v4, Lcom/onesignal/TrackFirebaseAnalytics;->lastReceivedTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 144
    iget-object v4, p1, Lcom/onesignal/OSNotificationOpenResult;->notification:Lcom/onesignal/OSNotification;

    iget-object v4, v4, Lcom/onesignal/OSNotification;->payload:Lcom/onesignal/OSNotificationPayload;

    sput-object v4, Lcom/onesignal/TrackFirebaseAnalytics;->lastReceivedPayload:Lcom/onesignal/OSNotificationPayload;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "firebaseAnalyticsInstance":Ljava/lang/Object;
    .end local v3    # "trackMethod":Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 146
    :catch_0
    move-exception v2

    .line 147
    .local v2, "t":Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
