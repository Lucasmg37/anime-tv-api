.class Lcom/onesignal/TrackGooglePurchase$2;
.super Ljava/lang/Object;
.source "TrackGooglePurchase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/TrackGooglePurchase;->QueryBoughtItems()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/onesignal/TrackGooglePurchase;


# direct methods
.method constructor <init>(Lcom/onesignal/TrackGooglePurchase;)V
    .locals 0
    .param p1, "this$0"    # Lcom/onesignal/TrackGooglePurchase;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/onesignal/TrackGooglePurchase$2;->this$0:Lcom/onesignal/TrackGooglePurchase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    .prologue
    .line 139
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/onesignal/TrackGooglePurchase$2;->this$0:Lcom/onesignal/TrackGooglePurchase;

    const/4 v13, 0x1

    invoke-static {v12, v13}, Lcom/onesignal/TrackGooglePurchase;->access$402(Lcom/onesignal/TrackGooglePurchase;Z)Z

    .line 141
    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/onesignal/TrackGooglePurchase$2;->this$0:Lcom/onesignal/TrackGooglePurchase;

    invoke-static {v12}, Lcom/onesignal/TrackGooglePurchase;->access$500(Lcom/onesignal/TrackGooglePurchase;)Ljava/lang/reflect/Method;

    move-result-object v12

    if-nez v12, :cond_0

    .line 142
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/onesignal/TrackGooglePurchase$2;->this$0:Lcom/onesignal/TrackGooglePurchase;

    invoke-static {}, Lcom/onesignal/TrackGooglePurchase;->access$600()Ljava/lang/Class;

    move-result-object v13

    invoke-static {v13}, Lcom/onesignal/TrackGooglePurchase;->access$700(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/onesignal/TrackGooglePurchase;->access$502(Lcom/onesignal/TrackGooglePurchase;Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;

    .line 143
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/onesignal/TrackGooglePurchase$2;->this$0:Lcom/onesignal/TrackGooglePurchase;

    invoke-static {v12}, Lcom/onesignal/TrackGooglePurchase;->access$500(Lcom/onesignal/TrackGooglePurchase;)Ljava/lang/reflect/Method;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 146
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/onesignal/TrackGooglePurchase$2;->this$0:Lcom/onesignal/TrackGooglePurchase;

    invoke-static {v12}, Lcom/onesignal/TrackGooglePurchase;->access$500(Lcom/onesignal/TrackGooglePurchase;)Ljava/lang/reflect/Method;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/onesignal/TrackGooglePurchase$2;->this$0:Lcom/onesignal/TrackGooglePurchase;

    invoke-static {v13}, Lcom/onesignal/TrackGooglePurchase;->access$100(Lcom/onesignal/TrackGooglePurchase;)Ljava/lang/Object;

    move-result-object v13

    const/4 v14, 0x4

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    const/16 v16, 0x3

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/onesignal/TrackGooglePurchase$2;->this$0:Lcom/onesignal/TrackGooglePurchase;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/onesignal/TrackGooglePurchase;->access$800(Lcom/onesignal/TrackGooglePurchase;)Landroid/content/Context;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x2

    const-string v16, "inapp"

    aput-object v16, v14, v15

    const/4 v15, 0x3

    const/16 v16, 0x0

    aput-object v16, v14, v15

    invoke-virtual {v12, v13, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    .line 147
    .local v5, "ownedItems":Landroid/os/Bundle;
    const-string v12, "RESPONSE_CODE"

    invoke-virtual {v5, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v12

    if-nez v12, :cond_3

    .line 148
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 149
    .local v11, "skusToAdd":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 151
    .local v4, "newPurchaseTokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v12, "INAPP_PURCHASE_ITEM_LIST"

    invoke-virtual {v5, v12}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 152
    .local v6, "ownedSkus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v12, "INAPP_PURCHASE_DATA_LIST"

    invoke-virtual {v5, v12}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    .line 154
    .local v8, "purchaseDataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v2, v12, :cond_2

    .line 155
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 156
    .local v7, "purchaseData":Ljava/lang/String;
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 157
    .local v10, "sku":Ljava/lang/String;
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 158
    .local v3, "itemPurchased":Lorg/json/JSONObject;
    const-string v12, "purchaseToken"

    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 160
    .local v9, "purchaseToken":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/onesignal/TrackGooglePurchase$2;->this$0:Lcom/onesignal/TrackGooglePurchase;

    invoke-static {v12}, Lcom/onesignal/TrackGooglePurchase;->access$900(Lcom/onesignal/TrackGooglePurchase;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 161
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 166
    .end local v3    # "itemPurchased":Lorg/json/JSONObject;
    .end local v7    # "purchaseData":Ljava/lang/String;
    .end local v9    # "purchaseToken":Ljava/lang/String;
    .end local v10    # "sku":Ljava/lang/String;
    :cond_2
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-lez v12, :cond_4

    .line 167
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/onesignal/TrackGooglePurchase$2;->this$0:Lcom/onesignal/TrackGooglePurchase;

    invoke-static {v12, v11, v4}, Lcom/onesignal/TrackGooglePurchase;->access$1000(Lcom/onesignal/TrackGooglePurchase;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    .end local v2    # "i":I
    .end local v4    # "newPurchaseTokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5    # "ownedItems":Landroid/os/Bundle;
    .end local v6    # "ownedSkus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v8    # "purchaseDataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v11    # "skusToAdd":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/onesignal/TrackGooglePurchase$2;->this$0:Lcom/onesignal/TrackGooglePurchase;

    const/4 v13, 0x0

    invoke-static {v12, v13}, Lcom/onesignal/TrackGooglePurchase;->access$402(Lcom/onesignal/TrackGooglePurchase;Z)Z

    .line 181
    return-void

    .line 168
    .restart local v2    # "i":I
    .restart local v4    # "newPurchaseTokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v5    # "ownedItems":Landroid/os/Bundle;
    .restart local v6    # "ownedSkus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v8    # "purchaseDataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v11    # "skusToAdd":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_4
    :try_start_1
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-nez v12, :cond_3

    .line 169
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/onesignal/TrackGooglePurchase$2;->this$0:Lcom/onesignal/TrackGooglePurchase;

    const/4 v13, 0x0

    invoke-static {v12, v13}, Lcom/onesignal/TrackGooglePurchase;->access$1102(Lcom/onesignal/TrackGooglePurchase;Z)Z

    .line 171
    const-string v12, "GTPlayerPurchases"

    const-string v13, "ExistingPurchases"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Lcom/onesignal/OneSignalPrefs;->saveBool(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 177
    .end local v2    # "i":I
    .end local v4    # "newPurchaseTokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5    # "ownedItems":Landroid/os/Bundle;
    .end local v6    # "ownedSkus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v8    # "purchaseDataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v11    # "skusToAdd":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_0
    move-exception v1

    .line 178
    .local v1, "e":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method
