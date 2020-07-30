.class Lcom/onesignal/LocationGMS$LocationPoint;
.super Ljava/lang/Object;
.source "LocationGMS.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onesignal/LocationGMS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LocationPoint"
.end annotation


# instance fields
.field accuracy:Ljava/lang/Float;

.field bg:Ljava/lang/Boolean;

.field lat:Ljava/lang/Double;

.field log:Ljava/lang/Double;

.field timeStamp:Ljava/lang/Long;

.field type:Ljava/lang/Integer;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
