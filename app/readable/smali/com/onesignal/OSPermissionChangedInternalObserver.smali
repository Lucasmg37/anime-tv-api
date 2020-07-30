.class Lcom/onesignal/OSPermissionChangedInternalObserver;
.super Ljava/lang/Object;
.source "OSPermissionChangedInternalObserver.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static fireChangesToPublicObserver(Lcom/onesignal/OSPermissionState;)V
    .locals 3
    .param p0, "state"    # Lcom/onesignal/OSPermissionState;

    .prologue
    .line 48
    new-instance v1, Lcom/onesignal/OSPermissionStateChanges;

    invoke-direct {v1}, Lcom/onesignal/OSPermissionStateChanges;-><init>()V

    .line 49
    .local v1, "stateChanges":Lcom/onesignal/OSPermissionStateChanges;
    sget-object v2, Lcom/onesignal/OneSignal;->lastPermissionState:Lcom/onesignal/OSPermissionState;

    iput-object v2, v1, Lcom/onesignal/OSPermissionStateChanges;->from:Lcom/onesignal/OSPermissionState;

    .line 50
    invoke-virtual {p0}, Lcom/onesignal/OSPermissionState;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onesignal/OSPermissionState;

    iput-object v2, v1, Lcom/onesignal/OSPermissionStateChanges;->to:Lcom/onesignal/OSPermissionState;

    .line 52
    invoke-static {}, Lcom/onesignal/OneSignal;->getPermissionStateChangesObserver()Lcom/onesignal/OSObservable;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/onesignal/OSObservable;->notifyChange(Ljava/lang/Object;)Z

    move-result v0

    .line 53
    .local v0, "hasReceiver":Z
    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {p0}, Lcom/onesignal/OSPermissionState;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onesignal/OSPermissionState;

    sput-object v2, Lcom/onesignal/OneSignal;->lastPermissionState:Lcom/onesignal/OSPermissionState;

    .line 55
    sget-object v2, Lcom/onesignal/OneSignal;->lastPermissionState:Lcom/onesignal/OSPermissionState;

    invoke-virtual {v2}, Lcom/onesignal/OSPermissionState;->persistAsFrom()V

    .line 57
    :cond_0
    return-void
.end method

.method static handleInternalChanges(Lcom/onesignal/OSPermissionState;)V
    .locals 2
    .param p0, "state"    # Lcom/onesignal/OSPermissionState;

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/onesignal/OSPermissionState;->getEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 38
    const/4 v0, 0x0

    sget-object v1, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/onesignal/BadgeCountUpdater;->updateCount(ILandroid/content/Context;)V

    .line 39
    :cond_0
    invoke-static {}, Lcom/onesignal/OneSignal;->areNotificationsEnabledForSubscribedState()Z

    move-result v0

    invoke-static {v0}, Lcom/onesignal/OneSignalStateSynchronizer;->setPermission(Z)V

    .line 40
    return-void
.end method


# virtual methods
.method changed(Lcom/onesignal/OSPermissionState;)V
    .locals 0
    .param p1, "state"    # Lcom/onesignal/OSPermissionState;

    .prologue
    .line 32
    invoke-static {p1}, Lcom/onesignal/OSPermissionChangedInternalObserver;->handleInternalChanges(Lcom/onesignal/OSPermissionState;)V

    .line 33
    invoke-static {p1}, Lcom/onesignal/OSPermissionChangedInternalObserver;->fireChangesToPublicObserver(Lcom/onesignal/OSPermissionState;)V

    .line 34
    return-void
.end method
