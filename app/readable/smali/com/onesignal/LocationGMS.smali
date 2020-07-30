.class Lcom/onesignal/LocationGMS;
.super Ljava/lang/Object;
.source "LocationGMS.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onesignal/LocationGMS$LocationHandlerThread;,
        Lcom/onesignal/LocationGMS$FusedLocationApiWrapper;,
        Lcom/onesignal/LocationGMS$LocationUpdateListener;,
        Lcom/onesignal/LocationGMS$GoogleApiClientListener;,
        Lcom/onesignal/LocationGMS$LocationHandler;,
        Lcom/onesignal/LocationGMS$CALLBACK_TYPE;,
        Lcom/onesignal/LocationGMS$LocationPoint;
    }
.end annotation


# static fields
.field private static final BACKGROUND_UPDATE_TIME_MS:J = 0x8b290L

.field private static final FOREGROUND_UPDATE_TIME_MS:J = 0x41eb0L

.field private static final TIME_BACKGROUND_SEC:J = 0x258L

.field private static final TIME_FOREGROUND_SEC:J = 0x12cL

.field private static classContext:Landroid/content/Context;

.field private static fallbackFailThread:Ljava/lang/Thread;

.field private static locationCoarse:Z

.field private static locationHandlerThread:Lcom/onesignal/LocationGMS$LocationHandlerThread;

.field private static locationHandlers:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Lcom/onesignal/LocationGMS$CALLBACK_TYPE;",
            "Lcom/onesignal/LocationGMS$LocationHandler;",
            ">;"
        }
    .end annotation
.end field

.field static locationUpdateListener:Lcom/onesignal/LocationGMS$LocationUpdateListener;

.field private static mGoogleApiClient:Lcom/onesignal/GoogleApiClientCompatProxy;

.field private static mLastLocation:Landroid/location/Location;

.field static requestPermission:Ljava/lang/String;

.field protected static final syncLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 78
    new-instance v0, Lcom/onesignal/LocationGMS$1;

    invoke-direct {v0}, Lcom/onesignal/LocationGMS$1;-><init>()V

    sput-object v0, Lcom/onesignal/LocationGMS;->syncLock:Ljava/lang/Object;

    .line 88
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/onesignal/LocationGMS;->locationHandlers:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()I
    .locals 1

    .prologue
    .line 55
    invoke-static {}, Lcom/onesignal/LocationGMS;->getApiFallbackWait()I

    move-result v0

    return v0
.end method

.method static synthetic access$200()Landroid/content/Context;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/onesignal/LocationGMS;->classContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300()Landroid/location/Location;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/onesignal/LocationGMS;->mLastLocation:Landroid/location/Location;

    return-object v0
.end method

.method static synthetic access$302(Landroid/location/Location;)Landroid/location/Location;
    .locals 0
    .param p0, "x0"    # Landroid/location/Location;

    .prologue
    .line 55
    sput-object p0, Lcom/onesignal/LocationGMS;->mLastLocation:Landroid/location/Location;

    return-object p0
.end method

.method static synthetic access$400()Lcom/onesignal/GoogleApiClientCompatProxy;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/onesignal/LocationGMS;->mGoogleApiClient:Lcom/onesignal/GoogleApiClientCompatProxy;

    return-object v0
.end method

.method static synthetic access$500(Landroid/location/Location;)V
    .locals 0
    .param p0, "x0"    # Landroid/location/Location;

    .prologue
    .line 55
    invoke-static {p0}, Lcom/onesignal/LocationGMS;->fireCompleteForLocation(Landroid/location/Location;)V

    return-void
.end method

.method private static fireComplete(Lcom/onesignal/LocationGMS$LocationPoint;)V
    .locals 6
    .param p0, "point"    # Lcom/onesignal/LocationGMS$LocationPoint;

    .prologue
    .line 244
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 246
    .local v1, "_locationHandlers":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/onesignal/LocationGMS$CALLBACK_TYPE;Lcom/onesignal/LocationGMS$LocationHandler;>;"
    const-class v4, Lcom/onesignal/LocationGMS;

    monitor-enter v4

    .line 247
    :try_start_0
    sget-object v3, Lcom/onesignal/LocationGMS;->locationHandlers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 248
    sget-object v3, Lcom/onesignal/LocationGMS;->locationHandlers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 249
    sget-object v0, Lcom/onesignal/LocationGMS;->fallbackFailThread:Ljava/lang/Thread;

    .line 250
    .local v0, "_fallbackFailThread":Ljava/lang/Thread;
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 253
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onesignal/LocationGMS$CALLBACK_TYPE;

    .line 254
    .local v2, "type":Lcom/onesignal/LocationGMS$CALLBACK_TYPE;
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onesignal/LocationGMS$LocationHandler;

    invoke-interface {v3, p0}, Lcom/onesignal/LocationGMS$LocationHandler;->complete(Lcom/onesignal/LocationGMS$LocationPoint;)V

    goto :goto_0

    .line 250
    .end local v0    # "_fallbackFailThread":Ljava/lang/Thread;
    .end local v2    # "type":Lcom/onesignal/LocationGMS$CALLBACK_TYPE;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 255
    .restart local v0    # "_fallbackFailThread":Ljava/lang/Thread;
    :cond_0
    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 256
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 259
    :cond_1
    sget-object v3, Lcom/onesignal/LocationGMS;->fallbackFailThread:Ljava/lang/Thread;

    if-ne v0, v3, :cond_3

    .line 260
    const-class v4, Lcom/onesignal/LocationGMS;

    monitor-enter v4

    .line 261
    :try_start_2
    sget-object v3, Lcom/onesignal/LocationGMS;->fallbackFailThread:Ljava/lang/Thread;

    if-ne v0, v3, :cond_2

    .line 262
    const/4 v3, 0x0

    sput-object v3, Lcom/onesignal/LocationGMS;->fallbackFailThread:Ljava/lang/Thread;

    .line 263
    :cond_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 266
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/onesignal/LocationGMS;->setLastLocationTime(J)V

    .line 267
    return-void

    .line 263
    :catchall_1
    move-exception v3

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v3
.end method

.method private static fireCompleteForLocation(Landroid/location/Location;)V
    .locals 5
    .param p0, "location"    # Landroid/location/Location;

    .prologue
    const/4 v4, 0x7

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 270
    new-instance v0, Lcom/onesignal/LocationGMS$LocationPoint;

    invoke-direct {v0}, Lcom/onesignal/LocationGMS$LocationPoint;-><init>()V

    .line 272
    .local v0, "point":Lcom/onesignal/LocationGMS$LocationPoint;
    invoke-virtual {p0}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, v0, Lcom/onesignal/LocationGMS$LocationPoint;->accuracy:Ljava/lang/Float;

    .line 273
    invoke-static {}, Lcom/onesignal/OneSignal;->isForeground()Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/onesignal/LocationGMS$LocationPoint;->bg:Ljava/lang/Boolean;

    .line 274
    sget-boolean v1, Lcom/onesignal/LocationGMS;->locationCoarse:Z

    if-eqz v1, :cond_1

    :goto_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/onesignal/LocationGMS$LocationPoint;->type:Ljava/lang/Integer;

    .line 275
    invoke-virtual {p0}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/onesignal/LocationGMS$LocationPoint;->timeStamp:Ljava/lang/Long;

    .line 279
    sget-boolean v1, Lcom/onesignal/LocationGMS;->locationCoarse:Z

    if-eqz v1, :cond_2

    .line 280
    new-instance v1, Ljava/math/BigDecimal;

    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/math/BigDecimal;-><init>(D)V

    sget-object v2, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    invoke-virtual {v1, v4, v2}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iput-object v1, v0, Lcom/onesignal/LocationGMS$LocationPoint;->lat:Ljava/lang/Double;

    .line 281
    new-instance v1, Ljava/math/BigDecimal;

    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/math/BigDecimal;-><init>(D)V

    sget-object v2, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    invoke-virtual {v1, v4, v2}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iput-object v1, v0, Lcom/onesignal/LocationGMS$LocationPoint;->log:Ljava/lang/Double;

    .line 288
    :goto_2
    invoke-static {v0}, Lcom/onesignal/LocationGMS;->fireComplete(Lcom/onesignal/LocationGMS$LocationPoint;)V

    .line 289
    sget-object v1, Lcom/onesignal/LocationGMS;->classContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/onesignal/LocationGMS;->scheduleUpdate(Landroid/content/Context;)Z

    .line 290
    return-void

    :cond_0
    move v1, v3

    .line 273
    goto :goto_0

    :cond_1
    move v3, v2

    .line 274
    goto :goto_1

    .line 284
    :cond_2
    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iput-object v1, v0, Lcom/onesignal/LocationGMS$LocationPoint;->lat:Ljava/lang/Double;

    .line 285
    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iput-object v1, v0, Lcom/onesignal/LocationGMS$LocationPoint;->log:Ljava/lang/Double;

    goto :goto_2
.end method

.method static fireFailedComplete()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 231
    const/4 v0, 0x0

    sput-boolean v0, Lcom/onesignal/PermissionsActivity;->answered:Z

    .line 233
    sget-object v1, Lcom/onesignal/LocationGMS;->syncLock:Ljava/lang/Object;

    monitor-enter v1

    .line 234
    :try_start_0
    sget-object v0, Lcom/onesignal/LocationGMS;->mGoogleApiClient:Lcom/onesignal/GoogleApiClientCompatProxy;

    if-eqz v0, :cond_0

    .line 235
    sget-object v0, Lcom/onesignal/LocationGMS;->mGoogleApiClient:Lcom/onesignal/GoogleApiClientCompatProxy;

    invoke-virtual {v0}, Lcom/onesignal/GoogleApiClientCompatProxy;->disconnect()V

    .line 236
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/onesignal/LocationGMS;->mGoogleApiClient:Lcom/onesignal/GoogleApiClientCompatProxy;

    .line 237
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 239
    invoke-static {v2}, Lcom/onesignal/LocationGMS;->fireComplete(Lcom/onesignal/LocationGMS$LocationPoint;)V

    .line 240
    return-void

    .line 237
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static getApiFallbackWait()I
    .locals 1

    .prologue
    .line 211
    const/16 v0, 0x7530

    return v0
.end method

.method private static getLastLocationTime()J
    .locals 4

    .prologue
    .line 112
    sget-object v0, Lcom/onesignal/OneSignalPrefs;->PREFS_ONESIGNAL:Ljava/lang/String;

    const-string v1, "OS_LAST_LOCATION_TIME"

    const-wide/32 v2, -0x927c0

    invoke-static {v0, v1, v2, v3}, Lcom/onesignal/OneSignalPrefs;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method static getLocation(Landroid/content/Context;ZLcom/onesignal/LocationGMS$LocationHandler;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "promptLocation"    # Z
    .param p2, "handler"    # Lcom/onesignal/LocationGMS$LocationHandler;

    .prologue
    .line 125
    sput-object p0, Lcom/onesignal/LocationGMS;->classContext:Landroid/content/Context;

    .line 126
    sget-object v5, Lcom/onesignal/LocationGMS;->locationHandlers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {p2}, Lcom/onesignal/LocationGMS$LocationHandler;->getType()Lcom/onesignal/LocationGMS$CALLBACK_TYPE;

    move-result-object v6

    invoke-virtual {v5, v6, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    sget-boolean v5, Lcom/onesignal/OneSignal;->shareLocation:Z

    if-nez v5, :cond_0

    .line 129
    invoke-static {}, Lcom/onesignal/LocationGMS;->fireFailedComplete()V

    .line 174
    :goto_0
    return-void

    .line 133
    :cond_0
    const/4 v0, -0x1

    .line 135
    .local v0, "locationCoarsePermission":I
    const-string v5, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {p0, v5}, Lcom/onesignal/AndroidSupportV4Compat$ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 136
    .local v1, "locationFinePermission":I
    const/4 v5, -0x1

    if-ne v1, v5, :cond_1

    .line 137
    const-string v5, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {p0, v5}, Lcom/onesignal/AndroidSupportV4Compat$ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 138
    const/4 v5, 0x1

    sput-boolean v5, Lcom/onesignal/LocationGMS;->locationCoarse:Z

    .line 141
    :cond_1
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x17

    if-ge v5, v6, :cond_3

    .line 142
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 143
    const/4 v5, 0x0

    invoke-interface {p2, v5}, Lcom/onesignal/LocationGMS$LocationHandler;->complete(Lcom/onesignal/LocationGMS$LocationPoint;)V

    goto :goto_0

    .line 147
    :cond_2
    invoke-static {}, Lcom/onesignal/LocationGMS;->startGetLocation()V

    goto :goto_0

    .line 150
    :cond_3
    if-eqz v1, :cond_8

    .line 152
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x1000

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 153
    .local v2, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v5, v2, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 154
    .local v3, "permissionList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v5, "android.permission.ACCESS_FINE_LOCATION"

    invoke-interface {v3, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 155
    const-string v5, "android.permission.ACCESS_FINE_LOCATION"

    sput-object v5, Lcom/onesignal/LocationGMS;->requestPermission:Ljava/lang/String;

    .line 161
    :cond_4
    :goto_1
    sget-object v5, Lcom/onesignal/LocationGMS;->requestPermission:Ljava/lang/String;

    if-eqz v5, :cond_6

    if-eqz p1, :cond_6

    .line 162
    invoke-static {}, Lcom/onesignal/PermissionsActivity;->startPrompt()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 167
    .end local v2    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v3    # "permissionList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v4

    .line 168
    .local v4, "t":Ljava/lang/Throwable;
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 156
    .end local v4    # "t":Ljava/lang/Throwable;
    .restart local v2    # "packageInfo":Landroid/content/pm/PackageInfo;
    .restart local v3    # "permissionList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_5
    :try_start_1
    const-string v5, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-interface {v3, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 157
    if-eqz v0, :cond_4

    .line 158
    const-string v5, "android.permission.ACCESS_COARSE_LOCATION"

    sput-object v5, Lcom/onesignal/LocationGMS;->requestPermission:Ljava/lang/String;

    goto :goto_1

    .line 163
    :cond_6
    if-nez v0, :cond_7

    .line 164
    invoke-static {}, Lcom/onesignal/LocationGMS;->startGetLocation()V

    goto :goto_0

    .line 166
    :cond_7
    invoke-static {}, Lcom/onesignal/LocationGMS;->fireFailedComplete()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 172
    .end local v2    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v3    # "permissionList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_8
    invoke-static {}, Lcom/onesignal/LocationGMS;->startGetLocation()V

    goto :goto_0
.end method

.method private static hasLocationPermission(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 120
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {p0, v0}, Lcom/onesignal/AndroidSupportV4Compat$ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    .line 121
    invoke-static {p0, v0}, Lcom/onesignal/AndroidSupportV4Compat$ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 120
    :goto_0
    return v0

    .line 121
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static onFocusChange()V
    .locals 4

    .prologue
    .line 293
    sget-object v2, Lcom/onesignal/LocationGMS;->syncLock:Ljava/lang/Object;

    monitor-enter v2

    .line 294
    :try_start_0
    sget-object v1, Lcom/onesignal/LocationGMS;->mGoogleApiClient:Lcom/onesignal/GoogleApiClientCompatProxy;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/onesignal/LocationGMS;->mGoogleApiClient:Lcom/onesignal/GoogleApiClientCompatProxy;

    invoke-virtual {v1}, Lcom/onesignal/GoogleApiClientCompatProxy;->realInstance()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v1

    if-nez v1, :cond_1

    .line 295
    :cond_0
    monitor-exit v2

    .line 304
    .local v0, "googleApiClient":Lcom/google/android/gms/common/api/GoogleApiClient;
    :goto_0
    return-void

    .line 297
    .end local v0    # "googleApiClient":Lcom/google/android/gms/common/api/GoogleApiClient;
    :cond_1
    sget-object v1, Lcom/onesignal/LocationGMS;->mGoogleApiClient:Lcom/onesignal/GoogleApiClientCompatProxy;

    invoke-virtual {v1}, Lcom/onesignal/GoogleApiClientCompatProxy;->realInstance()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    .line 299
    .restart local v0    # "googleApiClient":Lcom/google/android/gms/common/api/GoogleApiClient;
    sget-object v1, Lcom/onesignal/LocationGMS;->locationUpdateListener:Lcom/onesignal/LocationGMS$LocationUpdateListener;

    if-eqz v1, :cond_2

    .line 300
    sget-object v1, Lcom/google/android/gms/location/LocationServices;->FusedLocationApi:Lcom/google/android/gms/location/FusedLocationProviderApi;

    sget-object v3, Lcom/onesignal/LocationGMS;->locationUpdateListener:Lcom/onesignal/LocationGMS$LocationUpdateListener;

    invoke-interface {v1, v0, v3}, Lcom/google/android/gms/location/FusedLocationProviderApi;->removeLocationUpdates(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/location/LocationListener;)Lcom/google/android/gms/common/api/PendingResult;

    .line 302
    :cond_2
    new-instance v1, Lcom/onesignal/LocationGMS$LocationUpdateListener;

    invoke-direct {v1, v0}, Lcom/onesignal/LocationGMS$LocationUpdateListener;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    sput-object v1, Lcom/onesignal/LocationGMS;->locationUpdateListener:Lcom/onesignal/LocationGMS$LocationUpdateListener;

    .line 303
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static scheduleUpdate(Landroid/content/Context;)Z
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 95
    invoke-static {p0}, Lcom/onesignal/LocationGMS;->hasLocationPermission(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_0

    sget-boolean v6, Lcom/onesignal/OneSignal;->shareLocation:Z

    if-nez v6, :cond_1

    .line 96
    :cond_0
    const/4 v6, 0x0

    .line 103
    :goto_0
    return v6

    .line 98
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {}, Lcom/onesignal/LocationGMS;->getLastLocationTime()J

    move-result-wide v8

    sub-long v0, v6, v8

    .line 99
    .local v0, "lastTime":J
    const-wide/16 v8, 0x3e8

    invoke-static {}, Lcom/onesignal/OneSignal;->isForeground()Z

    move-result v6

    if-eqz v6, :cond_2

    const-wide/16 v6, 0x12c

    :goto_1
    mul-long v2, v8, v6

    .line 100
    .local v2, "minTime":J
    sub-long v4, v2, v0

    .line 102
    .local v4, "scheduleTime":J
    invoke-static {p0, v4, v5}, Lcom/onesignal/OneSignalSyncServiceUtils;->scheduleLocationUpdateTask(Landroid/content/Context;J)V

    .line 103
    const/4 v6, 0x1

    goto :goto_0

    .line 99
    .end local v2    # "minTime":J
    .end local v4    # "scheduleTime":J
    :cond_2
    const-wide/16 v6, 0x258

    goto :goto_1
.end method

.method private static setLastLocationTime(J)V
    .locals 2
    .param p0, "time"    # J

    .prologue
    .line 107
    sget-object v0, Lcom/onesignal/OneSignalPrefs;->PREFS_ONESIGNAL:Ljava/lang/String;

    const-string v1, "OS_LAST_LOCATION_TIME"

    invoke-static {v0, v1, p0, p1}, Lcom/onesignal/OneSignalPrefs;->saveLong(Ljava/lang/String;Ljava/lang/String;J)V

    .line 109
    return-void
.end method

.method private static startFallBackThread()V
    .locals 3

    .prologue
    .line 215
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/onesignal/LocationGMS$2;

    invoke-direct {v1}, Lcom/onesignal/LocationGMS$2;-><init>()V

    const-string v2, "OS_GMS_LOCATION_FALLBACK"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    sput-object v0, Lcom/onesignal/LocationGMS;->fallbackFailThread:Ljava/lang/Thread;

    .line 227
    sget-object v0, Lcom/onesignal/LocationGMS;->fallbackFailThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 228
    return-void
.end method

.method static startGetLocation()V
    .locals 6

    .prologue
    .line 179
    sget-object v3, Lcom/onesignal/LocationGMS;->fallbackFailThread:Ljava/lang/Thread;

    if-eqz v3, :cond_0

    .line 208
    .local v2, "t":Ljava/lang/Throwable;
    :goto_0
    return-void

    .line 183
    .end local v2    # "t":Ljava/lang/Throwable;
    :cond_0
    :try_start_0
    sget-object v4, Lcom/onesignal/LocationGMS;->syncLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    :try_start_1
    invoke-static {}, Lcom/onesignal/LocationGMS;->startFallBackThread()V

    .line 186
    sget-object v3, Lcom/onesignal/LocationGMS;->locationHandlerThread:Lcom/onesignal/LocationGMS$LocationHandlerThread;

    if-nez v3, :cond_1

    .line 187
    new-instance v3, Lcom/onesignal/LocationGMS$LocationHandlerThread;

    invoke-direct {v3}, Lcom/onesignal/LocationGMS$LocationHandlerThread;-><init>()V

    sput-object v3, Lcom/onesignal/LocationGMS;->locationHandlerThread:Lcom/onesignal/LocationGMS$LocationHandlerThread;

    .line 189
    :cond_1
    sget-object v3, Lcom/onesignal/LocationGMS;->mGoogleApiClient:Lcom/onesignal/GoogleApiClientCompatProxy;

    if-eqz v3, :cond_2

    sget-object v3, Lcom/onesignal/LocationGMS;->mLastLocation:Landroid/location/Location;

    if-nez v3, :cond_4

    .line 190
    :cond_2
    new-instance v1, Lcom/onesignal/LocationGMS$GoogleApiClientListener;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/onesignal/LocationGMS$GoogleApiClientListener;-><init>(Lcom/onesignal/LocationGMS$1;)V

    .line 191
    .local v1, "googleApiClientListener":Lcom/onesignal/LocationGMS$GoogleApiClientListener;
    new-instance v3, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    sget-object v5, Lcom/onesignal/LocationGMS;->classContext:Landroid/content/Context;

    invoke-direct {v3, v5}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;)V

    sget-object v5, Lcom/google/android/gms/location/LocationServices;->API:Lcom/google/android/gms/common/api/Api;

    .line 192
    invoke-virtual {v3, v5}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v3

    .line 193
    invoke-virtual {v3, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v3

    .line 194
    invoke-virtual {v3, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addOnConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v3

    sget-object v5, Lcom/onesignal/LocationGMS;->locationHandlerThread:Lcom/onesignal/LocationGMS$LocationHandlerThread;

    iget-object v5, v5, Lcom/onesignal/LocationGMS$LocationHandlerThread;->mHandler:Landroid/os/Handler;

    .line 195
    invoke-virtual {v3, v5}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->setHandler(Landroid/os/Handler;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v3

    .line 196
    invoke-virtual {v3}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    .line 197
    .local v0, "googleApiClient":Lcom/google/android/gms/common/api/GoogleApiClient;
    new-instance v3, Lcom/onesignal/GoogleApiClientCompatProxy;

    invoke-direct {v3, v0}, Lcom/onesignal/GoogleApiClientCompatProxy;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    sput-object v3, Lcom/onesignal/LocationGMS;->mGoogleApiClient:Lcom/onesignal/GoogleApiClientCompatProxy;

    .line 199
    sget-object v3, Lcom/onesignal/LocationGMS;->mGoogleApiClient:Lcom/onesignal/GoogleApiClientCompatProxy;

    invoke-virtual {v3}, Lcom/onesignal/GoogleApiClientCompatProxy;->connect()V

    .line 203
    .end local v0    # "googleApiClient":Lcom/google/android/gms/common/api/GoogleApiClient;
    .end local v1    # "googleApiClientListener":Lcom/onesignal/LocationGMS$GoogleApiClientListener;
    :cond_3
    :goto_1
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 204
    :catch_0
    move-exception v2

    .line 205
    .restart local v2    # "t":Ljava/lang/Throwable;
    sget-object v3, Lcom/onesignal/OneSignal$LOG_LEVEL;->WARN:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v4, "Location permission exists but there was an error initializing: "

    invoke-static {v3, v4, v2}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 206
    invoke-static {}, Lcom/onesignal/LocationGMS;->fireFailedComplete()V

    goto :goto_0

    .line 201
    .end local v2    # "t":Ljava/lang/Throwable;
    :cond_4
    :try_start_3
    sget-object v3, Lcom/onesignal/LocationGMS;->mLastLocation:Landroid/location/Location;

    if-eqz v3, :cond_3

    .line 202
    sget-object v3, Lcom/onesignal/LocationGMS;->mLastLocation:Landroid/location/Location;

    invoke-static {v3}, Lcom/onesignal/LocationGMS;->fireCompleteForLocation(Landroid/location/Location;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method
