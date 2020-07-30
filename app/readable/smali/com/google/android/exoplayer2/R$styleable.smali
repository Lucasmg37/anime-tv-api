.class public final Lcom/google/android/exoplayer2/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final AspectRatioFrameLayout:[I

.field public static final AspectRatioFrameLayout_resize_mode:I = 0x0

.field public static final DefaultTimeBar:[I

.field public static final DefaultTimeBar_ad_marker_color:I = 0x0

.field public static final DefaultTimeBar_ad_marker_width:I = 0x1

.field public static final DefaultTimeBar_bar_height:I = 0x2

.field public static final DefaultTimeBar_buffered_color:I = 0x3

.field public static final DefaultTimeBar_played_ad_marker_color:I = 0x4

.field public static final DefaultTimeBar_played_color:I = 0x5

.field public static final DefaultTimeBar_scrubber_color:I = 0x6

.field public static final DefaultTimeBar_scrubber_disabled_size:I = 0x7

.field public static final DefaultTimeBar_scrubber_dragged_size:I = 0x8

.field public static final DefaultTimeBar_scrubber_drawable:I = 0x9

.field public static final DefaultTimeBar_scrubber_enabled_size:I = 0xa

.field public static final DefaultTimeBar_touch_target_height:I = 0xb

.field public static final DefaultTimeBar_unplayed_color:I = 0xc

.field public static final PlaybackControlView:[I

.field public static final PlaybackControlView_controller_layout_id:I = 0x0

.field public static final PlaybackControlView_fastforward_increment:I = 0x1

.field public static final PlaybackControlView_repeat_toggle_modes:I = 0x2

.field public static final PlaybackControlView_rewind_increment:I = 0x3

.field public static final PlaybackControlView_show_shuffle_button:I = 0x4

.field public static final PlaybackControlView_show_timeout:I = 0x5

.field public static final SimpleExoPlayerView:[I

.field public static final SimpleExoPlayerView_auto_show:I = 0x0

.field public static final SimpleExoPlayerView_controller_layout_id:I = 0x1

.field public static final SimpleExoPlayerView_default_artwork:I = 0x2

.field public static final SimpleExoPlayerView_fastforward_increment:I = 0x3

.field public static final SimpleExoPlayerView_hide_during_ads:I = 0x4

.field public static final SimpleExoPlayerView_hide_on_touch:I = 0x5

.field public static final SimpleExoPlayerView_player_layout_id:I = 0x6

.field public static final SimpleExoPlayerView_repeat_toggle_modes:I = 0x7

.field public static final SimpleExoPlayerView_resize_mode:I = 0x8

.field public static final SimpleExoPlayerView_rewind_increment:I = 0x9

.field public static final SimpleExoPlayerView_show_shuffle_button:I = 0xa

.field public static final SimpleExoPlayerView_show_timeout:I = 0xb

.field public static final SimpleExoPlayerView_shutter_background_color:I = 0xc

.field public static final SimpleExoPlayerView_surface_type:I = 0xd

.field public static final SimpleExoPlayerView_use_artwork:I = 0xe

.field public static final SimpleExoPlayerView_use_controller:I = 0xf


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 116
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x7f01001f

    aput v2, v0, v1

    sput-object v0, Lcom/google/android/exoplayer2/R$styleable;->AspectRatioFrameLayout:[I

    .line 118
    const/16 v0, 0xd

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/exoplayer2/R$styleable;->DefaultTimeBar:[I

    .line 132
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/android/exoplayer2/R$styleable;->PlaybackControlView:[I

    .line 139
    const/16 v0, 0x10

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/google/android/exoplayer2/R$styleable;->SimpleExoPlayerView:[I

    return-void

    .line 118
    :array_0
    .array-data 4
        0x7f010003
        0x7f010004
        0x7f010006
        0x7f010007
        0x7f01001b
        0x7f01001c
        0x7f010022
        0x7f010023
        0x7f010024
        0x7f010025
        0x7f010026
        0x7f01002b
        0x7f01002c
    .end array-data

    .line 132
    :array_1
    .array-data 4
        0x7f01000b
        0x7f01000d
        0x7f01001e
        0x7f010020
        0x7f010027
        0x7f010028
    .end array-data

    .line 139
    :array_2
    .array-data 4
        0x7f010005
        0x7f01000b
        0x7f01000c
        0x7f01000d
        0x7f010017
        0x7f010018
        0x7f01001d
        0x7f01001e
        0x7f01001f
        0x7f010020
        0x7f010027
        0x7f010028
        0x7f010029
        0x7f01002a
        0x7f01002d
        0x7f01002e
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
