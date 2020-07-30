.class Lcom/onesignal/OneSignalPrefs$WritePrefHandlerThread$1;
.super Ljava/lang/Object;
.source "OneSignalPrefs.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/OneSignalPrefs$WritePrefHandlerThread;->getNewRunnable()Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/onesignal/OneSignalPrefs$WritePrefHandlerThread;


# direct methods
.method constructor <init>(Lcom/onesignal/OneSignalPrefs$WritePrefHandlerThread;)V
    .locals 0
    .param p1, "this$0"    # Lcom/onesignal/OneSignalPrefs$WritePrefHandlerThread;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/onesignal/OneSignalPrefs$WritePrefHandlerThread$1;->this$0:Lcom/onesignal/OneSignalPrefs$WritePrefHandlerThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/onesignal/OneSignalPrefs$WritePrefHandlerThread$1;->this$0:Lcom/onesignal/OneSignalPrefs$WritePrefHandlerThread;

    invoke-static {v0}, Lcom/onesignal/OneSignalPrefs$WritePrefHandlerThread;->access$000(Lcom/onesignal/OneSignalPrefs$WritePrefHandlerThread;)V

    .line 111
    return-void
.end method
