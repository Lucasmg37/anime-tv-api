.class public Lco/frontyard/cordova/plugin/exoplayer/Plugin;
.super Lorg/apache/cordova/CordovaPlugin;
.source "Plugin.java"


# instance fields
.field private player:Lco/frontyard/cordova/plugin/exoplayer/Player;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lorg/apache/cordova/CordovaPlugin;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lco/frontyard/cordova/plugin/exoplayer/Plugin;)Lco/frontyard/cordova/plugin/exoplayer/Player;
    .locals 1
    .param p0, "x0"    # Lco/frontyard/cordova/plugin/exoplayer/Plugin;

    .prologue
    .line 31
    iget-object v0, p0, Lco/frontyard/cordova/plugin/exoplayer/Plugin;->player:Lco/frontyard/cordova/plugin/exoplayer/Player;

    return-object v0
.end method

.method static synthetic access$002(Lco/frontyard/cordova/plugin/exoplayer/Plugin;Lco/frontyard/cordova/plugin/exoplayer/Player;)Lco/frontyard/cordova/plugin/exoplayer/Player;
    .locals 0
    .param p0, "x0"    # Lco/frontyard/cordova/plugin/exoplayer/Plugin;
    .param p1, "x1"    # Lco/frontyard/cordova/plugin/exoplayer/Player;

    .prologue
    .line 31
    iput-object p1, p0, Lco/frontyard/cordova/plugin/exoplayer/Plugin;->player:Lco/frontyard/cordova/plugin/exoplayer/Player;

    return-object p1
.end method


# virtual methods
.method public execute(Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)Z
    .locals 22
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Lorg/json/JSONArray;
    .param p3, "callbackContext"    # Lorg/apache/cordova/CallbackContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 37
    move-object/from16 v6, p0

    .line 38
    .local v6, "self":Lco/frontyard/cordova/plugin/exoplayer/Plugin;
    :try_start_0
    const-string v4, "show"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 39
    move-object/from16 v0, p0

    iget-object v4, v0, Lco/frontyard/cordova/plugin/exoplayer/Plugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v4}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v4

    new-instance v5, Lco/frontyard/cordova/plugin/exoplayer/Plugin$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v5, v0, v6, v1, v2}, Lco/frontyard/cordova/plugin/exoplayer/Plugin$1;-><init>(Lco/frontyard/cordova/plugin/exoplayer/Plugin;Lco/frontyard/cordova/plugin/exoplayer/Plugin;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V

    invoke-virtual {v4, v5}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 50
    const/4 v4, 0x1

    .line 186
    :goto_0
    return v4

    .line 52
    :cond_0
    const-string v4, "setStream"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 53
    iget-object v4, v6, Lco/frontyard/cordova/plugin/exoplayer/Plugin;->player:Lco/frontyard/cordova/plugin/exoplayer/Player;

    if-nez v4, :cond_1

    .line 54
    const/4 v4, 0x0

    goto :goto_0

    .line 56
    :cond_1
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONArray;->optString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 57
    .local v7, "url":Ljava/lang/String;
    const/4 v4, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 58
    .local v8, "controller":Lorg/json/JSONObject;
    move-object/from16 v0, p0

    iget-object v4, v0, Lco/frontyard/cordova/plugin/exoplayer/Plugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v4}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v10

    new-instance v4, Lco/frontyard/cordova/plugin/exoplayer/Plugin$2;

    move-object/from16 v5, p0

    move-object/from16 v9, p3

    invoke-direct/range {v4 .. v9}, Lco/frontyard/cordova/plugin/exoplayer/Plugin$2;-><init>(Lco/frontyard/cordova/plugin/exoplayer/Plugin;Lco/frontyard/cordova/plugin/exoplayer/Plugin;Ljava/lang/String;Lorg/json/JSONObject;Lorg/apache/cordova/CallbackContext;)V

    invoke-virtual {v10, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 64
    const/4 v4, 0x1

    goto :goto_0

    .line 66
    .end local v7    # "url":Ljava/lang/String;
    .end local v8    # "controller":Lorg/json/JSONObject;
    :cond_2
    const-string v4, "playPause"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 67
    iget-object v4, v6, Lco/frontyard/cordova/plugin/exoplayer/Plugin;->player:Lco/frontyard/cordova/plugin/exoplayer/Player;

    if-nez v4, :cond_3

    .line 68
    const/4 v4, 0x0

    goto :goto_0

    .line 70
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lco/frontyard/cordova/plugin/exoplayer/Plugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v4}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v4

    new-instance v5, Lco/frontyard/cordova/plugin/exoplayer/Plugin$3;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v5, v0, v6, v1}, Lco/frontyard/cordova/plugin/exoplayer/Plugin$3;-><init>(Lco/frontyard/cordova/plugin/exoplayer/Plugin;Lco/frontyard/cordova/plugin/exoplayer/Plugin;Lorg/apache/cordova/CallbackContext;)V

    invoke-virtual {v4, v5}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 77
    const/4 v4, 0x1

    goto :goto_0

    .line 79
    :cond_4
    const-string v4, "stop"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 80
    iget-object v4, v6, Lco/frontyard/cordova/plugin/exoplayer/Plugin;->player:Lco/frontyard/cordova/plugin/exoplayer/Player;

    if-nez v4, :cond_5

    .line 81
    const/4 v4, 0x0

    goto :goto_0

    .line 83
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lco/frontyard/cordova/plugin/exoplayer/Plugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v4}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v4

    new-instance v5, Lco/frontyard/cordova/plugin/exoplayer/Plugin$4;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v5, v0, v6, v1}, Lco/frontyard/cordova/plugin/exoplayer/Plugin$4;-><init>(Lco/frontyard/cordova/plugin/exoplayer/Plugin;Lco/frontyard/cordova/plugin/exoplayer/Plugin;Lorg/apache/cordova/CallbackContext;)V

    invoke-virtual {v4, v5}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 90
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 92
    :cond_6
    const-string v4, "seekTo"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 93
    iget-object v4, v6, Lco/frontyard/cordova/plugin/exoplayer/Plugin;->player:Lco/frontyard/cordova/plugin/exoplayer/Player;

    if-nez v4, :cond_7

    .line 94
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 96
    :cond_7
    const/4 v4, 0x0

    const-wide/16 v10, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v10, v11}, Lorg/json/JSONArray;->optLong(IJ)J

    move-result-wide v12

    .line 97
    .local v12, "seekTo":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lco/frontyard/cordova/plugin/exoplayer/Plugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v4}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v4

    new-instance v9, Lco/frontyard/cordova/plugin/exoplayer/Plugin$5;

    move-object/from16 v10, p0

    move-object v11, v6

    move-object/from16 v14, p3

    invoke-direct/range {v9 .. v14}, Lco/frontyard/cordova/plugin/exoplayer/Plugin$5;-><init>(Lco/frontyard/cordova/plugin/exoplayer/Plugin;Lco/frontyard/cordova/plugin/exoplayer/Plugin;JLorg/apache/cordova/CallbackContext;)V

    invoke-virtual {v4, v9}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 103
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 105
    .end local v12    # "seekTo":J
    :cond_8
    const-string v4, "seekBy"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 106
    iget-object v4, v6, Lco/frontyard/cordova/plugin/exoplayer/Plugin;->player:Lco/frontyard/cordova/plugin/exoplayer/Player;

    if-nez v4, :cond_9

    .line 107
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 109
    :cond_9
    const/4 v4, 0x0

    const-wide/16 v10, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v10, v11}, Lorg/json/JSONArray;->optLong(IJ)J

    move-result-wide v18

    .line 110
    .local v18, "seekBy":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lco/frontyard/cordova/plugin/exoplayer/Plugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v4}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v4

    new-instance v15, Lco/frontyard/cordova/plugin/exoplayer/Plugin$6;

    move-object/from16 v16, p0

    move-object/from16 v17, v6

    move-object/from16 v20, p3

    invoke-direct/range {v15 .. v20}, Lco/frontyard/cordova/plugin/exoplayer/Plugin$6;-><init>(Lco/frontyard/cordova/plugin/exoplayer/Plugin;Lco/frontyard/cordova/plugin/exoplayer/Plugin;JLorg/apache/cordova/CallbackContext;)V

    invoke-virtual {v4, v15}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 116
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 118
    .end local v18    # "seekBy":J
    :cond_a
    const-string v4, "getState"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 119
    iget-object v4, v6, Lco/frontyard/cordova/plugin/exoplayer/Plugin;->player:Lco/frontyard/cordova/plugin/exoplayer/Player;

    if-nez v4, :cond_b

    .line 120
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 122
    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lco/frontyard/cordova/plugin/exoplayer/Plugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v4}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v4

    new-instance v5, Lco/frontyard/cordova/plugin/exoplayer/Plugin$7;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v5, v0, v6, v1}, Lco/frontyard/cordova/plugin/exoplayer/Plugin$7;-><init>(Lco/frontyard/cordova/plugin/exoplayer/Plugin;Lco/frontyard/cordova/plugin/exoplayer/Plugin;Lorg/apache/cordova/CallbackContext;)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 128
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 130
    :cond_c
    const-string v4, "showController"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 131
    iget-object v4, v6, Lco/frontyard/cordova/plugin/exoplayer/Plugin;->player:Lco/frontyard/cordova/plugin/exoplayer/Player;

    if-nez v4, :cond_d

    .line 132
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 134
    :cond_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lco/frontyard/cordova/plugin/exoplayer/Plugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v4}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v4

    new-instance v5, Lco/frontyard/cordova/plugin/exoplayer/Plugin$8;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v5, v0, v6, v1}, Lco/frontyard/cordova/plugin/exoplayer/Plugin$8;-><init>(Lco/frontyard/cordova/plugin/exoplayer/Plugin;Lco/frontyard/cordova/plugin/exoplayer/Plugin;Lorg/apache/cordova/CallbackContext;)V

    invoke-virtual {v4, v5}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 140
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 142
    :cond_e
    const-string v4, "hideController"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 143
    iget-object v4, v6, Lco/frontyard/cordova/plugin/exoplayer/Plugin;->player:Lco/frontyard/cordova/plugin/exoplayer/Player;

    if-nez v4, :cond_f

    .line 144
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 146
    :cond_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lco/frontyard/cordova/plugin/exoplayer/Plugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v4}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v4

    new-instance v5, Lco/frontyard/cordova/plugin/exoplayer/Plugin$9;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v5, v0, v6, v1}, Lco/frontyard/cordova/plugin/exoplayer/Plugin$9;-><init>(Lco/frontyard/cordova/plugin/exoplayer/Plugin;Lco/frontyard/cordova/plugin/exoplayer/Plugin;Lorg/apache/cordova/CallbackContext;)V

    invoke-virtual {v4, v5}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 152
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 154
    :cond_10
    const-string v4, "setController"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 155
    iget-object v4, v6, Lco/frontyard/cordova/plugin/exoplayer/Plugin;->player:Lco/frontyard/cordova/plugin/exoplayer/Player;

    if-nez v4, :cond_11

    .line 156
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 158
    :cond_11
    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 159
    .restart local v8    # "controller":Lorg/json/JSONObject;
    move-object/from16 v0, p0

    iget-object v4, v0, Lco/frontyard/cordova/plugin/exoplayer/Plugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v4}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v4

    new-instance v5, Lco/frontyard/cordova/plugin/exoplayer/Plugin$10;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v5, v0, v6, v8, v1}, Lco/frontyard/cordova/plugin/exoplayer/Plugin$10;-><init>(Lco/frontyard/cordova/plugin/exoplayer/Plugin;Lco/frontyard/cordova/plugin/exoplayer/Plugin;Lorg/json/JSONObject;Lorg/apache/cordova/CallbackContext;)V

    invoke-virtual {v4, v5}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 165
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 167
    .end local v8    # "controller":Lorg/json/JSONObject;
    :cond_12
    const-string v4, "close"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 168
    iget-object v4, v6, Lco/frontyard/cordova/plugin/exoplayer/Plugin;->player:Lco/frontyard/cordova/plugin/exoplayer/Player;

    if-nez v4, :cond_13

    .line 169
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 171
    :cond_13
    move-object/from16 v0, p0

    iget-object v4, v0, Lco/frontyard/cordova/plugin/exoplayer/Plugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v4}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v4

    new-instance v5, Lco/frontyard/cordova/plugin/exoplayer/Plugin$11;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v5, v0, v6, v1}, Lco/frontyard/cordova/plugin/exoplayer/Plugin$11;-><init>(Lco/frontyard/cordova/plugin/exoplayer/Plugin;Lco/frontyard/cordova/plugin/exoplayer/Plugin;Lorg/apache/cordova/CallbackContext;)V

    invoke-virtual {v4, v5}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 177
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 180
    :cond_14
    new-instance v4, Lco/frontyard/cordova/plugin/exoplayer/CallbackResponse;

    move-object/from16 v0, p3

    invoke-direct {v4, v0}, Lco/frontyard/cordova/plugin/exoplayer/CallbackResponse;-><init>(Lorg/apache/cordova/CallbackContext;)V

    sget-object v5, Lorg/apache/cordova/PluginResult$Status;->INVALID_ACTION:Lorg/apache/cordova/PluginResult$Status;

    const/4 v9, 0x0

    invoke-virtual {v4, v5, v9}, Lco/frontyard/cordova/plugin/exoplayer/CallbackResponse;->send(Lorg/apache/cordova/PluginResult$Status;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 184
    :catch_0
    move-exception v21

    .line 185
    .local v21, "e":Ljava/lang/Exception;
    new-instance v4, Lco/frontyard/cordova/plugin/exoplayer/CallbackResponse;

    move-object/from16 v0, p3

    invoke-direct {v4, v0}, Lco/frontyard/cordova/plugin/exoplayer/CallbackResponse;-><init>(Lorg/apache/cordova/CallbackContext;)V

    sget-object v5, Lorg/apache/cordova/PluginResult$Status;->JSON_EXCEPTION:Lorg/apache/cordova/PluginResult$Status;

    const/4 v9, 0x0

    invoke-virtual {v4, v5, v9}, Lco/frontyard/cordova/plugin/exoplayer/CallbackResponse;->send(Lorg/apache/cordova/PluginResult$Status;Z)V

    .line 186
    const/4 v4, 0x0

    goto/16 :goto_0
.end method
