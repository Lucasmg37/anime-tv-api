.class final enum Lco/frontyard/cordova/plugin/exoplayer/LayoutProvider$BUTTON;
.super Ljava/lang/Enum;
.source "LayoutProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/frontyard/cordova/plugin/exoplayer/LayoutProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "BUTTON"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lco/frontyard/cordova/plugin/exoplayer/LayoutProvider$BUTTON;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lco/frontyard/cordova/plugin/exoplayer/LayoutProvider$BUTTON;

.field public static final enum exo_ffwd:Lco/frontyard/cordova/plugin/exoplayer/LayoutProvider$BUTTON;

.field public static final enum exo_next:Lco/frontyard/cordova/plugin/exoplayer/LayoutProvider$BUTTON;

.field public static final enum exo_pause:Lco/frontyard/cordova/plugin/exoplayer/LayoutProvider$BUTTON;

.field public static final enum exo_play:Lco/frontyard/cordova/plugin/exoplayer/LayoutProvider$BUTTON;

.field public static final enum exo_prev:Lco/frontyard/cordova/plugin/exoplayer/LayoutProvider$BUTTON;

.field public static final enum exo_rew:Lco/frontyard/cordova/plugin/exoplayer/LayoutProvider$BUTTON;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 39
    new-instance v0, Lco/frontyard/cordova/plugin/exoplayer/LayoutProvider$BUTTON;

    const-string v1, "exo_prev"

    invoke-direct {v0, v1, v3}, Lco/frontyard/cordova/plugin/exoplayer/LayoutProvider$BUTTON;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lco/frontyard/cordova/plugin/exoplayer/LayoutProvider$BUTTON;->exo_prev:Lco/frontyard/cordova/plugin/exoplayer/LayoutProvider$BUTTON;

    new-instance v0, Lco/frontyard/cordova/plugin/exoplayer/LayoutProvider$BUTTON;

    const-string v1, "exo_rew"

    invoke-direct {v0, v1, v4}, Lco/frontyard/cordova/plugin/exoplayer/LayoutProvider$BUTTON;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lco/frontyard/cordova/plugin/exoplayer/LayoutProvider$BUTTON;->exo_rew:Lco/frontyard/cordova/plugin/exoplayer/LayoutProvider$BUTTON;

    new-instance v0, Lco/frontyard/cordova/plugin/exoplayer/LayoutProvider$BUTTON;

    const-string v1, "exo_play"

    invoke-direct {v0, v1, v5}, Lco/frontyard/cordova/plugin/exoplayer/LayoutProvider$BUTTON;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lco/frontyard/cordova/plugin/exoplayer/LayoutProvider$BUTTON;->exo_play:Lco/frontyard/cordova/plugin/exoplayer/LayoutProvider$BUTTON;

    new-instance v0, Lco/frontyard/cordova/plugin/exoplayer/LayoutProvider$BUTTON;

    const-string v1, "exo_pause"

    invoke-direct {v0, v1, v6}, Lco/frontyard/cordova/plugin/exoplayer/LayoutProvider$BUTTON;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lco/frontyard/cordova/plugin/exoplayer/LayoutProvider$BUTTON;->exo_pause:Lco/frontyard/cordova/plugin/exoplayer/LayoutProvider$BUTTON;

    new-instance v0, Lco/frontyard/cordova/plugin/exoplayer/LayoutProvider$BUTTON;

    const-string v1, "exo_ffwd"

    invoke-direct {v0, v1, v7}, Lco/frontyard/cordova/plugin/exoplayer/LayoutProvider$BUTTON;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lco/frontyard/cordova/plugin/exoplayer/LayoutProvider$BUTTON;->exo_ffwd:Lco/frontyard/cordova/plugin/exoplayer/LayoutProvider$BUTTON;

    new-instance v0, Lco/frontyard/cordova/plugin/exoplayer/LayoutProvider$BUTTON;

    const-string v1, "exo_next"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lco/frontyard/cordova/plugin/exoplayer/LayoutProvider$BUTTON;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lco/frontyard/cordova/plugin/exoplayer/LayoutProvider$BUTTON;->exo_next:Lco/frontyard/cordova/plugin/exoplayer/LayoutProvider$BUTTON;

    const/4 v0, 0x6

    new-array v0, v0, [Lco/frontyard/cordova/plugin/exoplayer/LayoutProvider$BUTTON;

    sget-object v1, Lco/frontyard/cordova/plugin/exoplayer/LayoutProvider$BUTTON;->exo_prev:Lco/frontyard/cordova/plugin/exoplayer/LayoutProvider$BUTTON;

    aput-object v1, v0, v3

    sget-object v1, Lco/frontyard/cordova/plugin/exoplayer/LayoutProvider$BUTTON;->exo_rew:Lco/frontyard/cordova/plugin/exoplayer/LayoutProvider$BUTTON;

    aput-object v1, v0, v4

    sget-object v1, Lco/frontyard/cordova/plugin/exoplayer/LayoutProvider$BUTTON;->exo_play:Lco/frontyard/cordova/plugin/exoplayer/LayoutProvider$BUTTON;

    aput-object v1, v0, v5

    sget-object v1, Lco/frontyard/cordova/plugin/exoplayer/LayoutProvider$BUTTON;->exo_pause:Lco/frontyard/cordova/plugin/exoplayer/LayoutProvider$BUTTON;

    aput-object v1, v0, v6

    sget-object v1, Lco/frontyard/cordova/plugin/exoplayer/LayoutProvider$BUTTON;->exo_ffwd:Lco/frontyard/cordova/plugin/exoplayer/LayoutProvider$BUTTON;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lco/frontyard/cordova/plugin/exoplayer/LayoutProvider$BUTTON;->exo_next:Lco/frontyard/cordova/plugin/exoplayer/LayoutProvider$BUTTON;

    aput-object v2, v0, v1

    sput-object v0, Lco/frontyard/cordova/plugin/exoplayer/LayoutProvider$BUTTON;->$VALUES:[Lco/frontyard/cordova/plugin/exoplayer/LayoutProvider$BUTTON;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lco/frontyard/cordova/plugin/exoplayer/LayoutProvider$BUTTON;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 39
    const-class v0, Lco/frontyard/cordova/plugin/exoplayer/LayoutProvider$BUTTON;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lco/frontyard/cordova/plugin/exoplayer/LayoutProvider$BUTTON;

    return-object v0
.end method

.method public static values()[Lco/frontyard/cordova/plugin/exoplayer/LayoutProvider$BUTTON;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lco/frontyard/cordova/plugin/exoplayer/LayoutProvider$BUTTON;->$VALUES:[Lco/frontyard/cordova/plugin/exoplayer/LayoutProvider$BUTTON;

    invoke-virtual {v0}, [Lco/frontyard/cordova/plugin/exoplayer/LayoutProvider$BUTTON;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lco/frontyard/cordova/plugin/exoplayer/LayoutProvider$BUTTON;

    return-object v0
.end method
