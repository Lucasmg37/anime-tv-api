.class public final enum Lcom/onesignal/OSNotification$DisplayType;
.super Ljava/lang/Enum;
.source "OSNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onesignal/OSNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DisplayType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/onesignal/OSNotification$DisplayType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/onesignal/OSNotification$DisplayType;

.field public static final enum InAppAlert:Lcom/onesignal/OSNotification$DisplayType;

.field public static final enum None:Lcom/onesignal/OSNotification$DisplayType;

.field public static final enum Notification:Lcom/onesignal/OSNotification$DisplayType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 61
    new-instance v0, Lcom/onesignal/OSNotification$DisplayType;

    const-string v1, "Notification"

    invoke-direct {v0, v1, v2}, Lcom/onesignal/OSNotification$DisplayType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onesignal/OSNotification$DisplayType;->Notification:Lcom/onesignal/OSNotification$DisplayType;

    .line 64
    new-instance v0, Lcom/onesignal/OSNotification$DisplayType;

    const-string v1, "InAppAlert"

    invoke-direct {v0, v1, v3}, Lcom/onesignal/OSNotification$DisplayType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onesignal/OSNotification$DisplayType;->InAppAlert:Lcom/onesignal/OSNotification$DisplayType;

    .line 67
    new-instance v0, Lcom/onesignal/OSNotification$DisplayType;

    const-string v1, "None"

    invoke-direct {v0, v1, v4}, Lcom/onesignal/OSNotification$DisplayType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onesignal/OSNotification$DisplayType;->None:Lcom/onesignal/OSNotification$DisplayType;

    .line 59
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/onesignal/OSNotification$DisplayType;

    sget-object v1, Lcom/onesignal/OSNotification$DisplayType;->Notification:Lcom/onesignal/OSNotification$DisplayType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/onesignal/OSNotification$DisplayType;->InAppAlert:Lcom/onesignal/OSNotification$DisplayType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/onesignal/OSNotification$DisplayType;->None:Lcom/onesignal/OSNotification$DisplayType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/onesignal/OSNotification$DisplayType;->$VALUES:[Lcom/onesignal/OSNotification$DisplayType;

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
    .line 59
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/onesignal/OSNotification$DisplayType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 59
    const-class v0, Lcom/onesignal/OSNotification$DisplayType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/onesignal/OSNotification$DisplayType;

    return-object v0
.end method

.method public static values()[Lcom/onesignal/OSNotification$DisplayType;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/onesignal/OSNotification$DisplayType;->$VALUES:[Lcom/onesignal/OSNotification$DisplayType;

    invoke-virtual {v0}, [Lcom/onesignal/OSNotification$DisplayType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/onesignal/OSNotification$DisplayType;

    return-object v0
.end method
