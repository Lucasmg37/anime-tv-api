.class Lcom/onesignal/OneSignalSyncServiceUtils$LegacySyncRunnable;
.super Lcom/onesignal/OneSignalSyncServiceUtils$SyncRunnable;
.source "OneSignalSyncServiceUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onesignal/OneSignalSyncServiceUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LegacySyncRunnable"
.end annotation


# instance fields
.field callerService:Landroid/app/Service;


# direct methods
.method constructor <init>(Landroid/app/Service;)V
    .locals 0
    .param p1, "caller"    # Landroid/app/Service;

    .prologue
    .line 268
    invoke-direct {p0}, Lcom/onesignal/OneSignalSyncServiceUtils$SyncRunnable;-><init>()V

    .line 269
    iput-object p1, p0, Lcom/onesignal/OneSignalSyncServiceUtils$LegacySyncRunnable;->callerService:Landroid/app/Service;

    .line 270
    return-void
.end method


# virtual methods
.method protected stopSync()V
    .locals 2

    .prologue
    .line 274
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v1, "LegacySyncRunnable:Stopped"

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 275
    iget-object v0, p0, Lcom/onesignal/OneSignalSyncServiceUtils$LegacySyncRunnable;->callerService:Landroid/app/Service;

    invoke-virtual {v0}, Landroid/app/Service;->stopSelf()V

    .line 276
    return-void
.end method
