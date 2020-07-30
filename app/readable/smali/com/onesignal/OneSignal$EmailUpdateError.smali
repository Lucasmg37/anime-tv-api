.class public Lcom/onesignal/OneSignal$EmailUpdateError;
.super Ljava/lang/Object;
.source "OneSignal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onesignal/OneSignal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EmailUpdateError"
.end annotation


# instance fields
.field private message:Ljava/lang/String;

.field private type:Lcom/onesignal/OneSignal$EmailErrorType;


# direct methods
.method constructor <init>(Lcom/onesignal/OneSignal$EmailErrorType;Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Lcom/onesignal/OneSignal$EmailErrorType;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    iput-object p1, p0, Lcom/onesignal/OneSignal$EmailUpdateError;->type:Lcom/onesignal/OneSignal$EmailErrorType;

    .line 175
    iput-object p2, p0, Lcom/onesignal/OneSignal$EmailUpdateError;->message:Ljava/lang/String;

    .line 176
    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/onesignal/OneSignal$EmailUpdateError;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/onesignal/OneSignal$EmailErrorType;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/onesignal/OneSignal$EmailUpdateError;->type:Lcom/onesignal/OneSignal$EmailErrorType;

    return-object v0
.end method
