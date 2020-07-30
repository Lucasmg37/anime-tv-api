.class Lcom/onesignal/GooglePlayServicesUpgradePrompt;
.super Ljava/lang/Object;
.source "GooglePlayServicesUpgradePrompt.java"


# static fields
.field private static final PLAY_SERVICES_RESOLUTION_REQUEST:I = 0x2328


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static OpenPlayStoreToApp(Landroid/app/Activity;)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 86
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v0

    .line 87
    .local v0, "apiAvailability":Lcom/google/android/gms/common/GoogleApiAvailability;
    sget-object v3, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v2

    .line 89
    .local v2, "resultCode":I
    const/16 v3, 0x2328

    invoke-virtual {v0, p0, v2, v3}, Lcom/google/android/gms/common/GoogleApiAvailability;->getErrorResolutionPendingIntent(Landroid/content/Context;II)Landroid/app/PendingIntent;

    move-result-object v3

    .line 93
    invoke-virtual {v3}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    .end local v0    # "apiAvailability":Lcom/google/android/gms/common/GoogleApiAvailability;
    .end local v2    # "resultCode":I
    :goto_0
    return-void

    .line 95
    :catch_0
    move-exception v1

    .line 96
    .local v1, "e":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 94
    .end local v1    # "e":Ljava/lang/Throwable;
    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method static ShowUpdateGPSDialog()V
    .locals 4

    .prologue
    .line 40
    invoke-static {}, Lcom/onesignal/GooglePlayServicesUpgradePrompt;->isGMSInstalledAndEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/onesignal/GooglePlayServicesUpgradePrompt;->isGooglePlayStoreInstalled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 81
    .local v0, "userSelectedSkip":Z
    :cond_0
    :goto_0
    return-void

    .line 43
    .end local v0    # "userSelectedSkip":Z
    :cond_1
    sget-object v1, Lcom/onesignal/OneSignalPrefs;->PREFS_ONESIGNAL:Ljava/lang/String;

    const-string v2, "GT_DO_NOT_SHOW_MISSING_GPS"

    const/4 v3, 0x0

    .line 44
    invoke-static {v1, v2, v3}, Lcom/onesignal/OneSignalPrefs;->getBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    .line 49
    .restart local v0    # "userSelectedSkip":Z
    if-nez v0, :cond_0

    .line 52
    new-instance v1, Lcom/onesignal/GooglePlayServicesUpgradePrompt$1;

    invoke-direct {v1}, Lcom/onesignal/GooglePlayServicesUpgradePrompt$1;-><init>()V

    invoke-static {v1}, Lcom/onesignal/OSUtils;->runOnMainUIThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method static synthetic access$000(Landroid/app/Activity;)V
    .locals 0
    .param p0, "x0"    # Landroid/app/Activity;

    .prologue
    .line 14
    invoke-static {p0}, Lcom/onesignal/GooglePlayServicesUpgradePrompt;->OpenPlayStoreToApp(Landroid/app/Activity;)V

    return-void
.end method

.method static isGMSInstalledAndEnabled()Z
    .locals 4

    .prologue
    .line 19
    :try_start_0
    sget-object v2, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 20
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const-string v2, "com.google.android.gms"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 22
    .local v0, "info":Landroid/content/pm/PackageInfo;
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v2, v2, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    .end local v0    # "info":Landroid/content/pm/PackageInfo;
    :goto_0
    return v2

    .line 23
    :catch_0
    move-exception v2

    .line 25
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static isGooglePlayStoreInstalled()Z
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 30
    :try_start_0
    sget-object v5, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 31
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const-string v5, "com.google.android.gms"

    const/4 v6, 0x1

    invoke-virtual {v2, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 32
    .local v0, "info":Landroid/content/pm/PackageInfo;
    iget-object v5, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v5, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 33
    .local v1, "label":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v5, "Market"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-nez v5, :cond_0

    .line 36
    .end local v0    # "info":Landroid/content/pm/PackageInfo;
    .end local v1    # "label":Ljava/lang/String;
    :goto_0
    return v3

    .restart local v0    # "info":Landroid/content/pm/PackageInfo;
    .restart local v1    # "label":Ljava/lang/String;
    :cond_0
    move v3, v4

    .line 33
    goto :goto_0

    .line 34
    .end local v0    # "info":Landroid/content/pm/PackageInfo;
    .end local v1    # "label":Ljava/lang/String;
    :catch_0
    move-exception v3

    move v3, v4

    .line 36
    goto :goto_0
.end method
