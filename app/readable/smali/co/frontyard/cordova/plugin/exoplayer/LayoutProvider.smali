.class public Lco/frontyard/cordova/plugin/exoplayer/LayoutProvider;
.super Ljava/lang/Object;
.source "LayoutProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/frontyard/cordova/plugin/exoplayer/LayoutProvider$BUTTON;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static findView(Landroid/view/View;Landroid/app/Activity;Ljava/lang/String;)Landroid/view/View;
    .locals 4
    .param p0, "view"    # Landroid/view/View;
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 183
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, p2, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 184
    .local v0, "viewId":I
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public static getDialogLayoutParams(Landroid/app/Activity;Lco/frontyard/cordova/plugin/exoplayer/Configuration;Landroid/app/Dialog;)Landroid/view/WindowManager$LayoutParams;
    .locals 7
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "config"    # Lco/frontyard/cordova/plugin/exoplayer/Configuration;
    .param p2, "dialog"    # Landroid/app/Dialog;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 188
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 189
    .local v1, "lp":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {p2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 191
    invoke-virtual {p1}, Lco/frontyard/cordova/plugin/exoplayer/Configuration;->getDimensions()Lorg/json/JSONObject;

    move-result-object v0

    .line 192
    .local v0, "dim":Lorg/json/JSONObject;
    if-nez v0, :cond_0

    .line 193
    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 194
    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 204
    :goto_0
    return-object v1

    .line 197
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 198
    .local v2, "metrics":Landroid/util/DisplayMetrics;
    const-string v3, "x"

    invoke-virtual {v0, v3, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v5, v3, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 199
    const-string v3, "y"

    invoke-virtual {v0, v3, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v5, v3, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 200
    const-string v3, "width"

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v5, v3, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 201
    const-string v3, "height"

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v5, v3, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_0
.end method

.method public static getExoPlayerView(Landroid/app/Activity;Lco/frontyard/cordova/plugin/exoplayer/Configuration;)Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "config"    # Lco/frontyard/cordova/plugin/exoplayer/Configuration;

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 50
    new-instance v0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;-><init>(Landroid/content/Context;)V

    .line 51
    .local v0, "view":Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 52
    invoke-virtual {p1}, Lco/frontyard/cordova/plugin/exoplayer/Configuration;->isAspectRatioFillScreen()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 53
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->setResizeMode(I)V

    .line 55
    :cond_0
    invoke-virtual {p1}, Lco/frontyard/cordova/plugin/exoplayer/Configuration;->getForwardTimeMs()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->setFastForwardIncrementMs(I)V

    .line 56
    invoke-virtual {p1}, Lco/frontyard/cordova/plugin/exoplayer/Configuration;->getRewindTimeMs()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->setRewindIncrementMs(I)V

    .line 57
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->setShowMultiWindowTimeBar(Z)V

    .line 58
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->setControllerHideOnTouch(Z)V

    .line 59
    invoke-virtual {p1}, Lco/frontyard/cordova/plugin/exoplayer/Configuration;->getHideTimeout()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->setControllerShowTimeoutMs(I)V

    .line 61
    invoke-virtual {p1}, Lco/frontyard/cordova/plugin/exoplayer/Configuration;->getController()Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lco/frontyard/cordova/plugin/exoplayer/LayoutProvider;->setupController(Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;Landroid/app/Activity;Lorg/json/JSONObject;)V

    .line 62
    return-object v0
.end method

.method public static getMainLayout(Landroid/app/Activity;)Landroid/widget/FrameLayout;
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v2, -0x1

    .line 42
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 43
    .local v0, "view":Landroid/widget/FrameLayout;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 44
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setKeepScreenOn(Z)V

    .line 46
    return-object v0
.end method

.method public static setBufferingVisibility(Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;Landroid/app/Activity;Z)V
    .locals 2
    .param p0, "parentView"    # Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "visibile"    # Z

    .prologue
    .line 176
    const-string v1, "exo_buffering"

    invoke-static {p0, p1, v1}, Lco/frontyard/cordova/plugin/exoplayer/LayoutProvider;->findView(Landroid/view/View;Landroid/app/Activity;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 177
    .local v0, "progressBar":Landroid/widget/ProgressBar;
    if-eqz v0, :cond_0

    .line 178
    if-eqz p2, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 180
    :cond_0
    return-void

    .line 178
    :cond_1
    const/16 v1, 0x8

    goto :goto_0
.end method

.method private static setupBar(Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;Landroid/app/Activity;Lorg/json/JSONObject;)V
    .locals 13
    .param p0, "parentView"    # Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "controller"    # Lorg/json/JSONObject;

    .prologue
    .line 113
    const-string v11, "streamTitle"

    const/4 v12, 0x0

    invoke-virtual {p2, v11, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 114
    .local v6, "streamTitle":Ljava/lang/String;
    const-string v11, "streamDescription"

    const/4 v12, 0x0

    invoke-virtual {p2, v11, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 115
    .local v4, "streamDescription":Ljava/lang/String;
    const-string v11, "streamImage"

    const/4 v12, 0x0

    invoke-virtual {p2, v11, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 116
    .local v5, "streamImage":Ljava/lang/String;
    const-string v11, "textColor"

    invoke-virtual {p2, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 118
    .local v8, "textColor":Ljava/lang/String;
    const-string v11, "exo_image"

    invoke-static {p0, p1, v11}, Lco/frontyard/cordova/plugin/exoplayer/LayoutProvider;->findView(Landroid/view/View;Landroid/app/Activity;Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 119
    .local v1, "imageView":Landroid/widget/ImageView;
    const-string v11, "exo_title"

    invoke-static {p0, p1, v11}, Lco/frontyard/cordova/plugin/exoplayer/LayoutProvider;->findView(Landroid/view/View;Landroid/app/Activity;Ljava/lang/String;)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 120
    .local v10, "titleView":Landroid/widget/TextView;
    const-string v11, "exo_subtitle"

    invoke-static {p0, p1, v11}, Lco/frontyard/cordova/plugin/exoplayer/LayoutProvider;->findView(Landroid/view/View;Landroid/app/Activity;Ljava/lang/String;)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 121
    .local v7, "subtitleView":Landroid/widget/TextView;
    const-string v11, "exo_timebar"

    invoke-static {p0, p1, v11}, Lco/frontyard/cordova/plugin/exoplayer/LayoutProvider;->findView(Landroid/view/View;Landroid/app/Activity;Ljava/lang/String;)Landroid/view/View;

    move-result-object v9

    .line 122
    .local v9, "timebarView":Landroid/view/View;
    const-string v11, "exo_position"

    invoke-static {v9, p1, v11}, Lco/frontyard/cordova/plugin/exoplayer/LayoutProvider;->findView(Landroid/view/View;Landroid/app/Activity;Ljava/lang/String;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 123
    .local v3, "positionView":Landroid/widget/TextView;
    const-string v11, "exo_duration"

    invoke-static {v9, p1, v11}, Lco/frontyard/cordova/plugin/exoplayer/LayoutProvider;->findView(Landroid/view/View;Landroid/app/Activity;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 125
    .local v0, "durationView":Landroid/widget/TextView;
    if-eqz v8, :cond_3

    .line 126
    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    .line 127
    .local v2, "intTextColor":I
    if-eqz v10, :cond_0

    .line 128
    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 130
    :cond_0
    if-eqz v7, :cond_1

    .line 131
    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 133
    :cond_1
    if-eqz v3, :cond_2

    .line 134
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 136
    :cond_2
    if-eqz v0, :cond_3

    .line 137
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 140
    .end local v2    # "intTextColor":I
    :cond_3
    if-eqz v5, :cond_4

    .line 141
    invoke-virtual {v1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v11

    invoke-virtual {v11, v5}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v11

    invoke-virtual {v11, v1}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 143
    :cond_4
    if-eqz v6, :cond_5

    .line 144
    invoke-virtual {v10, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    :cond_5
    if-eqz v4, :cond_7

    const-string v11, "null"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_7

    .line 147
    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    :goto_0
    const-string v11, "hideProgress"

    invoke-virtual {p2, v11}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 153
    const/16 v11, 0x8

    invoke-virtual {v9, v11}, Landroid/view/View;->setVisibility(I)V

    .line 165
    :cond_6
    :goto_1
    return-void

    .line 150
    :cond_7
    const/16 v11, 0x8

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 156
    :cond_8
    const-string v11, "hidePosition"

    invoke-virtual {p2, v11}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_9

    if-eqz v3, :cond_9

    .line 157
    const/16 v11, 0x8

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 158
    invoke-virtual {v3}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    check-cast v11, Landroid/view/ViewGroup;

    invoke-virtual {v11, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 160
    :cond_9
    const-string v11, "hideDuration"

    invoke-virtual {p2, v11}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6

    if-eqz v0, :cond_6

    .line 161
    const/16 v11, 0x8

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 162
    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    check-cast v11, Landroid/view/ViewGroup;

    invoke-virtual {v11, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_1
.end method

.method private static setupBuffering(Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;Landroid/app/Activity;Lorg/json/JSONObject;)V
    .locals 5
    .param p0, "parentView"    # Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "controller"    # Lorg/json/JSONObject;

    .prologue
    .line 168
    const-string v2, "bufferingColor"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 169
    .local v1, "bufferingColor":Ljava/lang/String;
    const-string v2, "exo_buffering"

    invoke-static {p0, p1, v2}, Lco/frontyard/cordova/plugin/exoplayer/LayoutProvider;->findView(Landroid/view/View;Landroid/app/Activity;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 170
    .local v0, "bufferingBar":Landroid/widget/ProgressBar;
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 171
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 173
    :cond_0
    return-void
.end method

.method private static setupButtons(Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;Landroid/app/Activity;Lorg/json/JSONObject;)V
    .locals 13
    .param p0, "parentView"    # Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "controller"    # Lorg/json/JSONObject;

    .prologue
    const/16 v12, 0x8

    .line 78
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 79
    .local v7, "packageName":Ljava/lang/String;
    const-string v8, "buttonsColor"

    invoke-virtual {p2, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 81
    .local v3, "buttonsColor":Ljava/lang/String;
    const-string v8, "controlIcons"

    invoke-virtual {p2, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 82
    .local v4, "buttonsConfig":Lorg/json/JSONObject;
    if-eqz v4, :cond_4

    .line 83
    invoke-static {}, Lco/frontyard/cordova/plugin/exoplayer/LayoutProvider$BUTTON;->values()[Lco/frontyard/cordova/plugin/exoplayer/LayoutProvider$BUTTON;

    move-result-object v10

    array-length v11, v10

    const/4 v8, 0x0

    move v9, v8

    :goto_0
    if-ge v9, v11, :cond_5

    aget-object v0, v10, v9

    .line 84
    .local v0, "b":Lco/frontyard/cordova/plugin/exoplayer/LayoutProvider$BUTTON;
    invoke-virtual {v0}, Lco/frontyard/cordova/plugin/exoplayer/LayoutProvider$BUTTON;->name()Ljava/lang/String;

    move-result-object v1

    .line 85
    .local v1, "buttonName":Ljava/lang/String;
    invoke-static {p0, p1, v1}, Lco/frontyard/cordova/plugin/exoplayer/LayoutProvider;->findView(Landroid/view/View;Landroid/app/Activity;Ljava/lang/String;)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageButton;

    .line 86
    .local v6, "imageButton":Landroid/widget/ImageButton;
    if-eqz v6, :cond_1

    .line 87
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 88
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 89
    .local v2, "buttonUrl":Ljava/lang/String;
    if-eqz v2, :cond_0

    const-string v8, "null"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 91
    :cond_0
    invoke-virtual {v6, v12}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 92
    invoke-virtual {v6}, Landroid/widget/ImageButton;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    invoke-virtual {v8, v6}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 83
    .end local v2    # "buttonUrl":Ljava/lang/String;
    :cond_1
    :goto_1
    add-int/lit8 v8, v9, 0x1

    move v9, v8

    goto :goto_0

    .line 96
    .restart local v2    # "buttonUrl":Ljava/lang/String;
    :cond_2
    invoke-virtual {v6}, Landroid/widget/ImageButton;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v8

    invoke-virtual {v8, v2}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v8

    invoke-virtual {v8, v6}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto :goto_1

    .line 99
    .end local v2    # "buttonUrl":Ljava/lang/String;
    :cond_3
    if-eqz v3, :cond_1

    .line 101
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v6, v8}, Landroid/widget/ImageButton;->setColorFilter(I)V

    goto :goto_1

    .line 107
    .end local v0    # "b":Lco/frontyard/cordova/plugin/exoplayer/LayoutProvider$BUTTON;
    .end local v1    # "buttonName":Ljava/lang/String;
    .end local v6    # "imageButton":Landroid/widget/ImageButton;
    :cond_4
    const-string v8, "exo_buttons"

    invoke-static {p0, p1, v8}, Lco/frontyard/cordova/plugin/exoplayer/LayoutProvider;->findView(Landroid/view/View;Landroid/app/Activity;Ljava/lang/String;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 108
    .local v5, "exoButtons":Landroid/widget/LinearLayout;
    invoke-virtual {v5, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 110
    .end local v5    # "exoButtons":Landroid/widget/LinearLayout;
    :cond_5
    return-void
.end method

.method public static setupController(Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;Landroid/app/Activity;Lorg/json/JSONObject;)V
    .locals 1
    .param p0, "parentView"    # Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "controller"    # Lorg/json/JSONObject;

    .prologue
    .line 66
    if-eqz p2, :cond_0

    .line 67
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->setUseController(Z)V

    .line 68
    invoke-static {p0, p1, p2}, Lco/frontyard/cordova/plugin/exoplayer/LayoutProvider;->setupButtons(Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;Landroid/app/Activity;Lorg/json/JSONObject;)V

    .line 69
    invoke-static {p0, p1, p2}, Lco/frontyard/cordova/plugin/exoplayer/LayoutProvider;->setupBar(Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;Landroid/app/Activity;Lorg/json/JSONObject;)V

    .line 70
    invoke-static {p0, p1, p2}, Lco/frontyard/cordova/plugin/exoplayer/LayoutProvider;->setupBuffering(Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;Landroid/app/Activity;Lorg/json/JSONObject;)V

    .line 75
    :goto_0
    return-void

    .line 73
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->setUseController(Z)V

    goto :goto_0
.end method
