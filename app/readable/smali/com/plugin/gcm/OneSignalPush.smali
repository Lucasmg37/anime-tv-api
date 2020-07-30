.class public Lcom/plugin/gcm/OneSignalPush;
.super Lorg/apache/cordova/CordovaPlugin;
.source "OneSignalPush.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/plugin/gcm/OneSignalPush$CordovaNotificationOpenedHandler;,
        Lcom/plugin/gcm/OneSignalPush$CordovaNotificationReceivedHandler;
    }
.end annotation


# static fields
.field private static final ADD_EMAIL_SUBSCRIPTION_OBSERVER:Ljava/lang/String; = "addEmailSubscriptionObserver"

.field private static final ADD_PERMISSION_OBSERVER:Ljava/lang/String; = "addPermissionObserver"

.field private static final ADD_SUBSCRIPTION_OBSERVER:Ljava/lang/String; = "addSubscriptionObserver"

.field private static final CLEAR_ONESIGNAL_NOTIFICATIONS:Ljava/lang/String; = "clearOneSignalNotifications"

.field private static final DELETE_TAGS:Ljava/lang/String; = "deleteTags"

.field private static final ENABLE_SOUND:Ljava/lang/String; = "enableSound"

.field private static final ENABLE_VIBRATE:Ljava/lang/String; = "enableVibrate"

.field private static final GET_IDS:Ljava/lang/String; = "getIds"

.field private static final GET_PERMISSION_SUBCRIPTION_STATE:Ljava/lang/String; = "getPermissionSubscriptionState"

.field private static final GET_TAGS:Ljava/lang/String; = "getTags"

.field private static final GRANT_CONSENT:Ljava/lang/String; = "provideUserConsent"

.field private static final INIT:Ljava/lang/String; = "init"

.field private static final LOGOUT_EMAIL:Ljava/lang/String; = "logoutEmail"

.field private static final POST_NOTIFICATION:Ljava/lang/String; = "postNotification"

.field private static final PROMPT_LOCATION:Ljava/lang/String; = "promptLocation"

.field private static final REGISTER_FOR_PUSH_NOTIFICATIONS:Ljava/lang/String; = "registerForPushNotifications"

.field private static final SEND_TAGS:Ljava/lang/String; = "sendTags"

.field private static final SET_EMAIL:Ljava/lang/String; = "setEmail"

.field private static final SET_IN_FOCUS_DISPLAYING:Ljava/lang/String; = "setInFocusDisplaying"

.field private static final SET_LOCATION_SHARED:Ljava/lang/String; = "setLocationShared"

.field private static final SET_LOG_LEVEL:Ljava/lang/String; = "setLogLevel"

.field private static final SET_NOTIFICATION_OPENED_HANDLER:Ljava/lang/String; = "setNotificationOpenedHandler"

.field private static final SET_NOTIFICATION_RECEIVED_HANDLER:Ljava/lang/String; = "setNotificationReceivedHandler"

.field private static final SET_REQUIRES_CONSENT:Ljava/lang/String; = "setRequiresUserPrivacyConsent"

.field private static final SET_SUBSCRIPTION:Ljava/lang/String; = "setSubscription"

.field private static final SET_UNAUTHENTICATED_EMAIL:Ljava/lang/String; = "setUnauthenticatedEmail"

.field private static final SYNC_HASHED_EMAIL:Ljava/lang/String; = "syncHashedEmail"

.field private static final TAG:Ljava/lang/String; = "OneSignalPush"

.field private static final USER_PROVIDED_CONSENT:Ljava/lang/String; = "userProvidedPrivacyConsent"

.field private static emailSubscriptionObserver:Lcom/onesignal/OSEmailSubscriptionObserver;

.field private static jsEmailSubscriptionObserverCallBack:Lorg/apache/cordova/CallbackContext;

.field private static jsPermissionObserverCallBack:Lorg/apache/cordova/CallbackContext;

.field private static jsSubscriptionObserverCallBack:Lorg/apache/cordova/CallbackContext;

.field private static notifOpenedCallbackContext:Lorg/apache/cordova/CallbackContext;

.field private static notifReceivedCallbackContext:Lorg/apache/cordova/CallbackContext;

.field private static permissionObserver:Lcom/onesignal/OSPermissionObserver;

.field private static subscriptionObserver:Lcom/onesignal/OSSubscriptionObserver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Lorg/apache/cordova/CordovaPlugin;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lorg/apache/cordova/CallbackContext;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/plugin/gcm/OneSignalPush;->jsPermissionObserverCallBack:Lorg/apache/cordova/CallbackContext;

    return-object v0
.end method

.method static synthetic access$100(Lorg/apache/cordova/CallbackContext;Lorg/json/JSONObject;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/cordova/CallbackContext;
    .param p1, "x1"    # Lorg/json/JSONObject;

    .prologue
    .line 64
    invoke-static {p0, p1}, Lcom/plugin/gcm/OneSignalPush;->callbackSuccess(Lorg/apache/cordova/CallbackContext;Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic access$200()Lorg/apache/cordova/CallbackContext;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/plugin/gcm/OneSignalPush;->jsSubscriptionObserverCallBack:Lorg/apache/cordova/CallbackContext;

    return-object v0
.end method

.method static synthetic access$300()Lorg/apache/cordova/CallbackContext;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/plugin/gcm/OneSignalPush;->jsEmailSubscriptionObserverCallBack:Lorg/apache/cordova/CallbackContext;

    return-object v0
.end method

.method static synthetic access$400(Lorg/apache/cordova/CallbackContext;Lorg/json/JSONObject;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/cordova/CallbackContext;
    .param p1, "x1"    # Lorg/json/JSONObject;

    .prologue
    .line 64
    invoke-static {p0, p1}, Lcom/plugin/gcm/OneSignalPush;->callbackError(Lorg/apache/cordova/CallbackContext;Lorg/json/JSONObject;)V

    return-void
.end method

.method private static callbackError(Lorg/apache/cordova/CallbackContext;Ljava/lang/String;)V
    .locals 2
    .param p0, "callbackContext"    # Lorg/apache/cordova/CallbackContext;
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 143
    new-instance v0, Lorg/apache/cordova/PluginResult;

    sget-object v1, Lorg/apache/cordova/PluginResult$Status;->ERROR:Lorg/apache/cordova/PluginResult$Status;

    invoke-direct {v0, v1, p1}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;Ljava/lang/String;)V

    .line 144
    .local v0, "pluginResult":Lorg/apache/cordova/PluginResult;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/cordova/PluginResult;->setKeepCallback(Z)V

    .line 145
    invoke-virtual {p0, v0}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    .line 146
    return-void
.end method

.method private static callbackError(Lorg/apache/cordova/CallbackContext;Lorg/json/JSONObject;)V
    .locals 2
    .param p0, "callbackContext"    # Lorg/apache/cordova/CallbackContext;
    .param p1, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    .line 134
    if-nez p1, :cond_0

    .line 135
    new-instance p1, Lorg/json/JSONObject;

    .end local p1    # "jsonObject":Lorg/json/JSONObject;
    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 137
    .restart local p1    # "jsonObject":Lorg/json/JSONObject;
    :cond_0
    new-instance v0, Lorg/apache/cordova/PluginResult;

    sget-object v1, Lorg/apache/cordova/PluginResult$Status;->ERROR:Lorg/apache/cordova/PluginResult$Status;

    invoke-direct {v0, v1, p1}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;Lorg/json/JSONObject;)V

    .line 138
    .local v0, "pluginResult":Lorg/apache/cordova/PluginResult;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/cordova/PluginResult;->setKeepCallback(Z)V

    .line 139
    invoke-virtual {p0, v0}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    .line 140
    return-void
.end method

.method private static callbackSuccess(Lorg/apache/cordova/CallbackContext;Lorg/json/JSONObject;)V
    .locals 2
    .param p0, "callbackContext"    # Lorg/apache/cordova/CallbackContext;
    .param p1, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    .line 119
    if-nez p1, :cond_0

    .line 120
    new-instance p1, Lorg/json/JSONObject;

    .end local p1    # "jsonObject":Lorg/json/JSONObject;
    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 122
    .restart local p1    # "jsonObject":Lorg/json/JSONObject;
    :cond_0
    new-instance v0, Lorg/apache/cordova/PluginResult;

    sget-object v1, Lorg/apache/cordova/PluginResult$Status;->OK:Lorg/apache/cordova/PluginResult$Status;

    invoke-direct {v0, v1, p1}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;Lorg/json/JSONObject;)V

    .line 123
    .local v0, "pluginResult":Lorg/apache/cordova/PluginResult;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/cordova/PluginResult;->setKeepCallback(Z)V

    .line 124
    invoke-virtual {p0, v0}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    .line 125
    return-void
.end method

.method private static callbackSuccessBoolean(Lorg/apache/cordova/CallbackContext;Z)V
    .locals 2
    .param p0, "callbackContext"    # Lorg/apache/cordova/CallbackContext;
    .param p1, "param"    # Z

    .prologue
    .line 128
    new-instance v0, Lorg/apache/cordova/PluginResult;

    sget-object v1, Lorg/apache/cordova/PluginResult$Status;->OK:Lorg/apache/cordova/PluginResult$Status;

    invoke-direct {v0, v1, p1}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;Z)V

    .line 129
    .local v0, "pluginResult":Lorg/apache/cordova/PluginResult;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/cordova/PluginResult;->setKeepCallback(Z)V

    .line 130
    invoke-virtual {p0, v0}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    .line 131
    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)Z
    .locals 23
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Lorg/json/JSONArray;
    .param p3, "callbackContext"    # Lorg/apache/cordova/CallbackContext;

    .prologue
    .line 150
    const/16 v17, 0x0

    .line 152
    .local v17, "result":Z
    const-string v19, "setNotificationReceivedHandler"

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_0

    .line 153
    sput-object p3, Lcom/plugin/gcm/OneSignalPush;->notifReceivedCallbackContext:Lorg/apache/cordova/CallbackContext;

    .line 154
    const/16 v17, 0x1

    .line 479
    :goto_0
    return v17

    .line 156
    :cond_0
    const-string v19, "setNotificationOpenedHandler"

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 157
    sput-object p3, Lcom/plugin/gcm/OneSignalPush;->notifOpenedCallbackContext:Lorg/apache/cordova/CallbackContext;

    .line 158
    const/16 v17, 0x1

    goto :goto_0

    .line 160
    :cond_1
    const-string v19, "init"

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 162
    const/16 v19, 0x0

    :try_start_0
    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 163
    .local v3, "appId":Ljava/lang/String;
    const/16 v19, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 165
    .local v7, "googleProjectNumber":Ljava/lang/String;
    const-string v19, "cordova"

    sput-object v19, Lcom/onesignal/OneSignal;->sdkType:Ljava/lang/String;

    .line 166
    invoke-static {}, Lcom/onesignal/OneSignal;->getCurrentOrNewInitBuilder()Lcom/onesignal/OneSignal$Builder;

    move-result-object v4

    .line 167
    .local v4, "builder":Lcom/onesignal/OneSignal$Builder;
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Lcom/onesignal/OneSignal$Builder;->unsubscribeWhenNotificationsAreDisabled(Z)Lcom/onesignal/OneSignal$Builder;

    .line 168
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Lcom/onesignal/OneSignal$Builder;->filterOtherGCMReceivers(Z)Lcom/onesignal/OneSignal$Builder;

    .line 170
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/plugin/gcm/OneSignalPush;->cordova:Lorg/apache/cordova/CordovaInterface;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v19

    new-instance v20, Lcom/plugin/gcm/OneSignalPush$CordovaNotificationOpenedHandler;

    sget-object v21, Lcom/plugin/gcm/OneSignalPush;->notifOpenedCallbackContext:Lorg/apache/cordova/CallbackContext;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/plugin/gcm/OneSignalPush$CordovaNotificationOpenedHandler;-><init>(Lcom/plugin/gcm/OneSignalPush;Lorg/apache/cordova/CallbackContext;)V

    new-instance v21, Lcom/plugin/gcm/OneSignalPush$CordovaNotificationReceivedHandler;

    sget-object v22, Lcom/plugin/gcm/OneSignalPush;->notifReceivedCallbackContext:Lorg/apache/cordova/CallbackContext;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/plugin/gcm/OneSignalPush$CordovaNotificationReceivedHandler;-><init>(Lcom/plugin/gcm/OneSignalPush;Lorg/apache/cordova/CallbackContext;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-static {v0, v7, v3, v1, v2}, Lcom/onesignal/OneSignal;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/onesignal/OneSignal$NotificationOpenedHandler;Lcom/onesignal/OneSignal$NotificationReceivedHandler;)V

    .line 179
    const/16 v19, 0x3

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v5

    .line 180
    .local v5, "displayOption":I
    invoke-static {v5}, Lcom/onesignal/OneSignal;->setInFocusDisplaying(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 184
    .end local v3    # "appId":Ljava/lang/String;
    .end local v4    # "builder":Lcom/onesignal/OneSignal$Builder;
    .end local v5    # "displayOption":I
    .end local v7    # "googleProjectNumber":Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 185
    .local v6, "e":Lorg/json/JSONException;
    const-string v19, "OneSignalPush"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "execute: Got JSON Exception "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v6}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    const/16 v17, 0x0

    .line 187
    goto/16 :goto_0

    .line 189
    .end local v6    # "e":Lorg/json/JSONException;
    :cond_2
    const-string v19, "setInFocusDisplaying"

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_3

    .line 191
    const/16 v19, 0x0

    :try_start_1
    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v19

    invoke-static/range {v19 .. v19}, Lcom/onesignal/OneSignal;->setInFocusDisplaying(I)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 192
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 194
    :catch_1
    move-exception v6

    .line 195
    .restart local v6    # "e":Lorg/json/JSONException;
    const-string v19, "OneSignalPush"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "execute: Got JSON Exception "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v6}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    const/16 v17, 0x0

    .line 197
    goto/16 :goto_0

    .line 199
    .end local v6    # "e":Lorg/json/JSONException;
    :cond_3
    const-string v19, "addPermissionObserver"

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_5

    .line 200
    sput-object p3, Lcom/plugin/gcm/OneSignalPush;->jsPermissionObserverCallBack:Lorg/apache/cordova/CallbackContext;

    .line 201
    sget-object v19, Lcom/plugin/gcm/OneSignalPush;->permissionObserver:Lcom/onesignal/OSPermissionObserver;

    if-nez v19, :cond_4

    .line 202
    new-instance v19, Lcom/plugin/gcm/OneSignalPush$1;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/plugin/gcm/OneSignalPush$1;-><init>(Lcom/plugin/gcm/OneSignalPush;)V

    sput-object v19, Lcom/plugin/gcm/OneSignalPush;->permissionObserver:Lcom/onesignal/OSPermissionObserver;

    .line 208
    sget-object v19, Lcom/plugin/gcm/OneSignalPush;->permissionObserver:Lcom/onesignal/OSPermissionObserver;

    invoke-static/range {v19 .. v19}, Lcom/onesignal/OneSignal;->addPermissionObserver(Lcom/onesignal/OSPermissionObserver;)V

    .line 210
    :cond_4
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 212
    :cond_5
    const-string v19, "addSubscriptionObserver"

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_7

    .line 213
    sput-object p3, Lcom/plugin/gcm/OneSignalPush;->jsSubscriptionObserverCallBack:Lorg/apache/cordova/CallbackContext;

    .line 214
    sget-object v19, Lcom/plugin/gcm/OneSignalPush;->subscriptionObserver:Lcom/onesignal/OSSubscriptionObserver;

    if-nez v19, :cond_6

    .line 215
    new-instance v19, Lcom/plugin/gcm/OneSignalPush$2;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/plugin/gcm/OneSignalPush$2;-><init>(Lcom/plugin/gcm/OneSignalPush;)V

    sput-object v19, Lcom/plugin/gcm/OneSignalPush;->subscriptionObserver:Lcom/onesignal/OSSubscriptionObserver;

    .line 221
    sget-object v19, Lcom/plugin/gcm/OneSignalPush;->subscriptionObserver:Lcom/onesignal/OSSubscriptionObserver;

    invoke-static/range {v19 .. v19}, Lcom/onesignal/OneSignal;->addSubscriptionObserver(Lcom/onesignal/OSSubscriptionObserver;)V

    .line 223
    :cond_6
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 225
    :cond_7
    const-string v19, "addEmailSubscriptionObserver"

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_9

    .line 226
    sput-object p3, Lcom/plugin/gcm/OneSignalPush;->jsEmailSubscriptionObserverCallBack:Lorg/apache/cordova/CallbackContext;

    .line 227
    sget-object v19, Lcom/plugin/gcm/OneSignalPush;->emailSubscriptionObserver:Lcom/onesignal/OSEmailSubscriptionObserver;

    if-nez v19, :cond_8

    .line 228
    new-instance v19, Lcom/plugin/gcm/OneSignalPush$3;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/plugin/gcm/OneSignalPush$3;-><init>(Lcom/plugin/gcm/OneSignalPush;)V

    sput-object v19, Lcom/plugin/gcm/OneSignalPush;->emailSubscriptionObserver:Lcom/onesignal/OSEmailSubscriptionObserver;

    .line 234
    sget-object v19, Lcom/plugin/gcm/OneSignalPush;->emailSubscriptionObserver:Lcom/onesignal/OSEmailSubscriptionObserver;

    invoke-static/range {v19 .. v19}, Lcom/onesignal/OneSignal;->addEmailSubscriptionObserver(Lcom/onesignal/OSEmailSubscriptionObserver;)V

    .line 236
    :cond_8
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 238
    :cond_9
    const-string v19, "getTags"

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_a

    .line 239
    move-object/from16 v13, p3

    .line 240
    .local v13, "jsTagsAvailableCallBack":Lorg/apache/cordova/CallbackContext;
    new-instance v19, Lcom/plugin/gcm/OneSignalPush$4;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v13}, Lcom/plugin/gcm/OneSignalPush$4;-><init>(Lcom/plugin/gcm/OneSignalPush;Lorg/apache/cordova/CallbackContext;)V

    invoke-static/range {v19 .. v19}, Lcom/onesignal/OneSignal;->getTags(Lcom/onesignal/OneSignal$GetTagsHandler;)V

    .line 246
    const/16 v17, 0x1

    .line 247
    goto/16 :goto_0

    .line 248
    .end local v13    # "jsTagsAvailableCallBack":Lorg/apache/cordova/CallbackContext;
    :cond_a
    const-string v19, "getPermissionSubscriptionState"

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_b

    .line 249
    invoke-static {}, Lcom/onesignal/OneSignal;->getPermissionSubscriptionState()Lcom/onesignal/OSPermissionSubscriptionState;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/onesignal/OSPermissionSubscriptionState;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v19

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/plugin/gcm/OneSignalPush;->callbackSuccess(Lorg/apache/cordova/CallbackContext;Lorg/json/JSONObject;)V

    .line 250
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 252
    :cond_b
    const-string v19, "getIds"

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_c

    .line 253
    move-object/from16 v10, p3

    .line 254
    .local v10, "jsIdsAvailableCallBack":Lorg/apache/cordova/CallbackContext;
    new-instance v19, Lcom/plugin/gcm/OneSignalPush$5;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v10}, Lcom/plugin/gcm/OneSignalPush$5;-><init>(Lcom/plugin/gcm/OneSignalPush;Lorg/apache/cordova/CallbackContext;)V

    invoke-static/range {v19 .. v19}, Lcom/onesignal/OneSignal;->idsAvailable(Lcom/onesignal/OneSignal$IdsAvailableHandler;)V

    .line 272
    const/16 v17, 0x1

    .line 273
    goto/16 :goto_0

    .line 274
    .end local v10    # "jsIdsAvailableCallBack":Lorg/apache/cordova/CallbackContext;
    :cond_c
    const-string v19, "sendTags"

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_d

    .line 276
    const/16 v19, 0x0

    :try_start_2
    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/onesignal/OneSignal;->sendTags(Lorg/json/JSONObject;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 281
    :goto_1
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 278
    :catch_2
    move-exception v18

    .line 279
    .local v18, "t":Ljava/lang/Throwable;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 283
    .end local v18    # "t":Ljava/lang/Throwable;
    :cond_d
    const-string v19, "deleteTags"

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_f

    .line 285
    :try_start_3
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 286
    .local v15, "list":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2
    invoke-virtual/range {p2 .. p2}, Lorg/json/JSONArray;->length()I

    move-result v19

    move/from16 v0, v19

    if-ge v8, v0, :cond_e

    .line 287
    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v15, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 286
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 288
    :cond_e
    invoke-static {v15}, Lcom/onesignal/OneSignal;->deleteTags(Ljava/util/Collection;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    .line 289
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 290
    .end local v8    # "i":I
    .end local v15    # "list":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    :catch_3
    move-exception v18

    .line 291
    .restart local v18    # "t":Ljava/lang/Throwable;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    .line 294
    .end local v18    # "t":Ljava/lang/Throwable;
    :cond_f
    const-string v19, "registerForPushNotifications"

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_10

    .line 296
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 298
    :cond_10
    const-string v19, "enableVibrate"

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_11

    .line 300
    const/16 v19, 0x0

    :try_start_4
    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getBoolean(I)Z

    move-result v19

    invoke-static/range {v19 .. v19}, Lcom/onesignal/OneSignal;->enableVibrate(Z)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4

    .line 301
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 303
    :catch_4
    move-exception v18

    .line 304
    .restart local v18    # "t":Ljava/lang/Throwable;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    .line 307
    .end local v18    # "t":Ljava/lang/Throwable;
    :cond_11
    const-string v19, "enableSound"

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_12

    .line 309
    const/16 v19, 0x0

    :try_start_5
    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getBoolean(I)Z

    move-result v19

    invoke-static/range {v19 .. v19}, Lcom/onesignal/OneSignal;->enableSound(Z)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_5

    .line 310
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 312
    :catch_5
    move-exception v18

    .line 313
    .restart local v18    # "t":Ljava/lang/Throwable;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    .line 316
    .end local v18    # "t":Ljava/lang/Throwable;
    :cond_12
    const-string v19, "setSubscription"

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_13

    .line 318
    const/16 v19, 0x0

    :try_start_6
    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getBoolean(I)Z

    move-result v19

    invoke-static/range {v19 .. v19}, Lcom/onesignal/OneSignal;->setSubscription(Z)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_6

    .line 319
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 321
    :catch_6
    move-exception v18

    .line 322
    .restart local v18    # "t":Ljava/lang/Throwable;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    .line 325
    .end local v18    # "t":Ljava/lang/Throwable;
    :cond_13
    const-string v19, "postNotification"

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_14

    .line 327
    const/16 v19, 0x0

    :try_start_7
    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    .line 328
    .local v9, "jo":Lorg/json/JSONObject;
    move-object/from16 v11, p3

    .line 329
    .local v11, "jsPostNotificationCallBack":Lorg/apache/cordova/CallbackContext;
    new-instance v19, Lcom/plugin/gcm/OneSignalPush$6;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v11}, Lcom/plugin/gcm/OneSignalPush$6;-><init>(Lcom/plugin/gcm/OneSignalPush;Lorg/apache/cordova/CallbackContext;)V

    move-object/from16 v0, v19

    invoke-static {v9, v0}, Lcom/onesignal/OneSignal;->postNotification(Lorg/json/JSONObject;Lcom/onesignal/OneSignal$PostNotificationResponseHandler;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_7

    .line 342
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 344
    .end local v9    # "jo":Lorg/json/JSONObject;
    .end local v11    # "jsPostNotificationCallBack":Lorg/apache/cordova/CallbackContext;
    :catch_7
    move-exception v18

    .line 345
    .restart local v18    # "t":Ljava/lang/Throwable;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    .line 348
    .end local v18    # "t":Ljava/lang/Throwable;
    :cond_14
    const-string v19, "promptLocation"

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_15

    .line 349
    invoke-static {}, Lcom/onesignal/OneSignal;->promptLocation()V

    goto/16 :goto_0

    .line 350
    :cond_15
    const-string v19, "syncHashedEmail"

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_16

    .line 352
    const/16 v19, 0x0

    :try_start_8
    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/onesignal/OneSignal;->syncHashedEmail(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_8

    goto/16 :goto_0

    .line 353
    :catch_8
    move-exception v18

    .line 354
    .restart local v18    # "t":Ljava/lang/Throwable;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    .line 357
    .end local v18    # "t":Ljava/lang/Throwable;
    :cond_16
    const-string v19, "setLogLevel"

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_17

    .line 359
    const/16 v19, 0x0

    :try_start_9
    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    .line 360
    .restart local v9    # "jo":Lorg/json/JSONObject;
    const-string v19, "logLevel"

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v9, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v19

    const-string v20, "visualLevel"

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v20

    invoke-static/range {v19 .. v20}, Lcom/onesignal/OneSignal;->setLogLevel(II)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_9

    goto/16 :goto_0

    .line 362
    .end local v9    # "jo":Lorg/json/JSONObject;
    :catch_9
    move-exception v18

    .line 363
    .restart local v18    # "t":Ljava/lang/Throwable;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    .line 366
    .end local v18    # "t":Ljava/lang/Throwable;
    :cond_17
    const-string v19, "clearOneSignalNotifications"

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_18

    .line 368
    :try_start_a
    invoke-static {}, Lcom/onesignal/OneSignal;->clearOneSignalNotifications()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_a

    .line 369
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 371
    :catch_a
    move-exception v18

    .line 372
    .restart local v18    # "t":Ljava/lang/Throwable;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    .line 375
    .end local v18    # "t":Ljava/lang/Throwable;
    :cond_18
    const-string v19, "setEmail"

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_19

    .line 376
    move-object/from16 v12, p3

    .line 378
    .local v12, "jsSetEmailContext":Lorg/apache/cordova/CallbackContext;
    const/16 v19, 0x0

    :try_start_b
    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v20

    new-instance v21, Lcom/plugin/gcm/OneSignalPush$7;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v12}, Lcom/plugin/gcm/OneSignalPush$7;-><init>(Lcom/plugin/gcm/OneSignalPush;Lorg/apache/cordova/CallbackContext;)V

    invoke-static/range {v19 .. v21}, Lcom/onesignal/OneSignal;->setEmail(Ljava/lang/String;Ljava/lang/String;Lcom/onesignal/OneSignal$EmailUpdateHandler;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_b

    .line 395
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 396
    :catch_b
    move-exception v18

    .line 397
    .restart local v18    # "t":Ljava/lang/Throwable;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    .line 400
    .end local v12    # "jsSetEmailContext":Lorg/apache/cordova/CallbackContext;
    .end local v18    # "t":Ljava/lang/Throwable;
    :cond_19
    const-string v19, "setUnauthenticatedEmail"

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1a

    .line 401
    move-object/from16 v12, p3

    .line 404
    .restart local v12    # "jsSetEmailContext":Lorg/apache/cordova/CallbackContext;
    const/16 v19, 0x0

    :try_start_c
    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    new-instance v21, Lcom/plugin/gcm/OneSignalPush$8;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v12}, Lcom/plugin/gcm/OneSignalPush$8;-><init>(Lcom/plugin/gcm/OneSignalPush;Lorg/apache/cordova/CallbackContext;)V

    invoke-static/range {v19 .. v21}, Lcom/onesignal/OneSignal;->setEmail(Ljava/lang/String;Ljava/lang/String;Lcom/onesignal/OneSignal$EmailUpdateHandler;)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_c

    .line 421
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 422
    :catch_c
    move-exception v18

    .line 423
    .restart local v18    # "t":Ljava/lang/Throwable;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    .line 426
    .end local v12    # "jsSetEmailContext":Lorg/apache/cordova/CallbackContext;
    .end local v18    # "t":Ljava/lang/Throwable;
    :cond_1a
    const-string v19, "logoutEmail"

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1b

    .line 427
    move-object/from16 v12, p3

    .line 428
    .restart local v12    # "jsSetEmailContext":Lorg/apache/cordova/CallbackContext;
    new-instance v19, Lcom/plugin/gcm/OneSignalPush$9;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v12}, Lcom/plugin/gcm/OneSignalPush$9;-><init>(Lcom/plugin/gcm/OneSignalPush;Lorg/apache/cordova/CallbackContext;)V

    invoke-static/range {v19 .. v19}, Lcom/onesignal/OneSignal;->logoutEmail(Lcom/onesignal/OneSignal$EmailUpdateHandler;)V

    .line 445
    const/16 v17, 0x1

    .line 446
    goto/16 :goto_0

    .line 447
    .end local v12    # "jsSetEmailContext":Lorg/apache/cordova/CallbackContext;
    :cond_1b
    const-string v19, "setLocationShared"

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1c

    .line 449
    const/16 v19, 0x0

    :try_start_d
    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getBoolean(I)Z

    move-result v19

    invoke-static/range {v19 .. v19}, Lcom/onesignal/OneSignal;->setLocationShared(Z)V
    :try_end_d
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_d} :catch_d

    goto/16 :goto_0

    .line 450
    :catch_d
    move-exception v6

    .line 451
    .restart local v6    # "e":Lorg/json/JSONException;
    invoke-virtual {v6}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0

    .line 453
    .end local v6    # "e":Lorg/json/JSONException;
    :cond_1c
    const-string v19, "userProvidedPrivacyConsent"

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1d

    .line 454
    invoke-static {}, Lcom/onesignal/OneSignal;->userProvidedPrivacyConsent()Z

    move-result v16

    .line 455
    .local v16, "providedConsent":Z
    move-object/from16 v14, p3

    .line 456
    .local v14, "jsUserProvidedConsentContext":Lorg/apache/cordova/CallbackContext;
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-static {v0, v1}, Lcom/plugin/gcm/OneSignalPush;->callbackSuccessBoolean(Lorg/apache/cordova/CallbackContext;Z)V

    .line 457
    const/16 v17, 0x1

    .line 458
    goto/16 :goto_0

    .end local v14    # "jsUserProvidedConsentContext":Lorg/apache/cordova/CallbackContext;
    .end local v16    # "providedConsent":Z
    :cond_1d
    const-string v19, "setRequiresUserPrivacyConsent"

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1e

    .line 460
    const/16 v19, 0x0

    :try_start_e
    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getBoolean(I)Z

    move-result v19

    invoke-static/range {v19 .. v19}, Lcom/onesignal/OneSignal;->setRequiresUserPrivacyConsent(Z)V
    :try_end_e
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_e} :catch_e

    .line 461
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 462
    :catch_e
    move-exception v6

    .line 463
    .restart local v6    # "e":Lorg/json/JSONException;
    invoke-virtual {v6}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0

    .line 465
    .end local v6    # "e":Lorg/json/JSONException;
    :cond_1e
    const-string v19, "provideUserConsent"

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1f

    .line 467
    const/16 v19, 0x0

    :try_start_f
    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getBoolean(I)Z

    move-result v19

    invoke-static/range {v19 .. v19}, Lcom/onesignal/OneSignal;->provideUserConsent(Z)V
    :try_end_f
    .catch Lorg/json/JSONException; {:try_start_f .. :try_end_f} :catch_f

    .line 468
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 469
    :catch_f
    move-exception v6

    .line 470
    .restart local v6    # "e":Lorg/json/JSONException;
    invoke-virtual {v6}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0

    .line 474
    .end local v6    # "e":Lorg/json/JSONException;
    :cond_1f
    const/16 v17, 0x0

    .line 475
    const-string v19, "OneSignalPush"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Invalid action : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Invalid action : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/plugin/gcm/OneSignalPush;->callbackError(Lorg/apache/cordova/CallbackContext;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 522
    invoke-static {}, Lcom/onesignal/OneSignal;->removeNotificationOpenedHandler()V

    .line 523
    invoke-static {}, Lcom/onesignal/OneSignal;->removeNotificationReceivedHandler()V

    .line 524
    return-void
.end method
