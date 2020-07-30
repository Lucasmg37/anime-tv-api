.class final Lcom/onesignal/OneSignal$21;
.super Ljava/lang/Object;
.source "OneSignal.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/OneSignal;->clearOneSignalNotifications()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 2342
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 16

    .prologue
    .line 2345
    sget-object v1, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    const-string v3, "notification"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/NotificationManager;

    .line 2347
    .local v11, "notificationManager":Landroid/app/NotificationManager;
    sget-object v1, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/onesignal/OneSignalDbHelper;->getInstance(Landroid/content/Context;)Lcom/onesignal/OneSignalDbHelper;

    move-result-object v9

    .line 2348
    .local v9, "dbHelper":Lcom/onesignal/OneSignalDbHelper;
    const/4 v8, 0x0

    .line 2350
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {v9}, Lcom/onesignal/OneSignalDbHelper;->getReadableDbWithRetries()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2352
    .local v0, "readableDb":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "android_notification_id"

    aput-object v3, v2, v1

    .line 2354
    .local v2, "retColumn":[Ljava/lang/String;
    const-string v1, "notification"

    const-string v3, "dismissed = 0 AND opened = 0"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 2365
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2367
    :cond_0
    const-string v1, "android_notification_id"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 2368
    .local v10, "existingId":I
    invoke-virtual {v11, v10}, Landroid/app/NotificationManager;->cancel(I)V

    .line 2369
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 2374
    .end local v10    # "existingId":I
    :cond_1
    const/4 v15, 0x0

    .line 2376
    .local v15, "writableDb":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_1
    invoke-virtual {v9}, Lcom/onesignal/OneSignalDbHelper;->getWritableDbWithRetries()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v15

    .line 2377
    invoke-virtual {v15}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2379
    const-string v14, "opened = 0"

    .line 2380
    .local v14, "whereStr":Ljava/lang/String;
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 2381
    .local v13, "values":Landroid/content/ContentValues;
    const-string v1, "dismissed"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v13, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2382
    const-string v1, "notification"

    const/4 v3, 0x0

    invoke-virtual {v15, v1, v13, v14, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2383
    invoke-virtual {v15}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2387
    if-eqz v15, :cond_2

    .line 2389
    :try_start_2
    invoke-virtual {v15}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2396
    .end local v13    # "values":Landroid/content/ContentValues;
    .end local v14    # "whereStr":Ljava/lang/String;
    :cond_2
    :goto_0
    const/4 v1, 0x0

    :try_start_3
    sget-object v3, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {v1, v3}, Lcom/onesignal/BadgeCountUpdater;->updateCount(ILandroid/content/Context;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2400
    if-eqz v8, :cond_3

    .line 2401
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 2403
    .end local v0    # "readableDb":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "retColumn":[Ljava/lang/String;
    .end local v15    # "writableDb":Landroid/database/sqlite/SQLiteDatabase;
    :cond_3
    :goto_1
    return-void

    .line 2390
    .restart local v0    # "readableDb":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v2    # "retColumn":[Ljava/lang/String;
    .restart local v13    # "values":Landroid/content/ContentValues;
    .restart local v14    # "whereStr":Ljava/lang/String;
    .restart local v15    # "writableDb":Landroid/database/sqlite/SQLiteDatabase;
    :catch_0
    move-exception v12

    .line 2391
    .local v12, "t":Ljava/lang/Throwable;
    :try_start_4
    sget-object v1, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v3, "Error closing transaction! "

    invoke-static {v1, v3, v12}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 2397
    .end local v0    # "readableDb":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "retColumn":[Ljava/lang/String;
    .end local v12    # "t":Ljava/lang/Throwable;
    .end local v13    # "values":Landroid/content/ContentValues;
    .end local v14    # "whereStr":Ljava/lang/String;
    .end local v15    # "writableDb":Landroid/database/sqlite/SQLiteDatabase;
    :catch_1
    move-exception v12

    .line 2398
    .restart local v12    # "t":Ljava/lang/Throwable;
    :try_start_5
    sget-object v1, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v3, "Error canceling all notifications! "

    invoke-static {v1, v3, v12}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2400
    if-eqz v8, :cond_3

    .line 2401
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 2384
    .end local v12    # "t":Ljava/lang/Throwable;
    .restart local v0    # "readableDb":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v2    # "retColumn":[Ljava/lang/String;
    .restart local v15    # "writableDb":Landroid/database/sqlite/SQLiteDatabase;
    :catch_2
    move-exception v12

    .line 2385
    .restart local v12    # "t":Ljava/lang/Throwable;
    :try_start_6
    sget-object v1, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v3, "Error marking all notifications as dismissed! "

    invoke-static {v1, v3, v12}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 2387
    if-eqz v15, :cond_2

    .line 2389
    :try_start_7
    invoke-virtual {v15}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_0

    .line 2390
    :catch_3
    move-exception v12

    .line 2391
    :try_start_8
    sget-object v1, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v3, "Error closing transaction! "

    invoke-static {v1, v3, v12}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_0

    .line 2400
    .end local v0    # "readableDb":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "retColumn":[Ljava/lang/String;
    .end local v12    # "t":Ljava/lang/Throwable;
    .end local v15    # "writableDb":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_0
    move-exception v1

    if-eqz v8, :cond_4

    .line 2401
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v1

    .line 2387
    .restart local v0    # "readableDb":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v2    # "retColumn":[Ljava/lang/String;
    .restart local v15    # "writableDb":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_1
    move-exception v1

    if-eqz v15, :cond_5

    .line 2389
    :try_start_9
    invoke-virtual {v15}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 2392
    :cond_5
    :goto_2
    :try_start_a
    throw v1

    .line 2390
    :catch_4
    move-exception v12

    .line 2391
    .restart local v12    # "t":Ljava/lang/Throwable;
    sget-object v3, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v4, "Error closing transaction! "

    invoke-static {v3, v4, v12}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_2
.end method
