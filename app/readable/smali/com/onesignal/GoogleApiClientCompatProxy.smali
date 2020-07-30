.class Lcom/onesignal/GoogleApiClientCompatProxy;
.super Ljava/lang/Object;
.source "GoogleApiClientCompatProxy.java"


# instance fields
.field private final googleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

.field private final googleApiClientListenerClass:Ljava/lang/Class;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 1
    .param p1, "googleApiClient"    # Lcom/google/android/gms/common/api/GoogleApiClient;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/onesignal/GoogleApiClientCompatProxy;->googleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 41
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/onesignal/GoogleApiClientCompatProxy;->googleApiClientListenerClass:Ljava/lang/Class;

    .line 42
    return-void
.end method


# virtual methods
.method connect()V
    .locals 4

    .prologue
    .line 46
    :try_start_0
    iget-object v1, p0, Lcom/onesignal/GoogleApiClientCompatProxy;->googleApiClientListenerClass:Ljava/lang/Class;

    const-string v2, "connect"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iget-object v2, p0, Lcom/onesignal/GoogleApiClientCompatProxy;->googleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    :goto_0
    return-void

    .line 47
    :catch_0
    move-exception v0

    .line 48
    .local v0, "t":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method disconnect()V
    .locals 4

    .prologue
    .line 54
    :try_start_0
    iget-object v1, p0, Lcom/onesignal/GoogleApiClientCompatProxy;->googleApiClientListenerClass:Ljava/lang/Class;

    const-string v2, "disconnect"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iget-object v2, p0, Lcom/onesignal/GoogleApiClientCompatProxy;->googleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    :goto_0
    return-void

    .line 55
    :catch_0
    move-exception v0

    .line 56
    .local v0, "t":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method realInstance()Lcom/google/android/gms/common/api/GoogleApiClient;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/onesignal/GoogleApiClientCompatProxy;->googleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    return-object v0
.end method
