.class Lcom/onesignal/ActivityLifecycleHandler$AppFocusRunnable;
.super Ljava/lang/Object;
.source "ActivityLifecycleHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onesignal/ActivityLifecycleHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AppFocusRunnable"
.end annotation


# instance fields
.field private backgrounded:Z

.field private completed:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/onesignal/ActivityLifecycleHandler$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/onesignal/ActivityLifecycleHandler$1;

    .prologue
    .line 163
    invoke-direct {p0}, Lcom/onesignal/ActivityLifecycleHandler$AppFocusRunnable;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/onesignal/ActivityLifecycleHandler$AppFocusRunnable;)Z
    .locals 1
    .param p0, "x0"    # Lcom/onesignal/ActivityLifecycleHandler$AppFocusRunnable;

    .prologue
    .line 163
    iget-boolean v0, p0, Lcom/onesignal/ActivityLifecycleHandler$AppFocusRunnable;->backgrounded:Z

    return v0
.end method

.method static synthetic access$102(Lcom/onesignal/ActivityLifecycleHandler$AppFocusRunnable;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/onesignal/ActivityLifecycleHandler$AppFocusRunnable;
    .param p1, "x1"    # Z

    .prologue
    .line 163
    iput-boolean p1, p0, Lcom/onesignal/ActivityLifecycleHandler$AppFocusRunnable;->backgrounded:Z

    return p1
.end method

.method static synthetic access$200(Lcom/onesignal/ActivityLifecycleHandler$AppFocusRunnable;)Z
    .locals 1
    .param p0, "x0"    # Lcom/onesignal/ActivityLifecycleHandler$AppFocusRunnable;

    .prologue
    .line 163
    iget-boolean v0, p0, Lcom/onesignal/ActivityLifecycleHandler$AppFocusRunnable;->completed:Z

    return v0
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 167
    sget-object v0, Lcom/onesignal/ActivityLifecycleHandler;->curActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 173
    :goto_0
    return-void

    .line 170
    :cond_0
    iput-boolean v1, p0, Lcom/onesignal/ActivityLifecycleHandler$AppFocusRunnable;->backgrounded:Z

    .line 171
    invoke-static {}, Lcom/onesignal/OneSignal;->onAppLostFocus()Z

    .line 172
    iput-boolean v1, p0, Lcom/onesignal/ActivityLifecycleHandler$AppFocusRunnable;->completed:Z

    goto :goto_0
.end method
