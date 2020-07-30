.class Lcom/onesignal/UserStateSynchronizer$GetTagsResult;
.super Ljava/lang/Object;
.source "UserStateSynchronizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onesignal/UserStateSynchronizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GetTagsResult"
.end annotation


# instance fields
.field result:Lorg/json/JSONObject;

.field serverSuccess:Z


# direct methods
.method constructor <init>(ZLorg/json/JSONObject;)V
    .locals 0
    .param p1, "serverSuccess"    # Z
    .param p2, "result"    # Lorg/json/JSONObject;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-boolean p1, p0, Lcom/onesignal/UserStateSynchronizer$GetTagsResult;->serverSuccess:Z

    .line 24
    iput-object p2, p0, Lcom/onesignal/UserStateSynchronizer$GetTagsResult;->result:Lorg/json/JSONObject;

    .line 25
    return-void
.end method
