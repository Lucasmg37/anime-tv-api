.class Lcom/onesignal/OSEmailSubscriptionChangedInternalObserver;
.super Ljava/lang/Object;
.source "OSEmailSubscriptionChangedInternalObserver.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static fireChangesToPublicObserver(Lcom/onesignal/OSEmailSubscriptionState;)V
    .locals 3
    .param p0, "state"    # Lcom/onesignal/OSEmailSubscriptionState;

    .prologue
    .line 41
    new-instance v1, Lcom/onesignal/OSEmailSubscriptionStateChanges;

    invoke-direct {v1}, Lcom/onesignal/OSEmailSubscriptionStateChanges;-><init>()V

    .line 42
    .local v1, "stateChanges":Lcom/onesignal/OSEmailSubscriptionStateChanges;
    sget-object v2, Lcom/onesignal/OneSignal;->lastEmailSubscriptionState:Lcom/onesignal/OSEmailSubscriptionState;

    iput-object v2, v1, Lcom/onesignal/OSEmailSubscriptionStateChanges;->from:Lcom/onesignal/OSEmailSubscriptionState;

    .line 43
    invoke-virtual {p0}, Lcom/onesignal/OSEmailSubscriptionState;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onesignal/OSEmailSubscriptionState;

    iput-object v2, v1, Lcom/onesignal/OSEmailSubscriptionStateChanges;->to:Lcom/onesignal/OSEmailSubscriptionState;

    .line 45
    invoke-static {}, Lcom/onesignal/OneSignal;->getEmailSubscriptionStateChangesObserver()Lcom/onesignal/OSObservable;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/onesignal/OSObservable;->notifyChange(Ljava/lang/Object;)Z

    move-result v0

    .line 46
    .local v0, "hasReceiver":Z
    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {p0}, Lcom/onesignal/OSEmailSubscriptionState;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onesignal/OSEmailSubscriptionState;

    sput-object v2, Lcom/onesignal/OneSignal;->lastEmailSubscriptionState:Lcom/onesignal/OSEmailSubscriptionState;

    .line 48
    sget-object v2, Lcom/onesignal/OneSignal;->lastEmailSubscriptionState:Lcom/onesignal/OSEmailSubscriptionState;

    invoke-virtual {v2}, Lcom/onesignal/OSEmailSubscriptionState;->persistAsFrom()V

    .line 50
    :cond_0
    return-void
.end method


# virtual methods
.method changed(Lcom/onesignal/OSEmailSubscriptionState;)V
    .locals 0
    .param p1, "state"    # Lcom/onesignal/OSEmailSubscriptionState;

    .prologue
    .line 32
    invoke-static {p1}, Lcom/onesignal/OSEmailSubscriptionChangedInternalObserver;->fireChangesToPublicObserver(Lcom/onesignal/OSEmailSubscriptionState;)V

    .line 33
    return-void
.end method
