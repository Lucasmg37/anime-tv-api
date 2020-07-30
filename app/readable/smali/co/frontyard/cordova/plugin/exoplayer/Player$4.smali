.class Lco/frontyard/cordova/plugin/exoplayer/Player$4;
.super Ljava/lang/Object;
.source "Player.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/frontyard/cordova/plugin/exoplayer/Player;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field previousAction:I

.field final synthetic this$0:Lco/frontyard/cordova/plugin/exoplayer/Player;


# direct methods
.method constructor <init>(Lco/frontyard/cordova/plugin/exoplayer/Player;)V
    .locals 1
    .param p1, "this$0"    # Lco/frontyard/cordova/plugin/exoplayer/Player;

    .prologue
    .line 162
    iput-object p1, p0, Lco/frontyard/cordova/plugin/exoplayer/Player$4;->this$0:Lco/frontyard/cordova/plugin/exoplayer/Player;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    const/4 v0, -0x1

    iput v0, p0, Lco/frontyard/cordova/plugin/exoplayer/Player$4;->previousAction:I

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x1

    .line 167
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 168
    .local v0, "eventAction":I
    iget v2, p0, Lco/frontyard/cordova/plugin/exoplayer/Player$4;->previousAction:I

    if-eq v2, v0, :cond_0

    .line 169
    iput v0, p0, Lco/frontyard/cordova/plugin/exoplayer/Player$4;->previousAction:I

    .line 170
    invoke-static {p2}, Lco/frontyard/cordova/plugin/exoplayer/Payload;->touchEvent(Landroid/view/MotionEvent;)Lorg/json/JSONObject;

    move-result-object v1

    .line 171
    .local v1, "payload":Lorg/json/JSONObject;
    new-instance v2, Lco/frontyard/cordova/plugin/exoplayer/CallbackResponse;

    iget-object v3, p0, Lco/frontyard/cordova/plugin/exoplayer/Player$4;->this$0:Lco/frontyard/cordova/plugin/exoplayer/Player;

    invoke-static {v3}, Lco/frontyard/cordova/plugin/exoplayer/Player;->access$100(Lco/frontyard/cordova/plugin/exoplayer/Player;)Lorg/apache/cordova/CallbackContext;

    move-result-object v3

    invoke-direct {v2, v3}, Lco/frontyard/cordova/plugin/exoplayer/CallbackResponse;-><init>(Lorg/apache/cordova/CallbackContext;)V

    sget-object v3, Lorg/apache/cordova/PluginResult$Status;->OK:Lorg/apache/cordova/PluginResult$Status;

    invoke-virtual {v2, v3, v1, v4}, Lco/frontyard/cordova/plugin/exoplayer/CallbackResponse;->send(Lorg/apache/cordova/PluginResult$Status;Lorg/json/JSONObject;Z)V

    .line 173
    .end local v1    # "payload":Lorg/json/JSONObject;
    :cond_0
    return v4
.end method
