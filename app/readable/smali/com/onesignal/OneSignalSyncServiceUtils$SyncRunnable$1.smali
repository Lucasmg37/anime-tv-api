.class Lcom/onesignal/OneSignalSyncServiceUtils$SyncRunnable$1;
.super Ljava/lang/Object;
.source "OneSignalSyncServiceUtils.java"

# interfaces
.implements Lcom/onesignal/LocationGMS$LocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/OneSignalSyncServiceUtils$SyncRunnable;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/onesignal/OneSignalSyncServiceUtils$SyncRunnable;


# direct methods
.method constructor <init>(Lcom/onesignal/OneSignalSyncServiceUtils$SyncRunnable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/onesignal/OneSignalSyncServiceUtils$SyncRunnable;

    .prologue
    .line 215
    iput-object p1, p0, Lcom/onesignal/OneSignalSyncServiceUtils$SyncRunnable$1;->this$0:Lcom/onesignal/OneSignalSyncServiceUtils$SyncRunnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public complete(Lcom/onesignal/LocationGMS$LocationPoint;)V
    .locals 1
    .param p1, "point"    # Lcom/onesignal/LocationGMS$LocationPoint;

    .prologue
    .line 223
    if-eqz p1, :cond_0

    .line 224
    invoke-static {p1}, Lcom/onesignal/OneSignalStateSynchronizer;->updateLocation(Lcom/onesignal/LocationGMS$LocationPoint;)V

    .line 228
    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/onesignal/OneSignalStateSynchronizer;->syncUserState(Z)V

    .line 229
    invoke-static {}, Lcom/onesignal/OneSignalSyncServiceUtils;->syncOnFocusTime()V

    .line 230
    iget-object v0, p0, Lcom/onesignal/OneSignalSyncServiceUtils$SyncRunnable$1;->this$0:Lcom/onesignal/OneSignalSyncServiceUtils$SyncRunnable;

    invoke-virtual {v0}, Lcom/onesignal/OneSignalSyncServiceUtils$SyncRunnable;->stopSync()V

    .line 231
    return-void
.end method

.method public getType()Lcom/onesignal/LocationGMS$CALLBACK_TYPE;
    .locals 1

    .prologue
    .line 218
    sget-object v0, Lcom/onesignal/LocationGMS$CALLBACK_TYPE;->SYNC_SERVICE:Lcom/onesignal/LocationGMS$CALLBACK_TYPE;

    return-object v0
.end method
