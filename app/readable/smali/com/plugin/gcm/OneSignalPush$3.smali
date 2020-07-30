.class Lcom/plugin/gcm/OneSignalPush$3;
.super Ljava/lang/Object;
.source "OneSignalPush.java"

# interfaces
.implements Lcom/onesignal/OSEmailSubscriptionObserver;


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


# direct methods
.method constructor <init>(Lcom/plugin/gcm/OneSignalPush;)V
    .locals 0
    .param p1, "this$0"    # Lcom/plugin/gcm/OneSignalPush;

    .prologue
    .line 228
    iput-object p1, p0, Lcom/plugin/gcm/OneSignalPush$3;->this$0:Lcom/plugin/gcm/OneSignalPush;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOSEmailSubscriptionChanged(Lcom/onesignal/OSEmailSubscriptionStateChanges;)V
    .locals 2
    .param p1, "stateChanges"    # Lcom/onesignal/OSEmailSubscriptionStateChanges;

    .prologue
    .line 231
    invoke-static {}, Lcom/plugin/gcm/OneSignalPush;->access$300()Lorg/apache/cordova/CallbackContext;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onesignal/OSEmailSubscriptionStateChanges;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/plugin/gcm/OneSignalPush;->access$100(Lorg/apache/cordova/CallbackContext;Lorg/json/JSONObject;)V

    .line 232
    return-void
.end method
