.class final Lcom/onesignal/OneSignalRestClient$5;
.super Ljava/lang/Object;
.source "OneSignalRestClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/OneSignalRestClient;->callResponseHandlerOnSuccess(Lcom/onesignal/OneSignalRestClient$ResponseHandler;Ljava/lang/String;)Ljava/lang/Thread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$handler:Lcom/onesignal/OneSignalRestClient$ResponseHandler;

.field final synthetic val$response:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/onesignal/OneSignalRestClient$ResponseHandler;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 206
    iput-object p1, p0, Lcom/onesignal/OneSignalRestClient$5;->val$handler:Lcom/onesignal/OneSignalRestClient$ResponseHandler;

    iput-object p2, p0, Lcom/onesignal/OneSignalRestClient$5;->val$response:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 208
    iget-object v0, p0, Lcom/onesignal/OneSignalRestClient$5;->val$handler:Lcom/onesignal/OneSignalRestClient$ResponseHandler;

    iget-object v1, p0, Lcom/onesignal/OneSignalRestClient$5;->val$response:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/onesignal/OneSignalRestClient$ResponseHandler;->onSuccess(Ljava/lang/String;)V

    .line 209
    return-void
.end method
