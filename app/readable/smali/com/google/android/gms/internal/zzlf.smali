.class public final Lcom/google/android/gms/internal/zzlf;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzn;
.end annotation


# static fields
.field private static zzBn:Lcom/google/android/gms/internal/zzlf;

.field private static final zzuF:Ljava/lang/Object;


# instance fields
.field private zzBo:Lcom/google/android/gms/internal/zzkn;

.field private zzBp:Lcom/google/android/gms/ads/reward/RewardedVideoAd;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzlf;->zzuF:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zzdD()Lcom/google/android/gms/internal/zzlf;
    .locals 2

    sget-object v1, Lcom/google/android/gms/internal/zzlf;->zzuF:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/zzlf;->zzBn:Lcom/google/android/gms/internal/zzlf;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzlf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzlf;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzlf;->zzBn:Lcom/google/android/gms/internal/zzlf;

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/zzlf;->zzBn:Lcom/google/android/gms/internal/zzlf;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public final getRewardedVideoAdInstance(Landroid/content/Context;)Lcom/google/android/gms/ads/reward/RewardedVideoAd;
    .locals 5

    sget-object v1, Lcom/google/android/gms/internal/zzlf;->zzuF:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzlf;->zzBp:Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlf;->zzBp:Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    monitor-exit v1

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/zzup;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzup;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/zzji;->zzdt()Lcom/google/android/gms/internal/zziz;

    move-result-object v2

    const/4 v3, 0x0

    new-instance v4, Lcom/google/android/gms/internal/zzjg;

    invoke-direct {v4, v2, p1, v0}, Lcom/google/android/gms/internal/zzjg;-><init>(Lcom/google/android/gms/internal/zziz;Landroid/content/Context;Lcom/google/android/gms/internal/zzuq;)V

    invoke-static {p1, v3, v4}, Lcom/google/android/gms/internal/zziz;->zza(Landroid/content/Context;ZLcom/google/android/gms/internal/zziz$zza;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzacy;

    new-instance v2, Lcom/google/android/gms/internal/zzadl;

    invoke-direct {v2, p1, v0}, Lcom/google/android/gms/internal/zzadl;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzacy;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/zzlf;->zzBp:Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlf;->zzBp:Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final openDebugMenu(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlf;->zzBo:Lcom/google/android/gms/internal/zzkn;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "MobileAds.initialize() must be called prior to opening debug menu."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzbo;->zza(ZLjava/lang/Object;)V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzlf;->zzBo:Lcom/google/android/gms/internal/zzkn;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/zzn;->zzw(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/internal/zzkn;->zzb(Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Unable to open debug menu."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzajc;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public final setAppMuted(Z)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlf;->zzBo:Lcom/google/android/gms/internal/zzkn;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "MobileAds.initialize() must be called prior to setting the app volume."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzbo;->zza(ZLjava/lang/Object;)V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzlf;->zzBo:Lcom/google/android/gms/internal/zzkn;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzkn;->setAppMuted(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Unable to set app mute state."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzajc;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public final setAppVolume(F)V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    cmpg-float v0, v0, p1

    if-gtz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "The app volume must be a value between 0 and 1 inclusive."

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/zzbo;->zzb(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlf;->zzBo:Lcom/google/android/gms/internal/zzkn;

    if-eqz v0, :cond_1

    :goto_1
    const-string v0, "MobileAds.initialize() must be called prior to setting the app volume."

    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/zzbo;->zza(ZLjava/lang/Object;)V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzlf;->zzBo:Lcom/google/android/gms/internal/zzkn;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzkn;->setAppVolume(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "Unable to set app volume."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzajc;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public final zza(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/zzlh;)V
    .locals 4

    sget-object v1, Lcom/google/android/gms/internal/zzlf;->zzuF:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzlf;->zzBo:Lcom/google/android/gms/internal/zzkn;

    if-eqz v0, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Context cannot be null."

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    invoke-static {}, Lcom/google/android/gms/internal/zzji;->zzdt()Lcom/google/android/gms/internal/zziz;

    move-result-object v0

    const/4 v2, 0x0

    new-instance v3, Lcom/google/android/gms/internal/zzje;

    invoke-direct {v3, v0, p1}, Lcom/google/android/gms/internal/zzje;-><init>(Lcom/google/android/gms/internal/zziz;Landroid/content/Context;)V

    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/zziz;->zza(Landroid/content/Context;ZLcom/google/android/gms/internal/zziz$zza;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzkn;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzlf;->zzBo:Lcom/google/android/gms/internal/zzkn;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlf;->zzBo:Lcom/google/android/gms/internal/zzkn;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzkn;->initialize()V

    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlf;->zzBo:Lcom/google/android/gms/internal/zzkn;

    new-instance v2, Lcom/google/android/gms/internal/zzlg;

    invoke-direct {v2, p0, p1}, Lcom/google/android/gms/internal/zzlg;-><init>(Lcom/google/android/gms/internal/zzlf;Landroid/content/Context;)V

    invoke-static {v2}, Lcom/google/android/gms/dynamic/zzn;->zzw(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v2

    invoke-interface {v0, p2, v2}, Lcom/google/android/gms/internal/zzkn;->zzc(Ljava/lang/String;Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :goto_1
    :try_start_2
    monitor-exit v1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "MobileAdsSettingManager initialization failed"

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/zzajc;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method