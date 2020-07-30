.class Lcom/onesignal/OneSignalSyncServiceUtils$LollipopSyncRunnable;
.super Lcom/onesignal/OneSignalSyncServiceUtils$SyncRunnable;
.source "OneSignalSyncServiceUtils.java"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    api = 0x15
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onesignal/OneSignalSyncServiceUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LollipopSyncRunnable"
.end annotation


# instance fields
.field private jobParameters:Landroid/app/job/JobParameters;

.field private jobService:Landroid/app/job/JobService;


# direct methods
.method constructor <init>(Landroid/app/job/JobService;Landroid/app/job/JobParameters;)V
    .locals 0
    .param p1, "caller"    # Landroid/app/job/JobService;
    .param p2, "jobParameters"    # Landroid/app/job/JobParameters;

    .prologue
    .line 249
    invoke-direct {p0}, Lcom/onesignal/OneSignalSyncServiceUtils$SyncRunnable;-><init>()V

    .line 250
    iput-object p1, p0, Lcom/onesignal/OneSignalSyncServiceUtils$LollipopSyncRunnable;->jobService:Landroid/app/job/JobService;

    .line 251
    iput-object p2, p0, Lcom/onesignal/OneSignalSyncServiceUtils$LollipopSyncRunnable;->jobParameters:Landroid/app/job/JobParameters;

    .line 252
    return-void
.end method


# virtual methods
.method protected stopSync()V
    .locals 3

    .prologue
    .line 256
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v1, "LollipopSyncRunnable:JobFinished"

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 257
    iget-object v0, p0, Lcom/onesignal/OneSignalSyncServiceUtils$LollipopSyncRunnable;->jobService:Landroid/app/job/JobService;

    iget-object v1, p0, Lcom/onesignal/OneSignalSyncServiceUtils$LollipopSyncRunnable;->jobParameters:Landroid/app/job/JobParameters;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    .line 258
    return-void
.end method
