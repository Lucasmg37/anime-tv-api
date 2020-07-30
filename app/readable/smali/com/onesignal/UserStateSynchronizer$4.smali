.class Lcom/onesignal/UserStateSynchronizer$4;
.super Lcom/onesignal/OneSignalRestClient$ResponseHandler;
.source "UserStateSynchronizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/UserStateSynchronizer;->doPutSync(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/onesignal/UserStateSynchronizer;

.field final synthetic val$dependDiff:Lorg/json/JSONObject;

.field final synthetic val$jsonBody:Lorg/json/JSONObject;

.field final synthetic val$tagsHandlers:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/onesignal/UserStateSynchronizer;Lorg/json/JSONObject;Ljava/util/ArrayList;Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "this$0"    # Lcom/onesignal/UserStateSynchronizer;

    .prologue
    .line 287
    iput-object p1, p0, Lcom/onesignal/UserStateSynchronizer$4;->this$0:Lcom/onesignal/UserStateSynchronizer;

    iput-object p2, p0, Lcom/onesignal/UserStateSynchronizer$4;->val$jsonBody:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/onesignal/UserStateSynchronizer$4;->val$tagsHandlers:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/onesignal/UserStateSynchronizer$4;->val$dependDiff:Lorg/json/JSONObject;

    invoke-direct {p0}, Lcom/onesignal/OneSignalRestClient$ResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method onFailure(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "statusCode"    # I
    .param p2, "response"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 290
    sget-object v1, Lcom/onesignal/OneSignal$LOG_LEVEL;->WARN:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed last request. statusCode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\nresponse: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 292
    iget-object v1, p0, Lcom/onesignal/UserStateSynchronizer$4;->this$0:Lcom/onesignal/UserStateSynchronizer;

    iget-object v2, v1, Lcom/onesignal/UserStateSynchronizer;->syncLock:Ljava/lang/Object;

    monitor-enter v2

    .line 293
    :try_start_0
    iget-object v1, p0, Lcom/onesignal/UserStateSynchronizer$4;->this$0:Lcom/onesignal/UserStateSynchronizer;

    const-string v3, "No user with this id found"

    invoke-static {v1, p1, p2, v3}, Lcom/onesignal/UserStateSynchronizer;->access$100(Lcom/onesignal/UserStateSynchronizer;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 294
    iget-object v1, p0, Lcom/onesignal/UserStateSynchronizer$4;->this$0:Lcom/onesignal/UserStateSynchronizer;

    invoke-static {v1}, Lcom/onesignal/UserStateSynchronizer;->access$300(Lcom/onesignal/UserStateSynchronizer;)V

    .line 297
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 299
    iget-object v1, p0, Lcom/onesignal/UserStateSynchronizer$4;->val$jsonBody:Lorg/json/JSONObject;

    const-string v2, "tags"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 300
    iget-object v1, p0, Lcom/onesignal/UserStateSynchronizer$4;->val$tagsHandlers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onesignal/OneSignal$ChangeTagsUpdateHandler;

    .line 301
    .local v0, "handler":Lcom/onesignal/OneSignal$ChangeTagsUpdateHandler;
    if-eqz v0, :cond_0

    .line 302
    new-instance v2, Lcom/onesignal/OneSignal$SendTagsError;

    invoke-direct {v2, p1, p2}, Lcom/onesignal/OneSignal$SendTagsError;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v2}, Lcom/onesignal/OneSignal$ChangeTagsUpdateHandler;->onFailure(Lcom/onesignal/OneSignal$SendTagsError;)V

    goto :goto_1

    .line 296
    .end local v0    # "handler":Lcom/onesignal/OneSignal$ChangeTagsUpdateHandler;
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/onesignal/UserStateSynchronizer$4;->this$0:Lcom/onesignal/UserStateSynchronizer;

    invoke-static {v1}, Lcom/onesignal/UserStateSynchronizer;->access$400(Lcom/onesignal/UserStateSynchronizer;)V

    goto :goto_0

    .line 297
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 306
    :cond_2
    return-void
.end method

.method onSuccess(Ljava/lang/String;)V
    .locals 6
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    .line 310
    iget-object v2, p0, Lcom/onesignal/UserStateSynchronizer$4;->this$0:Lcom/onesignal/UserStateSynchronizer;

    iget-object v3, v2, Lcom/onesignal/UserStateSynchronizer;->syncLock:Ljava/lang/Object;

    monitor-enter v3

    .line 311
    :try_start_0
    iget-object v2, p0, Lcom/onesignal/UserStateSynchronizer$4;->this$0:Lcom/onesignal/UserStateSynchronizer;

    iget-object v2, v2, Lcom/onesignal/UserStateSynchronizer;->currentUserState:Lcom/onesignal/UserState;

    iget-object v4, p0, Lcom/onesignal/UserStateSynchronizer$4;->val$dependDiff:Lorg/json/JSONObject;

    iget-object v5, p0, Lcom/onesignal/UserStateSynchronizer$4;->val$jsonBody:Lorg/json/JSONObject;

    invoke-virtual {v2, v4, v5}, Lcom/onesignal/UserState;->persistStateAfterSync(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 312
    iget-object v2, p0, Lcom/onesignal/UserStateSynchronizer$4;->this$0:Lcom/onesignal/UserStateSynchronizer;

    iget-object v4, p0, Lcom/onesignal/UserStateSynchronizer$4;->val$jsonBody:Lorg/json/JSONObject;

    invoke-virtual {v2, v4}, Lcom/onesignal/UserStateSynchronizer;->onSuccessfulSync(Lorg/json/JSONObject;)V

    .line 313
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 315
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/onesignal/OneSignalStateSynchronizer;->getTags(Z)Lcom/onesignal/UserStateSynchronizer$GetTagsResult;

    move-result-object v2

    iget-object v1, v2, Lcom/onesignal/UserStateSynchronizer$GetTagsResult;->result:Lorg/json/JSONObject;

    .line 317
    .local v1, "tags":Lorg/json/JSONObject;
    iget-object v2, p0, Lcom/onesignal/UserStateSynchronizer$4;->val$jsonBody:Lorg/json/JSONObject;

    const-string v3, "tags"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    .line 318
    iget-object v2, p0, Lcom/onesignal/UserStateSynchronizer$4;->val$tagsHandlers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onesignal/OneSignal$ChangeTagsUpdateHandler;

    .line 319
    .local v0, "handler":Lcom/onesignal/OneSignal$ChangeTagsUpdateHandler;
    if-eqz v0, :cond_0

    .line 320
    invoke-interface {v0, v1}, Lcom/onesignal/OneSignal$ChangeTagsUpdateHandler;->onSuccess(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 313
    .end local v0    # "handler":Lcom/onesignal/OneSignal$ChangeTagsUpdateHandler;
    .end local v1    # "tags":Lorg/json/JSONObject;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 324
    .restart local v1    # "tags":Lorg/json/JSONObject;
    :cond_1
    return-void
.end method
