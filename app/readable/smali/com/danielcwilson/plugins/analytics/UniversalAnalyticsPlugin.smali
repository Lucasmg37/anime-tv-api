.class public Lcom/danielcwilson/plugins/analytics/UniversalAnalyticsPlugin;
.super Lorg/apache/cordova/CordovaPlugin;
.source "UniversalAnalyticsPlugin.java"


# static fields
.field public static final ADD_DIMENSION:Ljava/lang/String; = "addCustomDimension"

.field public static final ADD_TRANSACTION:Ljava/lang/String; = "addTransaction"

.field public static final ADD_TRANSACTION_ITEM:Ljava/lang/String; = "addTransactionItem"

.field public static final DEBUG_MODE:Ljava/lang/String; = "debugMode"

.field public static final DISPATCH:Ljava/lang/String; = "dispatch"

.field public static final ENABLE_UNCAUGHT_EXCEPTION_REPORTING:Ljava/lang/String; = "enableUncaughtExceptionReporting"

.field public static final GET_VAR:Ljava/lang/String; = "getVar"

.field public static final SET_ALLOW_IDFA_COLLECTION:Ljava/lang/String; = "setAllowIDFACollection"

.field public static final SET_ANONYMIZE_IP:Ljava/lang/String; = "setAnonymizeIp"

.field public static final SET_APP_VERSION:Ljava/lang/String; = "setAppVersion"

.field public static final SET_OPT_OUT:Ljava/lang/String; = "setOptOut"

.field public static final SET_USER_ID:Ljava/lang/String; = "setUserId"

.field public static final SET_VAR:Ljava/lang/String; = "setVar"

.field public static final START_TRACKER:Ljava/lang/String; = "startTrackerWithId"

.field public static final TRACK_EVENT:Ljava/lang/String; = "trackEvent"

.field public static final TRACK_EXCEPTION:Ljava/lang/String; = "trackException"

.field public static final TRACK_METRIC:Ljava/lang/String; = "trackMetric"

.field public static final TRACK_TIMING:Ljava/lang/String; = "trackTiming"

.field public static final TRACK_VIEW:Ljava/lang/String; = "trackView"


# instance fields
.field public customDimensions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public customMetrics:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public debugModeEnabled:Ljava/lang/Boolean;

.field public tracker:Lcom/google/android/gms/analytics/Tracker;

.field public trackerStarted:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 19
    invoke-direct {p0}, Lorg/apache/cordova/CordovaPlugin;-><init>()V

    .line 41
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/danielcwilson/plugins/analytics/UniversalAnalyticsPlugin;->trackerStarted:Ljava/lang/Boolean;

    .line 42
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/danielcwilson/plugins/analytics/UniversalAnalyticsPlugin;->debugModeEnabled:Ljava/lang/Boolean;

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/danielcwilson/plugins/analytics/UniversalAnalyticsPlugin;->customDimensions:Ljava/util/HashMap;

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/danielcwilson/plugins/analytics/UniversalAnalyticsPlugin;->customMetrics:Ljava/util/HashMap;

    return-void
.end method

.method private addCustomDimension(Ljava/lang/Integer;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/Integer;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "callbackContext"    # Lorg/apache/cordova/CallbackContext;

    .prologue
    .line 155
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gtz v0, :cond_0

    .line 156
    const-string v0, "Expected positive integer argument for key."

    invoke-virtual {p3, v0}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    .line 168
    :goto_0
    return-void

    .line 160
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 162
    :cond_1
    iget-object v0, p0, Lcom/danielcwilson/plugins/analytics/UniversalAnalyticsPlugin;->customDimensions:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    const-string v0, "custom dimension stopped"

    invoke-virtual {p3, v0}, Lorg/apache/cordova/CallbackContext;->success(Ljava/lang/String;)V

    goto :goto_0

    .line 165
    :cond_2
    iget-object v0, p0, Lcom/danielcwilson/plugins/analytics/UniversalAnalyticsPlugin;->customDimensions:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    const-string v0, "custom dimension started"

    invoke-virtual {p3, v0}, Lorg/apache/cordova/CallbackContext;->success(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private addCustomDimensionsAndMetricsToHitBuilder(Ljava/lang/Object;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)V"
        }
    .end annotation

    .prologue
    .line 174
    .local p1, "builder":Ljava/lang/Object;, "TT;"
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "setCustomDimension"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-class v9, Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 176
    .local v0, "builderMethod":Ljava/lang/reflect/Method;
    iget-object v5, p0, Lcom/danielcwilson/plugins/analytics/UniversalAnalyticsPlugin;->customDimensions:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 177
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 178
    .local v3, "key":Ljava/lang/Integer;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    .line 180
    .local v4, "value":Ljava/lang/String;
    const/4 v6, 0x2

    :try_start_1
    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    const/4 v7, 0x1

    aput-object v4, v6, v7

    invoke-virtual {v0, p1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 181
    :catch_0
    move-exception v6

    goto :goto_0

    .line 187
    .end local v0    # "builderMethod":Ljava/lang/reflect/Method;
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v3    # "key":Ljava/lang/Integer;
    .end local v4    # "value":Ljava/lang/String;
    :catch_1
    move-exception v5

    .line 191
    :cond_0
    :goto_1
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "setCustomMetric"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    sget-object v9, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 193
    .restart local v0    # "builderMethod":Ljava/lang/reflect/Method;
    iget-object v5, p0, Lcom/danielcwilson/plugins/analytics/UniversalAnalyticsPlugin;->customMetrics:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 194
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Float;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 195
    .restart local v3    # "key":Ljava/lang/Integer;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_3

    .line 197
    .local v4, "value":Ljava/lang/Float;
    const/4 v6, 0x2

    :try_start_3
    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    const/4 v7, 0x1

    aput-object v4, v6, v7

    invoke-virtual {v0, p1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_2

    .line 198
    :catch_2
    move-exception v6

    goto :goto_2

    .line 204
    .end local v0    # "builderMethod":Ljava/lang/reflect/Method;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Float;>;"
    .end local v3    # "key":Ljava/lang/Integer;
    .end local v4    # "value":Ljava/lang/Float;
    :catch_3
    move-exception v5

    .line 206
    :cond_1
    :goto_3
    return-void

    .line 203
    :catch_4
    move-exception v5

    goto :goto_3

    .line 200
    .restart local v0    # "builderMethod":Ljava/lang/reflect/Method;
    .restart local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Float;>;"
    .restart local v3    # "key":Ljava/lang/Integer;
    .restart local v4    # "value":Ljava/lang/Float;
    :catch_5
    move-exception v6

    goto :goto_2

    .line 199
    :catch_6
    move-exception v6

    goto :goto_2

    .line 186
    .end local v0    # "builderMethod":Ljava/lang/reflect/Method;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Float;>;"
    .end local v3    # "key":Ljava/lang/Integer;
    .end local v4    # "value":Ljava/lang/Float;
    :catch_7
    move-exception v5

    goto :goto_1

    .line 183
    .restart local v0    # "builderMethod":Ljava/lang/reflect/Method;
    .restart local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v3    # "key":Ljava/lang/Integer;
    .local v4, "value":Ljava/lang/String;
    :catch_8
    move-exception v6

    goto :goto_0

    .line 182
    :catch_9
    move-exception v6

    goto :goto_0
.end method

.method private addTransaction(Ljava/lang/String;Ljava/lang/String;DDDLjava/lang/String;Lorg/apache/cordova/CallbackContext;)V
    .locals 3
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "affiliation"    # Ljava/lang/String;
    .param p3, "revenue"    # D
    .param p5, "tax"    # D
    .param p7, "shipping"    # D
    .param p9, "currencyCode"    # Ljava/lang/String;
    .param p10, "callbackContext"    # Lorg/apache/cordova/CallbackContext;

    .prologue
    .line 323
    iget-object v1, p0, Lcom/danielcwilson/plugins/analytics/UniversalAnalyticsPlugin;->trackerStarted:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 324
    const-string v1, "Tracker not started"

    invoke-virtual {p10, v1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    .line 338
    :goto_0
    return-void

    .line 328
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 329
    new-instance v0, Lcom/google/android/gms/analytics/HitBuilders$TransactionBuilder;

    invoke-direct {v0}, Lcom/google/android/gms/analytics/HitBuilders$TransactionBuilder;-><init>()V

    .line 330
    .local v0, "hitBuilder":Lcom/google/android/gms/analytics/HitBuilders$TransactionBuilder;
    invoke-direct {p0, v0}, Lcom/danielcwilson/plugins/analytics/UniversalAnalyticsPlugin;->addCustomDimensionsAndMetricsToHitBuilder(Ljava/lang/Object;)V

    .line 332
    iget-object v1, p0, Lcom/danielcwilson/plugins/analytics/UniversalAnalyticsPlugin;->tracker:Lcom/google/android/gms/analytics/Tracker;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/analytics/HitBuilders$TransactionBuilder;->setTransactionId(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$TransactionBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/google/android/gms/analytics/HitBuilders$TransactionBuilder;->setAffiliation(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$TransactionBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Lcom/google/android/gms/analytics/HitBuilders$TransactionBuilder;->setRevenue(D)Lcom/google/android/gms/analytics/HitBuilders$TransactionBuilder;

    move-result-object v2

    invoke-virtual {v2, p5, p6}, Lcom/google/android/gms/analytics/HitBuilders$TransactionBuilder;->setTax(D)Lcom/google/android/gms/analytics/HitBuilders$TransactionBuilder;

    move-result-object v2

    .line 333
    invoke-virtual {v2, p7, p8}, Lcom/google/android/gms/analytics/HitBuilders$TransactionBuilder;->setShipping(D)Lcom/google/android/gms/analytics/HitBuilders$TransactionBuilder;

    move-result-object v2

    invoke-virtual {v2, p9}, Lcom/google/android/gms/analytics/HitBuilders$TransactionBuilder;->setCurrencyCode(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$TransactionBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/analytics/HitBuilders$TransactionBuilder;->build()Ljava/util/Map;

    move-result-object v2

    .line 332
    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 334
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Add Transaction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p10, v1}, Lorg/apache/cordova/CallbackContext;->success(Ljava/lang/String;)V

    goto :goto_0

    .line 336
    .end local v0    # "hitBuilder":Lcom/google/android/gms/analytics/HitBuilders$TransactionBuilder;
    :cond_1
    const-string v1, "Expected non-empty ID."

    invoke-virtual {p10, v1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private addTransactionItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DJLjava/lang/String;Lorg/apache/cordova/CallbackContext;)V
    .locals 3
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "sku"    # Ljava/lang/String;
    .param p4, "category"    # Ljava/lang/String;
    .param p5, "price"    # D
    .param p7, "quantity"    # J
    .param p9, "currencyCode"    # Ljava/lang/String;
    .param p10, "callbackContext"    # Lorg/apache/cordova/CallbackContext;

    .prologue
    .line 342
    iget-object v1, p0, Lcom/danielcwilson/plugins/analytics/UniversalAnalyticsPlugin;->trackerStarted:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 343
    const-string v1, "Tracker not started"

    invoke-virtual {p10, v1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    .line 357
    :goto_0
    return-void

    .line 347
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 348
    new-instance v0, Lcom/google/android/gms/analytics/HitBuilders$ItemBuilder;

    invoke-direct {v0}, Lcom/google/android/gms/analytics/HitBuilders$ItemBuilder;-><init>()V

    .line 349
    .local v0, "hitBuilder":Lcom/google/android/gms/analytics/HitBuilders$ItemBuilder;
    invoke-direct {p0, v0}, Lcom/danielcwilson/plugins/analytics/UniversalAnalyticsPlugin;->addCustomDimensionsAndMetricsToHitBuilder(Ljava/lang/Object;)V

    .line 351
    iget-object v1, p0, Lcom/danielcwilson/plugins/analytics/UniversalAnalyticsPlugin;->tracker:Lcom/google/android/gms/analytics/Tracker;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/analytics/HitBuilders$ItemBuilder;->setTransactionId(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$ItemBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/google/android/gms/analytics/HitBuilders$ItemBuilder;->setName(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$ItemBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/google/android/gms/analytics/HitBuilders$ItemBuilder;->setSku(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$ItemBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Lcom/google/android/gms/analytics/HitBuilders$ItemBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$ItemBuilder;

    move-result-object v2

    invoke-virtual {v2, p5, p6}, Lcom/google/android/gms/analytics/HitBuilders$ItemBuilder;->setPrice(D)Lcom/google/android/gms/analytics/HitBuilders$ItemBuilder;

    move-result-object v2

    .line 352
    invoke-virtual {v2, p7, p8}, Lcom/google/android/gms/analytics/HitBuilders$ItemBuilder;->setQuantity(J)Lcom/google/android/gms/analytics/HitBuilders$ItemBuilder;

    move-result-object v2

    invoke-virtual {v2, p9}, Lcom/google/android/gms/analytics/HitBuilders$ItemBuilder;->setCurrencyCode(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$ItemBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/analytics/HitBuilders$ItemBuilder;->build()Ljava/util/Map;

    move-result-object v2

    .line 351
    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 353
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Add Transaction Item: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p10, v1}, Lorg/apache/cordova/CallbackContext;->success(Ljava/lang/String;)V

    goto :goto_0

    .line 355
    .end local v0    # "hitBuilder":Lcom/google/android/gms/analytics/HitBuilders$ItemBuilder;
    :cond_1
    const-string v1, "Expected non-empty ID."

    invoke-virtual {p10, v1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private debugMode(Lorg/apache/cordova/CallbackContext;)V
    .locals 2
    .param p1, "callbackContext"    # Lorg/apache/cordova/CallbackContext;

    .prologue
    const/4 v1, 0x1

    .line 405
    iget-object v0, p0, Lcom/danielcwilson/plugins/analytics/UniversalAnalyticsPlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/GoogleAnalytics;->setDryRun(Z)V

    .line 407
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/danielcwilson/plugins/analytics/UniversalAnalyticsPlugin;->debugModeEnabled:Ljava/lang/Boolean;

    .line 408
    const-string v0, "debugMode enabled"

    invoke-virtual {p1, v0}, Lorg/apache/cordova/CallbackContext;->success(Ljava/lang/String;)V

    .line 409
    return-void
.end method

.method private dispatch(Lorg/apache/cordova/CallbackContext;)V
    .locals 1
    .param p1, "callbackContext"    # Lorg/apache/cordova/CallbackContext;

    .prologue
    .line 380
    iget-object v0, p0, Lcom/danielcwilson/plugins/analytics/UniversalAnalyticsPlugin;->trackerStarted:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 381
    const-string v0, "Tracker not started"

    invoke-virtual {p1, v0}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    .line 387
    :goto_0
    return-void

    .line 385
    :cond_0
    iget-object v0, p0, Lcom/danielcwilson/plugins/analytics/UniversalAnalyticsPlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->dispatchLocalHits()V

    .line 386
    const-string v0, "dispatch sent"

    invoke-virtual {p1, v0}, Lorg/apache/cordova/CallbackContext;->success(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private enableUncaughtExceptionReporting(Ljava/lang/Boolean;Lorg/apache/cordova/CallbackContext;)V
    .locals 2
    .param p1, "enable"    # Ljava/lang/Boolean;
    .param p2, "callbackContext"    # Lorg/apache/cordova/CallbackContext;

    .prologue
    .line 452
    iget-object v0, p0, Lcom/danielcwilson/plugins/analytics/UniversalAnalyticsPlugin;->trackerStarted:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 453
    const-string v0, "Tracker not started"

    invoke-virtual {p2, v0}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    .line 459
    :goto_0
    return-void

    .line 457
    :cond_0
    iget-object v0, p0, Lcom/danielcwilson/plugins/analytics/UniversalAnalyticsPlugin;->tracker:Lcom/google/android/gms/analytics/Tracker;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->enableExceptionReporting(Z)V

    .line 458
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Enabled"

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " uncaught exception reporting"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/apache/cordova/CallbackContext;->success(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "Disabled"

    goto :goto_1
.end method

.method private getVar(Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V
    .locals 2
    .param p1, "variable"    # Ljava/lang/String;
    .param p2, "callbackContext"    # Lorg/apache/cordova/CallbackContext;

    .prologue
    .line 390
    iget-object v1, p0, Lcom/danielcwilson/plugins/analytics/UniversalAnalyticsPlugin;->trackerStarted:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 391
    const-string v1, "Tracker not started"

    invoke-virtual {p2, v1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    .line 397
    :goto_0
    return-void

    .line 395
    :cond_0
    iget-object v1, p0, Lcom/danielcwilson/plugins/analytics/UniversalAnalyticsPlugin;->tracker:Lcom/google/android/gms/analytics/Tracker;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/analytics/Tracker;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 396
    .local v0, "result":Ljava/lang/String;
    invoke-virtual {p2, v0}, Lorg/apache/cordova/CallbackContext;->success(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setAllowIDFACollection(Ljava/lang/Boolean;Lorg/apache/cordova/CallbackContext;)V
    .locals 2
    .param p1, "enable"    # Ljava/lang/Boolean;
    .param p2, "callbackContext"    # Lorg/apache/cordova/CallbackContext;

    .prologue
    .line 360
    iget-object v0, p0, Lcom/danielcwilson/plugins/analytics/UniversalAnalyticsPlugin;->trackerStarted:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 361
    const-string v0, "Tracker not started"

    invoke-virtual {p2, v0}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    .line 367
    :goto_0
    return-void

    .line 365
    :cond_0
    iget-object v0, p0, Lcom/danielcwilson/plugins/analytics/UniversalAnalyticsPlugin;->tracker:Lcom/google/android/gms/analytics/Tracker;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->enableAdvertisingIdCollection(Z)V

    .line 366
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Enable Advertising Id Collection: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/apache/cordova/CallbackContext;->success(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setAnonymizeIp(ZLorg/apache/cordova/CallbackContext;)V
    .locals 2
    .param p1, "anonymize"    # Z
    .param p2, "callbackContext"    # Lorg/apache/cordova/CallbackContext;

    .prologue
    .line 412
    iget-object v0, p0, Lcom/danielcwilson/plugins/analytics/UniversalAnalyticsPlugin;->trackerStarted:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 413
    const-string v0, "Tracker not started"

    invoke-virtual {p2, v0}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    .line 419
    :goto_0
    return-void

    .line 417
    :cond_0
    iget-object v0, p0, Lcom/danielcwilson/plugins/analytics/UniversalAnalyticsPlugin;->tracker:Lcom/google/android/gms/analytics/Tracker;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/analytics/Tracker;->setAnonymizeIp(Z)V

    .line 418
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Set AnonymizeIp "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/apache/cordova/CallbackContext;->success(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setAppVersion(Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V
    .locals 2
    .param p1, "version"    # Ljava/lang/String;
    .param p2, "callbackContext"    # Lorg/apache/cordova/CallbackContext;

    .prologue
    .line 442
    iget-object v0, p0, Lcom/danielcwilson/plugins/analytics/UniversalAnalyticsPlugin;->trackerStarted:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 443
    const-string v0, "Tracker not started"

    invoke-virtual {p2, v0}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    .line 449
    :goto_0
    return-void

    .line 447
    :cond_0
    iget-object v0, p0, Lcom/danielcwilson/plugins/analytics/UniversalAnalyticsPlugin;->tracker:Lcom/google/android/gms/analytics/Tracker;

    const-string v1, "&av"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/analytics/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Set app version: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/apache/cordova/CallbackContext;->success(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setOptOut(ZLorg/apache/cordova/CallbackContext;)V
    .locals 2
    .param p1, "optout"    # Z
    .param p2, "callbackContext"    # Lorg/apache/cordova/CallbackContext;

    .prologue
    .line 422
    iget-object v0, p0, Lcom/danielcwilson/plugins/analytics/UniversalAnalyticsPlugin;->trackerStarted:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 423
    const-string v0, "Tracker not started"

    invoke-virtual {p2, v0}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    .line 429
    :goto_0
    return-void

    .line 427
    :cond_0
    iget-object v0, p0, Lcom/danielcwilson/plugins/analytics/UniversalAnalyticsPlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/analytics/GoogleAnalytics;->setAppOptOut(Z)V

    .line 428
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Set Opt-Out "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/apache/cordova/CallbackContext;->success(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setUserId(Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V
    .locals 2
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "callbackContext"    # Lorg/apache/cordova/CallbackContext;

    .prologue
    .line 432
    iget-object v0, p0, Lcom/danielcwilson/plugins/analytics/UniversalAnalyticsPlugin;->trackerStarted:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 433
    const-string v0, "Tracker not started"

    invoke-virtual {p2, v0}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    .line 439
    :goto_0
    return-void

    .line 437
    :cond_0
    iget-object v0, p0, Lcom/danielcwilson/plugins/analytics/UniversalAnalyticsPlugin;->tracker:Lcom/google/android/gms/analytics/Tracker;

    const-string v1, "&uid"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/analytics/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Set user id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/apache/cordova/CallbackContext;->success(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setVar(Ljava/lang/String;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V
    .locals 2
    .param p1, "variable"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "callbackContext"    # Lorg/apache/cordova/CallbackContext;

    .prologue
    .line 370
    iget-object v0, p0, Lcom/danielcwilson/plugins/analytics/UniversalAnalyticsPlugin;->trackerStarted:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 371
    const-string v0, "Tracker not started"

    invoke-virtual {p3, v0}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    .line 377
    :goto_0
    return-void

    .line 375
    :cond_0
    iget-object v0, p0, Lcom/danielcwilson/plugins/analytics/UniversalAnalyticsPlugin;->tracker:Lcom/google/android/gms/analytics/Tracker;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/analytics/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Set variable "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lorg/apache/cordova/CallbackContext;->success(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private startTracker(Ljava/lang/String;ILorg/apache/cordova/CallbackContext;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "dispatchPeriod"    # I
    .param p3, "callbackContext"    # Lorg/apache/cordova/CallbackContext;

    .prologue
    .line 144
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/danielcwilson/plugins/analytics/UniversalAnalyticsPlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/analytics/GoogleAnalytics;->newTracker(Ljava/lang/String;)Lcom/google/android/gms/analytics/Tracker;

    move-result-object v0

    iput-object v0, p0, Lcom/danielcwilson/plugins/analytics/UniversalAnalyticsPlugin;->tracker:Lcom/google/android/gms/analytics/Tracker;

    .line 146
    const-string v0, "tracker started"

    invoke-virtual {p3, v0}, Lorg/apache/cordova/CallbackContext;->success(Ljava/lang/String;)V

    .line 147
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/danielcwilson/plugins/analytics/UniversalAnalyticsPlugin;->trackerStarted:Ljava/lang/Boolean;

    .line 148
    iget-object v0, p0, Lcom/danielcwilson/plugins/analytics/UniversalAnalyticsPlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/analytics/GoogleAnalytics;->setLocalDispatchPeriod(I)V

    .line 152
    :goto_0
    return-void

    .line 150
    :cond_0
    const-string v0, "tracker id is not valid"

    invoke-virtual {p3, v0}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZLorg/apache/cordova/CallbackContext;)V
    .locals 4
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "label"    # Ljava/lang/String;
    .param p4, "value"    # J
    .param p6, "newSession"    # Z
    .param p7, "callbackContext"    # Lorg/apache/cordova/CallbackContext;

    .prologue
    .line 238
    iget-object v1, p0, Lcom/danielcwilson/plugins/analytics/UniversalAnalyticsPlugin;->trackerStarted:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 239
    const-string v1, "Tracker not started"

    invoke-virtual {p7, v1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    .line 259
    :goto_0
    return-void

    .line 243
    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 244
    new-instance v0, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    invoke-direct {v0}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;-><init>()V

    .line 245
    .local v0, "hitBuilder":Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;
    invoke-direct {p0, v0}, Lcom/danielcwilson/plugins/analytics/UniversalAnalyticsPlugin;->addCustomDimensionsAndMetricsToHitBuilder(Ljava/lang/Object;)V

    .line 247
    if-nez p6, :cond_1

    .line 248
    iget-object v1, p0, Lcom/danielcwilson/plugins/analytics/UniversalAnalyticsPlugin;->tracker:Lcom/google/android/gms/analytics/Tracker;

    .line 249
    invoke-virtual {v0, p1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setAction(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setLabel(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v2

    invoke-virtual {v2, p4, p5}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setValue(J)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object v2

    .line 248
    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 255
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Track Event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p7, v1}, Lorg/apache/cordova/CallbackContext;->success(Ljava/lang/String;)V

    goto :goto_0

    .line 251
    :cond_1
    iget-object v2, p0, Lcom/danielcwilson/plugins/analytics/UniversalAnalyticsPlugin;->tracker:Lcom/google/android/gms/analytics/Tracker;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setAction(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setLabel(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setValue(J)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    .line 252
    invoke-virtual {v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setNewSession()Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object v1

    .line 251
    invoke-virtual {v2, v1}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    goto :goto_1

    .line 257
    .end local v0    # "hitBuilder":Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;
    :cond_2
    const-string v1, "Expected non-empty string arguments."

    invoke-virtual {p7, v1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private trackException(Ljava/lang/String;Ljava/lang/Boolean;Lorg/apache/cordova/CallbackContext;)V
    .locals 4
    .param p1, "description"    # Ljava/lang/String;
    .param p2, "fatal"    # Ljava/lang/Boolean;
    .param p3, "callbackContext"    # Lorg/apache/cordova/CallbackContext;

    .prologue
    .line 286
    iget-object v1, p0, Lcom/danielcwilson/plugins/analytics/UniversalAnalyticsPlugin;->trackerStarted:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 287
    const-string v1, "Tracker not started"

    invoke-virtual {p3, v1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    .line 300
    :goto_0
    return-void

    .line 291
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 292
    new-instance v0, Lcom/google/android/gms/analytics/HitBuilders$ExceptionBuilder;

    invoke-direct {v0}, Lcom/google/android/gms/analytics/HitBuilders$ExceptionBuilder;-><init>()V

    .line 293
    .local v0, "hitBuilder":Lcom/google/android/gms/analytics/HitBuilders$ExceptionBuilder;
    invoke-direct {p0, v0}, Lcom/danielcwilson/plugins/analytics/UniversalAnalyticsPlugin;->addCustomDimensionsAndMetricsToHitBuilder(Ljava/lang/Object;)V

    .line 295
    iget-object v1, p0, Lcom/danielcwilson/plugins/analytics/UniversalAnalyticsPlugin;->tracker:Lcom/google/android/gms/analytics/Tracker;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/analytics/HitBuilders$ExceptionBuilder;->setDescription(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$ExceptionBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/analytics/HitBuilders$ExceptionBuilder;->setFatal(Z)Lcom/google/android/gms/analytics/HitBuilders$ExceptionBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/analytics/HitBuilders$ExceptionBuilder;->build()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 296
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Track Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Lorg/apache/cordova/CallbackContext;->success(Ljava/lang/String;)V

    goto :goto_0

    .line 298
    .end local v0    # "hitBuilder":Lcom/google/android/gms/analytics/HitBuilders$ExceptionBuilder;
    :cond_1
    const-string v1, "Expected non-empty string arguments."

    invoke-virtual {p3, v1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private trackMetric(Ljava/lang/Integer;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/Integer;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "callbackContext"    # Lorg/apache/cordova/CallbackContext;

    .prologue
    .line 262
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-gtz v2, :cond_0

    .line 263
    const-string v2, "Expected positive integer argument for key."

    invoke-virtual {p3, v2}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    .line 283
    :goto_0
    return-void

    .line 267
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 269
    :cond_1
    iget-object v2, p0, Lcom/danielcwilson/plugins/analytics/UniversalAnalyticsPlugin;->customMetrics:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    const-string v2, "custom metric stopped"

    invoke-virtual {p3, v2}, Lorg/apache/cordova/CallbackContext;->success(Ljava/lang/String;)V

    goto :goto_0

    .line 274
    :cond_2
    :try_start_0
    invoke-static {p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 280
    .local v1, "floatValue":Ljava/lang/Float;
    iget-object v2, p0, Lcom/danielcwilson/plugins/analytics/UniversalAnalyticsPlugin;->customMetrics:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    const-string v2, "custom metric started"

    invoke-virtual {p3, v2}, Lorg/apache/cordova/CallbackContext;->success(Ljava/lang/String;)V

    goto :goto_0

    .line 275
    .end local v1    # "floatValue":Ljava/lang/Float;
    :catch_0
    move-exception v0

    .line 276
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v2, "Expected string formatted number for value."

    invoke-virtual {p3, v2}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private trackTiming(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V
    .locals 4
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "intervalInMilliseconds"    # J
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "label"    # Ljava/lang/String;
    .param p6, "callbackContext"    # Lorg/apache/cordova/CallbackContext;

    .prologue
    .line 304
    iget-object v1, p0, Lcom/danielcwilson/plugins/analytics/UniversalAnalyticsPlugin;->trackerStarted:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 305
    const-string v1, "Tracker not started"

    invoke-virtual {p6, v1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    .line 319
    :goto_0
    return-void

    .line 309
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 310
    new-instance v0, Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;

    invoke-direct {v0}, Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;-><init>()V

    .line 311
    .local v0, "hitBuilder":Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;
    invoke-direct {p0, v0}, Lcom/danielcwilson/plugins/analytics/UniversalAnalyticsPlugin;->addCustomDimensionsAndMetricsToHitBuilder(Ljava/lang/Object;)V

    .line 313
    iget-object v1, p0, Lcom/danielcwilson/plugins/analytics/UniversalAnalyticsPlugin;->tracker:Lcom/google/android/gms/analytics/Tracker;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;->setValue(J)Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;->setVariable(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;

    move-result-object v2

    .line 314
    invoke-virtual {v2, p5}, Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;->setLabel(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;->build()Ljava/util/Map;

    move-result-object v2

    .line 313
    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 315
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Track Timing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p6, v1}, Lorg/apache/cordova/CallbackContext;->success(Ljava/lang/String;)V

    goto :goto_0

    .line 317
    .end local v0    # "hitBuilder":Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;
    :cond_1
    const-string v1, "Expected non-empty string arguments."

    invoke-virtual {p6, v1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private trackView(Ljava/lang/String;Ljava/lang/String;ZLorg/apache/cordova/CallbackContext;)V
    .locals 3
    .param p1, "screenname"    # Ljava/lang/String;
    .param p2, "campaignUrl"    # Ljava/lang/String;
    .param p3, "newSession"    # Z
    .param p4, "callbackContext"    # Lorg/apache/cordova/CallbackContext;

    .prologue
    .line 209
    iget-object v1, p0, Lcom/danielcwilson/plugins/analytics/UniversalAnalyticsPlugin;->trackerStarted:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 210
    const-string v1, "Tracker not started"

    invoke-virtual {p4, v1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    .line 234
    :goto_0
    return-void

    .line 214
    :cond_0
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 215
    iget-object v1, p0, Lcom/danielcwilson/plugins/analytics/UniversalAnalyticsPlugin;->tracker:Lcom/google/android/gms/analytics/Tracker;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/analytics/Tracker;->setScreenName(Ljava/lang/String;)V

    .line 217
    new-instance v0, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;

    invoke-direct {v0}, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;-><init>()V

    .line 218
    .local v0, "hitBuilder":Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;
    invoke-direct {p0, v0}, Lcom/danielcwilson/plugins/analytics/UniversalAnalyticsPlugin;->addCustomDimensionsAndMetricsToHitBuilder(Ljava/lang/Object;)V

    .line 220
    const-string v1, ""

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 221
    invoke-virtual {v0, p2}, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;->setCampaignParamsFromUrl(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    .line 224
    :cond_1
    if-nez p3, :cond_2

    .line 225
    iget-object v1, p0, Lcom/danielcwilson/plugins/analytics/UniversalAnalyticsPlugin;->tracker:Lcom/google/android/gms/analytics/Tracker;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;->build()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 230
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Track Screen: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v1}, Lorg/apache/cordova/CallbackContext;->success(Ljava/lang/String;)V

    goto :goto_0

    .line 227
    :cond_2
    iget-object v2, p0, Lcom/danielcwilson/plugins/analytics/UniversalAnalyticsPlugin;->tracker:Lcom/google/android/gms/analytics/Tracker;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;->setNewSession()Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;->build()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    goto :goto_1

    .line 232
    .end local v0    # "hitBuilder":Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;
    :cond_3
    const-string v1, "Expected one non-empty string argument."

    invoke-virtual {p4, v1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public execute(Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)Z
    .locals 30
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "args"    # Lorg/json/JSONArray;
    .param p3, "callbackContext"    # Lorg/apache/cordova/CallbackContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 50
    const-string v4, "startTrackerWithId"

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 51
    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 52
    .local v21, "id":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lorg/json/JSONArray;->length()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_0

    const/4 v4, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getInt(I)I

    move-result v18

    .line 53
    .local v18, "dispatchPeriod":I
    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v18

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Lcom/danielcwilson/plugins/analytics/UniversalAnalyticsPlugin;->startTracker(Ljava/lang/String;ILorg/apache/cordova/CallbackContext;)V

    .line 54
    const/4 v4, 0x1

    .line 140
    .end local v18    # "dispatchPeriod":I
    .end local v21    # "id":Ljava/lang/String;
    :goto_1
    return v4

    .line 52
    .restart local v21    # "id":Ljava/lang/String;
    :cond_0
    const/16 v18, 0x1e

    goto :goto_0

    .line 55
    .end local v21    # "id":Ljava/lang/String;
    :cond_1
    const-string v4, "trackView"

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 56
    invoke-virtual/range {p2 .. p2}, Lorg/json/JSONArray;->length()I

    move-result v23

    .line 57
    .local v23, "length":I
    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 58
    .local v25, "screen":Ljava/lang/String;
    const/4 v4, 0x1

    move/from16 v0, v23

    if-le v0, v4, :cond_2

    const/4 v4, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_2

    const/4 v4, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v5, v4

    :goto_2
    const/4 v4, 0x2

    move/from16 v0, v23

    if-le v0, v4, :cond_3

    const/4 v4, 0x2

    .line 59
    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_3

    const/4 v4, 0x2

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getBoolean(I)Z

    move-result v4

    .line 58
    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v5, v4, v2}, Lcom/danielcwilson/plugins/analytics/UniversalAnalyticsPlugin;->trackView(Ljava/lang/String;Ljava/lang/String;ZLorg/apache/cordova/CallbackContext;)V

    .line 60
    const/4 v4, 0x1

    goto :goto_1

    .line 58
    :cond_2
    const-string v4, ""

    move-object v5, v4

    goto :goto_2

    .line 59
    :cond_3
    const/4 v4, 0x0

    goto :goto_3

    .line 61
    .end local v23    # "length":I
    .end local v25    # "screen":Ljava/lang/String;
    :cond_4
    const-string v4, "trackEvent"

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 62
    invoke-virtual/range {p2 .. p2}, Lorg/json/JSONArray;->length()I

    move-result v23

    .line 63
    .restart local v23    # "length":I
    if-lez v23, :cond_5

    .line 64
    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v4, 0x1

    move/from16 v0, v23

    if-le v0, v4, :cond_6

    const/4 v4, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    :goto_4
    const/4 v4, 0x2

    move/from16 v0, v23

    if-le v0, v4, :cond_7

    const/4 v4, 0x2

    .line 65
    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    :goto_5
    const/4 v4, 0x3

    move/from16 v0, v23

    if-le v0, v4, :cond_8

    const/4 v4, 0x3

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v8

    :goto_6
    const/4 v4, 0x4

    move/from16 v0, v23

    if-le v0, v4, :cond_9

    const/4 v4, 0x4

    .line 66
    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getBoolean(I)Z

    move-result v10

    :goto_7
    move-object/from16 v4, p0

    move-object/from16 v11, p3

    .line 64
    invoke-direct/range {v4 .. v11}, Lcom/danielcwilson/plugins/analytics/UniversalAnalyticsPlugin;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZLorg/apache/cordova/CallbackContext;)V

    .line 68
    :cond_5
    const/4 v4, 0x1

    goto/16 :goto_1

    .line 64
    :cond_6
    const-string v6, ""

    goto :goto_4

    .line 65
    :cond_7
    const-string v7, ""

    goto :goto_5

    :cond_8
    const-wide/16 v8, 0x0

    goto :goto_6

    .line 66
    :cond_9
    const/4 v10, 0x0

    goto :goto_7

    .line 69
    .end local v23    # "length":I
    :cond_a
    const-string v4, "trackException"

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 70
    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 71
    .local v17, "description":Ljava/lang/String;
    const/4 v4, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getBoolean(I)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    .line 72
    .local v20, "fatal":Ljava/lang/Boolean;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v20

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Lcom/danielcwilson/plugins/analytics/UniversalAnalyticsPlugin;->trackException(Ljava/lang/String;Ljava/lang/Boolean;Lorg/apache/cordova/CallbackContext;)V

    .line 73
    const/4 v4, 0x1

    goto/16 :goto_1

    .line 74
    .end local v17    # "description":Ljava/lang/String;
    .end local v20    # "fatal":Ljava/lang/Boolean;
    :cond_b
    const-string v4, "trackTiming"

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 75
    invoke-virtual/range {p2 .. p2}, Lorg/json/JSONArray;->length()I

    move-result v23

    .line 76
    .restart local v23    # "length":I
    if-lez v23, :cond_c

    .line 77
    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v4, 0x1

    move/from16 v0, v23

    if-le v0, v4, :cond_d

    const/4 v4, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v6

    :goto_8
    const/4 v4, 0x2

    move/from16 v0, v23

    if-le v0, v4, :cond_e

    const/4 v4, 0x2

    .line 78
    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    :goto_9
    const/4 v4, 0x3

    move/from16 v0, v23

    if-le v0, v4, :cond_f

    const/4 v4, 0x3

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    :goto_a
    move-object/from16 v4, p0

    move-object/from16 v10, p3

    .line 77
    invoke-direct/range {v4 .. v10}, Lcom/danielcwilson/plugins/analytics/UniversalAnalyticsPlugin;->trackTiming(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    .line 80
    :cond_c
    const/4 v4, 0x1

    goto/16 :goto_1

    .line 77
    :cond_d
    const-wide/16 v6, 0x0

    goto :goto_8

    .line 78
    :cond_e
    const-string v8, ""

    goto :goto_9

    :cond_f
    const-string v9, ""

    goto :goto_a

    .line 81
    .end local v23    # "length":I
    :cond_10
    const-string v4, "trackMetric"

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 82
    invoke-virtual/range {p2 .. p2}, Lorg/json/JSONArray;->length()I

    move-result v23

    .line 83
    .restart local v23    # "length":I
    if-lez v23, :cond_11

    .line 84
    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v4, 0x1

    move/from16 v0, v23

    if-le v0, v4, :cond_12

    const/4 v4, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    :goto_b
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v5, v4, v1}, Lcom/danielcwilson/plugins/analytics/UniversalAnalyticsPlugin;->trackMetric(Ljava/lang/Integer;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    .line 86
    :cond_11
    const/4 v4, 0x1

    goto/16 :goto_1

    .line 84
    :cond_12
    const-string v4, ""

    goto :goto_b

    .line 87
    .end local v23    # "length":I
    :cond_13
    const-string v4, "addCustomDimension"

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 88
    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    .line 89
    .local v22, "key":Ljava/lang/Integer;
    const/4 v4, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v27

    .line 90
    .local v27, "value":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v27

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Lcom/danielcwilson/plugins/analytics/UniversalAnalyticsPlugin;->addCustomDimension(Ljava/lang/Integer;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    .line 91
    const/4 v4, 0x1

    goto/16 :goto_1

    .line 92
    .end local v22    # "key":Ljava/lang/Integer;
    .end local v27    # "value":Ljava/lang/String;
    :cond_14
    const-string v4, "addTransaction"

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 93
    invoke-virtual/range {p2 .. p2}, Lorg/json/JSONArray;->length()I

    move-result v23

    .line 94
    .restart local v23    # "length":I
    if-lez v23, :cond_15

    .line 95
    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v4, 0x1

    move/from16 v0, v23

    if-le v0, v4, :cond_16

    const/4 v4, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    :goto_c
    const/4 v4, 0x2

    move/from16 v0, v23

    if-le v0, v4, :cond_17

    const/4 v4, 0x2

    .line 96
    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v8

    :goto_d
    const/4 v4, 0x3

    move/from16 v0, v23

    if-le v0, v4, :cond_18

    const/4 v4, 0x3

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v10

    :goto_e
    const/4 v4, 0x4

    move/from16 v0, v23

    if-le v0, v4, :cond_19

    const/4 v4, 0x4

    .line 97
    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v12

    :goto_f
    const/4 v4, 0x5

    move/from16 v0, v23

    if-le v0, v4, :cond_1a

    const/4 v4, 0x5

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v14

    :goto_10
    move-object/from16 v5, p0

    move-object/from16 v15, p3

    .line 95
    invoke-direct/range {v5 .. v15}, Lcom/danielcwilson/plugins/analytics/UniversalAnalyticsPlugin;->addTransaction(Ljava/lang/String;Ljava/lang/String;DDDLjava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    .line 99
    :cond_15
    const/4 v4, 0x1

    goto/16 :goto_1

    .line 95
    :cond_16
    const-string v7, ""

    goto :goto_c

    .line 96
    :cond_17
    const-wide/16 v8, 0x0

    goto :goto_d

    :cond_18
    const-wide/16 v10, 0x0

    goto :goto_e

    .line 97
    :cond_19
    const-wide/16 v12, 0x0

    goto :goto_f

    :cond_1a
    const/4 v14, 0x0

    goto :goto_10

    .line 100
    .end local v23    # "length":I
    :cond_1b
    const-string v4, "addTransactionItem"

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_23

    .line 101
    invoke-virtual/range {p2 .. p2}, Lorg/json/JSONArray;->length()I

    move-result v23

    .line 102
    .restart local v23    # "length":I
    if-lez v23, :cond_1c

    .line 103
    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v4, 0x1

    move/from16 v0, v23

    if-le v0, v4, :cond_1d

    const/4 v4, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    :goto_11
    const/4 v4, 0x2

    move/from16 v0, v23

    if-le v0, v4, :cond_1e

    const/4 v4, 0x2

    .line 104
    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    :goto_12
    const/4 v4, 0x3

    move/from16 v0, v23

    if-le v0, v4, :cond_1f

    const/4 v4, 0x3

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    :goto_13
    const/4 v4, 0x4

    move/from16 v0, v23

    if-le v0, v4, :cond_20

    const/4 v4, 0x4

    .line 105
    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v10

    :goto_14
    const/4 v4, 0x5

    move/from16 v0, v23

    if-le v0, v4, :cond_21

    const/4 v4, 0x5

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v12

    :goto_15
    const/4 v4, 0x6

    move/from16 v0, v23

    if-le v0, v4, :cond_22

    const/4 v4, 0x6

    .line 106
    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v14

    :goto_16
    move-object/from16 v5, p0

    move-object/from16 v15, p3

    .line 103
    invoke-direct/range {v5 .. v15}, Lcom/danielcwilson/plugins/analytics/UniversalAnalyticsPlugin;->addTransactionItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DJLjava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    .line 108
    :cond_1c
    const/4 v4, 0x1

    goto/16 :goto_1

    .line 103
    :cond_1d
    const-string v7, ""

    goto :goto_11

    .line 104
    :cond_1e
    const-string v8, ""

    goto :goto_12

    :cond_1f
    const-string v9, ""

    goto :goto_13

    .line 105
    :cond_20
    const-wide/16 v10, 0x0

    goto :goto_14

    :cond_21
    const-wide/16 v12, 0x0

    goto :goto_15

    .line 106
    :cond_22
    const/4 v14, 0x0

    goto :goto_16

    .line 109
    .end local v23    # "length":I
    :cond_23
    const-string v4, "setAllowIDFACollection"

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_25

    .line 110
    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getBoolean(I)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v4, v1}, Lcom/danielcwilson/plugins/analytics/UniversalAnalyticsPlugin;->setAllowIDFACollection(Ljava/lang/Boolean;Lorg/apache/cordova/CallbackContext;)V

    .line 140
    :cond_24
    :goto_17
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 111
    :cond_25
    const-string v4, "setUserId"

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 112
    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v26

    .line 113
    .local v26, "userId":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/danielcwilson/plugins/analytics/UniversalAnalyticsPlugin;->setUserId(Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    goto :goto_17

    .line 114
    .end local v26    # "userId":Ljava/lang/String;
    :cond_26
    const-string v4, "setAnonymizeIp"

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 115
    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getBoolean(I)Z

    move-result v16

    .line 116
    .local v16, "anonymize":Z
    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/danielcwilson/plugins/analytics/UniversalAnalyticsPlugin;->setAnonymizeIp(ZLorg/apache/cordova/CallbackContext;)V

    goto :goto_17

    .line 117
    .end local v16    # "anonymize":Z
    :cond_27
    const-string v4, "setOptOut"

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_28

    .line 118
    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getBoolean(I)Z

    move-result v24

    .line 119
    .local v24, "optout":Z
    move-object/from16 v0, p0

    move/from16 v1, v24

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/danielcwilson/plugins/analytics/UniversalAnalyticsPlugin;->setOptOut(ZLorg/apache/cordova/CallbackContext;)V

    goto :goto_17

    .line 120
    .end local v24    # "optout":Z
    :cond_28
    const-string v4, "setAppVersion"

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_29

    .line 121
    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v29

    .line 122
    .local v29, "version":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/danielcwilson/plugins/analytics/UniversalAnalyticsPlugin;->setAppVersion(Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    goto :goto_17

    .line 123
    .end local v29    # "version":Ljava/lang/String;
    :cond_29
    const-string v4, "getVar"

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 124
    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v28

    .line 125
    .local v28, "variable":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/danielcwilson/plugins/analytics/UniversalAnalyticsPlugin;->getVar(Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    goto/16 :goto_17

    .line 126
    .end local v28    # "variable":Ljava/lang/String;
    :cond_2a
    const-string v4, "setVar"

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 127
    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v28

    .line 128
    .restart local v28    # "variable":Ljava/lang/String;
    const/4 v4, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v27

    .line 129
    .restart local v27    # "value":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v27

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Lcom/danielcwilson/plugins/analytics/UniversalAnalyticsPlugin;->setVar(Ljava/lang/String;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    .line 130
    const/4 v4, 0x1

    goto/16 :goto_1

    .line 131
    .end local v27    # "value":Ljava/lang/String;
    .end local v28    # "variable":Ljava/lang/String;
    :cond_2b
    const-string v4, "dispatch"

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 132
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/danielcwilson/plugins/analytics/UniversalAnalyticsPlugin;->dispatch(Lorg/apache/cordova/CallbackContext;)V

    .line 133
    const/4 v4, 0x1

    goto/16 :goto_1

    .line 134
    :cond_2c
    const-string v4, "debugMode"

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 135
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/danielcwilson/plugins/analytics/UniversalAnalyticsPlugin;->debugMode(Lorg/apache/cordova/CallbackContext;)V

    goto/16 :goto_17

    .line 136
    :cond_2d
    const-string v4, "enableUncaughtExceptionReporting"

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_24

    .line 137
    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getBoolean(I)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    .line 138
    .local v19, "enable":Ljava/lang/Boolean;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/danielcwilson/plugins/analytics/UniversalAnalyticsPlugin;->enableUncaughtExceptionReporting(Ljava/lang/Boolean;Lorg/apache/cordova/CallbackContext;)V

    goto/16 :goto_17
.end method
