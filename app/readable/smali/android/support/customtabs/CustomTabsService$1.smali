.class Landroid/support/customtabs/CustomTabsService$1;
.super Landroid/support/customtabs/ICustomTabsService$Stub;
.source "CustomTabsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/customtabs/CustomTabsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/customtabs/CustomTabsService;


# direct methods
.method constructor <init>(Landroid/support/customtabs/CustomTabsService;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/customtabs/CustomTabsService;

    .prologue
    .line 100
    iput-object p1, p0, Landroid/support/customtabs/CustomTabsService$1;->this$0:Landroid/support/customtabs/CustomTabsService;

    invoke-direct {p0}, Landroid/support/customtabs/ICustomTabsService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public extraCommand(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .param p1, "commandName"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 136
    iget-object v0, p0, Landroid/support/customtabs/CustomTabsService$1;->this$0:Landroid/support/customtabs/CustomTabsService;

    invoke-virtual {v0, p1, p2}, Landroid/support/customtabs/CustomTabsService;->extraCommand(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public mayLaunchUrl(Landroid/support/customtabs/ICustomTabsCallback;Landroid/net/Uri;Landroid/os/Bundle;Ljava/util/List;)Z
    .locals 2
    .param p1, "callback"    # Landroid/support/customtabs/ICustomTabsCallback;
    .param p2, "url"    # Landroid/net/Uri;
    .param p3, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/customtabs/ICustomTabsCallback;",
            "Landroid/net/Uri;",
            "Landroid/os/Bundle;",
            "Ljava/util/List",
            "<",
            "Landroid/os/Bundle;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 130
    .local p4, "otherLikelyBundles":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    iget-object v0, p0, Landroid/support/customtabs/CustomTabsService$1;->this$0:Landroid/support/customtabs/CustomTabsService;

    new-instance v1, Landroid/support/customtabs/CustomTabsSessionToken;

    invoke-direct {v1, p1}, Landroid/support/customtabs/CustomTabsSessionToken;-><init>(Landroid/support/customtabs/ICustomTabsCallback;)V

    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/support/customtabs/CustomTabsService;->mayLaunchUrl(Landroid/support/customtabs/CustomTabsSessionToken;Landroid/net/Uri;Landroid/os/Bundle;Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method public newSession(Landroid/support/customtabs/ICustomTabsCallback;)Z
    .locals 7
    .param p1, "callback"    # Landroid/support/customtabs/ICustomTabsCallback;

    .prologue
    const/4 v3, 0x0

    .line 109
    new-instance v2, Landroid/support/customtabs/CustomTabsSessionToken;

    invoke-direct {v2, p1}, Landroid/support/customtabs/CustomTabsSessionToken;-><init>(Landroid/support/customtabs/ICustomTabsCallback;)V

    .line 111
    .local v2, "sessionToken":Landroid/support/customtabs/CustomTabsSessionToken;
    :try_start_0
    new-instance v0, Landroid/support/customtabs/CustomTabsService$1$1;

    invoke-direct {v0, p0, v2}, Landroid/support/customtabs/CustomTabsService$1$1;-><init>(Landroid/support/customtabs/CustomTabsService$1;Landroid/support/customtabs/CustomTabsSessionToken;)V

    .line 117
    .local v0, "deathRecipient":Landroid/os/IBinder$DeathRecipient;
    iget-object v4, p0, Landroid/support/customtabs/CustomTabsService$1;->this$0:Landroid/support/customtabs/CustomTabsService;

    invoke-static {v4}, Landroid/support/customtabs/CustomTabsService;->access$000(Landroid/support/customtabs/CustomTabsService;)Ljava/util/Map;

    move-result-object v5

    monitor-enter v5
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    :try_start_1
    invoke-interface {p1}, Landroid/support/customtabs/ICustomTabsCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    const/4 v6, 0x0

    invoke-interface {v4, v0, v6}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 119
    iget-object v4, p0, Landroid/support/customtabs/CustomTabsService$1;->this$0:Landroid/support/customtabs/CustomTabsService;

    invoke-static {v4}, Landroid/support/customtabs/CustomTabsService;->access$000(Landroid/support/customtabs/CustomTabsService;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {p1}, Landroid/support/customtabs/ICustomTabsCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-interface {v4, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 121
    :try_start_2
    iget-object v4, p0, Landroid/support/customtabs/CustomTabsService$1;->this$0:Landroid/support/customtabs/CustomTabsService;

    invoke-virtual {v4, v2}, Landroid/support/customtabs/CustomTabsService;->newSession(Landroid/support/customtabs/CustomTabsSessionToken;)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v3

    .line 123
    .end local v0    # "deathRecipient":Landroid/os/IBinder$DeathRecipient;
    :goto_0
    return v3

    .line 120
    .restart local v0    # "deathRecipient":Landroid/os/IBinder$DeathRecipient;
    :catchall_0
    move-exception v4

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v4
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 122
    .end local v0    # "deathRecipient":Landroid/os/IBinder$DeathRecipient;
    :catch_0
    move-exception v1

    .line 123
    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public postMessage(Landroid/support/customtabs/ICustomTabsCallback;Ljava/lang/String;Landroid/os/Bundle;)I
    .locals 2
    .param p1, "callback"    # Landroid/support/customtabs/ICustomTabsCallback;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 154
    iget-object v0, p0, Landroid/support/customtabs/CustomTabsService$1;->this$0:Landroid/support/customtabs/CustomTabsService;

    new-instance v1, Landroid/support/customtabs/CustomTabsSessionToken;

    invoke-direct {v1, p1}, Landroid/support/customtabs/CustomTabsSessionToken;-><init>(Landroid/support/customtabs/ICustomTabsCallback;)V

    invoke-virtual {v0, v1, p2, p3}, Landroid/support/customtabs/CustomTabsService;->postMessage(Landroid/support/customtabs/CustomTabsSessionToken;Ljava/lang/String;Landroid/os/Bundle;)I

    move-result v0

    return v0
.end method

.method public requestPostMessageChannel(Landroid/support/customtabs/ICustomTabsCallback;Landroid/net/Uri;)Z
    .locals 2
    .param p1, "callback"    # Landroid/support/customtabs/ICustomTabsCallback;
    .param p2, "postMessageOrigin"    # Landroid/net/Uri;

    .prologue
    .line 148
    iget-object v0, p0, Landroid/support/customtabs/CustomTabsService$1;->this$0:Landroid/support/customtabs/CustomTabsService;

    new-instance v1, Landroid/support/customtabs/CustomTabsSessionToken;

    invoke-direct {v1, p1}, Landroid/support/customtabs/CustomTabsSessionToken;-><init>(Landroid/support/customtabs/ICustomTabsCallback;)V

    invoke-virtual {v0, v1, p2}, Landroid/support/customtabs/CustomTabsService;->requestPostMessageChannel(Landroid/support/customtabs/CustomTabsSessionToken;Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method public updateVisuals(Landroid/support/customtabs/ICustomTabsCallback;Landroid/os/Bundle;)Z
    .locals 2
    .param p1, "callback"    # Landroid/support/customtabs/ICustomTabsCallback;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 141
    iget-object v0, p0, Landroid/support/customtabs/CustomTabsService$1;->this$0:Landroid/support/customtabs/CustomTabsService;

    new-instance v1, Landroid/support/customtabs/CustomTabsSessionToken;

    invoke-direct {v1, p1}, Landroid/support/customtabs/CustomTabsSessionToken;-><init>(Landroid/support/customtabs/ICustomTabsCallback;)V

    invoke-virtual {v0, v1, p2}, Landroid/support/customtabs/CustomTabsService;->updateVisuals(Landroid/support/customtabs/CustomTabsSessionToken;Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public validateRelationship(Landroid/support/customtabs/ICustomTabsCallback;ILandroid/net/Uri;Landroid/os/Bundle;)Z
    .locals 2
    .param p1, "callback"    # Landroid/support/customtabs/ICustomTabsCallback;
    .param p2, "relation"    # I
    .param p3, "origin"    # Landroid/net/Uri;
    .param p4, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 161
    iget-object v0, p0, Landroid/support/customtabs/CustomTabsService$1;->this$0:Landroid/support/customtabs/CustomTabsService;

    new-instance v1, Landroid/support/customtabs/CustomTabsSessionToken;

    invoke-direct {v1, p1}, Landroid/support/customtabs/CustomTabsSessionToken;-><init>(Landroid/support/customtabs/ICustomTabsCallback;)V

    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/support/customtabs/CustomTabsService;->validateRelationship(Landroid/support/customtabs/CustomTabsSessionToken;ILandroid/net/Uri;Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public warmup(J)Z
    .locals 1
    .param p1, "flags"    # J

    .prologue
    .line 104
    iget-object v0, p0, Landroid/support/customtabs/CustomTabsService$1;->this$0:Landroid/support/customtabs/CustomTabsService;

    invoke-virtual {v0, p1, p2}, Landroid/support/customtabs/CustomTabsService;->warmup(J)Z

    move-result v0

    return v0
.end method
