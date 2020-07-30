.class Lcom/plugin/gcm/OneSignalPush$8;
.super Ljava/lang/Object;
.source "OneSignalPush.java"

# interfaces
.implements Lcom/onesignal/OneSignal$EmailUpdateHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/plugin/gcm/OneSignalPush;->execute(Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/plugin/gcm/OneSignalPush;

.field final synthetic val$jsSetEmailContext:Lorg/apache/cordova/CallbackContext;


# direct methods
.method constructor <init>(Lcom/plugin/gcm/OneSignalPush;Lorg/apache/cordova/CallbackContext;)V
    .locals 0
    .param p1, "this$0"    # Lcom/plugin/gcm/OneSignalPush;

    .prologue
    .line 404
    iput-object p1, p0, Lcom/plugin/gcm/OneSignalPush$8;->this$0:Lcom/plugin/gcm/OneSignalPush;

    iput-object p2, p0, Lcom/plugin/gcm/OneSignalPush$8;->val$jsSetEmailContext:Lorg/apache/cordova/CallbackContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/onesignal/OneSignal$EmailUpdateError;)V
    .locals 4
    .param p1, "error"    # Lcom/onesignal/OneSignal$EmailUpdateError;

    .prologue
    .line 413
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "{\'error\' : \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/onesignal/OneSignal$EmailUpdateError;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 414
    .local v1, "errorObject":Lorg/json/JSONObject;
    iget-object v2, p0, Lcom/plugin/gcm/OneSignalPush$8;->val$jsSetEmailContext:Lorg/apache/cordova/CallbackContext;

    invoke-static {v2, v1}, Lcom/plugin/gcm/OneSignalPush;->access$400(Lorg/apache/cordova/CallbackContext;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 418
    .end local v1    # "errorObject":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 415
    :catch_0
    move-exception v0

    .line 416
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public onSuccess()V
    .locals 2

    .prologue
    .line 407
    iget-object v0, p0, Lcom/plugin/gcm/OneSignalPush$8;->val$jsSetEmailContext:Lorg/apache/cordova/CallbackContext;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/plugin/gcm/OneSignalPush;->access$100(Lorg/apache/cordova/CallbackContext;Lorg/json/JSONObject;)V

    .line 408
    return-void
.end method
