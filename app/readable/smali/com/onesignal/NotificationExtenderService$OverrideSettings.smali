.class public Lcom/onesignal/NotificationExtenderService$OverrideSettings;
.super Ljava/lang/Object;
.source "NotificationExtenderService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onesignal/NotificationExtenderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OverrideSettings"
.end annotation


# instance fields
.field public androidNotificationId:Ljava/lang/Integer;

.field public extender:Landroid/support/v4/app/NotificationCompat$Extender;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method override(Lcom/onesignal/NotificationExtenderService$OverrideSettings;)V
    .locals 1
    .param p1, "overrideSettings"    # Lcom/onesignal/NotificationExtenderService$OverrideSettings;

    .prologue
    .line 83
    if-nez p1, :cond_1

    .line 88
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    iget-object v0, p1, Lcom/onesignal/NotificationExtenderService$OverrideSettings;->androidNotificationId:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p1, Lcom/onesignal/NotificationExtenderService$OverrideSettings;->androidNotificationId:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/onesignal/NotificationExtenderService$OverrideSettings;->androidNotificationId:Ljava/lang/Integer;

    goto :goto_0
.end method
