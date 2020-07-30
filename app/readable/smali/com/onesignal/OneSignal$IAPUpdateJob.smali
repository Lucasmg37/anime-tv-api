.class Lcom/onesignal/OneSignal$IAPUpdateJob;
.super Ljava/lang/Object;
.source "OneSignal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onesignal/OneSignal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IAPUpdateJob"
.end annotation


# instance fields
.field newAsExisting:Z

.field restResponseHandler:Lcom/onesignal/OneSignalRestClient$ResponseHandler;

.field toReport:Lorg/json/JSONArray;


# direct methods
.method constructor <init>(Lorg/json/JSONArray;)V
    .locals 0
    .param p1, "toReport"    # Lorg/json/JSONArray;

    .prologue
    .line 505
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 506
    iput-object p1, p0, Lcom/onesignal/OneSignal$IAPUpdateJob;->toReport:Lorg/json/JSONArray;

    .line 507
    return-void
.end method
