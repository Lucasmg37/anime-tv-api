.class Lcom/onesignal/RootToolsInternalMethods;
.super Ljava/lang/Object;
.source "RootToolsInternalMethods.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static isRooted()Z
    .locals 9

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 28
    const/16 v4, 0x8

    new-array v0, v4, [Ljava/lang/String;

    const-string v4, "/sbin/"

    aput-object v4, v0, v3

    const-string v4, "/system/bin/"

    aput-object v4, v0, v2

    const/4 v4, 0x2

    const-string v5, "/system/xbin/"

    aput-object v5, v0, v4

    const/4 v4, 0x3

    const-string v5, "/data/local/xbin/"

    aput-object v5, v0, v4

    const/4 v4, 0x4

    const-string v5, "/data/local/bin/"

    aput-object v5, v0, v4

    const/4 v4, 0x5

    const-string v5, "/system/sd/xbin/"

    aput-object v5, v0, v4

    const/4 v4, 0x6

    const-string v5, "/system/bin/failsafe/"

    aput-object v5, v0, v4

    const/4 v4, 0x7

    const-string v5, "/data/local/"

    aput-object v5, v0, v4

    .line 33
    .local v0, "places":[Ljava/lang/String;
    array-length v5, v0

    move v4, v3

    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v1, v0, v4

    .line 34
    .local v1, "where":Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "su"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 38
    .end local v1    # "where":Ljava/lang/String;
    :goto_1
    return v2

    .line 33
    .restart local v1    # "where":Ljava/lang/String;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .end local v1    # "where":Ljava/lang/String;
    :cond_1
    move v2, v3

    .line 38
    goto :goto_1
.end method
