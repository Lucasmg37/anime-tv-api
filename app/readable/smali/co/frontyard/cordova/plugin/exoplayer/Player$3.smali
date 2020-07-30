.class Lco/frontyard/cordova/plugin/exoplayer/Player$3;
.super Ljava/lang/Object;
.source "Player.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/frontyard/cordova/plugin/exoplayer/Player;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lco/frontyard/cordova/plugin/exoplayer/Player;


# direct methods
.method constructor <init>(Lco/frontyard/cordova/plugin/exoplayer/Player;)V
    .locals 0
    .param p1, "this$0"    # Lco/frontyard/cordova/plugin/exoplayer/Player;

    .prologue
    .line 142
    iput-object p1, p0, Lco/frontyard/cordova/plugin/exoplayer/Player$3;->this$0:Lco/frontyard/cordova/plugin/exoplayer/Player;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x1

    .line 145
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 146
    .local v0, "action":I
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    invoke-static {v4}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v1

    .line 148
    .local v1, "key":Ljava/lang/String;
    const-string v4, "KEYCODE_VOLUME_UP"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "KEYCODE_VOLUME_DOWN"

    .line 149
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "KEYCODE_VOLUME_MUTE"

    .line 150
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "KEYCODE_BACK"

    .line 151
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 152
    :cond_0
    const/4 v3, 0x0

    .line 157
    :goto_0
    return v3

    .line 155
    :cond_1
    invoke-static {p3}, Lco/frontyard/cordova/plugin/exoplayer/Payload;->keyEvent(Landroid/view/KeyEvent;)Lorg/json/JSONObject;

    move-result-object v2

    .line 156
    .local v2, "payload":Lorg/json/JSONObject;
    new-instance v4, Lco/frontyard/cordova/plugin/exoplayer/CallbackResponse;

    iget-object v5, p0, Lco/frontyard/cordova/plugin/exoplayer/Player$3;->this$0:Lco/frontyard/cordova/plugin/exoplayer/Player;

    invoke-static {v5}, Lco/frontyard/cordova/plugin/exoplayer/Player;->access$100(Lco/frontyard/cordova/plugin/exoplayer/Player;)Lorg/apache/cordova/CallbackContext;

    move-result-object v5

    invoke-direct {v4, v5}, Lco/frontyard/cordova/plugin/exoplayer/CallbackResponse;-><init>(Lorg/apache/cordova/CallbackContext;)V

    sget-object v5, Lorg/apache/cordova/PluginResult$Status;->OK:Lorg/apache/cordova/PluginResult$Status;

    invoke-virtual {v4, v5, v2, v3}, Lco/frontyard/cordova/plugin/exoplayer/CallbackResponse;->send(Lorg/apache/cordova/PluginResult$Status;Lorg/json/JSONObject;Z)V

    goto :goto_0
.end method
