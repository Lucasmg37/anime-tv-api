.class final Lcom/onesignal/OneSignal$20;
.super Ljava/lang/Object;
.source "OneSignal.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/OneSignal;->promptLocation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 2296
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2299
    new-instance v0, Lcom/onesignal/OneSignal$20$1;

    invoke-direct {v0, p0}, Lcom/onesignal/OneSignal$20$1;-><init>(Lcom/onesignal/OneSignal$20;)V

    .line 2315
    .local v0, "locationHandler":Lcom/onesignal/LocationGMS$LocationHandler;
    sget-object v1, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {v1, v2, v0}, Lcom/onesignal/LocationGMS;->getLocation(Landroid/content/Context;ZLcom/onesignal/LocationGMS$LocationHandler;)V

    .line 2316
    invoke-static {v2}, Lcom/onesignal/OneSignal;->access$3002(Z)Z

    .line 2317
    return-void
.end method
