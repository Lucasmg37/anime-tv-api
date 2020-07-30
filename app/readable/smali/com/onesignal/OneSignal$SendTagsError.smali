.class public Lcom/onesignal/OneSignal$SendTagsError;
.super Ljava/lang/Object;
.source "OneSignal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onesignal/OneSignal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SendTagsError"
.end annotation


# instance fields
.field private code:I

.field private message:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "errorCode"    # I
    .param p2, "errorMessage"    # Ljava/lang/String;

    .prologue
    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    iput-object p2, p0, Lcom/onesignal/OneSignal$SendTagsError;->message:Ljava/lang/String;

    .line 157
    iput p1, p0, Lcom/onesignal/OneSignal$SendTagsError;->code:I

    .line 158
    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .prologue
    .line 160
    iget v0, p0, Lcom/onesignal/OneSignal$SendTagsError;->code:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/onesignal/OneSignal$SendTagsError;->message:Ljava/lang/String;

    return-object v0
.end method
