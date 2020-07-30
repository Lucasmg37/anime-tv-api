.class public Lcom/google/android/exoplayer2/ui/PlaybackControlView;
.super Landroid/widget/FrameLayout;
.source "PlaybackControlView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/ui/PlaybackControlView$ComponentListener;,
        Lcom/google/android/exoplayer2/ui/PlaybackControlView$DefaultControlDispatcher;,
        Lcom/google/android/exoplayer2/ui/PlaybackControlView$VisibilityListener;,
        Lcom/google/android/exoplayer2/ui/PlaybackControlView$ControlDispatcher;
    }
.end annotation


# static fields
.field public static final DEFAULT_CONTROL_DISPATCHER:Lcom/google/android/exoplayer2/ui/PlaybackControlView$ControlDispatcher;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DEFAULT_FAST_FORWARD_MS:I = 0x3a98

.field public static final DEFAULT_REPEAT_TOGGLE_MODES:I = 0x0

.field public static final DEFAULT_REWIND_MS:I = 0x1388

.field public static final DEFAULT_SHOW_TIMEOUT_MS:I = 0x1388

.field private static final MAX_POSITION_FOR_SEEK_TO_PREVIOUS:J = 0xbb8L

.field public static final MAX_WINDOWS_FOR_MULTI_WINDOW_TIME_BAR:I = 0x64


# instance fields
.field private adGroupTimesMs:[J

.field private final componentListener:Lcom/google/android/exoplayer2/ui/PlaybackControlView$ComponentListener;

.field private controlDispatcher:Lcom/google/android/exoplayer2/ControlDispatcher;

.field private final durationView:Landroid/widget/TextView;

.field private extraAdGroupTimesMs:[J

.field private extraPlayedAdGroups:[Z

.field private final fastForwardButton:Landroid/view/View;

.field private fastForwardMs:I

.field private final formatBuilder:Ljava/lang/StringBuilder;

.field private final formatter:Ljava/util/Formatter;

.field private final hideAction:Ljava/lang/Runnable;

.field private hideAtMs:J

.field private isAttachedToWindow:Z

.field private multiWindowTimeBar:Z

.field private final nextButton:Landroid/view/View;

.field private final pauseButton:Landroid/view/View;

.field private final period:Lcom/google/android/exoplayer2/Timeline$Period;

.field private final playButton:Landroid/view/View;

.field private playedAdGroups:[Z

.field private player:Lcom/google/android/exoplayer2/Player;

.field private final positionView:Landroid/widget/TextView;

.field private final previousButton:Landroid/view/View;

.field private final repeatAllButtonContentDescription:Ljava/lang/String;

.field private final repeatAllButtonDrawable:Landroid/graphics/drawable/Drawable;

.field private final repeatOffButtonContentDescription:Ljava/lang/String;

.field private final repeatOffButtonDrawable:Landroid/graphics/drawable/Drawable;

.field private final repeatOneButtonContentDescription:Ljava/lang/String;

.field private final repeatOneButtonDrawable:Landroid/graphics/drawable/Drawable;

.field private final repeatToggleButton:Landroid/widget/ImageView;

.field private repeatToggleModes:I

.field private final rewindButton:Landroid/view/View;

.field private rewindMs:I

.field private scrubbing:Z

.field private showMultiWindowTimeBar:Z

.field private showShuffleButton:Z

.field private showTimeoutMs:I

.field private final shuffleButton:Landroid/view/View;

.field private final timeBar:Lcom/google/android/exoplayer2/ui/TimeBar;

.field private final updateProgressAction:Ljava/lang/Runnable;

.field private visibilityListener:Lcom/google/android/exoplayer2/ui/PlaybackControlView$VisibilityListener;

.field private final window:Lcom/google/android/exoplayer2/Timeline$Window;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 175
    const-string v0, "goog.exo.ui"

    invoke-static {v0}, Lcom/google/android/exoplayer2/ExoPlayerLibraryInfo;->registerModule(Ljava/lang/String;)V

    .line 204
    new-instance v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView$DefaultControlDispatcher;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/ui/PlaybackControlView$DefaultControlDispatcher;-><init>(Lcom/google/android/exoplayer2/ui/PlaybackControlView$1;)V

    sput-object v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->DEFAULT_CONTROL_DISPATCHER:Lcom/google/android/exoplayer2/ui/PlaybackControlView$ControlDispatcher;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 289
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 290
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 293
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 294
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 297
    invoke-direct {p0, p1, p2, p3, p2}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/util/AttributeSet;)V

    .line 298
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/util/AttributeSet;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "playbackAttrs"    # Landroid/util/AttributeSet;

    .prologue
    const/16 v4, 0x1388

    const/4 v6, 0x0

    .line 302
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 274
    new-instance v3, Lcom/google/android/exoplayer2/ui/PlaybackControlView$1;

    invoke-direct {v3, p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView$1;-><init>(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)V

    iput-object v3, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->updateProgressAction:Ljava/lang/Runnable;

    .line 281
    new-instance v3, Lcom/google/android/exoplayer2/ui/PlaybackControlView$2;

    invoke-direct {v3, p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView$2;-><init>(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)V

    iput-object v3, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->hideAction:Ljava/lang/Runnable;

    .line 303
    sget v1, Lcom/google/android/exoplayer2/ui/R$layout;->exo_playback_control_view:I

    .line 304
    .local v1, "controllerLayoutId":I
    iput v4, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->rewindMs:I

    .line 305
    const/16 v3, 0x3a98

    iput v3, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->fastForwardMs:I

    .line 306
    iput v4, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->showTimeoutMs:I

    .line 307
    iput v6, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->repeatToggleModes:I

    .line 308
    iput-boolean v6, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->showShuffleButton:Z

    .line 309
    if-eqz p4, :cond_0

    .line 310
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    sget-object v4, Lcom/google/android/exoplayer2/ui/R$styleable;->PlaybackControlView:[I

    invoke-virtual {v3, p4, v4, v6, v6}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 313
    .local v0, "a":Landroid/content/res/TypedArray;
    :try_start_0
    sget v3, Lcom/google/android/exoplayer2/ui/R$styleable;->PlaybackControlView_rewind_increment:I

    iget v4, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->rewindMs:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->rewindMs:I

    .line 314
    sget v3, Lcom/google/android/exoplayer2/ui/R$styleable;->PlaybackControlView_fastforward_increment:I

    iget v4, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->fastForwardMs:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->fastForwardMs:I

    .line 316
    sget v3, Lcom/google/android/exoplayer2/ui/R$styleable;->PlaybackControlView_show_timeout:I

    iget v4, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->showTimeoutMs:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->showTimeoutMs:I

    .line 317
    sget v3, Lcom/google/android/exoplayer2/ui/R$styleable;->PlaybackControlView_controller_layout_id:I

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 319
    iget v3, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->repeatToggleModes:I

    invoke-static {v0, v3}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->getRepeatToggleModes(Landroid/content/res/TypedArray;I)I

    move-result v3

    iput v3, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->repeatToggleModes:I

    .line 320
    sget v3, Lcom/google/android/exoplayer2/ui/R$styleable;->PlaybackControlView_show_shuffle_button:I

    iget-boolean v4, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->showShuffleButton:Z

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->showShuffleButton:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 323
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 326
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_0
    new-instance v3, Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-direct {v3}, Lcom/google/android/exoplayer2/Timeline$Period;-><init>()V

    iput-object v3, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    .line 327
    new-instance v3, Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-direct {v3}, Lcom/google/android/exoplayer2/Timeline$Window;-><init>()V

    iput-object v3, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    .line 328
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v3, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->formatBuilder:Ljava/lang/StringBuilder;

    .line 329
    new-instance v3, Ljava/util/Formatter;

    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->formatBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v3, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->formatter:Ljava/util/Formatter;

    .line 330
    new-array v3, v6, [J

    iput-object v3, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->adGroupTimesMs:[J

    .line 331
    new-array v3, v6, [Z

    iput-object v3, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->playedAdGroups:[Z

    .line 332
    new-array v3, v6, [J

    iput-object v3, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->extraAdGroupTimesMs:[J

    .line 333
    new-array v3, v6, [Z

    iput-object v3, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->extraPlayedAdGroups:[Z

    .line 334
    new-instance v3, Lcom/google/android/exoplayer2/ui/PlaybackControlView$ComponentListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/google/android/exoplayer2/ui/PlaybackControlView$ComponentListener;-><init>(Lcom/google/android/exoplayer2/ui/PlaybackControlView;Lcom/google/android/exoplayer2/ui/PlaybackControlView$1;)V

    iput-object v3, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->componentListener:Lcom/google/android/exoplayer2/ui/PlaybackControlView$ComponentListener;

    .line 335
    new-instance v3, Lcom/google/android/exoplayer2/DefaultControlDispatcher;

    invoke-direct {v3}, Lcom/google/android/exoplayer2/DefaultControlDispatcher;-><init>()V

    iput-object v3, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->controlDispatcher:Lcom/google/android/exoplayer2/ControlDispatcher;

    .line 337
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    invoke-virtual {v3, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 338
    const/high16 v3, 0x40000

    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->setDescendantFocusability(I)V

    .line 340
    sget v3, Lcom/google/android/exoplayer2/ui/R$id;->exo_duration:I

    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->durationView:Landroid/widget/TextView;

    .line 341
    sget v3, Lcom/google/android/exoplayer2/ui/R$id;->exo_position:I

    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->positionView:Landroid/widget/TextView;

    .line 342
    sget v3, Lcom/google/android/exoplayer2/ui/R$id;->exo_progress:I

    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/ui/TimeBar;

    iput-object v3, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->timeBar:Lcom/google/android/exoplayer2/ui/TimeBar;

    .line 343
    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->timeBar:Lcom/google/android/exoplayer2/ui/TimeBar;

    if-eqz v3, :cond_1

    .line 344
    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->timeBar:Lcom/google/android/exoplayer2/ui/TimeBar;

    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->componentListener:Lcom/google/android/exoplayer2/ui/PlaybackControlView$ComponentListener;

    invoke-interface {v3, v4}, Lcom/google/android/exoplayer2/ui/TimeBar;->addListener(Lcom/google/android/exoplayer2/ui/TimeBar$OnScrubListener;)V

    .line 346
    :cond_1
    sget v3, Lcom/google/android/exoplayer2/ui/R$id;->exo_play:I

    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->playButton:Landroid/view/View;

    .line 347
    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->playButton:Landroid/view/View;

    if-eqz v3, :cond_2

    .line 348
    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->playButton:Landroid/view/View;

    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->componentListener:Lcom/google/android/exoplayer2/ui/PlaybackControlView$ComponentListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 350
    :cond_2
    sget v3, Lcom/google/android/exoplayer2/ui/R$id;->exo_pause:I

    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->pauseButton:Landroid/view/View;

    .line 351
    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->pauseButton:Landroid/view/View;

    if-eqz v3, :cond_3

    .line 352
    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->pauseButton:Landroid/view/View;

    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->componentListener:Lcom/google/android/exoplayer2/ui/PlaybackControlView$ComponentListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 354
    :cond_3
    sget v3, Lcom/google/android/exoplayer2/ui/R$id;->exo_prev:I

    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->previousButton:Landroid/view/View;

    .line 355
    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->previousButton:Landroid/view/View;

    if-eqz v3, :cond_4

    .line 356
    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->previousButton:Landroid/view/View;

    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->componentListener:Lcom/google/android/exoplayer2/ui/PlaybackControlView$ComponentListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 358
    :cond_4
    sget v3, Lcom/google/android/exoplayer2/ui/R$id;->exo_next:I

    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->nextButton:Landroid/view/View;

    .line 359
    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->nextButton:Landroid/view/View;

    if-eqz v3, :cond_5

    .line 360
    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->nextButton:Landroid/view/View;

    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->componentListener:Lcom/google/android/exoplayer2/ui/PlaybackControlView$ComponentListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 362
    :cond_5
    sget v3, Lcom/google/android/exoplayer2/ui/R$id;->exo_rew:I

    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->rewindButton:Landroid/view/View;

    .line 363
    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->rewindButton:Landroid/view/View;

    if-eqz v3, :cond_6

    .line 364
    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->rewindButton:Landroid/view/View;

    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->componentListener:Lcom/google/android/exoplayer2/ui/PlaybackControlView$ComponentListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 366
    :cond_6
    sget v3, Lcom/google/android/exoplayer2/ui/R$id;->exo_ffwd:I

    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->fastForwardButton:Landroid/view/View;

    .line 367
    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->fastForwardButton:Landroid/view/View;

    if-eqz v3, :cond_7

    .line 368
    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->fastForwardButton:Landroid/view/View;

    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->componentListener:Lcom/google/android/exoplayer2/ui/PlaybackControlView$ComponentListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 370
    :cond_7
    sget v3, Lcom/google/android/exoplayer2/ui/R$id;->exo_repeat_toggle:I

    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->repeatToggleButton:Landroid/widget/ImageView;

    .line 371
    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->repeatToggleButton:Landroid/widget/ImageView;

    if-eqz v3, :cond_8

    .line 372
    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->repeatToggleButton:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->componentListener:Lcom/google/android/exoplayer2/ui/PlaybackControlView$ComponentListener;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 374
    :cond_8
    sget v3, Lcom/google/android/exoplayer2/ui/R$id;->exo_shuffle:I

    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->shuffleButton:Landroid/view/View;

    .line 375
    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->shuffleButton:Landroid/view/View;

    if-eqz v3, :cond_9

    .line 376
    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->shuffleButton:Landroid/view/View;

    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->componentListener:Lcom/google/android/exoplayer2/ui/PlaybackControlView$ComponentListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 378
    :cond_9
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 379
    .local v2, "resources":Landroid/content/res/Resources;
    sget v3, Lcom/google/android/exoplayer2/ui/R$drawable;->exo_controls_repeat_off:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->repeatOffButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 380
    sget v3, Lcom/google/android/exoplayer2/ui/R$drawable;->exo_controls_repeat_one:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->repeatOneButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 381
    sget v3, Lcom/google/android/exoplayer2/ui/R$drawable;->exo_controls_repeat_all:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->repeatAllButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 382
    sget v3, Lcom/google/android/exoplayer2/ui/R$string;->exo_controls_repeat_off_description:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->repeatOffButtonContentDescription:Ljava/lang/String;

    .line 384
    sget v3, Lcom/google/android/exoplayer2/ui/R$string;->exo_controls_repeat_one_description:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->repeatOneButtonContentDescription:Ljava/lang/String;

    .line 386
    sget v3, Lcom/google/android/exoplayer2/ui/R$string;->exo_controls_repeat_all_description:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->repeatAllButtonContentDescription:Ljava/lang/String;

    .line 388
    return-void

    .line 323
    .end local v2    # "resources":Landroid/content/res/Resources;
    .restart local v0    # "a":Landroid/content/res/TypedArray;
    :catchall_0
    move-exception v3

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v3
.end method

.method static synthetic access$100(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    .prologue
    .line 172
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->updateProgress()V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    .prologue
    .line 172
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->hideAfterTimeout()V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    .prologue
    .line 172
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->updatePlayPauseButton()V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    .prologue
    .line 172
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->updateRepeatModeButton()V

    return-void
.end method

.method static synthetic access$1300(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    .prologue
    .line 172
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->updateNavigation()V

    return-void
.end method

.method static synthetic access$1400(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    .prologue
    .line 172
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->updateShuffleButton()V

    return-void
.end method

.method static synthetic access$1500(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    .prologue
    .line 172
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->updateTimeBarMode()V

    return-void
.end method

.method static synthetic access$1600(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    .prologue
    .line 172
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->nextButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    .prologue
    .line 172
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->next()V

    return-void
.end method

.method static synthetic access$1800(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    .prologue
    .line 172
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->previousButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    .prologue
    .line 172
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->previous()V

    return-void
.end method

.method static synthetic access$2000(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    .prologue
    .line 172
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->fastForwardButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    .prologue
    .line 172
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->fastForward()V

    return-void
.end method

.method static synthetic access$2200(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    .prologue
    .line 172
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->rewindButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    .prologue
    .line 172
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->rewind()V

    return-void
.end method

.method static synthetic access$2400(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    .prologue
    .line 172
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->playButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)Lcom/google/android/exoplayer2/ControlDispatcher;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    .prologue
    .line 172
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->controlDispatcher:Lcom/google/android/exoplayer2/ControlDispatcher;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    .prologue
    .line 172
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->pauseButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    .prologue
    .line 172
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->repeatToggleButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    .prologue
    .line 172
    iget v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->repeatToggleModes:I

    return v0
.end method

.method static synthetic access$2900(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    .prologue
    .line 172
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->shuffleButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    .prologue
    .line 172
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->hideAction:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$402(Lcom/google/android/exoplayer2/ui/PlaybackControlView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ui/PlaybackControlView;
    .param p1, "x1"    # Z

    .prologue
    .line 172
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->scrubbing:Z

    return p1
.end method

.method static synthetic access$500(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    .prologue
    .line 172
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->positionView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)Ljava/lang/StringBuilder;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    .prologue
    .line 172
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->formatBuilder:Ljava/lang/StringBuilder;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)Ljava/util/Formatter;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    .prologue
    .line 172
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->formatter:Ljava/util/Formatter;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)Lcom/google/android/exoplayer2/Player;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    .prologue
    .line 172
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/Player;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/android/exoplayer2/ui/PlaybackControlView;J)V
    .locals 1
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ui/PlaybackControlView;
    .param p1, "x1"    # J

    .prologue
    .line 172
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->seekToTimeBarPosition(J)V

    return-void
.end method

.method private static canShowMultiWindowTimeBar(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/Timeline$Window;)Z
    .locals 8
    .param p0, "timeline"    # Lcom/google/android/exoplayer2/Timeline;
    .param p1, "window"    # Lcom/google/android/exoplayer2/Timeline$Window;

    .prologue
    const/4 v2, 0x0

    .line 1039
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/Timeline;->getWindowCount()I

    move-result v3

    const/16 v4, 0x64

    if-le v3, v4, :cond_1

    .line 1048
    :cond_0
    :goto_0
    return v2

    .line 1042
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/Timeline;->getWindowCount()I

    move-result v1

    .line 1043
    .local v1, "windowCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 1044
    invoke-virtual {p0, v0, p1}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object v3

    iget-wide v4, v3, Lcom/google/android/exoplayer2/Timeline$Window;->durationUs:J

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    .line 1043
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1048
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private fastForward()V
    .locals 8

    .prologue
    .line 902
    iget v4, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->fastForwardMs:I

    if-gtz v4, :cond_0

    .line 911
    :goto_0
    return-void

    .line 905
    :cond_0
    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v4}, Lcom/google/android/exoplayer2/Player;->getDuration()J

    move-result-wide v0

    .line 906
    .local v0, "durationMs":J
    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v4}, Lcom/google/android/exoplayer2/Player;->getCurrentPosition()J

    move-result-wide v4

    iget v6, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->fastForwardMs:I

    int-to-long v6, v6

    add-long v2, v4, v6

    .line 907
    .local v2, "seekPositionMs":J
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v4

    if-eqz v4, :cond_1

    .line 908
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 910
    :cond_1
    invoke-direct {p0, v2, v3}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->seekTo(J)V

    goto :goto_0
.end method

.method private static getRepeatToggleModes(Landroid/content/res/TypedArray;I)I
    .locals 1
    .param p0, "a"    # Landroid/content/res/TypedArray;
    .param p1, "repeatToggleModes"    # I

    .prologue
    .line 393
    sget v0, Lcom/google/android/exoplayer2/ui/R$styleable;->PlaybackControlView_repeat_toggle_modes:I

    invoke-virtual {p0, v0, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    return v0
.end method

.method private hideAfterTimeout()V
    .locals 4

    .prologue
    .line 612
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->hideAction:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 613
    iget v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->showTimeoutMs:I

    if-lez v0, :cond_1

    .line 614
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget v2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->showTimeoutMs:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->hideAtMs:J

    .line 615
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->isAttachedToWindow:Z

    if-eqz v0, :cond_0

    .line 616
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->hideAction:Ljava/lang/Runnable;

    iget v1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->showTimeoutMs:I

    int-to-long v2, v1

    invoke-virtual {p0, v0, v2, v3}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 621
    :cond_0
    :goto_0
    return-void

    .line 619
    :cond_1
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->hideAtMs:J

    goto :goto_0
.end method

.method private static isHandledMediaKey(I)Z
    .locals 1
    .param p0, "keyCode"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .prologue
    .line 1022
    const/16 v0, 0x5a

    if-eq p0, v0, :cond_0

    const/16 v0, 0x59

    if-eq p0, v0, :cond_0

    const/16 v0, 0x55

    if-eq p0, v0, :cond_0

    const/16 v0, 0x7e

    if-eq p0, v0, :cond_0

    const/16 v0, 0x7f

    if-eq p0, v0, :cond_0

    const/16 v0, 0x57

    if-eq p0, v0, :cond_0

    const/16 v0, 0x58

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private next()V
    .locals 8

    .prologue
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    .line 881
    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v3}, Lcom/google/android/exoplayer2/Player;->getCurrentTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v1

    .line 882
    .local v1, "timeline":Lcom/google/android/exoplayer2/Timeline;
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 892
    :cond_0
    :goto_0
    return-void

    .line 885
    :cond_1
    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v3}, Lcom/google/android/exoplayer2/Player;->getCurrentWindowIndex()I

    move-result v2

    .line 886
    .local v2, "windowIndex":I
    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v3}, Lcom/google/android/exoplayer2/Player;->getNextWindowIndex()I

    move-result v0

    .line 887
    .local v0, "nextWindowIndex":I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_2

    .line 888
    invoke-direct {p0, v0, v6, v7}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->seekTo(IJ)V

    goto :goto_0

    .line 889
    :cond_2
    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;Z)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object v3

    iget-boolean v3, v3, Lcom/google/android/exoplayer2/Timeline$Window;->isDynamic:Z

    if-eqz v3, :cond_0

    .line 890
    invoke-direct {p0, v2, v6, v7}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->seekTo(IJ)V

    goto :goto_0
.end method

.method private previous()V
    .locals 8

    .prologue
    .line 864
    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v3}, Lcom/google/android/exoplayer2/Player;->getCurrentTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v1

    .line 865
    .local v1, "timeline":Lcom/google/android/exoplayer2/Timeline;
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 878
    :goto_0
    return-void

    .line 868
    :cond_0
    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v3}, Lcom/google/android/exoplayer2/Player;->getCurrentWindowIndex()I

    move-result v2

    .line 869
    .local v2, "windowIndex":I
    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    .line 870
    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v3}, Lcom/google/android/exoplayer2/Player;->getPreviousWindowIndex()I

    move-result v0

    .line 871
    .local v0, "previousWindowIndex":I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_2

    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/Player;

    .line 872
    invoke-interface {v3}, Lcom/google/android/exoplayer2/Player;->getCurrentPosition()J

    move-result-wide v4

    const-wide/16 v6, 0xbb8

    cmp-long v3, v4, v6

    if-lez v3, :cond_1

    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    iget-boolean v3, v3, Lcom/google/android/exoplayer2/Timeline$Window;->isDynamic:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    iget-boolean v3, v3, Lcom/google/android/exoplayer2/Timeline$Window;->isSeekable:Z

    if-nez v3, :cond_2

    .line 874
    :cond_1
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {p0, v0, v4, v5}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->seekTo(IJ)V

    goto :goto_0

    .line 876
    :cond_2
    const-wide/16 v4, 0x0

    invoke-direct {p0, v4, v5}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->seekTo(J)V

    goto :goto_0
.end method

.method private requestPlayPauseFocus()V
    .locals 2

    .prologue
    .line 846
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/Player;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/Player;->getPlayWhenReady()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 847
    .local v0, "playing":Z
    :goto_0
    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->playButton:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 848
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->playButton:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 852
    :cond_0
    :goto_1
    return-void

    .line 846
    .end local v0    # "playing":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 849
    .restart local v0    # "playing":Z
    :cond_2
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->pauseButton:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 850
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->pauseButton:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    goto :goto_1
.end method

.method private rewind()V
    .locals 4

    .prologue
    .line 895
    iget v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->rewindMs:I

    if-gtz v0, :cond_0

    .line 899
    :goto_0
    return-void

    .line 898
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getCurrentPosition()J

    move-result-wide v0

    iget v2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->rewindMs:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->seekTo(J)V

    goto :goto_0
.end method

.method private seekTo(IJ)V
    .locals 4
    .param p1, "windowIndex"    # I
    .param p2, "positionMs"    # J

    .prologue
    .line 918
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->controlDispatcher:Lcom/google/android/exoplayer2/ControlDispatcher;

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v1, v2, p1, p2, p3}, Lcom/google/android/exoplayer2/ControlDispatcher;->dispatchSeekTo(Lcom/google/android/exoplayer2/Player;IJ)Z

    move-result v0

    .line 919
    .local v0, "dispatched":Z
    if-nez v0, :cond_0

    .line 922
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->updateProgress()V

    .line 924
    :cond_0
    return-void
.end method

.method private seekTo(J)V
    .locals 1
    .param p1, "positionMs"    # J

    .prologue
    .line 914
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getCurrentWindowIndex()I

    move-result v0

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->seekTo(IJ)V

    .line 915
    return-void
.end method

.method private seekToTimeBarPosition(J)V
    .locals 7
    .param p1, "positionMs"    # J

    .prologue
    .line 928
    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v5}, Lcom/google/android/exoplayer2/Player;->getCurrentTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v0

    .line 929
    .local v0, "timeline":Lcom/google/android/exoplayer2/Timeline;
    iget-boolean v5, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->multiWindowTimeBar:Z

    if-eqz v5, :cond_2

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 930
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->getWindowCount()I

    move-result v1

    .line 931
    .local v1, "windowCount":I
    const/4 v4, 0x0

    .line 933
    .local v4, "windowIndex":I
    :goto_0
    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-virtual {v0, v4, v5}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/Timeline$Window;->getDurationMs()J

    move-result-wide v2

    .line 934
    .local v2, "windowDurationMs":J
    cmp-long v5, p1, v2

    if-gez v5, :cond_0

    .line 947
    .end local v1    # "windowCount":I
    .end local v2    # "windowDurationMs":J
    :goto_1
    invoke-direct {p0, v4, p1, p2}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->seekTo(IJ)V

    .line 948
    return-void

    .line 936
    .restart local v1    # "windowCount":I
    .restart local v2    # "windowDurationMs":J
    :cond_0
    add-int/lit8 v5, v1, -0x1

    if-ne v4, v5, :cond_1

    .line 938
    move-wide p1, v2

    .line 939
    goto :goto_1

    .line 941
    :cond_1
    sub-long/2addr p1, v2

    .line 942
    add-int/lit8 v4, v4, 0x1

    .line 943
    goto :goto_0

    .line 945
    .end local v1    # "windowCount":I
    .end local v2    # "windowDurationMs":J
    .end local v4    # "windowIndex":I
    :cond_2
    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v5}, Lcom/google/android/exoplayer2/Player;->getCurrentWindowIndex()I

    move-result v4

    .restart local v4    # "windowIndex":I
    goto :goto_1
.end method

.method private setButtonEnabled(ZLandroid/view/View;)V
    .locals 1
    .param p1, "enabled"    # Z
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 855
    if-nez p2, :cond_0

    .line 861
    :goto_0
    return-void

    .line 858
    :cond_0
    invoke-virtual {p2, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 859
    if-eqz p1, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_1
    invoke-virtual {p2, v0}, Landroid/view/View;->setAlpha(F)V

    .line 860
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 859
    :cond_1
    const v0, 0x3e99999a    # 0.3f

    goto :goto_1
.end method

.method private updateAll()V
    .locals 0

    .prologue
    .line 624
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->updatePlayPauseButton()V

    .line 625
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->updateNavigation()V

    .line 626
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->updateRepeatModeButton()V

    .line 627
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->updateShuffleButton()V

    .line 628
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->updateProgress()V

    .line 629
    return-void
.end method

.method private updateNavigation()V
    .locals 10

    .prologue
    const/4 v9, -0x1

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 651
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->isVisible()Z

    move-result v8

    if-eqz v8, :cond_0

    iget-boolean v8, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->isAttachedToWindow:Z

    if-nez v8, :cond_1

    .line 674
    :cond_0
    :goto_0
    return-void

    .line 654
    :cond_1
    iget-object v8, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/Player;

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v8}, Lcom/google/android/exoplayer2/Player;->getCurrentTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v4

    .line 655
    .local v4, "timeline":Lcom/google/android/exoplayer2/Timeline;
    :goto_1
    if-eqz v4, :cond_6

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_6

    move v2, v7

    .line 656
    .local v2, "haveNonEmptyTimeline":Z
    :goto_2
    const/4 v3, 0x0

    .line 657
    .local v3, "isSeekable":Z
    const/4 v1, 0x0

    .line 658
    .local v1, "enablePrevious":Z
    const/4 v0, 0x0

    .line 659
    .local v0, "enableNext":Z
    if-eqz v2, :cond_4

    iget-object v8, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v8}, Lcom/google/android/exoplayer2/Player;->isPlayingAd()Z

    move-result v8

    if-nez v8, :cond_4

    .line 660
    iget-object v8, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v8}, Lcom/google/android/exoplayer2/Player;->getCurrentWindowIndex()I

    move-result v5

    .line 661
    .local v5, "windowIndex":I
    iget-object v8, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-virtual {v4, v5, v8}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    .line 662
    iget-object v8, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    iget-boolean v3, v8, Lcom/google/android/exoplayer2/Timeline$Window;->isSeekable:Z

    .line 663
    if-nez v3, :cond_2

    iget-object v8, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    iget-boolean v8, v8, Lcom/google/android/exoplayer2/Timeline$Window;->isDynamic:Z

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/Player;

    .line 664
    invoke-interface {v8}, Lcom/google/android/exoplayer2/Player;->getPreviousWindowIndex()I

    move-result v8

    if-eq v8, v9, :cond_7

    :cond_2
    move v1, v7

    .line 665
    :goto_3
    iget-object v8, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    iget-boolean v8, v8, Lcom/google/android/exoplayer2/Timeline$Window;->isDynamic:Z

    if-nez v8, :cond_3

    iget-object v8, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v8}, Lcom/google/android/exoplayer2/Player;->getNextWindowIndex()I

    move-result v8

    if-eq v8, v9, :cond_8

    :cond_3
    move v0, v7

    .line 667
    .end local v5    # "windowIndex":I
    :cond_4
    :goto_4
    iget-object v8, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->previousButton:Landroid/view/View;

    invoke-direct {p0, v1, v8}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->setButtonEnabled(ZLandroid/view/View;)V

    .line 668
    iget-object v8, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->nextButton:Landroid/view/View;

    invoke-direct {p0, v0, v8}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->setButtonEnabled(ZLandroid/view/View;)V

    .line 669
    iget v8, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->fastForwardMs:I

    if-lez v8, :cond_9

    if-eqz v3, :cond_9

    move v8, v7

    :goto_5
    iget-object v9, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->fastForwardButton:Landroid/view/View;

    invoke-direct {p0, v8, v9}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->setButtonEnabled(ZLandroid/view/View;)V

    .line 670
    iget v8, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->rewindMs:I

    if-lez v8, :cond_a

    if-eqz v3, :cond_a

    :goto_6
    iget-object v6, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->rewindButton:Landroid/view/View;

    invoke-direct {p0, v7, v6}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->setButtonEnabled(ZLandroid/view/View;)V

    .line 671
    iget-object v6, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->timeBar:Lcom/google/android/exoplayer2/ui/TimeBar;

    if-eqz v6, :cond_0

    .line 672
    iget-object v6, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->timeBar:Lcom/google/android/exoplayer2/ui/TimeBar;

    invoke-interface {v6, v3}, Lcom/google/android/exoplayer2/ui/TimeBar;->setEnabled(Z)V

    goto :goto_0

    .line 654
    .end local v0    # "enableNext":Z
    .end local v1    # "enablePrevious":Z
    .end local v2    # "haveNonEmptyTimeline":Z
    .end local v3    # "isSeekable":Z
    .end local v4    # "timeline":Lcom/google/android/exoplayer2/Timeline;
    :cond_5
    const/4 v4, 0x0

    goto :goto_1

    .restart local v4    # "timeline":Lcom/google/android/exoplayer2/Timeline;
    :cond_6
    move v2, v6

    .line 655
    goto :goto_2

    .restart local v0    # "enableNext":Z
    .restart local v1    # "enablePrevious":Z
    .restart local v2    # "haveNonEmptyTimeline":Z
    .restart local v3    # "isSeekable":Z
    .restart local v5    # "windowIndex":I
    :cond_7
    move v1, v6

    .line 664
    goto :goto_3

    :cond_8
    move v0, v6

    .line 665
    goto :goto_4

    .end local v5    # "windowIndex":I
    :cond_9
    move v8, v6

    .line 669
    goto :goto_5

    :cond_a
    move v7, v6

    .line 670
    goto :goto_6
.end method

.method private updatePlayPauseButton()V
    .locals 7

    .prologue
    const/16 v5, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 632
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->isAttachedToWindow:Z

    if-nez v4, :cond_1

    .line 648
    :cond_0
    :goto_0
    return-void

    .line 635
    :cond_1
    const/4 v1, 0x0

    .line 636
    .local v1, "requestPlayPauseFocus":Z
    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/Player;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v4}, Lcom/google/android/exoplayer2/Player;->getPlayWhenReady()Z

    move-result v4

    if-eqz v4, :cond_4

    move v0, v2

    .line 637
    .local v0, "playing":Z
    :goto_1
    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->playButton:Landroid/view/View;

    if-eqz v4, :cond_2

    .line 638
    if-eqz v0, :cond_5

    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->playButton:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->isFocused()Z

    move-result v4

    if-eqz v4, :cond_5

    move v4, v2

    :goto_2
    or-int/2addr v1, v4

    .line 639
    iget-object v6, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->playButton:Landroid/view/View;

    if-eqz v0, :cond_6

    move v4, v5

    :goto_3
    invoke-virtual {v6, v4}, Landroid/view/View;->setVisibility(I)V

    .line 641
    :cond_2
    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->pauseButton:Landroid/view/View;

    if-eqz v4, :cond_3

    .line 642
    if-nez v0, :cond_7

    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->pauseButton:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->isFocused()Z

    move-result v4

    if-eqz v4, :cond_7

    :goto_4
    or-int/2addr v1, v2

    .line 643
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->pauseButton:Landroid/view/View;

    if-nez v0, :cond_8

    :goto_5
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 645
    :cond_3
    if-eqz v1, :cond_0

    .line 646
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->requestPlayPauseFocus()V

    goto :goto_0

    .end local v0    # "playing":Z
    :cond_4
    move v0, v3

    .line 636
    goto :goto_1

    .restart local v0    # "playing":Z
    :cond_5
    move v4, v3

    .line 638
    goto :goto_2

    :cond_6
    move v4, v3

    .line 639
    goto :goto_3

    :cond_7
    move v2, v3

    .line 642
    goto :goto_4

    :cond_8
    move v5, v3

    .line 643
    goto :goto_5
.end method

.method private updateProgress()V
    .locals 42

    .prologue
    .line 730
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->isVisible()Z

    move-result v38

    if-eqz v38, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->isAttachedToWindow:Z

    move/from16 v38, v0

    if-nez v38, :cond_1

    .line 843
    :cond_0
    :goto_0
    return-void

    .line 734
    :cond_1
    const-wide/16 v34, 0x0

    .line 735
    .local v34, "position":J
    const-wide/16 v10, 0x0

    .line 736
    .local v10, "bufferedPosition":J
    const-wide/16 v18, 0x0

    .line 737
    .local v18, "duration":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/Player;

    move-object/from16 v38, v0

    if-eqz v38, :cond_5

    .line 738
    const-wide/16 v14, 0x0

    .line 739
    .local v14, "currentWindowTimeBarOffsetUs":J
    const-wide/16 v20, 0x0

    .line 740
    .local v20, "durationUs":J
    const/4 v4, 0x0

    .line 741
    .local v4, "adGroupCount":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/Player;

    move-object/from16 v38, v0

    invoke-interface/range {v38 .. v38}, Lcom/google/android/exoplayer2/Player;->getCurrentTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v36

    .line 742
    .local v36, "timeline":Lcom/google/android/exoplayer2/Timeline;
    invoke-virtual/range {v36 .. v36}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v38

    if-nez v38, :cond_3

    .line 743
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/Player;

    move-object/from16 v38, v0

    invoke-interface/range {v38 .. v38}, Lcom/google/android/exoplayer2/Player;->getCurrentWindowIndex()I

    move-result v12

    .line 744
    .local v12, "currentWindowIndex":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->multiWindowTimeBar:Z

    move/from16 v38, v0

    if-eqz v38, :cond_9

    const/16 v22, 0x0

    .line 745
    .local v22, "firstWindowIndex":I
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->multiWindowTimeBar:Z

    move/from16 v38, v0

    if-eqz v38, :cond_a

    .line 746
    invoke-virtual/range {v36 .. v36}, Lcom/google/android/exoplayer2/Timeline;->getWindowCount()I

    move-result v38

    add-int/lit8 v25, v38, -0x1

    .line 747
    .local v25, "lastWindowIndex":I
    :goto_2
    move/from16 v23, v22

    .local v23, "i":I
    :goto_3
    move/from16 v0, v23

    move/from16 v1, v25

    if-gt v0, v1, :cond_3

    .line 748
    move/from16 v0, v23

    if-ne v0, v12, :cond_2

    .line 749
    move-wide/from16 v14, v20

    .line 751
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    move-object/from16 v38, v0

    move-object/from16 v0, v36

    move/from16 v1, v23

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    .line 752
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-wide v0, v0, Lcom/google/android/exoplayer2/Timeline$Window;->durationUs:J

    move-wide/from16 v38, v0

    const-wide v40, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v38, v38, v40

    if-nez v38, :cond_c

    .line 753
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->multiWindowTimeBar:Z

    move/from16 v38, v0

    if-nez v38, :cond_b

    const/16 v38, 0x1

    :goto_4
    invoke-static/range {v38 .. v38}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 784
    .end local v12    # "currentWindowIndex":I
    .end local v22    # "firstWindowIndex":I
    .end local v23    # "i":I
    .end local v25    # "lastWindowIndex":I
    :cond_3
    invoke-static/range {v20 .. v21}, Lcom/google/android/exoplayer2/C;->usToMs(J)J

    move-result-wide v18

    .line 785
    invoke-static {v14, v15}, Lcom/google/android/exoplayer2/C;->usToMs(J)J

    move-result-wide v34

    .line 786
    move-wide/from16 v10, v34

    .line 787
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/Player;

    move-object/from16 v38, v0

    invoke-interface/range {v38 .. v38}, Lcom/google/android/exoplayer2/Player;->isPlayingAd()Z

    move-result v38

    if-eqz v38, :cond_14

    .line 788
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/Player;

    move-object/from16 v38, v0

    invoke-interface/range {v38 .. v38}, Lcom/google/android/exoplayer2/Player;->getContentPosition()J

    move-result-wide v38

    add-long v34, v34, v38

    .line 789
    move-wide/from16 v10, v34

    .line 794
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->timeBar:Lcom/google/android/exoplayer2/ui/TimeBar;

    move-object/from16 v38, v0

    if-eqz v38, :cond_5

    .line 795
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->extraAdGroupTimesMs:[J

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    array-length v13, v0

    .line 796
    .local v13, "extraAdGroupCount":I
    add-int v37, v4, v13

    .line 797
    .local v37, "totalAdGroupCount":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->adGroupTimesMs:[J

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    array-length v0, v0

    move/from16 v38, v0

    move/from16 v0, v37

    move/from16 v1, v38

    if-le v0, v1, :cond_4

    .line 798
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->adGroupTimesMs:[J

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move/from16 v1, v37

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->adGroupTimesMs:[J

    .line 799
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->playedAdGroups:[Z

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move/from16 v1, v37

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->playedAdGroups:[Z

    .line 801
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->extraAdGroupTimesMs:[J

    move-object/from16 v38, v0

    const/16 v39, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->adGroupTimesMs:[J

    move-object/from16 v40, v0

    move-object/from16 v0, v38

    move/from16 v1, v39

    move-object/from16 v2, v40

    invoke-static {v0, v1, v2, v4, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 802
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->extraPlayedAdGroups:[Z

    move-object/from16 v38, v0

    const/16 v39, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->playedAdGroups:[Z

    move-object/from16 v40, v0

    move-object/from16 v0, v38

    move/from16 v1, v39

    move-object/from16 v2, v40

    invoke-static {v0, v1, v2, v4, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 803
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->timeBar:Lcom/google/android/exoplayer2/ui/TimeBar;

    move-object/from16 v38, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->adGroupTimesMs:[J

    move-object/from16 v39, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->playedAdGroups:[Z

    move-object/from16 v40, v0

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    move-object/from16 v2, v40

    move/from16 v3, v37

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/ui/TimeBar;->setAdGroupTimesMs([J[ZI)V

    .line 806
    .end local v4    # "adGroupCount":I
    .end local v13    # "extraAdGroupCount":I
    .end local v14    # "currentWindowTimeBarOffsetUs":J
    .end local v20    # "durationUs":J
    .end local v36    # "timeline":Lcom/google/android/exoplayer2/Timeline;
    .end local v37    # "totalAdGroupCount":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->durationView:Landroid/widget/TextView;

    move-object/from16 v38, v0

    if-eqz v38, :cond_6

    .line 807
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->durationView:Landroid/widget/TextView;

    move-object/from16 v38, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->formatBuilder:Ljava/lang/StringBuilder;

    move-object/from16 v39, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->formatter:Ljava/util/Formatter;

    move-object/from16 v40, v0

    move-object/from16 v0, v39

    move-object/from16 v1, v40

    move-wide/from16 v2, v18

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/util/Util;->getStringForTime(Ljava/lang/StringBuilder;Ljava/util/Formatter;J)Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 809
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->positionView:Landroid/widget/TextView;

    move-object/from16 v38, v0

    if-eqz v38, :cond_7

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->scrubbing:Z

    move/from16 v38, v0

    if-nez v38, :cond_7

    .line 810
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->positionView:Landroid/widget/TextView;

    move-object/from16 v38, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->formatBuilder:Ljava/lang/StringBuilder;

    move-object/from16 v39, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->formatter:Ljava/util/Formatter;

    move-object/from16 v40, v0

    move-object/from16 v0, v39

    move-object/from16 v1, v40

    move-wide/from16 v2, v34

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/util/Util;->getStringForTime(Ljava/lang/StringBuilder;Ljava/util/Formatter;J)Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 812
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->timeBar:Lcom/google/android/exoplayer2/ui/TimeBar;

    move-object/from16 v38, v0

    if-eqz v38, :cond_8

    .line 813
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->timeBar:Lcom/google/android/exoplayer2/ui/TimeBar;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move-wide/from16 v1, v34

    invoke-interface {v0, v1, v2}, Lcom/google/android/exoplayer2/ui/TimeBar;->setPosition(J)V

    .line 814
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->timeBar:Lcom/google/android/exoplayer2/ui/TimeBar;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    invoke-interface {v0, v10, v11}, Lcom/google/android/exoplayer2/ui/TimeBar;->setBufferedPosition(J)V

    .line 815
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->timeBar:Lcom/google/android/exoplayer2/ui/TimeBar;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move-wide/from16 v1, v18

    invoke-interface {v0, v1, v2}, Lcom/google/android/exoplayer2/ui/TimeBar;->setDuration(J)V

    .line 819
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->updateProgressAction:Ljava/lang/Runnable;

    move-object/from16 v38, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 820
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/Player;

    move-object/from16 v38, v0

    if-nez v38, :cond_15

    const/16 v33, 0x1

    .line 821
    .local v33, "playbackState":I
    :goto_6
    const/16 v38, 0x1

    move/from16 v0, v33

    move/from16 v1, v38

    if-eq v0, v1, :cond_0

    const/16 v38, 0x4

    move/from16 v0, v33

    move/from16 v1, v38

    if-eq v0, v1, :cond_0

    .line 823
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/Player;

    move-object/from16 v38, v0

    invoke-interface/range {v38 .. v38}, Lcom/google/android/exoplayer2/Player;->getPlayWhenReady()Z

    move-result v38

    if-eqz v38, :cond_1a

    const/16 v38, 0x3

    move/from16 v0, v33

    move/from16 v1, v38

    if-ne v0, v1, :cond_1a

    .line 824
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/Player;

    move-object/from16 v38, v0

    invoke-interface/range {v38 .. v38}, Lcom/google/android/exoplayer2/Player;->getPlaybackParameters()Lcom/google/android/exoplayer2/PlaybackParameters;

    move-result-object v38

    move-object/from16 v0, v38

    iget v0, v0, Lcom/google/android/exoplayer2/PlaybackParameters;->speed:F

    move/from16 v32, v0

    .line 825
    .local v32, "playbackSpeed":F
    const v38, 0x3dcccccd    # 0.1f

    cmpg-float v38, v32, v38

    if-gtz v38, :cond_16

    .line 826
    const-wide/16 v16, 0x3e8

    .line 841
    .end local v32    # "playbackSpeed":F
    .local v16, "delayMs":J
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->updateProgressAction:Ljava/lang/Runnable;

    move-object/from16 v38, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    move-wide/from16 v2, v16

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .end local v16    # "delayMs":J
    .end local v33    # "playbackState":I
    .restart local v4    # "adGroupCount":I
    .restart local v12    # "currentWindowIndex":I
    .restart local v14    # "currentWindowTimeBarOffsetUs":J
    .restart local v20    # "durationUs":J
    .restart local v36    # "timeline":Lcom/google/android/exoplayer2/Timeline;
    :cond_9
    move/from16 v22, v12

    .line 744
    goto/16 :goto_1

    .restart local v22    # "firstWindowIndex":I
    :cond_a
    move/from16 v25, v12

    .line 746
    goto/16 :goto_2

    .line 753
    .restart local v23    # "i":I
    .restart local v25    # "lastWindowIndex":I
    :cond_b
    const/16 v38, 0x0

    goto/16 :goto_4

    .line 756
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget v0, v0, Lcom/google/android/exoplayer2/Timeline$Window;->firstPeriodIndex:I

    move/from16 v24, v0

    .local v24, "j":I
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget v0, v0, Lcom/google/android/exoplayer2/Timeline$Window;->lastPeriodIndex:I

    move/from16 v38, v0

    move/from16 v0, v24

    move/from16 v1, v38

    if-gt v0, v1, :cond_13

    .line 757
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    move-object/from16 v38, v0

    move-object/from16 v0, v36

    move/from16 v1, v24

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    .line 758
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Lcom/google/android/exoplayer2/Timeline$Period;->getAdGroupCount()I

    move-result v31

    .line 759
    .local v31, "periodAdGroupCount":I
    const/4 v5, 0x0

    .local v5, "adGroupIndex":I
    :goto_9
    move/from16 v0, v31

    if-ge v5, v0, :cond_12

    .line 760
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/Timeline$Period;->getAdGroupTimeUs(I)J

    move-result-wide v6

    .line 761
    .local v6, "adGroupTimeInPeriodUs":J
    const-wide/high16 v38, -0x8000000000000000L

    cmp-long v38, v6, v38

    if-nez v38, :cond_f

    .line 762
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-wide v0, v0, Lcom/google/android/exoplayer2/Timeline$Period;->durationUs:J

    move-wide/from16 v38, v0

    const-wide v40, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v38, v38, v40

    if-nez v38, :cond_e

    .line 759
    :cond_d
    :goto_a
    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    .line 766
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-wide v6, v0, Lcom/google/android/exoplayer2/Timeline$Period;->durationUs:J

    .line 768
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Lcom/google/android/exoplayer2/Timeline$Period;->getPositionInWindowUs()J

    move-result-wide v38

    add-long v8, v6, v38

    .line 769
    .local v8, "adGroupTimeInWindowUs":J
    const-wide/16 v38, 0x0

    cmp-long v38, v8, v38

    if-ltz v38, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-wide v0, v0, Lcom/google/android/exoplayer2/Timeline$Window;->durationUs:J

    move-wide/from16 v38, v0

    cmp-long v38, v8, v38

    if-gtz v38, :cond_d

    .line 770
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->adGroupTimesMs:[J

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    array-length v0, v0

    move/from16 v38, v0

    move/from16 v0, v38

    if-ne v4, v0, :cond_10

    .line 771
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->adGroupTimesMs:[J

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    array-length v0, v0

    move/from16 v38, v0

    if-nez v38, :cond_11

    const/16 v30, 0x1

    .line 772
    .local v30, "newLength":I
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->adGroupTimesMs:[J

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move/from16 v1, v30

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->adGroupTimesMs:[J

    .line 773
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->playedAdGroups:[Z

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move/from16 v1, v30

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->playedAdGroups:[Z

    .line 775
    .end local v30    # "newLength":I
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->adGroupTimesMs:[J

    move-object/from16 v38, v0

    add-long v40, v20, v8

    invoke-static/range {v40 .. v41}, Lcom/google/android/exoplayer2/C;->usToMs(J)J

    move-result-wide v40

    aput-wide v40, v38, v4

    .line 776
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->playedAdGroups:[Z

    move-object/from16 v38, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/Timeline$Period;->hasPlayedAdGroup(I)Z

    move-result v39

    aput-boolean v39, v38, v4

    .line 777
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_a

    .line 771
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->adGroupTimesMs:[J

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    array-length v0, v0

    move/from16 v38, v0

    mul-int/lit8 v30, v38, 0x2

    goto :goto_b

    .line 756
    .end local v6    # "adGroupTimeInPeriodUs":J
    .end local v8    # "adGroupTimeInWindowUs":J
    :cond_12
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_8

    .line 781
    .end local v5    # "adGroupIndex":I
    .end local v31    # "periodAdGroupCount":I
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-wide v0, v0, Lcom/google/android/exoplayer2/Timeline$Window;->durationUs:J

    move-wide/from16 v38, v0

    add-long v20, v20, v38

    .line 747
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_3

    .line 791
    .end local v12    # "currentWindowIndex":I
    .end local v22    # "firstWindowIndex":I
    .end local v23    # "i":I
    .end local v24    # "j":I
    .end local v25    # "lastWindowIndex":I
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/Player;

    move-object/from16 v38, v0

    invoke-interface/range {v38 .. v38}, Lcom/google/android/exoplayer2/Player;->getCurrentPosition()J

    move-result-wide v38

    add-long v34, v34, v38

    .line 792
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/Player;

    move-object/from16 v38, v0

    invoke-interface/range {v38 .. v38}, Lcom/google/android/exoplayer2/Player;->getBufferedPosition()J

    move-result-wide v38

    add-long v10, v10, v38

    goto/16 :goto_5

    .line 820
    .end local v4    # "adGroupCount":I
    .end local v14    # "currentWindowTimeBarOffsetUs":J
    .end local v20    # "durationUs":J
    .end local v36    # "timeline":Lcom/google/android/exoplayer2/Timeline;
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/Player;

    move-object/from16 v38, v0

    invoke-interface/range {v38 .. v38}, Lcom/google/android/exoplayer2/Player;->getPlaybackState()I

    move-result v33

    goto/16 :goto_6

    .line 827
    .restart local v32    # "playbackSpeed":F
    .restart local v33    # "playbackState":I
    :cond_16
    const/high16 v38, 0x40a00000    # 5.0f

    cmpg-float v38, v32, v38

    if-gtz v38, :cond_19

    .line 828
    const/16 v38, 0x3e8

    const/16 v39, 0x1

    const/high16 v40, 0x3f800000    # 1.0f

    div-float v40, v40, v32

    invoke-static/range {v40 .. v40}, Ljava/lang/Math;->round(F)I

    move-result v40

    invoke-static/range {v39 .. v40}, Ljava/lang/Math;->max(II)I

    move-result v39

    div-int v38, v38, v39

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v28, v0

    .line 829
    .local v28, "mediaTimeUpdatePeriodMs":J
    rem-long v38, v34, v28

    sub-long v26, v28, v38

    .line 830
    .local v26, "mediaTimeDelayMs":J
    const-wide/16 v38, 0x5

    div-long v38, v28, v38

    cmp-long v38, v26, v38

    if-gez v38, :cond_17

    .line 831
    add-long v26, v26, v28

    .line 833
    :cond_17
    const/high16 v38, 0x3f800000    # 1.0f

    cmpl-float v38, v32, v38

    if-nez v38, :cond_18

    move-wide/from16 v16, v26

    .line 835
    .restart local v16    # "delayMs":J
    :goto_c
    goto/16 :goto_7

    .line 833
    .end local v16    # "delayMs":J
    :cond_18
    move-wide/from16 v0, v26

    long-to-float v0, v0

    move/from16 v38, v0

    div-float v38, v38, v32

    move/from16 v0, v38

    float-to-long v0, v0

    move-wide/from16 v16, v0

    goto :goto_c

    .line 836
    .end local v26    # "mediaTimeDelayMs":J
    .end local v28    # "mediaTimeUpdatePeriodMs":J
    :cond_19
    const-wide/16 v16, 0xc8

    .restart local v16    # "delayMs":J
    goto/16 :goto_7

    .line 839
    .end local v16    # "delayMs":J
    .end local v32    # "playbackSpeed":F
    :cond_1a
    const-wide/16 v16, 0x3e8

    .restart local v16    # "delayMs":J
    goto/16 :goto_7
.end method

.method private updateRepeatModeButton()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 677
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->isAttachedToWindow:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->repeatToggleButton:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    .line 704
    :cond_0
    :goto_0
    return-void

    .line 680
    :cond_1
    iget v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->repeatToggleModes:I

    if-nez v0, :cond_2

    .line 681
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->repeatToggleButton:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 684
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/Player;

    if-nez v0, :cond_3

    .line 685
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->repeatToggleButton:Landroid/widget/ImageView;

    invoke-direct {p0, v2, v0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->setButtonEnabled(ZLandroid/view/View;)V

    goto :goto_0

    .line 688
    :cond_3
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->repeatToggleButton:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->setButtonEnabled(ZLandroid/view/View;)V

    .line 689
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getRepeatMode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 703
    :goto_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->repeatToggleButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 691
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->repeatToggleButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->repeatOffButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 692
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->repeatToggleButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->repeatOffButtonContentDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 695
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->repeatToggleButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->repeatOneButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 696
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->repeatToggleButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->repeatOneButtonContentDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 699
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->repeatToggleButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->repeatAllButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 700
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->repeatToggleButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->repeatAllButtonContentDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 689
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private updateShuffleButton()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 707
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->isAttachedToWindow:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->shuffleButton:Landroid/view/View;

    if-nez v0, :cond_1

    .line 719
    :cond_0
    :goto_0
    return-void

    .line 710
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->showShuffleButton:Z

    if-nez v0, :cond_2

    .line 711
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->shuffleButton:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 712
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/Player;

    if-nez v0, :cond_3

    .line 713
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->shuffleButton:Landroid/view/View;

    invoke-direct {p0, v2, v0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->setButtonEnabled(ZLandroid/view/View;)V

    goto :goto_0

    .line 715
    :cond_3
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->shuffleButton:Landroid/view/View;

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getShuffleModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 716
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->shuffleButton:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 717
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->shuffleButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 715
    :cond_4
    const v0, 0x3e99999a    # 0.3f

    goto :goto_1
.end method

.method private updateTimeBarMode()V
    .locals 2

    .prologue
    .line 722
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/Player;

    if-nez v0, :cond_0

    .line 727
    :goto_0
    return-void

    .line 725
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->showMultiWindowTimeBar:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/Player;

    .line 726
    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getCurrentTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->canShowMultiWindowTimeBar(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/Timeline$Window;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->multiWindowTimeBar:Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 975
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchMediaKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 986
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 987
    .local v0, "keyCode":I
    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/Player;

    if-eqz v3, :cond_0

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->isHandledMediaKey(I)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_0
    move v2, v1

    .line 1017
    :cond_1
    :goto_0
    return v2

    .line 990
    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_1

    .line 991
    const/16 v3, 0x5a

    if-ne v0, v3, :cond_3

    .line 992
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->fastForward()V

    goto :goto_0

    .line 993
    :cond_3
    const/16 v3, 0x59

    if-ne v0, v3, :cond_4

    .line 994
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->rewind()V

    goto :goto_0

    .line 995
    :cond_4
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-nez v3, :cond_1

    .line 996
    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 998
    :sswitch_0
    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->controlDispatcher:Lcom/google/android/exoplayer2/ControlDispatcher;

    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/Player;

    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v5}, Lcom/google/android/exoplayer2/Player;->getPlayWhenReady()Z

    move-result v5

    if-nez v5, :cond_5

    move v1, v2

    :cond_5
    invoke-interface {v3, v4, v1}, Lcom/google/android/exoplayer2/ControlDispatcher;->dispatchSetPlayWhenReady(Lcom/google/android/exoplayer2/Player;Z)Z

    goto :goto_0

    .line 1001
    :sswitch_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->controlDispatcher:Lcom/google/android/exoplayer2/ControlDispatcher;

    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v1, v3, v2}, Lcom/google/android/exoplayer2/ControlDispatcher;->dispatchSetPlayWhenReady(Lcom/google/android/exoplayer2/Player;Z)Z

    goto :goto_0

    .line 1004
    :sswitch_2
    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->controlDispatcher:Lcom/google/android/exoplayer2/ControlDispatcher;

    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v3, v4, v1}, Lcom/google/android/exoplayer2/ControlDispatcher;->dispatchSetPlayWhenReady(Lcom/google/android/exoplayer2/Player;Z)Z

    goto :goto_0

    .line 1007
    :sswitch_3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->next()V

    goto :goto_0

    .line 1010
    :sswitch_4
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->previous()V

    goto :goto_0

    .line 996
    nop

    :sswitch_data_0
    .sparse-switch
        0x55 -> :sswitch_0
        0x57 -> :sswitch_3
        0x58 -> :sswitch_4
        0x7e -> :sswitch_1
        0x7f -> :sswitch_2
    .end sparse-switch
.end method

.method public getPlayer()Lcom/google/android/exoplayer2/Player;
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/Player;

    return-object v0
.end method

.method public getRepeatToggleModes()I
    .locals 1

    .prologue
    .line 530
    iget v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->repeatToggleModes:I

    return v0
.end method

.method public getShowShuffleButton()Z
    .locals 1

    .prologue
    .line 559
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->showShuffleButton:Z

    return v0
.end method

.method public getShowTimeoutMs()I
    .locals 1

    .prologue
    .line 510
    iget v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->showTimeoutMs:I

    return v0
.end method

.method public hide()V
    .locals 2

    .prologue
    .line 593
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 594
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->setVisibility(I)V

    .line 595
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->visibilityListener:Lcom/google/android/exoplayer2/ui/PlaybackControlView$VisibilityListener;

    if-eqz v0, :cond_0

    .line 596
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->visibilityListener:Lcom/google/android/exoplayer2/ui/PlaybackControlView$VisibilityListener;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->getVisibility()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/ui/PlaybackControlView$VisibilityListener;->onVisibilityChange(I)V

    .line 598
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->updateProgressAction:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 599
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->hideAction:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 600
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->hideAtMs:J

    .line 602
    :cond_1
    return-void
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 608
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAttachedToWindow()V
    .locals 6

    .prologue
    .line 952
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 953
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->isAttachedToWindow:Z

    .line 954
    iget-wide v2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->hideAtMs:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 955
    iget-wide v2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->hideAtMs:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long v0, v2, v4

    .line 956
    .local v0, "delayMs":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_1

    .line 957
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->hide()V

    .line 962
    .end local v0    # "delayMs":J
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->updateAll()V

    .line 963
    return-void

    .line 959
    .restart local v0    # "delayMs":J
    :cond_1
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->hideAction:Ljava/lang/Runnable;

    invoke-virtual {p0, v2, v0, v1}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 967
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 968
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->isAttachedToWindow:Z

    .line 969
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->updateProgressAction:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 970
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->hideAction:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 971
    return-void
.end method

.method public setControlDispatcher(Lcom/google/android/exoplayer2/ControlDispatcher;)V
    .locals 0
    .param p1, "controlDispatcher"    # Lcom/google/android/exoplayer2/ControlDispatcher;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 476
    if-nez p1, :cond_0

    new-instance p1, Lcom/google/android/exoplayer2/DefaultControlDispatcher;

    .end local p1    # "controlDispatcher":Lcom/google/android/exoplayer2/ControlDispatcher;
    invoke-direct {p1}, Lcom/google/android/exoplayer2/DefaultControlDispatcher;-><init>()V

    :cond_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->controlDispatcher:Lcom/google/android/exoplayer2/ControlDispatcher;

    .line 478
    return-void
.end method

.method public setExtraAdGroupMarkers([J[Z)V
    .locals 3
    .param p1, "extraAdGroupTimesMs"    # [J
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "extraPlayedAdGroups"    # [Z
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    .line 448
    if-nez p1, :cond_0

    .line 449
    new-array v1, v0, [J

    iput-object v1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->extraAdGroupTimesMs:[J

    .line 450
    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->extraPlayedAdGroups:[Z

    .line 456
    :goto_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->updateProgress()V

    .line 457
    return-void

    .line 452
    :cond_0
    array-length v1, p1

    array-length v2, p2

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 453
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->extraAdGroupTimesMs:[J

    .line 454
    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->extraPlayedAdGroups:[Z

    goto :goto_0
.end method

.method public setFastForwardIncrementMs(I)V
    .locals 0
    .param p1, "fastForwardMs"    # I

    .prologue
    .line 498
    iput p1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->fastForwardMs:I

    .line 499
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->updateNavigation()V

    .line 500
    return-void
.end method

.method public setPlayer(Lcom/google/android/exoplayer2/Player;)V
    .locals 2
    .param p1, "player"    # Lcom/google/android/exoplayer2/Player;

    .prologue
    .line 410
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/Player;

    if-ne v0, p1, :cond_0

    .line 421
    :goto_0
    return-void

    .line 413
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/Player;

    if-eqz v0, :cond_1

    .line 414
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/Player;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->componentListener:Lcom/google/android/exoplayer2/ui/PlaybackControlView$ComponentListener;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/Player;->removeListener(Lcom/google/android/exoplayer2/Player$EventListener;)V

    .line 416
    :cond_1
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/Player;

    .line 417
    if-eqz p1, :cond_2

    .line 418
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->componentListener:Lcom/google/android/exoplayer2/ui/PlaybackControlView$ComponentListener;

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/Player;->addListener(Lcom/google/android/exoplayer2/Player$EventListener;)V

    .line 420
    :cond_2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->updateAll()V

    goto :goto_0
.end method

.method public setRepeatToggleModes(I)V
    .locals 5
    .param p1, "repeatToggleModes"    # I

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 539
    iput p1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->repeatToggleModes:I

    .line 540
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/Player;

    if-eqz v1, :cond_0

    .line 541
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/Player;->getRepeatMode()I

    move-result v0

    .line 542
    .local v0, "currentMode":I
    if-nez p1, :cond_1

    if-eqz v0, :cond_1

    .line 544
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->controlDispatcher:Lcom/google/android/exoplayer2/ControlDispatcher;

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/Player;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/google/android/exoplayer2/ControlDispatcher;->dispatchSetRepeatMode(Lcom/google/android/exoplayer2/Player;I)Z

    .line 553
    .end local v0    # "currentMode":I
    :cond_0
    :goto_0
    return-void

    .line 545
    .restart local v0    # "currentMode":I
    :cond_1
    if-ne p1, v3, :cond_2

    if-ne v0, v4, :cond_2

    .line 547
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->controlDispatcher:Lcom/google/android/exoplayer2/ControlDispatcher;

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v1, v2, v3}, Lcom/google/android/exoplayer2/ControlDispatcher;->dispatchSetRepeatMode(Lcom/google/android/exoplayer2/Player;I)Z

    goto :goto_0

    .line 548
    :cond_2
    if-ne p1, v4, :cond_0

    if-ne v0, v3, :cond_0

    .line 550
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->controlDispatcher:Lcom/google/android/exoplayer2/ControlDispatcher;

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v1, v2, v4}, Lcom/google/android/exoplayer2/ControlDispatcher;->dispatchSetRepeatMode(Lcom/google/android/exoplayer2/Player;I)Z

    goto :goto_0
.end method

.method public setRewindIncrementMs(I)V
    .locals 0
    .param p1, "rewindMs"    # I

    .prologue
    .line 487
    iput p1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->rewindMs:I

    .line 488
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->updateNavigation()V

    .line 489
    return-void
.end method

.method public setShowMultiWindowTimeBar(Z)V
    .locals 0
    .param p1, "showMultiWindowTimeBar"    # Z

    .prologue
    .line 432
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->showMultiWindowTimeBar:Z

    .line 433
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->updateTimeBarMode()V

    .line 434
    return-void
.end method

.method public setShowShuffleButton(Z)V
    .locals 0
    .param p1, "showShuffleButton"    # Z

    .prologue
    .line 568
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->showShuffleButton:Z

    .line 569
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->updateShuffleButton()V

    .line 570
    return-void
.end method

.method public setShowTimeoutMs(I)V
    .locals 0
    .param p1, "showTimeoutMs"    # I

    .prologue
    .line 521
    iput p1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->showTimeoutMs:I

    .line 522
    return-void
.end method

.method public setVisibilityListener(Lcom/google/android/exoplayer2/ui/PlaybackControlView$VisibilityListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/google/android/exoplayer2/ui/PlaybackControlView$VisibilityListener;

    .prologue
    .line 465
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->visibilityListener:Lcom/google/android/exoplayer2/ui/PlaybackControlView$VisibilityListener;

    .line 466
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 577
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->isVisible()Z

    move-result v0

    if-nez v0, :cond_1

    .line 578
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->setVisibility(I)V

    .line 579
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->visibilityListener:Lcom/google/android/exoplayer2/ui/PlaybackControlView$VisibilityListener;

    if-eqz v0, :cond_0

    .line 580
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->visibilityListener:Lcom/google/android/exoplayer2/ui/PlaybackControlView$VisibilityListener;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->getVisibility()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/ui/PlaybackControlView$VisibilityListener;->onVisibilityChange(I)V

    .line 582
    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->updateAll()V

    .line 583
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->requestPlayPauseFocus()V

    .line 586
    :cond_1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->hideAfterTimeout()V

    .line 587
    return-void
.end method
