.class Lcom/onesignal/NotificationChannelManager;
.super Ljava/lang/Object;
.source "NotificationChannelManager.java"


# static fields
.field private static final DEFAULT_CHANNEL_ID:Ljava/lang/String; = "fcm_fallback_notification_channel"

.field private static final RESTORE_CHANNEL_ID:Ljava/lang/String; = "restored_OS_notifications"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createChannel(Landroid/content/Context;Landroid/app/NotificationManager;Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 20
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "notificationManager"    # Landroid/app/NotificationManager;
    .param p2, "payload"    # Lorg/json/JSONObject;
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x1a
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 97
    const-string v18, "chnl"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    .line 98
    .local v13, "objChannelPayload":Ljava/lang/Object;
    const/4 v4, 0x0

    .line 99
    .local v4, "channelPayload":Lorg/json/JSONObject;
    instance-of v0, v13, Ljava/lang/String;

    move/from16 v18, v0

    if-eqz v18, :cond_6

    .line 100
    new-instance v4, Lorg/json/JSONObject;

    .end local v4    # "channelPayload":Lorg/json/JSONObject;
    check-cast v13, Ljava/lang/String;

    .end local v13    # "objChannelPayload":Ljava/lang/Object;
    invoke-direct {v4, v13}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 104
    .restart local v4    # "channelPayload":Lorg/json/JSONObject;
    :goto_0
    const-string v18, "id"

    const-string v19, "fcm_fallback_notification_channel"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 106
    .local v5, "channel_id":Ljava/lang/String;
    const-string v18, "miscellaneous"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 107
    const-string v5, "fcm_fallback_notification_channel"

    .line 109
    :cond_0
    move-object v14, v4

    .line 110
    .local v14, "payloadWithText":Lorg/json/JSONObject;
    const-string v18, "langs"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 111
    const-string v18, "langs"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    .line 112
    .local v11, "langList":Lorg/json/JSONObject;
    invoke-static {}, Lcom/onesignal/OSUtils;->getCorrectedLanguage()Ljava/lang/String;

    move-result-object v7

    .line 113
    .local v7, "deviceLanguage":Ljava/lang/String;
    invoke-virtual {v11, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 114
    invoke-virtual {v11, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v14

    .line 117
    .end local v7    # "deviceLanguage":Ljava/lang/String;
    .end local v11    # "langList":Lorg/json/JSONObject;
    :cond_1
    const-string v18, "nm"

    const-string v19, "Miscellaneous"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 119
    .local v6, "channel_name":Ljava/lang/String;
    const-string v18, "pri"

    const/16 v19, 0x6

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v18

    invoke-static/range {v18 .. v18}, Lcom/onesignal/NotificationChannelManager;->priorityToImportance(I)I

    move-result v10

    .line 120
    .local v10, "importance":I
    new-instance v3, Landroid/app/NotificationChannel;

    invoke-direct {v3, v5, v6, v10}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 121
    .local v3, "channel":Landroid/app/NotificationChannel;
    const-string v18, "dscr"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    .line 123
    const-string v18, "grp_id"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 124
    const-string v18, "grp_id"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 125
    .local v8, "group_id":Ljava/lang/String;
    const-string v18, "grp_nm"

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 126
    .local v9, "group_name":Ljava/lang/CharSequence;
    new-instance v18, Landroid/app/NotificationChannelGroup;

    move-object/from16 v0, v18

    invoke-direct {v0, v8, v9}, Landroid/app/NotificationChannelGroup;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->createNotificationChannelGroup(Landroid/app/NotificationChannelGroup;)V

    .line 127
    invoke-virtual {v3, v8}, Landroid/app/NotificationChannel;->setGroup(Ljava/lang/String;)V

    .line 130
    .end local v8    # "group_id":Ljava/lang/String;
    .end local v9    # "group_name":Ljava/lang/CharSequence;
    :cond_2
    const-string v18, "ledc"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 131
    new-instance v12, Ljava/math/BigInteger;

    const-string v18, "ledc"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x10

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v12, v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 132
    .local v12, "ledColor":Ljava/math/BigInteger;
    invoke-virtual {v12}, Ljava/math/BigInteger;->intValue()I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/app/NotificationChannel;->setLightColor(I)V

    .line 134
    .end local v12    # "ledColor":Ljava/math/BigInteger;
    :cond_3
    const-string v18, "led"

    const/16 v19, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_7

    const/16 v18, 0x1

    :goto_1
    move/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/app/NotificationChannel;->enableLights(Z)V

    .line 136
    const-string v18, "vib_pt"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 137
    invoke-static/range {p2 .. p2}, Lcom/onesignal/OSUtils;->parseVibrationPattern(Lorg/json/JSONObject;)[J

    move-result-object v17

    .line 138
    .local v17, "vibrationPattern":[J
    if-eqz v17, :cond_4

    .line 139
    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/app/NotificationChannel;->setVibrationPattern([J)V

    .line 141
    .end local v17    # "vibrationPattern":[J
    :cond_4
    const-string v18, "vib"

    const/16 v19, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_8

    const/16 v18, 0x1

    :goto_2
    move/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    .line 143
    const-string v18, "sound"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 145
    const-string v18, "sound"

    const/16 v19, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 146
    .local v15, "sound":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-static {v0, v15}, Lcom/onesignal/OSUtils;->getSoundUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v16

    .line 147
    .local v16, "uri":Landroid/net/Uri;
    if-eqz v16, :cond_9

    .line 148
    const/16 v18, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    .line 156
    .end local v15    # "sound":Ljava/lang/String;
    .end local v16    # "uri":Landroid/net/Uri;
    :cond_5
    :goto_3
    const-string v18, "vis"

    const/16 v19, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    .line 157
    const-string v18, "bdg"

    const/16 v19, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_b

    const/16 v18, 0x1

    :goto_4
    move/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    .line 158
    const-string v18, "bdnd"

    const/16 v19, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_c

    const/16 v18, 0x1

    :goto_5
    move/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/app/NotificationChannel;->setBypassDnd(Z)V

    .line 160
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 161
    return-object v5

    .end local v3    # "channel":Landroid/app/NotificationChannel;
    .end local v5    # "channel_id":Ljava/lang/String;
    .end local v6    # "channel_name":Ljava/lang/String;
    .end local v10    # "importance":I
    .end local v14    # "payloadWithText":Lorg/json/JSONObject;
    .restart local v13    # "objChannelPayload":Ljava/lang/Object;
    :cond_6
    move-object v4, v13

    .line 102
    check-cast v4, Lorg/json/JSONObject;

    goto/16 :goto_0

    .line 134
    .end local v13    # "objChannelPayload":Ljava/lang/Object;
    .restart local v3    # "channel":Landroid/app/NotificationChannel;
    .restart local v5    # "channel_id":Ljava/lang/String;
    .restart local v6    # "channel_name":Ljava/lang/String;
    .restart local v10    # "importance":I
    .restart local v14    # "payloadWithText":Lorg/json/JSONObject;
    :cond_7
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 141
    :cond_8
    const/16 v18, 0x0

    goto/16 :goto_2

    .line 149
    .restart local v15    # "sound":Ljava/lang/String;
    .restart local v16    # "uri":Landroid/net/Uri;
    :cond_9
    const-string v18, "null"

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_a

    const-string v18, "nil"

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 150
    :cond_a
    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v3, v0, v1}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    goto :goto_3

    .line 157
    .end local v15    # "sound":Ljava/lang/String;
    .end local v16    # "uri":Landroid/net/Uri;
    :cond_b
    const/16 v18, 0x0

    goto :goto_4

    .line 158
    :cond_c
    const/16 v18, 0x0

    goto :goto_5
.end method

.method private static createDefaultChannel(Landroid/app/NotificationManager;)Ljava/lang/String;
    .locals 5
    .param p0, "notificationManager"    # Landroid/app/NotificationManager;
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x1a
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 166
    new-instance v0, Landroid/app/NotificationChannel;

    const-string v1, "fcm_fallback_notification_channel"

    const-string v2, "Miscellaneous"

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 170
    .local v0, "channel":Landroid/app/NotificationChannel;
    invoke-virtual {v0, v4}, Landroid/app/NotificationChannel;->enableLights(Z)V

    .line 171
    invoke-virtual {v0, v4}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    .line 172
    invoke-virtual {p0, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 174
    const-string v1, "fcm_fallback_notification_channel"

    return-object v1
.end method

.method static createNotificationChannel(Lcom/onesignal/NotificationGenerationJob;)Ljava/lang/String;
    .locals 7
    .param p0, "notifJob"    # Lcom/onesignal/NotificationGenerationJob;

    .prologue
    .line 59
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1a

    if-ge v5, v6, :cond_1

    .line 60
    const-string v4, "fcm_fallback_notification_channel"

    .line 87
    :cond_0
    :goto_0
    return-object v4

    .line 62
    :cond_1
    iget-object v0, p0, Lcom/onesignal/NotificationGenerationJob;->context:Landroid/content/Context;

    .line 63
    .local v0, "context":Landroid/content/Context;
    iget-object v2, p0, Lcom/onesignal/NotificationGenerationJob;->jsonPayload:Lorg/json/JSONObject;

    .line 65
    .local v2, "jsonPayload":Lorg/json/JSONObject;
    const-string v5, "notification"

    .line 66
    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 68
    .local v3, "notificationManager":Landroid/app/NotificationManager;
    iget-boolean v5, p0, Lcom/onesignal/NotificationGenerationJob;->restoring:Z

    if-eqz v5, :cond_2

    .line 69
    invoke-static {v3}, Lcom/onesignal/NotificationChannelManager;->createRestoreChannel(Landroid/app/NotificationManager;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 72
    :cond_2
    const-string v5, "oth_chnl"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 73
    const-string v5, "oth_chnl"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 74
    .local v4, "otherChannel":Ljava/lang/String;
    invoke-virtual {v3, v4}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v5

    if-nez v5, :cond_0

    .line 78
    .end local v4    # "otherChannel":Ljava/lang/String;
    :cond_3
    const-string v5, "chnl"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 79
    invoke-static {v3}, Lcom/onesignal/NotificationChannelManager;->createDefaultChannel(Landroid/app/NotificationManager;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 82
    :cond_4
    :try_start_0
    invoke-static {v0, v3, v2}, Lcom/onesignal/NotificationChannelManager;->createChannel(Landroid/content/Context;Landroid/app/NotificationManager;Lorg/json/JSONObject;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_0

    .line 83
    :catch_0
    move-exception v1

    .line 84
    .local v1, "e":Lorg/json/JSONException;
    sget-object v5, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v6, "Could not create notification channel due to JSON payload error!"

    invoke-static {v5, v6, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 87
    const-string v4, "fcm_fallback_notification_channel"

    goto :goto_0
.end method

.method private static createRestoreChannel(Landroid/app/NotificationManager;)Ljava/lang/String;
    .locals 4
    .param p0, "notificationManager"    # Landroid/app/NotificationManager;
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x1a
    .end annotation

    .prologue
    .line 179
    new-instance v0, Landroid/app/NotificationChannel;

    const-string v1, "restored_OS_notifications"

    const-string v2, "Restored"

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 183
    .local v0, "channel":Landroid/app/NotificationChannel;
    invoke-virtual {p0, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 185
    const-string v1, "restored_OS_notifications"

    return-object v1
.end method

.method private static priorityToImportance(I)I
    .locals 4
    .param p0, "priority"    # I

    .prologue
    const/4 v0, 0x5

    const/4 v1, 0x3

    const/4 v2, 0x1

    .line 220
    const/16 v3, 0x9

    if-le p0, v3, :cond_0

    .line 231
    :goto_0
    return v0

    .line 222
    :cond_0
    const/4 v3, 0x7

    if-le p0, v3, :cond_1

    .line 223
    const/4 v0, 0x4

    goto :goto_0

    .line 224
    :cond_1
    if-le p0, v0, :cond_2

    move v0, v1

    .line 225
    goto :goto_0

    .line 226
    :cond_2
    if-le p0, v1, :cond_3

    .line 227
    const/4 v0, 0x2

    goto :goto_0

    .line 228
    :cond_3
    if-le p0, v2, :cond_4

    move v0, v2

    .line 229
    goto :goto_0

    .line 231
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static processChannelList(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "payload"    # Lorg/json/JSONObject;

    .prologue
    .line 189
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x1a

    if-ge v9, v10, :cond_1

    .line 217
    :cond_0
    return-void

    .line 192
    :cond_1
    const-string v9, "chnl_lst"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 195
    const-string v9, "notification"

    .line 196
    invoke-virtual {p0, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/NotificationManager;

    .line 198
    .local v7, "notificationManager":Landroid/app/NotificationManager;
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 199
    .local v8, "sycnedChannelSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v9, "chnl_lst"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 200
    .local v0, "chnlList":Lorg/json/JSONArray;
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v6

    .line 201
    .local v6, "jsonArraySize":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v6, :cond_2

    .line 203
    :try_start_0
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    invoke-static {p0, v7, v9}, Lcom/onesignal/NotificationChannelManager;->createChannel(Landroid/content/Context;Landroid/app/NotificationManager;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 204
    :catch_0
    move-exception v1

    .line 205
    .local v1, "e":Lorg/json/JSONException;
    sget-object v9, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v10, "Could not create notification channel due to JSON payload error!"

    invoke-static {v9, v10, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 211
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_2
    invoke-virtual {v7}, Landroid/app/NotificationManager;->getNotificationChannels()Ljava/util/List;

    move-result-object v3

    .line 212
    .local v3, "existingChannels":Ljava/util/List;, "Ljava/util/List<Landroid/app/NotificationChannel;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_3
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationChannel;

    .line 213
    .local v2, "existingChannel":Landroid/app/NotificationChannel;
    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v5

    .line 214
    .local v5, "id":Ljava/lang/String;
    const-string v10, "OS_"

    invoke-virtual {v5, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v8, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 215
    invoke-virtual {v7, v5}, Landroid/app/NotificationManager;->deleteNotificationChannel(Ljava/lang/String;)V

    goto :goto_2
.end method
