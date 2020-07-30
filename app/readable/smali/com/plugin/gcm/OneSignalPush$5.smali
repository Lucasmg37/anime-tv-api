.class Lcom/plugin/gcm/OneSignalPush$5;
.super Ljava/lang/Object;
.source "OneSignalPush.java"

# interfaces
.implements Lcom/onesignal/OneSignal$IdsAvailableHandler;


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

.field final synthetic val$jsIdsAvailableCallBack:Lorg/apache/cordova/CallbackContext;


# direct methods
.method constructor <init>(Lcom/plugin/gcm/OneSignalPush;Lorg/apache/cordova/CallbackContext;)V
    .locals 0
    .param p1, "this$0"    # Lcom/plugin/gcm/OneSignalPush;

    .prologue
    .line 254
    iput-object p1, p0, Lcom/plugin/gcm/OneSignalPush$5;->this$0:Lcom/plugin/gcm/OneSignalPush;

    iput-object p2, p0, Lcom/plugin/gcm/OneSignalPush$5;->val$jsIdsAvailableCallBack:Lorg/apache/cordova/CallbackContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public idsAvailable(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "registrationId"    # Ljava/lang/String;

    .prologue
    .line 257
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 259
    .local v0, "jsonIds":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "userId"

    invoke-virtual {v0, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 260
    if-eqz p2, :cond_0

    .line 261
    const-string v2, "pushToken"

    invoke-virtual {v0, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 265
    :goto_0
    iget-object v2, p0, Lcom/plugin/gcm/OneSignalPush$5;->val$jsIdsAvailableCallBack:Lorg/apache/cordova/CallbackContext;

    invoke-static {v2, v0}, Lcom/plugin/gcm/OneSignalPush;->access$100(Lorg/apache/cordova/CallbackContext;Lorg/json/JSONObject;)V

    .line 270
    :goto_1
    return-void

    .line 263
    :cond_0
    const-string v2, "pushToken"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 267
    :catch_0
    move-exception v1

    .line 268
    .local v1, "t":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method
