.class Lcom/onesignal/OSObservable$1;
.super Ljava/lang/Object;
.source "OSObservable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/OSObservable;->notifyChange(Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/onesignal/OSObservable;

.field final synthetic val$method:Ljava/lang/reflect/Method;

.field final synthetic val$state:Ljava/lang/Object;

.field final synthetic val$strongRefObserver:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/onesignal/OSObservable;Ljava/lang/reflect/Method;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "this$0"    # Lcom/onesignal/OSObservable;

    .prologue
    .line 81
    .local p0, "this":Lcom/onesignal/OSObservable$1;, "Lcom/onesignal/OSObservable$1;"
    iput-object p1, p0, Lcom/onesignal/OSObservable$1;->this$0:Lcom/onesignal/OSObservable;

    iput-object p2, p0, Lcom/onesignal/OSObservable$1;->val$method:Ljava/lang/reflect/Method;

    iput-object p3, p0, Lcom/onesignal/OSObservable$1;->val$strongRefObserver:Ljava/lang/Object;

    iput-object p4, p0, Lcom/onesignal/OSObservable$1;->val$state:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 85
    .local p0, "this":Lcom/onesignal/OSObservable$1;, "Lcom/onesignal/OSObservable$1;"
    :try_start_0
    iget-object v1, p0, Lcom/onesignal/OSObservable$1;->val$method:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/onesignal/OSObservable$1;->val$strongRefObserver:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/onesignal/OSObservable$1;->val$state:Ljava/lang/Object;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    :goto_0
    return-void

    .line 87
    :catch_0
    move-exception v0

    .line 88
    .local v0, "t":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
