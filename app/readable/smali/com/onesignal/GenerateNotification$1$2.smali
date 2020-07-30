.class Lcom/onesignal/GenerateNotification$1$2;
.super Ljava/lang/Object;
.source "GenerateNotification.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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

.field final synthetic val$finalButtonIntent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/onesignal/GenerateNotification$1;Landroid/content/Intent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/onesignal/GenerateNotification$1;

    .prologue
    .line 151
    iput-object p1, p0, Lcom/onesignal/GenerateNotification$1$2;->this$0:Lcom/onesignal/GenerateNotification$1;

    iput-object p2, p0, Lcom/onesignal/GenerateNotification$1$2;->val$finalButtonIntent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;

    .prologue
    .line 154
    iget-object v0, p0, Lcom/onesignal/GenerateNotification$1$2;->this$0:Lcom/onesignal/GenerateNotification$1;

    iget-object v0, v0, Lcom/onesignal/GenerateNotification$1;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/onesignal/GenerateNotification$1$2;->val$finalButtonIntent:Landroid/content/Intent;

    invoke-static {v0, v1}, Lcom/onesignal/NotificationOpenedProcessor;->processIntent(Landroid/content/Context;Landroid/content/Intent;)V

    .line 155
    return-void
.end method
