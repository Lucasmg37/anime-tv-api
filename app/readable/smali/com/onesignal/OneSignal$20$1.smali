.class Lcom/onesignal/OneSignal$20$1;
.super Ljava/lang/Object;
.source "OneSignal.java"

# interfaces
.implements Lcom/onesignal/LocationGMS$LocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/OneSignal$20;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/onesignal/OneSignal$20;


# direct methods
.method constructor <init>(Lcom/onesignal/OneSignal$20;)V
    .locals 0
    .param p1, "this$0"    # Lcom/onesignal/OneSignal$20;

    .prologue
    .line 2299
    iput-object p1, p0, Lcom/onesignal/OneSignal$20$1;->this$0:Lcom/onesignal/OneSignal$20;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public complete(Lcom/onesignal/LocationGMS$LocationPoint;)V
    .locals 1
    .param p1, "point"    # Lcom/onesignal/LocationGMS$LocationPoint;

    .prologue
    .line 2307
    const-string v0, "promptLocation()"

    invoke-static {v0}, Lcom/onesignal/OneSignal;->shouldLogUserPrivacyConsentErrorMessageForMethodName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2312
    :cond_0
    :goto_0
    return-void

    .line 2310
    :cond_1
    if-eqz p1, :cond_0

    .line 2311
    invoke-static {p1}, Lcom/onesignal/OneSignalStateSynchronizer;->updateLocation(Lcom/onesignal/LocationGMS$LocationPoint;)V

    goto :goto_0
.end method

.method public getType()Lcom/onesignal/LocationGMS$CALLBACK_TYPE;
    .locals 1

    .prologue
    .line 2302
    sget-object v0, Lcom/onesignal/LocationGMS$CALLBACK_TYPE;->PROMPT_LOCATION:Lcom/onesignal/LocationGMS$CALLBACK_TYPE;

    return-object v0
.end method
