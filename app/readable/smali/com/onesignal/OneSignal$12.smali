.class final Lcom/onesignal/OneSignal$12;
.super Lcom/onesignal/OneSignalRestClient$ResponseHandler;
.source "OneSignal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/OneSignal;->postNotification(Lorg/json/JSONObject;Lcom/onesignal/OneSignal$PostNotificationResponseHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$handler:Lcom/onesignal/OneSignal$PostNotificationResponseHandler;


# direct methods
.method constructor <init>(Lcom/onesignal/OneSignal$PostNotificationResponseHandler;)V
    .locals 0

    .prologue
    .line 1557
    iput-object p1, p0, Lcom/onesignal/OneSignal$12;->val$handler:Lcom/onesignal/OneSignal$PostNotificationResponseHandler;

    invoke-direct {p0}, Lcom/onesignal/OneSignalRestClient$ResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method onFailure(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 5
    .param p1, "statusCode"    # I
    .param p2, "response"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 1576
    const-string v2, "create notification failed"

    invoke-static {v2, p1, p3, p2}, Lcom/onesignal/OneSignal;->access$2100(Ljava/lang/String;ILjava/lang/Throwable;Ljava/lang/String;)V

    .line 1577
    iget-object v2, p0, Lcom/onesignal/OneSignal$12;->val$handler:Lcom/onesignal/OneSignal$PostNotificationResponseHandler;

    if-eqz v2, :cond_1

    .line 1579
    if-nez p1, :cond_0

    .line 1580
    :try_start_0
    const-string p2, "{\"error\": \"HTTP no response error\"}"

    .line 1582
    :cond_0
    iget-object v2, p0, Lcom/onesignal/OneSignal$12;->val$handler:Lcom/onesignal/OneSignal$PostNotificationResponseHandler;

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Lcom/onesignal/OneSignal$PostNotificationResponseHandler;->onFailure(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1591
    :cond_1
    :goto_0
    return-void

    .line 1583
    :catch_0
    move-exception v1

    .line 1585
    .local v1, "t":Ljava/lang/Throwable;
    :try_start_1
    iget-object v2, p0, Lcom/onesignal/OneSignal$12;->val$handler:Lcom/onesignal/OneSignal$PostNotificationResponseHandler;

    new-instance v3, Lorg/json/JSONObject;

    const-string v4, "{\"error\": \"Unknown response!\"}"

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Lcom/onesignal/OneSignal$PostNotificationResponseHandler;->onFailure(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1586
    :catch_1
    move-exception v0

    .line 1587
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 5
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    .line 1560
    sget-object v3, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HTTP create notification success: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz p1, :cond_1

    move-object v2, p1

    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 1561
    iget-object v2, p0, Lcom/onesignal/OneSignal$12;->val$handler:Lcom/onesignal/OneSignal$PostNotificationResponseHandler;

    if-eqz v2, :cond_0

    .line 1563
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1564
    .local v0, "jsonObject":Lorg/json/JSONObject;
    const-string v2, "errors"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1565
    iget-object v2, p0, Lcom/onesignal/OneSignal$12;->val$handler:Lcom/onesignal/OneSignal$PostNotificationResponseHandler;

    invoke-interface {v2, v0}, Lcom/onesignal/OneSignal$PostNotificationResponseHandler;->onFailure(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1572
    .end local v0    # "jsonObject":Lorg/json/JSONObject;
    :cond_0
    :goto_1
    return-void

    .line 1560
    :cond_1
    const-string v2, "null"

    goto :goto_0

    .line 1567
    .restart local v0    # "jsonObject":Lorg/json/JSONObject;
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/onesignal/OneSignal$12;->val$handler:Lcom/onesignal/OneSignal$PostNotificationResponseHandler;

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Lcom/onesignal/OneSignal$PostNotificationResponseHandler;->onSuccess(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1568
    .end local v0    # "jsonObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 1569
    .local v1, "t":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method
