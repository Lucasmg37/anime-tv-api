.class final Lcom/google/android/gms/ads/internal/zzbj;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzuX:Ljava/lang/ref/WeakReference;

.field private synthetic zzuY:Lcom/google/android/gms/ads/internal/zzbi;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/zzbi;Ljava/lang/ref/WeakReference;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzbj;->zzuY:Lcom/google/android/gms/ads/internal/zzbi;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/zzbj;->zzuX:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzbj;->zzuY:Lcom/google/android/gms/ads/internal/zzbi;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/ads/internal/zzbi;->zza(Lcom/google/android/gms/ads/internal/zzbi;Z)Z

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzbj;->zzuX:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/internal/zza;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzbj;->zzuY:Lcom/google/android/gms/ads/internal/zzbi;

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/zzbi;->zza(Lcom/google/android/gms/ads/internal/zzbi;)Lcom/google/android/gms/internal/zzir;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/zza;->zzb(Lcom/google/android/gms/internal/zzir;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/zza;->zza(Lcom/google/android/gms/internal/zzir;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v2, "Ad is not visible. Not refreshing ad."

    invoke-static {v2}, Lcom/google/android/gms/internal/zzafr;->zzaS(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zza;->zzsO:Lcom/google/android/gms/ads/internal/zzbi;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/zzbi;->zzg(Lcom/google/android/gms/internal/zzir;)V

    goto :goto_0
.end method
