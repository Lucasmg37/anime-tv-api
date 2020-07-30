.class public Lcom/onesignal/OSNotification;
.super Ljava/lang/Object;
.source "OSNotification.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onesignal/OSNotification$DisplayType;
    }
.end annotation


# instance fields
.field public androidNotificationId:I

.field public displayType:Lcom/onesignal/OSNotification$DisplayType;

.field public groupedNotifications:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/onesignal/OSNotificationPayload;",
            ">;"
        }
    .end annotation
.end field

.field public isAppInFocus:Z

.field public payload:Lcom/onesignal/OSNotificationPayload;

.field public shown:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 5
    .param p1, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const-string v2, "isAppInFocus"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/onesignal/OSNotification;->isAppInFocus:Z

    .line 75
    const-string v2, "shown"

    iget-boolean v3, p0, Lcom/onesignal/OSNotification;->shown:Z

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/onesignal/OSNotification;->shown:Z

    .line 76
    const-string v2, "androidNotificationId"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/onesignal/OSNotification;->androidNotificationId:I

    .line 77
    invoke-static {}, Lcom/onesignal/OSNotification$DisplayType;->values()[Lcom/onesignal/OSNotification$DisplayType;

    move-result-object v2

    const-string v3, "displayType"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/onesignal/OSNotification;->displayType:Lcom/onesignal/OSNotification$DisplayType;

    .line 79
    const-string v2, "groupedNotifications"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 80
    const-string v2, "groupedNotifications"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 81
    .local v1, "jsonArray":Lorg/json/JSONArray;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/onesignal/OSNotification;->groupedNotifications:Ljava/util/List;

    .line 82
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 83
    iget-object v2, p0, Lcom/onesignal/OSNotification;->groupedNotifications:Ljava/util/List;

    new-instance v3, Lcom/onesignal/OSNotificationPayload;

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/onesignal/OSNotificationPayload;-><init>(Lorg/json/JSONObject;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 86
    .end local v0    # "i":I
    .end local v1    # "jsonArray":Lorg/json/JSONArray;
    :cond_0
    const-string v2, "payload"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 87
    new-instance v2, Lcom/onesignal/OSNotificationPayload;

    const-string v3, "payload"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/onesignal/OSNotificationPayload;-><init>(Lorg/json/JSONObject;)V

    iput-object v2, p0, Lcom/onesignal/OSNotification;->payload:Lcom/onesignal/OSNotificationPayload;

    .line 88
    :cond_1
    return-void
.end method


# virtual methods
.method public stringify()Ljava/lang/String;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/onesignal/OSNotification;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v1

    .line 116
    .local v1, "mainObj":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "additionalData"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 117
    const-string v2, "additionalData"

    const-string v3, "additionalData"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    :cond_0
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 119
    :catch_0
    move-exception v0

    .line 120
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public toJSONObject()Lorg/json/JSONObject;
    .locals 6

    .prologue
    .line 127
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 130
    .local v0, "mainObj":Lorg/json/JSONObject;
    :try_start_0
    const-string v4, "isAppInFocus"

    iget-boolean v5, p0, Lcom/onesignal/OSNotification;->isAppInFocus:Z

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 131
    const-string v4, "shown"

    iget-boolean v5, p0, Lcom/onesignal/OSNotification;->shown:Z

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 132
    const-string v4, "androidNotificationId"

    iget v5, p0, Lcom/onesignal/OSNotification;->androidNotificationId:I

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 133
    const-string v4, "displayType"

    iget-object v5, p0, Lcom/onesignal/OSNotification;->displayType:Lcom/onesignal/OSNotification$DisplayType;

    invoke-virtual {v5}, Lcom/onesignal/OSNotification$DisplayType;->ordinal()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 135
    iget-object v4, p0, Lcom/onesignal/OSNotification;->groupedNotifications:Ljava/util/List;

    if-eqz v4, :cond_1

    .line 136
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 137
    .local v2, "payloadJsonArray":Lorg/json/JSONArray;
    iget-object v4, p0, Lcom/onesignal/OSNotification;->groupedNotifications:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onesignal/OSNotificationPayload;

    .line 138
    .local v1, "payload":Lcom/onesignal/OSNotificationPayload;
    invoke-virtual {v1}, Lcom/onesignal/OSNotificationPayload;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 144
    .end local v1    # "payload":Lcom/onesignal/OSNotificationPayload;
    .end local v2    # "payloadJsonArray":Lorg/json/JSONArray;
    :catch_0
    move-exception v3

    .line 145
    .local v3, "t":Ljava/lang/Throwable;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 148
    .end local v3    # "t":Ljava/lang/Throwable;
    :goto_1
    return-object v0

    .line 139
    .restart local v2    # "payloadJsonArray":Lorg/json/JSONArray;
    :cond_0
    :try_start_1
    const-string v4, "groupedNotifications"

    invoke-virtual {v0, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 142
    .end local v2    # "payloadJsonArray":Lorg/json/JSONArray;
    :cond_1
    const-string v4, "payload"

    iget-object v5, p0, Lcom/onesignal/OSNotification;->payload:Lcom/onesignal/OSNotificationPayload;

    invoke-virtual {v5}, Lcom/onesignal/OSNotificationPayload;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
