.class Lcom/onesignal/GenerateNotification$1$1;
.super Ljava/lang/Object;
.source "GenerateNotification.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/GenerateNotification$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/onesignal/GenerateNotification$1;

.field final synthetic val$finalButtonIds:Ljava/util/List;

.field final synthetic val$finalButtonIntent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/onesignal/GenerateNotification$1;Ljava/util/List;Landroid/content/Intent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/onesignal/GenerateNotification$1;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/onesignal/GenerateNotification$1$1;->this$0:Lcom/onesignal/GenerateNotification$1;

    iput-object p2, p0, Lcom/onesignal/GenerateNotification$1$1;->val$finalButtonIds:Ljava/util/List;

    iput-object p3, p0, Lcom/onesignal/GenerateNotification$1$1;->val$finalButtonIntent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 135
    add-int/lit8 v0, p2, 0x3

    .line 137
    .local v0, "index":I
    iget-object v2, p0, Lcom/onesignal/GenerateNotification$1$1;->val$finalButtonIds:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    .line 139
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/onesignal/GenerateNotification$1$1;->this$0:Lcom/onesignal/GenerateNotification$1;

    iget-object v2, v2, Lcom/onesignal/GenerateNotification$1;->val$gcmJson:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 140
    .local v1, "newJsonData":Lorg/json/JSONObject;
    const-string v2, "actionSelected"

    iget-object v3, p0, Lcom/onesignal/GenerateNotification$1$1;->val$finalButtonIds:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 141
    iget-object v2, p0, Lcom/onesignal/GenerateNotification$1$1;->val$finalButtonIntent:Landroid/content/Intent;

    const-string v3, "onesignal_data"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 143
    iget-object v2, p0, Lcom/onesignal/GenerateNotification$1$1;->this$0:Lcom/onesignal/GenerateNotification$1;

    iget-object v2, v2, Lcom/onesignal/GenerateNotification$1;->val$activity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/onesignal/GenerateNotification$1$1;->val$finalButtonIntent:Landroid/content/Intent;

    invoke-static {v2, v3}, Lcom/onesignal/NotificationOpenedProcessor;->processIntent(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    .end local v1    # "newJsonData":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 146
    :cond_0
    iget-object v2, p0, Lcom/onesignal/GenerateNotification$1$1;->this$0:Lcom/onesignal/GenerateNotification$1;

    iget-object v2, v2, Lcom/onesignal/GenerateNotification$1;->val$activity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/onesignal/GenerateNotification$1$1;->val$finalButtonIntent:Landroid/content/Intent;

    invoke-static {v2, v3}, Lcom/onesignal/NotificationOpenedProcessor;->processIntent(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 144
    :catch_0
    move-exception v2

    goto :goto_0
.end method
