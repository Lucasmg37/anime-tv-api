.class Lcom/plugin/gcm/OneSignalPush$6;
.super Ljava/lang/Object;
.source "OneSignalPush.java"

# interfaces
.implements Lcom/onesignal/OneSignal$PostNotificationResponseHandler;


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

.field final synthetic val$jsPostNotificationCallBack:Lorg/apache/cordova/CallbackContext;


# direct methods
.method constructor <init>(Lcom/plugin/gcm/OneSignalPush;Lorg/apache/cordova/CallbackContext;)V
    .locals 0
    .param p1, "this$0"    # Lcom/plugin/gcm/OneSignalPush;

    .prologue
    .line 330
    iput-object p1, p0, Lcom/plugin/gcm/OneSignalPush$6;->this$0:Lcom/plugin/gcm/OneSignalPush;

    iput-object p2, p0, Lcom/plugin/gcm/OneSignalPush$6;->val$jsPostNotificationCallBack:Lorg/apache/cordova/CallbackContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "response"    # Lorg/json/JSONObject;

    .prologue
    .line 338
    iget-object v0, p0, Lcom/plugin/gcm/OneSignalPush$6;->val$jsPostNotificationCallBack:Lorg/apache/cordova/CallbackContext;

    invoke-static {v0, p1}, Lcom/plugin/gcm/OneSignalPush;->access$400(Lorg/apache/cordova/CallbackContext;Lorg/json/JSONObject;)V

    .line 339
    return-void
.end method

.method public onSuccess(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "response"    # Lorg/json/JSONObject;

    .prologue
    .line 333
    iget-object v0, p0, Lcom/plugin/gcm/OneSignalPush$6;->val$jsPostNotificationCallBack:Lorg/apache/cordova/CallbackContext;

    invoke-static {v0, p1}, Lcom/plugin/gcm/OneSignalPush;->access$100(Lorg/apache/cordova/CallbackContext;Lorg/json/JSONObject;)V

    .line 334
    return-void
.end method
