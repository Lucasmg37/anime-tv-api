.class Lio/ionic/keyboard/IonicKeyboard$3$1;
.super Ljava/lang/Object;
.source "IonicKeyboard.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ionic/keyboard/IonicKeyboard$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field previousHeightDiff:I

.field final synthetic this$1:Lio/ionic/keyboard/IonicKeyboard$3;

.field final synthetic val$density:F


# direct methods
.method constructor <init>(Lio/ionic/keyboard/IonicKeyboard$3;F)V
    .locals 1
    .param p1, "this$1"    # Lio/ionic/keyboard/IonicKeyboard$3;

    .prologue
    .line 70
    iput-object p1, p0, Lio/ionic/keyboard/IonicKeyboard$3$1;->this$1:Lio/ionic/keyboard/IonicKeyboard$3;

    iput p2, p0, Lio/ionic/keyboard/IonicKeyboard$3$1;->val$density:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const/4 v0, 0x0

    iput v0, p0, Lio/ionic/keyboard/IonicKeyboard$3$1;->previousHeightDiff:I

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 14

    .prologue
    const/16 v13, 0x64

    const/4 v12, 0x1

    .line 74
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 76
    .local v4, "r":Landroid/graphics/Rect;
    iget-object v10, p0, Lio/ionic/keyboard/IonicKeyboard$3$1;->this$1:Lio/ionic/keyboard/IonicKeyboard$3;

    iget-object v10, v10, Lio/ionic/keyboard/IonicKeyboard$3;->this$0:Lio/ionic/keyboard/IonicKeyboard;

    invoke-static {v10}, Lio/ionic/keyboard/IonicKeyboard;->access$000(Lio/ionic/keyboard/IonicKeyboard;)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10, v4}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 81
    iget-object v10, p0, Lio/ionic/keyboard/IonicKeyboard$3$1;->this$1:Lio/ionic/keyboard/IonicKeyboard$3;

    iget-object v10, v10, Lio/ionic/keyboard/IonicKeyboard$3;->this$0:Lio/ionic/keyboard/IonicKeyboard;

    invoke-static {v10}, Lio/ionic/keyboard/IonicKeyboard;->access$000(Lio/ionic/keyboard/IonicKeyboard;)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v7

    .line 82
    .local v7, "rootViewHeight":I
    iget v6, v4, Landroid/graphics/Rect;->bottom:I

    .line 88
    .local v6, "resultBottom":I
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x15

    if-lt v10, v11, :cond_1

    .line 89
    iget-object v10, p0, Lio/ionic/keyboard/IonicKeyboard$3$1;->this$1:Lio/ionic/keyboard/IonicKeyboard$3;

    iget-object v10, v10, Lio/ionic/keyboard/IonicKeyboard$3;->this$0:Lio/ionic/keyboard/IonicKeyboard;

    iget-object v10, v10, Lio/ionic/keyboard/IonicKeyboard;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v10}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v10

    invoke-interface {v10}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 90
    .local v0, "display":Landroid/view/Display;
    new-instance v9, Landroid/graphics/Point;

    invoke-direct {v9}, Landroid/graphics/Point;-><init>()V

    .line 91
    .local v9, "size":Landroid/graphics/Point;
    invoke-virtual {v0, v9}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 92
    iget v8, v9, Landroid/graphics/Point;->y:I

    .line 97
    .end local v0    # "display":Landroid/view/Display;
    .end local v9    # "size":Landroid/graphics/Point;
    .local v8, "screenHeight":I
    :goto_0
    sub-int v1, v8, v6

    .line 99
    .local v1, "heightDiff":I
    int-to-float v10, v1

    iget v11, p0, Lio/ionic/keyboard/IonicKeyboard$3$1;->val$density:F

    div-float/2addr v10, v11

    float-to-int v3, v10

    .line 100
    .local v3, "pixelHeightDiff":I
    if-le v3, v13, :cond_2

    iget v10, p0, Lio/ionic/keyboard/IonicKeyboard$3$1;->previousHeightDiff:I

    if-eq v3, v10, :cond_2

    .line 101
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "S"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 102
    .local v2, "msg":Ljava/lang/String;
    new-instance v5, Lorg/apache/cordova/PluginResult;

    sget-object v10, Lorg/apache/cordova/PluginResult$Status;->OK:Lorg/apache/cordova/PluginResult$Status;

    invoke-direct {v5, v10, v2}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;Ljava/lang/String;)V

    .line 103
    .local v5, "result":Lorg/apache/cordova/PluginResult;
    invoke-virtual {v5, v12}, Lorg/apache/cordova/PluginResult;->setKeepCallback(Z)V

    .line 104
    iget-object v10, p0, Lio/ionic/keyboard/IonicKeyboard$3$1;->this$1:Lio/ionic/keyboard/IonicKeyboard$3;

    iget-object v10, v10, Lio/ionic/keyboard/IonicKeyboard$3;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v10, v5}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    .line 112
    .end local v2    # "msg":Ljava/lang/String;
    .end local v5    # "result":Lorg/apache/cordova/PluginResult;
    :cond_0
    :goto_1
    iput v3, p0, Lio/ionic/keyboard/IonicKeyboard$3$1;->previousHeightDiff:I

    .line 113
    return-void

    .line 94
    .end local v1    # "heightDiff":I
    .end local v3    # "pixelHeightDiff":I
    .end local v8    # "screenHeight":I
    :cond_1
    move v8, v7

    .restart local v8    # "screenHeight":I
    goto :goto_0

    .line 106
    .restart local v1    # "heightDiff":I
    .restart local v3    # "pixelHeightDiff":I
    :cond_2
    iget v10, p0, Lio/ionic/keyboard/IonicKeyboard$3$1;->previousHeightDiff:I

    if-eq v3, v10, :cond_0

    iget v10, p0, Lio/ionic/keyboard/IonicKeyboard$3$1;->previousHeightDiff:I

    sub-int/2addr v10, v3

    if-le v10, v13, :cond_0

    .line 107
    const-string v2, "H"

    .line 108
    .restart local v2    # "msg":Ljava/lang/String;
    new-instance v5, Lorg/apache/cordova/PluginResult;

    sget-object v10, Lorg/apache/cordova/PluginResult$Status;->OK:Lorg/apache/cordova/PluginResult$Status;

    invoke-direct {v5, v10, v2}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;Ljava/lang/String;)V

    .line 109
    .restart local v5    # "result":Lorg/apache/cordova/PluginResult;
    invoke-virtual {v5, v12}, Lorg/apache/cordova/PluginResult;->setKeepCallback(Z)V

    .line 110
    iget-object v10, p0, Lio/ionic/keyboard/IonicKeyboard$3$1;->this$1:Lio/ionic/keyboard/IonicKeyboard$3;

    iget-object v10, v10, Lio/ionic/keyboard/IonicKeyboard$3;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v10, v5}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    goto :goto_1
.end method
