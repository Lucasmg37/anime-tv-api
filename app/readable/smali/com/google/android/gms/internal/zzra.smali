.class final Lcom/google/android/gms/internal/zzra;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzrd;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/zzaka;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzaka;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "u"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "URL missing from httpTrack GMSG."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzafr;->zzaT(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/zzaiq;

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzaka;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzaka;->zziz()Lcom/google/android/gms/internal/zzaje;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/gms/internal/zzaje;->zzaP:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v0}, Lcom/google/android/gms/internal/zzaiq;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzafp;->zzhL()Ljava/util/concurrent/Future;

    goto :goto_0
.end method
