.class public final Lcom/google/android/gms/internal/zzcdj;
.super Lcom/google/android/gms/internal/zzcbx;


# instance fields
.field private final zzbiS:Lcom/google/android/gms/internal/zzcdd;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;Ljava/lang/String;)V
    .locals 7

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzq;->zzaA(Landroid/content/Context;)Lcom/google/android/gms/common/internal/zzq;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/zzcdj;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;Ljava/lang/String;Lcom/google/android/gms/common/internal/zzq;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;Ljava/lang/String;Lcom/google/android/gms/common/internal/zzq;)V
    .locals 2

    invoke-direct/range {p0 .. p6}, Lcom/google/android/gms/internal/zzcbx;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;Ljava/lang/String;Lcom/google/android/gms/common/internal/zzq;)V

    new-instance v0, Lcom/google/android/gms/internal/zzcdd;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcdj;->zzbiB:Lcom/google/android/gms/internal/zzcdt;

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/zzcdd;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzcdt;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcdj;->zzbiS:Lcom/google/android/gms/internal/zzcdd;

    return-void
.end method


# virtual methods
.method public final disconnect()V
    .locals 4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcdj;->zzbiS:Lcom/google/android/gms/internal/zzcdd;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdj;->isConnected()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcdj;->zzbiS:Lcom/google/android/gms/internal/zzcdd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcdd;->removeAllListeners()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcdj;->zzbiS:Lcom/google/android/gms/internal/zzcdd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcdd;->zzvR()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    :try_start_2
    invoke-super {p0}, Lcom/google/android/gms/internal/zzcbx;->disconnect()V

    monitor-exit v1

    return-void

    :catch_0
    move-exception v0

    const-string v2, "LocationClientImpl"

    const-string v3, "Client disconnected before listeners could be cleaned up"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final getLastLocation()Landroid/location/Location;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcdj;->zzbiS:Lcom/google/android/gms/internal/zzcdd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcdd;->getLastLocation()Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method public final zza(JLandroid/app/PendingIntent;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdj;->zzre()V

    invoke-static {p3}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-ltz v0, :cond_0

    move v0, v1

    :goto_0
    const-string v2, "detectionIntervalMillis must be >= 0"

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/zzbo;->zzb(ZLjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdj;->zzrf()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzccz;

    invoke-interface {v0, p1, p2, v1, p3}, Lcom/google/android/gms/internal/zzccz;->zza(JZLandroid/app/PendingIntent;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final zza(Landroid/app/PendingIntent;Lcom/google/android/gms/internal/zzccu;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcdj;->zzbiS:Lcom/google/android/gms/internal/zzcdd;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzcdd;->zza(Landroid/app/PendingIntent;Lcom/google/android/gms/internal/zzccu;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzbdy;Lcom/google/android/gms/internal/zzccu;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbdy",
            "<",
            "Lcom/google/android/gms/location/LocationListener;",
            ">;",
            "Lcom/google/android/gms/internal/zzccu;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcdj;->zzbiS:Lcom/google/android/gms/internal/zzcdd;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzcdd;->zza(Lcom/google/android/gms/internal/zzbdy;Lcom/google/android/gms/internal/zzccu;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzccu;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcdj;->zzbiS:Lcom/google/android/gms/internal/zzcdd;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzcdd;->zza(Lcom/google/android/gms/internal/zzccu;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzcdn;Lcom/google/android/gms/internal/zzbdw;Lcom/google/android/gms/internal/zzccu;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzcdn;",
            "Lcom/google/android/gms/internal/zzbdw",
            "<",
            "Lcom/google/android/gms/location/LocationCallback;",
            ">;",
            "Lcom/google/android/gms/internal/zzccu;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcdj;->zzbiS:Lcom/google/android/gms/internal/zzcdd;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcdj;->zzbiS:Lcom/google/android/gms/internal/zzcdd;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/zzcdd;->zza(Lcom/google/android/gms/internal/zzcdn;Lcom/google/android/gms/internal/zzbdw;Lcom/google/android/gms/internal/zzccu;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final zza(Lcom/google/android/gms/location/GeofencingRequest;Landroid/app/PendingIntent;Lcom/google/android/gms/internal/zzbaz;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/location/GeofencingRequest;",
            "Landroid/app/PendingIntent;",
            "Lcom/google/android/gms/internal/zzbaz",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdj;->zzre()V

    const-string v0, "geofencingRequest can\'t be null."

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzbo;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "PendingIntent must be specified."

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/zzbo;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "ResultHolder not provided."

    invoke-static {p3, v0}, Lcom/google/android/gms/common/internal/zzbo;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/google/android/gms/internal/zzcdk;

    invoke-direct {v1, p3}, Lcom/google/android/gms/internal/zzcdk;-><init>(Lcom/google/android/gms/internal/zzbaz;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdj;->zzrf()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzccz;

    invoke-interface {v0, p1, p2, v1}, Lcom/google/android/gms/internal/zzccz;->zza(Lcom/google/android/gms/location/GeofencingRequest;Landroid/app/PendingIntent;Lcom/google/android/gms/internal/zzccx;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/location/LocationRequest;Landroid/app/PendingIntent;Lcom/google/android/gms/internal/zzccu;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcdj;->zzbiS:Lcom/google/android/gms/internal/zzcdd;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/zzcdd;->zza(Lcom/google/android/gms/location/LocationRequest;Landroid/app/PendingIntent;Lcom/google/android/gms/internal/zzccu;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/internal/zzbdw;Lcom/google/android/gms/internal/zzccu;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/location/LocationRequest;",
            "Lcom/google/android/gms/internal/zzbdw",
            "<",
            "Lcom/google/android/gms/location/LocationListener;",
            ">;",
            "Lcom/google/android/gms/internal/zzccu;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcdj;->zzbiS:Lcom/google/android/gms/internal/zzcdd;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcdj;->zzbiS:Lcom/google/android/gms/internal/zzcdd;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/zzcdd;->zza(Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/internal/zzbdw;Lcom/google/android/gms/internal/zzccu;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final zza(Lcom/google/android/gms/location/LocationSettingsRequest;Lcom/google/android/gms/internal/zzbaz;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/location/LocationSettingsRequest;",
            "Lcom/google/android/gms/internal/zzbaz",
            "<",
            "Lcom/google/android/gms/location/LocationSettingsResult;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdj;->zzre()V

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "locationSettingsRequest can\'t be null nor empty."

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/zzbo;->zzb(ZLjava/lang/Object;)V

    if-eqz p2, :cond_1

    :goto_1
    const-string v0, "listener can\'t be null."

    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/zzbo;->zzb(ZLjava/lang/Object;)V

    new-instance v1, Lcom/google/android/gms/internal/zzcdm;

    invoke-direct {v1, p2}, Lcom/google/android/gms/internal/zzcdm;-><init>(Lcom/google/android/gms/internal/zzbaz;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdj;->zzrf()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzccz;

    invoke-interface {v0, p1, v1, p3}, Lcom/google/android/gms/internal/zzccz;->zza(Lcom/google/android/gms/location/LocationSettingsRequest;Lcom/google/android/gms/internal/zzcdb;Ljava/lang/String;)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public final zza(Lcom/google/android/gms/location/zzaa;Lcom/google/android/gms/internal/zzbaz;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/location/zzaa;",
            "Lcom/google/android/gms/internal/zzbaz",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdj;->zzre()V

    const-string v0, "removeGeofencingRequest can\'t be null."

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzbo;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "ResultHolder not provided."

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/zzbo;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/google/android/gms/internal/zzcdl;

    invoke-direct {v1, p2}, Lcom/google/android/gms/internal/zzcdl;-><init>(Lcom/google/android/gms/internal/zzbaz;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdj;->zzrf()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzccz;

    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/internal/zzccz;->zza(Lcom/google/android/gms/location/zzaa;Lcom/google/android/gms/internal/zzccx;)V

    return-void
.end method

.method public final zzai(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcdj;->zzbiS:Lcom/google/android/gms/internal/zzcdd;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzcdd;->zzai(Z)V

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/zzbdy;Lcom/google/android/gms/internal/zzccu;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbdy",
            "<",
            "Lcom/google/android/gms/location/LocationCallback;",
            ">;",
            "Lcom/google/android/gms/internal/zzccu;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcdj;->zzbiS:Lcom/google/android/gms/internal/zzcdd;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzcdd;->zzb(Lcom/google/android/gms/internal/zzbdy;Lcom/google/android/gms/internal/zzccu;)V

    return-void
.end method

.method public final zzc(Landroid/app/PendingIntent;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdj;->zzre()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcdj;->zzrf()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzccz;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzccz;->zzc(Landroid/app/PendingIntent;)V

    return-void
.end method

.method public final zzc(Landroid/location/Location;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcdj;->zzbiS:Lcom/google/android/gms/internal/zzcdd;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzcdd;->zzc(Landroid/location/Location;)V

    return-void
.end method

.method public final zzvQ()Lcom/google/android/gms/location/LocationAvailability;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcdj;->zzbiS:Lcom/google/android/gms/internal/zzcdd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcdd;->zzvQ()Lcom/google/android/gms/location/LocationAvailability;

    move-result-object v0

    return-object v0
.end method
