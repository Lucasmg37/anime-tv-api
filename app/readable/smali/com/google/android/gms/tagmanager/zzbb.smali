.class public final Lcom/google/android/gms/tagmanager/zzbb;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tagmanager/zzby;


# static fields
.field private static final zzbDk:Ljava/lang/Object;

.field private static zzbEy:Lcom/google/android/gms/tagmanager/zzbb;


# instance fields
.field private zzbDM:Lcom/google/android/gms/tagmanager/zzek;

.field private zzbEz:Lcom/google/android/gms/tagmanager/zzbz;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/tagmanager/zzbb;->zzbDk:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-static {p1}, Lcom/google/android/gms/tagmanager/zzca;->zzbs(Landroid/content/Context;)Lcom/google/android/gms/tagmanager/zzca;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/tagmanager/zzfm;

    invoke-direct {v1}, Lcom/google/android/gms/tagmanager/zzfm;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/tagmanager/zzbb;-><init>(Lcom/google/android/gms/tagmanager/zzbz;Lcom/google/android/gms/tagmanager/zzek;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/tagmanager/zzbz;Lcom/google/android/gms/tagmanager/zzek;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzbb;->zzbEz:Lcom/google/android/gms/tagmanager/zzbz;

    iput-object p2, p0, Lcom/google/android/gms/tagmanager/zzbb;->zzbDM:Lcom/google/android/gms/tagmanager/zzek;

    return-void
.end method

.method public static zzbm(Landroid/content/Context;)Lcom/google/android/gms/tagmanager/zzby;
    .locals 2

    sget-object v1, Lcom/google/android/gms/tagmanager/zzbb;->zzbDk:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/tagmanager/zzbb;->zzbEy:Lcom/google/android/gms/tagmanager/zzbb;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/tagmanager/zzbb;

    invoke-direct {v0, p0}, Lcom/google/android/gms/tagmanager/zzbb;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/gms/tagmanager/zzbb;->zzbEy:Lcom/google/android/gms/tagmanager/zzbb;

    :cond_0
    sget-object v0, Lcom/google/android/gms/tagmanager/zzbb;->zzbEy:Lcom/google/android/gms/tagmanager/zzbb;

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
.method public final zzfh(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzbb;->zzbDM:Lcom/google/android/gms/tagmanager/zzek;

    invoke-interface {v0}, Lcom/google/android/gms/tagmanager/zzek;->zzlL()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Too many urls sent too quickly with the TagManagerSender, rate limiting invoked."

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzdj;->zzaT(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzbb;->zzbEz:Lcom/google/android/gms/tagmanager/zzbz;

    invoke-interface {v0, p1}, Lcom/google/android/gms/tagmanager/zzbz;->zzfm(Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_0
.end method
