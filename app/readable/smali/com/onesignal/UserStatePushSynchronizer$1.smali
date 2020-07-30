.class Lcom/onesignal/UserStatePushSynchronizer$1;
.super Lcom/onesignal/OneSignalRestClient$ResponseHandler;
.source "UserStatePushSynchronizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/UserStatePushSynchronizer;->getTags(Z)Lcom/onesignal/UserStateSynchronizer$GetTagsResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/onesignal/UserStatePushSynchronizer;


# direct methods
.method constructor <init>(Lcom/onesignal/UserStatePushSynchronizer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/onesignal/UserStatePushSynchronizer;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/onesignal/UserStatePushSynchronizer$1;->this$0:Lcom/onesignal/UserStatePushSynchronizer;

    invoke-direct {p0}, Lcom/onesignal/OneSignalRestClient$ResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method onSuccess(Ljava/lang/String;)V
    .locals 9
    .param p1, "responseStr"    # Ljava/lang/String;

    .prologue
    .line 29
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/onesignal/UserStatePushSynchronizer;->access$002(Z)Z

    .line 31
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 32
    .local v2, "lastGetTagsResponse":Lorg/json/JSONObject;
    const-string v3, "tags"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 33
    iget-object v3, p0, Lcom/onesignal/UserStatePushSynchronizer$1;->this$0:Lcom/onesignal/UserStatePushSynchronizer;

    iget-object v4, v3, Lcom/onesignal/UserStatePushSynchronizer;->syncLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    :try_start_1
    iget-object v3, p0, Lcom/onesignal/UserStatePushSynchronizer$1;->this$0:Lcom/onesignal/UserStatePushSynchronizer;

    iget-object v5, p0, Lcom/onesignal/UserStatePushSynchronizer$1;->this$0:Lcom/onesignal/UserStatePushSynchronizer;

    iget-object v5, v5, Lcom/onesignal/UserStatePushSynchronizer;->currentUserState:Lcom/onesignal/UserState;

    iget-object v5, v5, Lcom/onesignal/UserState;->syncValues:Lorg/json/JSONObject;

    const-string v6, "tags"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    iget-object v6, p0, Lcom/onesignal/UserStatePushSynchronizer$1;->this$0:Lcom/onesignal/UserStatePushSynchronizer;

    .line 35
    invoke-virtual {v6}, Lcom/onesignal/UserStatePushSynchronizer;->getToSyncUserState()Lcom/onesignal/UserState;

    move-result-object v6

    iget-object v6, v6, Lcom/onesignal/UserState;->syncValues:Lorg/json/JSONObject;

    const-string v7, "tags"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 34
    invoke-virtual {v3, v5, v6, v7, v8}, Lcom/onesignal/UserStatePushSynchronizer;->generateJsonDiff(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/util/Set;)Lorg/json/JSONObject;

    move-result-object v0

    .line 38
    .local v0, "dependDiff":Lorg/json/JSONObject;
    iget-object v3, p0, Lcom/onesignal/UserStatePushSynchronizer$1;->this$0:Lcom/onesignal/UserStatePushSynchronizer;

    iget-object v3, v3, Lcom/onesignal/UserStatePushSynchronizer;->currentUserState:Lcom/onesignal/UserState;

    iget-object v3, v3, Lcom/onesignal/UserState;->syncValues:Lorg/json/JSONObject;

    const-string v5, "tags"

    const-string v6, "tags"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 39
    iget-object v3, p0, Lcom/onesignal/UserStatePushSynchronizer$1;->this$0:Lcom/onesignal/UserStatePushSynchronizer;

    iget-object v3, v3, Lcom/onesignal/UserStatePushSynchronizer;->currentUserState:Lcom/onesignal/UserState;

    invoke-virtual {v3}, Lcom/onesignal/UserState;->persistState()V

    .line 43
    iget-object v3, p0, Lcom/onesignal/UserStatePushSynchronizer$1;->this$0:Lcom/onesignal/UserStatePushSynchronizer;

    invoke-virtual {v3}, Lcom/onesignal/UserStatePushSynchronizer;->getToSyncUserState()Lcom/onesignal/UserState;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Lcom/onesignal/UserState;->mergeTags(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 44
    iget-object v3, p0, Lcom/onesignal/UserStatePushSynchronizer$1;->this$0:Lcom/onesignal/UserStatePushSynchronizer;

    invoke-virtual {v3}, Lcom/onesignal/UserStatePushSynchronizer;->getToSyncUserState()Lcom/onesignal/UserState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onesignal/UserState;->persistState()V

    .line 45
    monitor-exit v4

    .line 50
    .end local v0    # "dependDiff":Lorg/json/JSONObject;
    .end local v2    # "lastGetTagsResponse":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-void

    .line 45
    .restart local v2    # "lastGetTagsResponse":Lorg/json/JSONObject;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 47
    .end local v2    # "lastGetTagsResponse":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 48
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
