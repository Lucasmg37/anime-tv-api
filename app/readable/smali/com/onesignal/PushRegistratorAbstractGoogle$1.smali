.class Lcom/onesignal/PushRegistratorAbstractGoogle$1;
.super Ljava/lang/Object;
.source "PushRegistratorAbstractGoogle.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/PushRegistratorAbstractGoogle;->registerInBackground(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/onesignal/PushRegistratorAbstractGoogle;

.field final synthetic val$senderId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/onesignal/PushRegistratorAbstractGoogle;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/onesignal/PushRegistratorAbstractGoogle;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/onesignal/PushRegistratorAbstractGoogle$1;->this$0:Lcom/onesignal/PushRegistratorAbstractGoogle;

    iput-object p2, p0, Lcom/onesignal/PushRegistratorAbstractGoogle$1;->val$senderId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 83
    const/4 v0, 0x0

    .local v0, "currentRetry":I
    :goto_0
    invoke-static {}, Lcom/onesignal/PushRegistratorAbstractGoogle;->access$000()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 84
    iget-object v2, p0, Lcom/onesignal/PushRegistratorAbstractGoogle$1;->this$0:Lcom/onesignal/PushRegistratorAbstractGoogle;

    iget-object v3, p0, Lcom/onesignal/PushRegistratorAbstractGoogle$1;->val$senderId:Ljava/lang/String;

    invoke-static {v2, v3, v0}, Lcom/onesignal/PushRegistratorAbstractGoogle;->access$100(Lcom/onesignal/PushRegistratorAbstractGoogle;Ljava/lang/String;I)Z

    move-result v1

    .line 85
    .local v1, "finished":Z
    if-eqz v1, :cond_1

    .line 89
    .end local v1    # "finished":Z
    :cond_0
    return-void

    .line 87
    .restart local v1    # "finished":Z
    :cond_1
    invoke-static {}, Lcom/onesignal/PushRegistratorAbstractGoogle;->access$200()I

    move-result v2

    add-int/lit8 v3, v0, 0x1

    mul-int/2addr v2, v3

    invoke-static {v2}, Lcom/onesignal/OSUtils;->sleep(I)V

    .line 83
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
