.class Lcom/onesignal/UserStatePush;
.super Lcom/onesignal/UserState;
.source "UserStatePush.java"


# direct methods
.method constructor <init>(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "inPersistKey"    # Ljava/lang/String;
    .param p2, "load"    # Z

    .prologue
    .line 8
    invoke-direct {p0, p1, p2}, Lcom/onesignal/UserState;-><init>(Ljava/lang/String;Z)V

    .line 9
    return-void
.end method

.method private getNotificationTypes()I
    .locals 7

    .prologue
    const/4 v3, -0x2

    const/4 v4, 0x1

    .line 24
    iget-object v5, p0, Lcom/onesignal/UserStatePush;->dependValues:Lorg/json/JSONObject;

    const-string v6, "subscribableStatus"

    invoke-virtual {v5, v6, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 25
    .local v1, "subscribableStatus":I
    if-ge v1, v3, :cond_0

    .line 36
    .end local v1    # "subscribableStatus":I
    :goto_0
    return v1

    .line 28
    .restart local v1    # "subscribableStatus":I
    :cond_0
    iget-object v5, p0, Lcom/onesignal/UserStatePush;->dependValues:Lorg/json/JSONObject;

    const-string v6, "androidPermission"

    invoke-virtual {v5, v6, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 29
    .local v0, "androidPermission":Z
    if-nez v0, :cond_1

    .line 30
    const/4 v1, 0x0

    goto :goto_0

    .line 32
    :cond_1
    iget-object v5, p0, Lcom/onesignal/UserStatePush;->dependValues:Lorg/json/JSONObject;

    const-string v6, "userSubscribePref"

    invoke-virtual {v5, v6, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 33
    .local v2, "userSubscribePref":Z
    if-nez v2, :cond_2

    move v1, v3

    .line 34
    goto :goto_0

    :cond_2
    move v1, v4

    .line 36
    goto :goto_0
.end method


# virtual methods
.method protected addDependFields()V
    .locals 3

    .prologue
    .line 19
    :try_start_0
    iget-object v0, p0, Lcom/onesignal/UserStatePush;->syncValues:Lorg/json/JSONObject;

    const-string v1, "notification_types"

    invoke-direct {p0}, Lcom/onesignal/UserStatePush;->getNotificationTypes()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    :goto_0
    return-void

    .line 20
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method isSubscribed()Z
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/onesignal/UserStatePush;->getNotificationTypes()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method newInstance(Ljava/lang/String;)Lcom/onesignal/UserState;
    .locals 2
    .param p1, "persistKey"    # Ljava/lang/String;

    .prologue
    .line 13
    new-instance v0, Lcom/onesignal/UserStatePush;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/onesignal/UserStatePush;-><init>(Ljava/lang/String;Z)V

    return-object v0
.end method
