.class Lcom/onesignal/GenerateNotification;
.super Ljava/lang/Object;
.source "GenerateNotification.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onesignal/GenerateNotification$OneSignalNotificationBuilder;
    }
.end annotation


# static fields
.field private static contextResources:Landroid/content/res/Resources;

.field private static currentContext:Landroid/content/Context;

.field private static notificationOpenedClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static openerIsBroadcast:Z

.field private static packageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 71
    sput-object v0, Lcom/onesignal/GenerateNotification;->currentContext:Landroid/content/Context;

    .line 72
    sput-object v0, Lcom/onesignal/GenerateNotification;->packageName:Ljava/lang/String;

    .line 73
    sput-object v0, Lcom/onesignal/GenerateNotification;->contextResources:Landroid/content/res/Resources;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lorg/json/JSONObject;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lorg/json/JSONObject;

    .prologue
    .line 70
    invoke-static {p0}, Lcom/onesignal/GenerateNotification;->getTitle(Lorg/json/JSONObject;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Landroid/content/Context;Lorg/json/JSONObject;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/util/List;
    .param p3, "x3"    # Ljava/util/List;

    .prologue
    .line 70
    invoke-static {p0, p1, p2, p3}, Lcom/onesignal/GenerateNotification;->addAlertButtons(Landroid/content/Context;Lorg/json/JSONObject;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$200(I)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # I

    .prologue
    .line 70
    invoke-static {p0}, Lcom/onesignal/GenerateNotification;->getNewBaseIntent(I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private static addAlertButtons(Landroid/content/Context;Lorg/json/JSONObject;Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "gcmBundle"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lorg/json/JSONObject;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 974
    .local p2, "buttonsLabels":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "buttonsIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    invoke-static {p0, p1, p2, p3}, Lcom/onesignal/GenerateNotification;->addCustomAlertButtons(Landroid/content/Context;Lorg/json/JSONObject;Ljava/util/List;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 979
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    .line 980
    :cond_0
    const-string v1, "onesignal_in_app_alert_ok_button_text"

    const-string v2, "Ok"

    invoke-static {p0, v1, v2}, Lcom/onesignal/OSUtils;->getResourceString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 981
    const-string v1, "__DEFAULT__"

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 983
    :cond_1
    return-void

    .line 975
    :catch_0
    move-exception v0

    .line 976
    .local v0, "t":Ljava/lang/Throwable;
    sget-object v1, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v2, "Failed to parse JSON for custom buttons for alert dialog."

    invoke-static {v1, v2, v0}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static addBackgroundImage(Lorg/json/JSONObject;Landroid/support/v4/app/NotificationCompat$Builder;)V
    .locals 12
    .param p0, "gcmBundle"    # Lorg/json/JSONObject;
    .param p1, "notifBuilder"    # Landroid/support/v4/app/NotificationCompat$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    const/4 v3, 0x0

    .line 697
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-ge v1, v2, :cond_1

    .line 746
    :cond_0
    :goto_0
    return-void

    .line 700
    :cond_1
    const/4 v7, 0x0

    .line 701
    .local v7, "bg_image":Landroid/graphics/Bitmap;
    const/4 v9, 0x0

    .line 702
    .local v9, "jsonBgImage":Lorg/json/JSONObject;
    const-string v1, "bg_img"

    invoke-virtual {p0, v1, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 704
    .local v10, "jsonStrBgImage":Ljava/lang/String;
    if-eqz v10, :cond_2

    .line 705
    new-instance v9, Lorg/json/JSONObject;

    .end local v9    # "jsonBgImage":Lorg/json/JSONObject;
    invoke-direct {v9, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 706
    .restart local v9    # "jsonBgImage":Lorg/json/JSONObject;
    const-string v1, "img"

    invoke-virtual {v9, v1, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/onesignal/GenerateNotification;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 709
    :cond_2
    if-nez v7, :cond_3

    .line 710
    const-string v1, "onesignal_bgimage_default_image"

    invoke-static {v1}, Lcom/onesignal/GenerateNotification;->getBitmapFromAssetsOrResourceName(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 712
    :cond_3
    if-eqz v7, :cond_0

    .line 713
    new-instance v0, Landroid/widget/RemoteViews;

    sget-object v1, Lcom/onesignal/GenerateNotification;->currentContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/onesignal/R$layout;->onesignal_bgimage_notif_layout:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 714
    .local v0, "customView":Landroid/widget/RemoteViews;
    sget v1, Lcom/onesignal/R$id;->os_bgimage_notif_title:I

    invoke-static {p0}, Lcom/onesignal/GenerateNotification;->getTitle(Lorg/json/JSONObject;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 715
    sget v1, Lcom/onesignal/R$id;->os_bgimage_notif_body:I

    const-string v2, "alert"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 716
    sget v1, Lcom/onesignal/R$id;->os_bgimage_notif_title:I

    const-string v2, "tc"

    const-string v4, "onesignal_bgimage_notif_title_color"

    invoke-static {v0, v9, v1, v2, v4}, Lcom/onesignal/GenerateNotification;->setTextColor(Landroid/widget/RemoteViews;Lorg/json/JSONObject;ILjava/lang/String;Ljava/lang/String;)V

    .line 717
    sget v1, Lcom/onesignal/R$id;->os_bgimage_notif_body:I

    const-string v2, "bc"

    const-string v4, "onesignal_bgimage_notif_body_color"

    invoke-static {v0, v9, v1, v2, v4}, Lcom/onesignal/GenerateNotification;->setTextColor(Landroid/widget/RemoteViews;Lorg/json/JSONObject;ILjava/lang/String;Ljava/lang/String;)V

    .line 719
    const/4 v6, 0x0

    .line 720
    .local v6, "alignSetting":Ljava/lang/String;
    if-eqz v9, :cond_5

    const-string v1, "img_align"

    invoke-virtual {v9, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 721
    const-string v1, "img_align"

    invoke-virtual {v9, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 728
    :cond_4
    :goto_1
    const-string v1, "right"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 732
    sget v1, Lcom/onesignal/R$id;->os_bgimage_notif_bgimage_align_layout:I

    const/16 v2, -0x1388

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/widget/RemoteViews;->setViewPadding(IIIII)V

    .line 733
    sget v1, Lcom/onesignal/R$id;->os_bgimage_notif_bgimage_right_aligned:I

    invoke-virtual {v0, v1, v7}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 734
    sget v1, Lcom/onesignal/R$id;->os_bgimage_notif_bgimage_right_aligned:I

    invoke-virtual {v0, v1, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 735
    sget v1, Lcom/onesignal/R$id;->os_bgimage_notif_bgimage:I

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 740
    :goto_2
    invoke-virtual {p1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 744
    invoke-virtual {p1, v11}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    goto/16 :goto_0

    .line 723
    :cond_5
    sget-object v1, Lcom/onesignal/GenerateNotification;->contextResources:Landroid/content/res/Resources;

    const-string v2, "onesignal_bgimage_notif_image_align"

    const-string v4, "string"

    sget-object v5, Lcom/onesignal/GenerateNotification;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 724
    .local v8, "iAlignSetting":I
    if-eqz v8, :cond_4

    .line 725
    sget-object v1, Lcom/onesignal/GenerateNotification;->contextResources:Landroid/content/res/Resources;

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 738
    .end local v8    # "iAlignSetting":I
    :cond_6
    sget v1, Lcom/onesignal/R$id;->os_bgimage_notif_bgimage:I

    invoke-virtual {v0, v1, v7}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    goto :goto_2
.end method

.method private static addCustomAlertButtons(Landroid/content/Context;Lorg/json/JSONObject;Ljava/util/List;Ljava/util/List;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "gcmBundle"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lorg/json/JSONObject;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 986
    .local p2, "buttonsLabels":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "buttonsIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v3, Lorg/json/JSONObject;

    const-string v5, "custom"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 988
    .local v3, "customJson":Lorg/json/JSONObject;
    const-string v5, "a"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1003
    :cond_0
    return-void

    .line 991
    :cond_1
    const-string v5, "a"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 992
    .local v0, "additionalDataJSON":Lorg/json/JSONObject;
    const-string v5, "actionButtons"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 995
    const-string v5, "actionButtons"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 997
    .local v2, "buttons":Lorg/json/JSONArray;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 998
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 1000
    .local v1, "button":Lorg/json/JSONObject;
    const-string v5, "text"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1001
    const-string v5, "id"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 997
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method private static addNotificationActionButtons(Lorg/json/JSONObject;Landroid/support/v4/app/NotificationCompat$Builder;ILjava/lang/String;)V
    .locals 12
    .param p0, "gcmBundle"    # Lorg/json/JSONObject;
    .param p1, "mBuilder"    # Landroid/support/v4/app/NotificationCompat$Builder;
    .param p2, "notificationId"    # I
    .param p3, "groupSummary"    # Ljava/lang/String;

    .prologue
    .line 934
    :try_start_0
    new-instance v7, Lorg/json/JSONObject;

    const-string v10, "custom"

    invoke-virtual {p0, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 936
    .local v7, "customJson":Lorg/json/JSONObject;
    const-string v10, "a"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 970
    .end local v7    # "customJson":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-void

    .line 939
    .restart local v7    # "customJson":Lorg/json/JSONObject;
    :cond_1
    const-string v10, "a"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 940
    .local v0, "additionalDataJSON":Lorg/json/JSONObject;
    const-string v10, "actionButtons"

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 943
    const-string v10, "actionButtons"

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 945
    .local v6, "buttons":Lorg/json/JSONArray;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v8, v10, :cond_0

    .line 946
    invoke-virtual {v6, v8}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 947
    .local v2, "button":Lorg/json/JSONObject;
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v1, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 949
    .local v1, "bundle":Lorg/json/JSONObject;
    invoke-static {p2}, Lcom/onesignal/GenerateNotification;->getNewBaseIntent(I)Landroid/content/Intent;

    move-result-object v4

    .line 950
    .local v4, "buttonIntent":Landroid/content/Intent;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 951
    const-string v10, "action_button"

    const/4 v11, 0x1

    invoke-virtual {v4, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 952
    const-string v10, "actionSelected"

    const-string v11, "id"

    invoke-virtual {v2, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 953
    const-string v10, "onesignal_data"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 954
    if-eqz p3, :cond_4

    .line 955
    const-string v10, "summary"

    invoke-virtual {v4, v10, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 959
    :cond_2
    :goto_2
    invoke-static {p2, v4}, Lcom/onesignal/GenerateNotification;->getNewActionPendingIntent(ILandroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object v5

    .line 961
    .local v5, "buttonPIntent":Landroid/app/PendingIntent;
    const/4 v3, 0x0

    .line 962
    .local v3, "buttonIcon":I
    const-string v10, "icon"

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 963
    const-string v10, "icon"

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/onesignal/GenerateNotification;->getResourceIcon(Ljava/lang/String;)I

    move-result v3

    .line 965
    :cond_3
    const-string v10, "text"

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v3, v10, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 945
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 956
    .end local v3    # "buttonIcon":I
    .end local v5    # "buttonPIntent":Landroid/app/PendingIntent;
    :cond_4
    const-string v10, "grp"

    invoke-virtual {p0, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 957
    const-string v10, "grp"

    const-string v11, "grp"

    invoke-virtual {p0, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 967
    .end local v0    # "additionalDataJSON":Lorg/json/JSONObject;
    .end local v1    # "bundle":Lorg/json/JSONObject;
    .end local v2    # "button":Lorg/json/JSONObject;
    .end local v4    # "buttonIntent":Landroid/content/Intent;
    .end local v6    # "buttons":Lorg/json/JSONArray;
    .end local v7    # "customJson":Lorg/json/JSONObject;
    .end local v8    # "i":I
    :catch_0
    move-exception v9

    .line 968
    .local v9, "t":Ljava/lang/Throwable;
    invoke-virtual {v9}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0
.end method

.method private static addXiaomiSettings(Lcom/onesignal/GenerateNotification$OneSignalNotificationBuilder;Landroid/app/Notification;)V
    .locals 5
    .param p0, "oneSignalNotificationBuilder"    # Lcom/onesignal/GenerateNotification$OneSignalNotificationBuilder;
    .param p1, "notification"    # Landroid/app/Notification;

    .prologue
    .line 440
    iget-boolean v3, p0, Lcom/onesignal/GenerateNotification$OneSignalNotificationBuilder;->hasLargeIcon:Z

    if-nez v3, :cond_0

    .line 453
    :goto_0
    return-void

    .line 444
    :cond_0
    :try_start_0
    const-string v3, "android.app.MiuiNotification"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    .line 445
    .local v2, "miuiNotification":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "customizedIcon"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 446
    .local v0, "customizedIconField":Ljava/lang/reflect/Field;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 447
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 449
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "extraNotification"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 450
    .local v1, "extraNotificationField":Ljava/lang/reflect/Field;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 451
    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 452
    .end local v0    # "customizedIconField":Ljava/lang/reflect/Field;
    .end local v1    # "extraNotificationField":Ljava/lang/reflect/Field;
    .end local v2    # "miuiNotification":Ljava/lang/Object;
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private static applyNotificationExtender(Lcom/onesignal/NotificationGenerationJob;Landroid/support/v4/app/NotificationCompat$Builder;)V
    .locals 9
    .param p0, "notifJob"    # Lcom/onesignal/NotificationGenerationJob;
    .param p1, "notifBuilder"    # Landroid/support/v4/app/NotificationCompat$Builder;

    .prologue
    .line 379
    iget-object v7, p0, Lcom/onesignal/NotificationGenerationJob;->overrideSettings:Lcom/onesignal/NotificationExtenderService$OverrideSettings;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/onesignal/NotificationGenerationJob;->overrideSettings:Lcom/onesignal/NotificationExtenderService$OverrideSettings;

    iget-object v7, v7, Lcom/onesignal/NotificationExtenderService$OverrideSettings;->extender:Landroid/support/v4/app/NotificationCompat$Extender;

    if-nez v7, :cond_1

    .line 411
    :cond_0
    :goto_0
    return-void

    .line 383
    :cond_1
    :try_start_0
    const-class v7, Landroid/support/v4/app/NotificationCompat$Builder;

    const-string v8, "mNotification"

    invoke-virtual {v7, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 384
    .local v5, "mNotificationField":Ljava/lang/reflect/Field;
    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 385
    invoke-virtual {v5, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/Notification;

    .line 387
    .local v4, "mNotification":Landroid/app/Notification;
    iget v7, v4, Landroid/app/Notification;->flags:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iput-object v7, p0, Lcom/onesignal/NotificationGenerationJob;->orgFlags:Ljava/lang/Integer;

    .line 388
    iget-object v7, v4, Landroid/app/Notification;->sound:Landroid/net/Uri;

    iput-object v7, p0, Lcom/onesignal/NotificationGenerationJob;->orgSound:Landroid/net/Uri;

    .line 389
    iget-object v7, p0, Lcom/onesignal/NotificationGenerationJob;->overrideSettings:Lcom/onesignal/NotificationExtenderService$OverrideSettings;

    iget-object v7, v7, Lcom/onesignal/NotificationExtenderService$OverrideSettings;->extender:Landroid/support/v4/app/NotificationCompat$Extender;

    invoke-virtual {p1, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->extend(Landroid/support/v4/app/NotificationCompat$Extender;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 391
    invoke-virtual {v5, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "mNotification":Landroid/app/Notification;
    check-cast v4, Landroid/app/Notification;

    .line 393
    .restart local v4    # "mNotification":Landroid/app/Notification;
    const-class v7, Landroid/support/v4/app/NotificationCompat$Builder;

    const-string v8, "mContentText"

    invoke-virtual {v7, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 394
    .local v1, "mContentTextField":Ljava/lang/reflect/Field;
    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 395
    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 397
    .local v0, "mContentText":Ljava/lang/CharSequence;
    const-class v7, Landroid/support/v4/app/NotificationCompat$Builder;

    const-string v8, "mContentTitle"

    invoke-virtual {v7, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 398
    .local v3, "mContentTitleField":Ljava/lang/reflect/Field;
    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 399
    invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    .line 401
    .local v2, "mContentTitle":Ljava/lang/CharSequence;
    iput-object v0, p0, Lcom/onesignal/NotificationGenerationJob;->overriddenBodyFromExtender:Ljava/lang/CharSequence;

    .line 402
    iput-object v2, p0, Lcom/onesignal/NotificationGenerationJob;->overriddenTitleFromExtender:Ljava/lang/CharSequence;

    .line 403
    iget-boolean v7, p0, Lcom/onesignal/NotificationGenerationJob;->restoring:Z

    if-nez v7, :cond_0

    .line 404
    iget v7, v4, Landroid/app/Notification;->flags:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iput-object v7, p0, Lcom/onesignal/NotificationGenerationJob;->overriddenFlags:Ljava/lang/Integer;

    .line 405
    iget-object v7, v4, Landroid/app/Notification;->sound:Landroid/net/Uri;

    iput-object v7, p0, Lcom/onesignal/NotificationGenerationJob;->overriddenSound:Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 407
    .end local v0    # "mContentText":Ljava/lang/CharSequence;
    .end local v1    # "mContentTextField":Ljava/lang/reflect/Field;
    .end local v2    # "mContentTitle":Ljava/lang/CharSequence;
    .end local v3    # "mContentTitleField":Ljava/lang/reflect/Field;
    .end local v4    # "mNotification":Landroid/app/Notification;
    .end local v5    # "mNotificationField":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v6

    .line 408
    .local v6, "t":Ljava/lang/Throwable;
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private static createBaseSummaryIntent(ILorg/json/JSONObject;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .param p0, "summaryNotificationId"    # I
    .param p1, "gcmBundle"    # Lorg/json/JSONObject;
    .param p2, "group"    # Ljava/lang/String;

    .prologue
    .line 663
    invoke-static {p0}, Lcom/onesignal/GenerateNotification;->getNewBaseIntent(I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "onesignal_data"

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "summary"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private static createSingleNotificationBeforeSummaryBuilder(Lcom/onesignal/NotificationGenerationJob;Landroid/support/v4/app/NotificationCompat$Builder;)Landroid/app/Notification;
    .locals 4
    .param p0, "notifJob"    # Lcom/onesignal/NotificationGenerationJob;
    .param p1, "notifBuilder"    # Landroid/support/v4/app/NotificationCompat$Builder;

    .prologue
    .line 418
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-le v2, v3, :cond_2

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-ge v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/onesignal/NotificationGenerationJob;->restoring:Z

    if-nez v2, :cond_2

    const/4 v1, 0x1

    .line 421
    .local v1, "singleNotifWorkArounds":Z
    :goto_0
    if-eqz v1, :cond_0

    .line 422
    iget-object v2, p0, Lcom/onesignal/NotificationGenerationJob;->overriddenSound:Landroid/net/Uri;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/onesignal/NotificationGenerationJob;->overriddenSound:Landroid/net/Uri;

    iget-object v3, p0, Lcom/onesignal/NotificationGenerationJob;->orgSound:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 423
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 426
    :cond_0
    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 428
    .local v0, "notification":Landroid/app/Notification;
    if-eqz v1, :cond_1

    .line 429
    iget-object v2, p0, Lcom/onesignal/NotificationGenerationJob;->overriddenSound:Landroid/net/Uri;

    invoke-virtual {p1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 431
    :cond_1
    return-object v0

    .line 418
    .end local v0    # "notification":Landroid/app/Notification;
    .end local v1    # "singleNotifWorkArounds":Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static createSummaryIdDatabaseEntry(Lcom/onesignal/OneSignalDbHelper;Ljava/lang/String;I)V
    .locals 6
    .param p0, "dbHelper"    # Lcom/onesignal/OneSignalDbHelper;
    .param p1, "group"    # Ljava/lang/String;
    .param p2, "id"    # I

    .prologue
    .line 669
    const/4 v2, 0x0

    .line 671
    .local v2, "writableDb":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-virtual {p0}, Lcom/onesignal/OneSignalDbHelper;->getWritableDbWithRetries()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 672
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 674
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 675
    .local v1, "values":Landroid/content/ContentValues;
    const-string v3, "android_notification_id"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 676
    const-string v3, "group_id"

    invoke-virtual {v1, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 677
    const-string v3, "is_summary"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 678
    const-string v3, "notification"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 679
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 683
    if-eqz v2, :cond_0

    .line 685
    :try_start_1
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 691
    .end local v1    # "values":Landroid/content/ContentValues;
    :cond_0
    :goto_0
    return-void

    .line 686
    .restart local v1    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v0

    .line 687
    .local v0, "t":Ljava/lang/Throwable;
    sget-object v3, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v4, "Error closing transaction! "

    invoke-static {v3, v4, v0}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 680
    .end local v0    # "t":Ljava/lang/Throwable;
    .end local v1    # "values":Landroid/content/ContentValues;
    :catch_1
    move-exception v0

    .line 681
    .restart local v0    # "t":Ljava/lang/Throwable;
    :try_start_2
    sget-object v3, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v4, "Error adding summary notification record! "

    invoke-static {v3, v4, v0}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 683
    if-eqz v2, :cond_0

    .line 685
    :try_start_3
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 686
    :catch_2
    move-exception v0

    .line 687
    sget-object v3, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v4, "Error closing transaction! "

    invoke-static {v3, v4, v0}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 683
    .end local v0    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 685
    :try_start_4
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    .line 688
    :cond_1
    :goto_1
    throw v3

    .line 686
    :catch_3
    move-exception v0

    .line 687
    .restart local v0    # "t":Ljava/lang/Throwable;
    sget-object v4, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v5, "Error closing transaction! "

    invoke-static {v4, v5, v0}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private static createSummaryNotification(Lcom/onesignal/NotificationGenerationJob;Lcom/onesignal/GenerateNotification$OneSignalNotificationBuilder;)V
    .locals 35
    .param p0, "notifJob"    # Lcom/onesignal/NotificationGenerationJob;
    .param p1, "notifBuilder"    # Lcom/onesignal/GenerateNotification$OneSignalNotificationBuilder;

    .prologue
    .line 462
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/onesignal/NotificationGenerationJob;->restoring:Z

    move/from16 v34, v0

    .line 463
    .local v34, "updateSummary":Z
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/onesignal/NotificationGenerationJob;->jsonPayload:Lorg/json/JSONObject;

    .line 465
    .local v14, "gcmBundle":Lorg/json/JSONObject;
    const-string v3, "grp"

    const/4 v7, 0x0

    invoke-virtual {v14, v3, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 467
    .local v16, "group":Ljava/lang/String;
    new-instance v23, Ljava/util/Random;

    invoke-direct/range {v23 .. v23}, Ljava/util/Random;-><init>()V

    .line 468
    .local v23, "random":Ljava/util/Random;
    invoke-virtual/range {v23 .. v23}, Ljava/util/Random;->nextInt()I

    move-result v3

    const/4 v7, 0x0

    invoke-static {v7}, Lcom/onesignal/GenerateNotification;->getNewBaseDeleteIntent(I)Landroid/content/Intent;

    move-result-object v7

    const-string v8, "summary"

    move-object/from16 v0, v16

    invoke-virtual {v7, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/onesignal/GenerateNotification;->getNewActionPendingIntent(ILandroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object v27

    .line 471
    .local v27, "summaryDeleteIntent":Landroid/app/PendingIntent;
    const/16 v32, 0x0

    .line 473
    .local v32, "summaryNotificationId":Ljava/lang/Integer;
    const/4 v13, 0x0

    .line 474
    .local v13, "firstFullData":Ljava/lang/String;
    const/16 v28, 0x0

    .line 476
    .local v28, "summaryList":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/text/SpannableString;>;"
    sget-object v3, Lcom/onesignal/GenerateNotification;->currentContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/onesignal/OneSignalDbHelper;->getInstance(Landroid/content/Context;)Lcom/onesignal/OneSignalDbHelper;

    move-result-object v11

    .line 477
    .local v11, "dbHelper":Lcom/onesignal/OneSignalDbHelper;
    const/4 v10, 0x0

    .line 480
    .local v10, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {v11}, Lcom/onesignal/OneSignalDbHelper;->getReadableDbWithRetries()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 482
    .local v2, "readableDb":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v3, 0x5

    new-array v4, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v7, "android_notification_id"

    aput-object v7, v4, v3

    const/4 v3, 0x1

    const-string v7, "full_data"

    aput-object v7, v4, v3

    const/4 v3, 0x2

    const-string v7, "is_summary"

    aput-object v7, v4, v3

    const/4 v3, 0x3

    const-string v7, "title"

    aput-object v7, v4, v3

    const/4 v3, 0x4

    const-string v7, "message"

    aput-object v7, v4, v3

    .line 488
    .local v4, "retColumn":[Ljava/lang/String;
    const-string v5, "group_id = ? AND dismissed = 0 AND opened = 0"

    .line 491
    .local v5, "whereStr":Ljava/lang/String;
    const/4 v3, 0x1

    new-array v6, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v16, v6, v3

    .line 494
    .local v6, "whereArgs":[Ljava/lang/String;
    if-nez v34, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/onesignal/NotificationGenerationJob;->getAndroidId()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v7, -0x1

    if-eq v3, v7, :cond_0

    .line 495
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " AND android_notification_id <> "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/onesignal/NotificationGenerationJob;->getAndroidId()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 497
    :cond_0
    const-string v3, "notification"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "_id DESC"

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 507
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 509
    new-instance v29, Ljava/util/ArrayList;

    invoke-direct/range {v29 .. v29}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 512
    .end local v28    # "summaryList":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/text/SpannableString;>;"
    .local v29, "summaryList":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/text/SpannableString;>;"
    :cond_1
    :try_start_1
    const-string v3, "is_summary"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v7, 0x1

    if-ne v3, v7, :cond_d

    .line 513
    const-string v3, "android_notification_id"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    .line 533
    :cond_2
    :goto_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v3

    if-nez v3, :cond_1

    .line 535
    if-eqz v34, :cond_10

    if-eqz v13, :cond_10

    .line 537
    :try_start_2
    new-instance v15, Lorg/json/JSONObject;

    invoke-direct {v15, v13}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .end local v14    # "gcmBundle":Lorg/json/JSONObject;
    .local v15, "gcmBundle":Lorg/json/JSONObject;
    move-object/from16 v28, v29

    .end local v29    # "summaryList":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/text/SpannableString;>;"
    .restart local v28    # "summaryList":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/text/SpannableString;>;"
    move-object v14, v15

    .line 545
    .end local v15    # "gcmBundle":Lorg/json/JSONObject;
    .restart local v14    # "gcmBundle":Lorg/json/JSONObject;
    :cond_3
    :goto_1
    if-eqz v10, :cond_4

    invoke-interface {v10}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_4

    .line 546
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 549
    :cond_4
    if-nez v32, :cond_5

    .line 550
    invoke-virtual/range {v23 .. v23}, Ljava/util/Random;->nextInt()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    .line 551
    invoke-virtual/range {v32 .. v32}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move-object/from16 v0, v16

    invoke-static {v11, v0, v3}, Lcom/onesignal/GenerateNotification;->createSummaryIdDatabaseEntry(Lcom/onesignal/OneSignalDbHelper;Ljava/lang/String;I)V

    .line 554
    :cond_5
    invoke-virtual/range {v23 .. v23}, Ljava/util/Random;->nextInt()I

    move-result v3

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Integer;->intValue()I

    move-result v7

    move-object/from16 v0, v16

    invoke-static {v7, v14, v0}, Lcom/onesignal/GenerateNotification;->createBaseSummaryIntent(ILorg/json/JSONObject;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/onesignal/GenerateNotification;->getNewActionPendingIntent(ILandroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object v26

    .line 558
    .local v26, "summaryContentIntent":Landroid/app/PendingIntent;
    if-eqz v28, :cond_18

    if-eqz v34, :cond_6

    .line 559
    invoke-interface/range {v28 .. v28}, Ljava/util/Collection;->size()I

    move-result v3

    const/4 v7, 0x1

    if-gt v3, v7, :cond_7

    :cond_6
    if-nez v34, :cond_18

    .line 560
    invoke-interface/range {v28 .. v28}, Ljava/util/Collection;->size()I

    move-result v3

    if-lez v3, :cond_18

    .line 561
    :cond_7
    invoke-interface/range {v28 .. v28}, Ljava/util/Collection;->size()I

    move-result v7

    if-eqz v34, :cond_12

    const/4 v3, 0x0

    :goto_2
    add-int v22, v7, v3

    .line 563
    .local v22, "notificationCount":I
    const-string v3, "grp_msg"

    const/4 v7, 0x0

    invoke-virtual {v14, v3, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 564
    .local v30, "summaryMessage":Ljava/lang/String;
    if-nez v30, :cond_13

    .line 565
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " new messages"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    .line 569
    :goto_3
    invoke-static/range {p0 .. p0}, Lcom/onesignal/GenerateNotification;->getBaseOneSignalNotificationBuilder(Lcom/onesignal/NotificationGenerationJob;)Lcom/onesignal/GenerateNotification$OneSignalNotificationBuilder;

    move-result-object v3

    iget-object v0, v3, Lcom/onesignal/GenerateNotification$OneSignalNotificationBuilder;->compatBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    move-object/from16 v25, v0

    .line 570
    .local v25, "summaryBuilder":Landroid/support/v4/app/NotificationCompat$Builder;
    if-eqz v34, :cond_14

    .line 571
    invoke-static/range {v25 .. v25}, Lcom/onesignal/GenerateNotification;->removeNotifyOptions(Landroid/support/v4/app/NotificationCompat$Builder;)V

    .line 582
    :cond_8
    :goto_4
    invoke-virtual/range {v25 .. v26}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    .line 583
    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    sget-object v7, Lcom/onesignal/GenerateNotification;->currentContext:Landroid/content/Context;

    .line 584
    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    sget-object v8, Lcom/onesignal/GenerateNotification;->currentContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    .line 585
    move-object/from16 v0, v30

    invoke-virtual {v3, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    .line 586
    move/from16 v0, v22

    invoke-virtual {v3, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setNumber(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    .line 587
    invoke-static {}, Lcom/onesignal/GenerateNotification;->getDefaultSmallIconId()I

    move-result v7

    invoke-virtual {v3, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    .line 588
    invoke-static {}, Lcom/onesignal/GenerateNotification;->getDefaultLargeIcon()Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    .line 589
    move/from16 v0, v34

    invoke-virtual {v3, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setOnlyAlertOnce(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    .line 590
    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setGroup(Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    const/4 v7, 0x1

    .line 591
    invoke-virtual {v3, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setGroupSummary(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 594
    const/4 v3, 0x1

    :try_start_3
    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setGroupAlertBehavior(I)Landroid/support/v4/app/NotificationCompat$Builder;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    .line 600
    :goto_5
    if-nez v34, :cond_9

    .line 601
    move-object/from16 v0, v25

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 603
    :cond_9
    new-instance v17, Landroid/support/v4/app/NotificationCompat$InboxStyle;

    invoke-direct/range {v17 .. v17}, Landroid/support/v4/app/NotificationCompat$InboxStyle;-><init>()V

    .line 606
    .local v17, "inboxStyle":Landroid/support/v4/app/NotificationCompat$InboxStyle;
    if-nez v34, :cond_c

    .line 607
    const/16 v19, 0x0

    .line 609
    .local v19, "line1Title":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/onesignal/NotificationGenerationJob;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_a

    .line 610
    invoke-virtual/range {p0 .. p0}, Lcom/onesignal/NotificationGenerationJob;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v19

    .line 612
    :cond_a
    if-nez v19, :cond_16

    .line 613
    const-string v19, ""

    .line 617
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/onesignal/NotificationGenerationJob;->getBody()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v20

    .line 619
    .local v20, "message":Ljava/lang/String;
    new-instance v24, Landroid/text/SpannableString;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-direct {v0, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 620
    .local v24, "spannableString":Landroid/text/SpannableString;
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_b

    .line 621
    new-instance v3, Landroid/text/style/StyleSpan;

    const/4 v7, 0x1

    invoke-direct {v3, v7}, Landroid/text/style/StyleSpan;-><init>(I)V

    const/4 v7, 0x0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v7, v8, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 622
    :cond_b
    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$InboxStyle;->addLine(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$InboxStyle;

    .line 625
    .end local v19    # "line1Title":Ljava/lang/String;
    .end local v20    # "message":Ljava/lang/String;
    .end local v24    # "spannableString":Landroid/text/SpannableString;
    :cond_c
    invoke-interface/range {v28 .. v28}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_17

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/text/SpannableString;

    .line 626
    .local v18, "line":Landroid/text/SpannableString;
    invoke-virtual/range {v17 .. v18}, Landroid/support/v4/app/NotificationCompat$InboxStyle;->addLine(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$InboxStyle;

    goto :goto_7

    .line 515
    .end local v17    # "inboxStyle":Landroid/support/v4/app/NotificationCompat$InboxStyle;
    .end local v18    # "line":Landroid/text/SpannableString;
    .end local v22    # "notificationCount":I
    .end local v25    # "summaryBuilder":Landroid/support/v4/app/NotificationCompat$Builder;
    .end local v26    # "summaryContentIntent":Landroid/app/PendingIntent;
    .end local v28    # "summaryList":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/text/SpannableString;>;"
    .end local v30    # "summaryMessage":Ljava/lang/String;
    .restart local v29    # "summaryList":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/text/SpannableString;>;"
    :cond_d
    :try_start_4
    const-string v3, "title"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v33

    .line 516
    .local v33, "title":Ljava/lang/String;
    if-nez v33, :cond_f

    .line 517
    const-string v33, ""

    .line 523
    :goto_8
    const-string v3, "message"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 525
    .local v21, "msg":Ljava/lang/String;
    new-instance v24, Landroid/text/SpannableString;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v33

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-direct {v0, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 526
    .restart local v24    # "spannableString":Landroid/text/SpannableString;
    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_e

    .line 527
    new-instance v3, Landroid/text/style/StyleSpan;

    const/4 v7, 0x1

    invoke-direct {v3, v7}, Landroid/text/style/StyleSpan;-><init>(I)V

    const/4 v7, 0x0

    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v7, v8, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 528
    :cond_e
    move-object/from16 v0, v29

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 530
    if-nez v13, :cond_2

    .line 531
    const-string v3, "full_data"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_0

    .line 519
    .end local v21    # "msg":Ljava/lang/String;
    .end local v24    # "spannableString":Landroid/text/SpannableString;
    :cond_f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v33

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    goto :goto_8

    .line 538
    .end local v33    # "title":Ljava/lang/String;
    :catch_0
    move-exception v12

    .line 539
    .local v12, "e":Lorg/json/JSONException;
    invoke-virtual {v12}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .end local v12    # "e":Lorg/json/JSONException;
    :cond_10
    move-object/from16 v28, v29

    .end local v29    # "summaryList":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/text/SpannableString;>;"
    .restart local v28    # "summaryList":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/text/SpannableString;>;"
    goto/16 :goto_1

    .line 545
    .end local v2    # "readableDb":Landroid/database/sqlite/SQLiteDatabase;
    .end local v4    # "retColumn":[Ljava/lang/String;
    .end local v5    # "whereStr":Ljava/lang/String;
    .end local v6    # "whereArgs":[Ljava/lang/String;
    :catchall_0
    move-exception v3

    :goto_9
    if-eqz v10, :cond_11

    invoke-interface {v10}, Landroid/database/Cursor;->isClosed()Z

    move-result v7

    if-nez v7, :cond_11

    .line 546
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_11
    throw v3

    .line 561
    .restart local v2    # "readableDb":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v4    # "retColumn":[Ljava/lang/String;
    .restart local v5    # "whereStr":Ljava/lang/String;
    .restart local v6    # "whereArgs":[Ljava/lang/String;
    .restart local v26    # "summaryContentIntent":Landroid/app/PendingIntent;
    :cond_12
    const/4 v3, 0x1

    goto/16 :goto_2

    .line 567
    .restart local v22    # "notificationCount":I
    .restart local v30    # "summaryMessage":Ljava/lang/String;
    :cond_13
    const-string v3, "$[notif_count]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v30

    invoke-virtual {v0, v3, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v30

    goto/16 :goto_3

    .line 573
    .restart local v25    # "summaryBuilder":Landroid/support/v4/app/NotificationCompat$Builder;
    :cond_14
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/onesignal/NotificationGenerationJob;->overriddenSound:Landroid/net/Uri;

    if-eqz v3, :cond_15

    .line 574
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/onesignal/NotificationGenerationJob;->overriddenSound:Landroid/net/Uri;

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 576
    :cond_15
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/onesignal/NotificationGenerationJob;->overriddenFlags:Ljava/lang/Integer;

    if-eqz v3, :cond_8

    .line 577
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/onesignal/NotificationGenerationJob;->overriddenFlags:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setDefaults(I)Landroid/support/v4/app/NotificationCompat$Builder;

    goto/16 :goto_4

    .line 615
    .restart local v17    # "inboxStyle":Landroid/support/v4/app/NotificationCompat$InboxStyle;
    .restart local v19    # "line1Title":Ljava/lang/String;
    :cond_16
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    goto/16 :goto_6

    .line 627
    .end local v19    # "line1Title":Ljava/lang/String;
    :cond_17
    move-object/from16 v0, v17

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$InboxStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$InboxStyle;

    .line 628
    move-object/from16 v0, v25

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 630
    invoke-virtual/range {v25 .. v25}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v31

    .line 659
    .end local v17    # "inboxStyle":Landroid/support/v4/app/NotificationCompat$InboxStyle;
    .end local v22    # "notificationCount":I
    .end local v30    # "summaryMessage":Ljava/lang/String;
    .local v31, "summaryNotification":Landroid/app/Notification;
    :goto_a
    sget-object v3, Lcom/onesignal/GenerateNotification;->currentContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/support/v4/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroid/support/v4/app/NotificationManagerCompat;

    move-result-object v3

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Integer;->intValue()I

    move-result v7

    move-object/from16 v0, v31

    invoke-virtual {v3, v7, v0}, Landroid/support/v4/app/NotificationManagerCompat;->notify(ILandroid/app/Notification;)V

    .line 660
    return-void

    .line 634
    .end local v25    # "summaryBuilder":Landroid/support/v4/app/NotificationCompat$Builder;
    .end local v31    # "summaryNotification":Landroid/app/Notification;
    :cond_18
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/onesignal/GenerateNotification$OneSignalNotificationBuilder;->compatBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    move-object/from16 v25, v0

    .line 639
    .restart local v25    # "summaryBuilder":Landroid/support/v4/app/NotificationCompat$Builder;
    move-object/from16 v0, v25

    iget-object v3, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 640
    invoke-virtual/range {v32 .. v32}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move-object/from16 v0, v25

    move-object/from16 v1, v16

    invoke-static {v14, v0, v3, v1}, Lcom/onesignal/GenerateNotification;->addNotificationActionButtons(Lorg/json/JSONObject;Landroid/support/v4/app/NotificationCompat$Builder;ILjava/lang/String;)V

    .line 642
    invoke-virtual/range {v25 .. v26}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    .line 643
    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    .line 644
    move/from16 v0, v34

    invoke-virtual {v3, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setOnlyAlertOnce(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    .line 645
    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setGroup(Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    const/4 v7, 0x1

    .line 646
    invoke-virtual {v3, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setGroupSummary(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 649
    const/4 v3, 0x1

    :try_start_5
    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setGroupAlertBehavior(I)Landroid/support/v4/app/NotificationCompat$Builder;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2

    .line 655
    :goto_b
    invoke-virtual/range {v25 .. v25}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v31

    .line 656
    .restart local v31    # "summaryNotification":Landroid/app/Notification;
    move-object/from16 v0, p1

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Lcom/onesignal/GenerateNotification;->addXiaomiSettings(Lcom/onesignal/GenerateNotification$OneSignalNotificationBuilder;Landroid/app/Notification;)V

    goto :goto_a

    .line 596
    .end local v31    # "summaryNotification":Landroid/app/Notification;
    .restart local v22    # "notificationCount":I
    .restart local v30    # "summaryMessage":Ljava/lang/String;
    :catch_1
    move-exception v3

    goto/16 :goto_5

    .line 651
    .end local v22    # "notificationCount":I
    .end local v30    # "summaryMessage":Ljava/lang/String;
    :catch_2
    move-exception v3

    goto :goto_b

    .line 545
    .end local v25    # "summaryBuilder":Landroid/support/v4/app/NotificationCompat$Builder;
    .end local v26    # "summaryContentIntent":Landroid/app/PendingIntent;
    .end local v28    # "summaryList":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/text/SpannableString;>;"
    .restart local v29    # "summaryList":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/text/SpannableString;>;"
    :catchall_1
    move-exception v3

    move-object/from16 v28, v29

    .end local v29    # "summaryList":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/text/SpannableString;>;"
    .restart local v28    # "summaryList":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/text/SpannableString;>;"
    goto/16 :goto_9
.end method

.method static fromJsonPayload(Lcom/onesignal/NotificationGenerationJob;)V
    .locals 3
    .param p0, "notifJob"    # Lcom/onesignal/NotificationGenerationJob;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/onesignal/NotificationGenerationJob;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/onesignal/GenerateNotification;->setStatics(Landroid/content/Context;)V

    .line 101
    iget-boolean v0, p0, Lcom/onesignal/NotificationGenerationJob;->restoring:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/onesignal/NotificationGenerationJob;->showAsAlert:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/onesignal/ActivityLifecycleHandler;->curActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/onesignal/NotificationGenerationJob;->jsonPayload:Lorg/json/JSONObject;

    sget-object v1, Lcom/onesignal/ActivityLifecycleHandler;->curActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/onesignal/NotificationGenerationJob;->getAndroidId()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/onesignal/GenerateNotification;->showNotificationAsAlert(Lorg/json/JSONObject;Landroid/app/Activity;I)V

    .line 107
    :goto_0
    return-void

    .line 106
    :cond_0
    invoke-static {p0}, Lcom/onesignal/GenerateNotification;->showNotification(Lcom/onesignal/NotificationGenerationJob;)V

    goto :goto_0
.end method

.method private static getAccentColor(Lorg/json/JSONObject;)Ljava/math/BigInteger;
    .locals 5
    .param p0, "gcmBundle"    # Lorg/json/JSONObject;

    .prologue
    const/4 v2, 0x0

    .line 919
    :try_start_0
    const-string v1, "bgac"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 920
    new-instance v1, Ljava/math/BigInteger;

    const-string v3, "bgac"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-direct {v1, v3, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 929
    :goto_0
    return-object v1

    .line 921
    :catch_0
    move-exception v1

    .line 924
    :cond_0
    :try_start_1
    sget-object v1, Lcom/onesignal/GenerateNotification;->currentContext:Landroid/content/Context;

    const-string v3, "com.onesignal.NotificationAccentColor.DEFAULT"

    invoke-static {v1, v3}, Lcom/onesignal/OSUtils;->getManifestMeta(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 925
    .local v0, "defaultColor":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 926
    new-instance v1, Ljava/math/BigInteger;

    const/16 v3, 0x10

    invoke-direct {v1, v0, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 927
    .end local v0    # "defaultColor":Ljava/lang/String;
    :catch_1
    move-exception v1

    :cond_1
    move-object v1, v2

    .line 929
    goto :goto_0
.end method

.method private static getBaseOneSignalNotificationBuilder(Lcom/onesignal/NotificationGenerationJob;)Lcom/onesignal/GenerateNotification$OneSignalNotificationBuilder;
    .locals 24
    .param p0, "notifJob"    # Lcom/onesignal/NotificationGenerationJob;

    .prologue
    .line 209
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/onesignal/NotificationGenerationJob;->jsonPayload:Lorg/json/JSONObject;

    .line 210
    .local v7, "gcmBundle":Lorg/json/JSONObject;
    new-instance v13, Lcom/onesignal/GenerateNotification$OneSignalNotificationBuilder;

    const/16 v19, 0x0

    move-object/from16 v0, v19

    invoke-direct {v13, v0}, Lcom/onesignal/GenerateNotification$OneSignalNotificationBuilder;-><init>(Lcom/onesignal/GenerateNotification$1;)V

    .line 214
    .local v13, "oneSignalNotificationBuilder":Lcom/onesignal/GenerateNotification$OneSignalNotificationBuilder;
    :try_start_0
    invoke-static/range {p0 .. p0}, Lcom/onesignal/NotificationChannelManager;->createNotificationChannel(Lcom/onesignal/NotificationGenerationJob;)Ljava/lang/String;

    move-result-object v6

    .line 216
    .local v6, "channelId":Ljava/lang/String;
    new-instance v11, Landroid/support/v4/app/NotificationCompat$Builder;

    sget-object v19, Lcom/onesignal/GenerateNotification;->currentContext:Landroid/content/Context;

    move-object/from16 v0, v19

    invoke-direct {v11, v0, v6}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    .end local v6    # "channelId":Ljava/lang/String;
    .local v11, "notifBuilder":Landroid/support/v4/app/NotificationCompat$Builder;
    :goto_0
    const-string v19, "alert"

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v7, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 223
    .local v10, "message":Ljava/lang/String;
    const/16 v19, 0x1

    .line 224
    move/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v19

    .line 225
    invoke-static {v7}, Lcom/onesignal/GenerateNotification;->getSmallIconId(Lorg/json/JSONObject;)I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v19

    new-instance v20, Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    invoke-direct/range {v20 .. v20}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;-><init>()V

    .line 226
    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v19

    .line 227
    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v19

    .line 228
    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 230
    sget v19, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v20, 0x18

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_0

    const-string v19, "title"

    .line 231
    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string v20, ""

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_1

    .line 232
    :cond_0
    invoke-static {v7}, Lcom/onesignal/GenerateNotification;->getTitle(Lorg/json/JSONObject;)Ljava/lang/CharSequence;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 234
    :cond_1
    const/4 v12, 0x0

    .line 236
    .local v12, "notificationDefaults":I
    sget-object v19, Lcom/onesignal/GenerateNotification;->currentContext:Landroid/content/Context;

    invoke-static/range {v19 .. v19}, Lcom/onesignal/OneSignal;->getVibrate(Landroid/content/Context;)Z

    move-result v19

    if-eqz v19, :cond_2

    const-string v19, "vib"

    const/16 v20, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v7, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_2

    .line 237
    const-string v19, "vib_pt"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_9

    .line 238
    invoke-static {v7}, Lcom/onesignal/OSUtils;->parseVibrationPattern(Lorg/json/JSONObject;)[J

    move-result-object v17

    .line 239
    .local v17, "vibrationPattern":[J
    if-eqz v17, :cond_2

    .line 240
    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setVibrate([J)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 246
    .end local v17    # "vibrationPattern":[J
    :cond_2
    :goto_1
    const-string v19, "ledc"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_a

    const-string v19, "led"

    const/16 v20, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v7, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_a

    .line 248
    :try_start_1
    new-instance v9, Ljava/math/BigInteger;

    const-string v19, "ledc"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x10

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v9, v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 249
    .local v9, "ledColor":Ljava/math/BigInteger;
    invoke-virtual {v9}, Ljava/math/BigInteger;->intValue()I

    move-result v19

    const/16 v20, 0x7d0

    const/16 v21, 0x1388

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v11, v0, v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setLights(III)Landroid/support/v4/app/NotificationCompat$Builder;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 257
    .end local v9    # "ledColor":Ljava/math/BigInteger;
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/onesignal/NotificationGenerationJob;->shownTimeStamp:Ljava/lang/Long;

    move-object/from16 v19, v0

    if-eqz v19, :cond_3

    .line 259
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/onesignal/NotificationGenerationJob;->shownTimeStamp:Ljava/lang/Long;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    const-wide/16 v22, 0x3e8

    mul-long v20, v20, v22

    move-wide/from16 v0, v20

    invoke-virtual {v11, v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setWhen(J)Landroid/support/v4/app/NotificationCompat$Builder;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_4

    .line 264
    :cond_3
    :goto_3
    :try_start_3
    invoke-static {v7}, Lcom/onesignal/GenerateNotification;->getAccentColor(Lorg/json/JSONObject;)Ljava/math/BigInteger;

    move-result-object v4

    .line 265
    .local v4, "accentColor":Ljava/math/BigInteger;
    if-eqz v4, :cond_4

    .line 266
    invoke-virtual {v4}, Ljava/math/BigInteger;->intValue()I

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setColor(I)Landroid/support/v4/app/NotificationCompat$Builder;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    .line 270
    .end local v4    # "accentColor":Ljava/math/BigInteger;
    :cond_4
    :goto_4
    const/16 v18, 0x1

    .line 271
    .local v18, "visibility":I
    :try_start_4
    const-string v19, "vis"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_5

    .line 272
    const-string v19, "vis"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    .line 273
    :cond_5
    move/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setVisibility(I)Landroid/support/v4/app/NotificationCompat$Builder;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    .line 276
    :goto_5
    invoke-static {v7}, Lcom/onesignal/GenerateNotification;->getLargeIcon(Lorg/json/JSONObject;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 277
    .local v8, "largeIcon":Landroid/graphics/Bitmap;
    if-eqz v8, :cond_6

    .line 278
    const/16 v19, 0x1

    move/from16 v0, v19

    iput-boolean v0, v13, Lcom/onesignal/GenerateNotification$OneSignalNotificationBuilder;->hasLargeIcon:Z

    .line 279
    invoke-virtual {v11, v8}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 282
    :cond_6
    const-string v19, "bicon"

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v7, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/onesignal/GenerateNotification;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 283
    .local v5, "bigPictureIcon":Landroid/graphics/Bitmap;
    if-eqz v5, :cond_7

    .line 284
    new-instance v19, Landroid/support/v4/app/NotificationCompat$BigPictureStyle;

    invoke-direct/range {v19 .. v19}, Landroid/support/v4/app/NotificationCompat$BigPictureStyle;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Landroid/support/v4/app/NotificationCompat$BigPictureStyle;->bigPicture(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$BigPictureStyle;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Landroid/support/v4/app/NotificationCompat$BigPictureStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigPictureStyle;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 286
    :cond_7
    invoke-static {v7}, Lcom/onesignal/GenerateNotification;->isSoundEnabled(Lorg/json/JSONObject;)Z

    move-result v19

    if-eqz v19, :cond_8

    .line 287
    sget-object v19, Lcom/onesignal/GenerateNotification;->currentContext:Landroid/content/Context;

    const-string v20, "sound"

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v7, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/onesignal/OSUtils;->getSoundUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    .line 288
    .local v15, "soundUri":Landroid/net/Uri;
    if-eqz v15, :cond_b

    .line 289
    invoke-virtual {v11, v15}, Landroid/support/v4/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 294
    .end local v15    # "soundUri":Landroid/net/Uri;
    :cond_8
    :goto_6
    invoke-virtual {v11, v12}, Landroid/support/v4/app/NotificationCompat$Builder;->setDefaults(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 296
    const-string v19, "pri"

    const/16 v20, 0x6

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v7, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v14

    .line 297
    .local v14, "payload_priority":I
    invoke-static {v14}, Lcom/onesignal/GenerateNotification;->osPriorityToAndroidPriority(I)I

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setPriority(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 299
    iput-object v11, v13, Lcom/onesignal/GenerateNotification$OneSignalNotificationBuilder;->compatBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    .line 300
    return-object v13

    .line 217
    .end local v5    # "bigPictureIcon":Landroid/graphics/Bitmap;
    .end local v8    # "largeIcon":Landroid/graphics/Bitmap;
    .end local v10    # "message":Ljava/lang/String;
    .end local v11    # "notifBuilder":Landroid/support/v4/app/NotificationCompat$Builder;
    .end local v12    # "notificationDefaults":I
    .end local v14    # "payload_priority":I
    .end local v18    # "visibility":I
    :catch_0
    move-exception v16

    .line 218
    .local v16, "t":Ljava/lang/Throwable;
    new-instance v11, Landroid/support/v4/app/NotificationCompat$Builder;

    sget-object v19, Lcom/onesignal/GenerateNotification;->currentContext:Landroid/content/Context;

    move-object/from16 v0, v19

    invoke-direct {v11, v0}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .restart local v11    # "notifBuilder":Landroid/support/v4/app/NotificationCompat$Builder;
    goto/16 :goto_0

    .line 243
    .end local v16    # "t":Ljava/lang/Throwable;
    .restart local v10    # "message":Ljava/lang/String;
    .restart local v12    # "notificationDefaults":I
    :cond_9
    const/4 v12, 0x2

    goto/16 :goto_1

    .line 250
    :catch_1
    move-exception v16

    .line 251
    .restart local v16    # "t":Ljava/lang/Throwable;
    or-int/lit8 v12, v12, 0x4

    .line 252
    goto/16 :goto_2

    .line 255
    .end local v16    # "t":Ljava/lang/Throwable;
    :cond_a
    or-int/lit8 v12, v12, 0x4

    goto/16 :goto_2

    .line 291
    .restart local v5    # "bigPictureIcon":Landroid/graphics/Bitmap;
    .restart local v8    # "largeIcon":Landroid/graphics/Bitmap;
    .restart local v15    # "soundUri":Landroid/net/Uri;
    .restart local v18    # "visibility":I
    :cond_b
    or-int/lit8 v12, v12, 0x1

    goto :goto_6

    .line 274
    .end local v5    # "bigPictureIcon":Landroid/graphics/Bitmap;
    .end local v8    # "largeIcon":Landroid/graphics/Bitmap;
    .end local v15    # "soundUri":Landroid/net/Uri;
    :catch_2
    move-exception v19

    goto/16 :goto_5

    .line 267
    .end local v18    # "visibility":I
    :catch_3
    move-exception v19

    goto/16 :goto_4

    .line 260
    :catch_4
    move-exception v19

    goto/16 :goto_3
.end method

.method private static getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 851
    if-nez p0, :cond_0

    .line 852
    const/4 v1, 0x0

    .line 858
    :goto_0
    return-object v1

    .line 853
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 855
    .local v0, "trimmedName":Ljava/lang/String;
    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 856
    :cond_1
    invoke-static {v0}, Lcom/onesignal/GenerateNotification;->getBitmapFromURL(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0

    .line 858
    :cond_2
    invoke-static {p0}, Lcom/onesignal/GenerateNotification;->getBitmapFromAssetsOrResourceName(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0
.end method

.method private static getBitmapFromAssetsOrResourceName(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "bitmapStr"    # Ljava/lang/String;

    .prologue
    .line 814
    const/4 v0, 0x0

    .line 817
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :try_start_0
    sget-object v4, Lcom/onesignal/GenerateNotification;->currentContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    .line 820
    :goto_0
    if-eqz v0, :cond_0

    .line 837
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :goto_1
    return-object v0

    .line 823
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    const/4 v4, 0x5

    :try_start_1
    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, ".png"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, ".webp"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, ".jpg"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string v6, ".gif"

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string v6, ".bmp"

    aput-object v6, v4, v5

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 824
    .local v3, "image_extensions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 826
    .local v2, "extension":Ljava/lang/String;
    :try_start_2
    sget-object v5, Lcom/onesignal/GenerateNotification;->currentContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    invoke-static {v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    .line 828
    :goto_2
    if-eqz v0, :cond_1

    goto :goto_1

    .line 832
    .end local v2    # "extension":Ljava/lang/String;
    :cond_2
    :try_start_3
    invoke-static {p0}, Lcom/onesignal/GenerateNotification;->getResourceIcon(Ljava/lang/String;)I

    move-result v1

    .line 833
    .local v1, "bitmapId":I
    if-eqz v1, :cond_3

    .line 834
    sget-object v4, Lcom/onesignal/GenerateNotification;->contextResources:Landroid/content/res/Resources;

    invoke-static {v4, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v0

    goto :goto_1

    .line 835
    .end local v1    # "bitmapId":I
    .end local v3    # "image_extensions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v4

    .line 837
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 827
    .restart local v2    # "extension":Ljava/lang/String;
    .restart local v3    # "image_extensions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_1
    move-exception v5

    goto :goto_2

    .line 818
    .end local v2    # "extension":Ljava/lang/String;
    .end local v3    # "image_extensions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_2
    move-exception v4

    goto :goto_0
.end method

.method private static getBitmapFromURL(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "location"    # Ljava/lang/String;

    .prologue
    .line 842
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 847
    :goto_0
    return-object v1

    .line 843
    :catch_0
    move-exception v0

    .line 844
    .local v0, "t":Ljava/lang/Throwable;
    sget-object v1, Lcom/onesignal/OneSignal$LOG_LEVEL;->WARN:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v2, "Could not download image!"

    invoke-static {v1, v2, v0}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 847
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static getDefaultLargeIcon()Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 780
    const-string v1, "ic_onesignal_large_icon_default"

    invoke-static {v1}, Lcom/onesignal/GenerateNotification;->getBitmapFromAssetsOrResourceName(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 781
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/onesignal/GenerateNotification;->resizeBitmapForLargeIconArea(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method private static getDefaultSmallIconId()I
    .locals 2

    .prologue
    .line 890
    const-string v1, "ic_stat_onesignal_default"

    invoke-static {v1}, Lcom/onesignal/GenerateNotification;->getDrawableId(Ljava/lang/String;)I

    move-result v0

    .line 891
    .local v0, "notificationIcon":I
    if-eqz v0, :cond_1

    .line 902
    .end local v0    # "notificationIcon":I
    :cond_0
    :goto_0
    return v0

    .line 894
    .restart local v0    # "notificationIcon":I
    :cond_1
    const-string v1, "corona_statusbar_icon_default"

    invoke-static {v1}, Lcom/onesignal/GenerateNotification;->getDrawableId(Ljava/lang/String;)I

    move-result v0

    .line 895
    if-nez v0, :cond_0

    .line 898
    const-string v1, "ic_os_notification_fallback_white_24dp"

    invoke-static {v1}, Lcom/onesignal/GenerateNotification;->getDrawableId(Ljava/lang/String;)I

    move-result v0

    .line 899
    if-nez v0, :cond_0

    .line 902
    const v0, 0x108005e

    goto :goto_0
.end method

.method private static getDrawableId(Ljava/lang/String;)I
    .locals 3
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 906
    sget-object v0, Lcom/onesignal/GenerateNotification;->contextResources:Landroid/content/res/Resources;

    const-string v1, "drawable"

    sget-object v2, Lcom/onesignal/GenerateNotification;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static getLargeIcon(Lorg/json/JSONObject;)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "gcmBundle"    # Lorg/json/JSONObject;

    .prologue
    .line 769
    const-string v1, "licon"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/onesignal/GenerateNotification;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 770
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 771
    const-string v1, "ic_onesignal_large_icon_default"

    invoke-static {v1}, Lcom/onesignal/GenerateNotification;->getBitmapFromAssetsOrResourceName(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 773
    :cond_0
    if-nez v0, :cond_1

    .line 774
    const/4 v1, 0x0

    .line 776
    :goto_0
    return-object v1

    :cond_1
    invoke-static {v0}, Lcom/onesignal/GenerateNotification;->resizeBitmapForLargeIconArea(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0
.end method

.method private static getNewActionPendingIntent(ILandroid/content/Intent;)Landroid/app/PendingIntent;
    .locals 2
    .param p0, "requestCode"    # I
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/high16 v1, 0x8000000

    .line 184
    sget-boolean v0, Lcom/onesignal/GenerateNotification;->openerIsBroadcast:Z

    if-eqz v0, :cond_0

    .line 185
    sget-object v0, Lcom/onesignal/GenerateNotification;->currentContext:Landroid/content/Context;

    invoke-static {v0, p0, p1, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 186
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/onesignal/GenerateNotification;->currentContext:Landroid/content/Context;

    invoke-static {v0, p0, p1, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    goto :goto_0
.end method

.method private static getNewBaseDeleteIntent(I)Landroid/content/Intent;
    .locals 4
    .param p0, "notificationId"    # I

    .prologue
    .line 199
    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lcom/onesignal/GenerateNotification;->currentContext:Landroid/content/Context;

    sget-object v3, Lcom/onesignal/GenerateNotification;->notificationOpenedClass:Ljava/lang/Class;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "notificationId"

    .line 200
    invoke-virtual {v1, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "dismissed"

    const/4 v3, 0x1

    .line 201
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    .line 203
    .local v0, "intent":Landroid/content/Intent;
    sget-boolean v1, Lcom/onesignal/GenerateNotification;->openerIsBroadcast:Z

    if-eqz v1, :cond_0

    .line 205
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return-object v0

    .restart local v0    # "intent":Landroid/content/Intent;
    :cond_0
    const/high16 v1, 0x18010000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0
.end method

.method private static getNewBaseIntent(I)Landroid/content/Intent;
    .locals 4
    .param p0, "notificationId"    # I

    .prologue
    .line 190
    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lcom/onesignal/GenerateNotification;->currentContext:Landroid/content/Context;

    sget-object v3, Lcom/onesignal/GenerateNotification;->notificationOpenedClass:Ljava/lang/Class;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "notificationId"

    .line 191
    invoke-virtual {v1, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 193
    .local v0, "intent":Landroid/content/Intent;
    sget-boolean v1, Lcom/onesignal/GenerateNotification;->openerIsBroadcast:Z

    if-eqz v1, :cond_0

    .line 195
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return-object v0

    .restart local v0    # "intent":Landroid/content/Intent;
    :cond_0
    const/high16 v1, 0x24000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0
.end method

.method private static getResourceIcon(Ljava/lang/String;)I
    .locals 5
    .param p0, "iconName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 862
    if-nez p0, :cond_1

    move v0, v2

    .line 878
    :cond_0
    :goto_0
    return v0

    .line 865
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 866
    .local v1, "trimmedIconName":Ljava/lang/String;
    invoke-static {v1}, Lcom/onesignal/OSUtils;->isValidResourceName(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    move v0, v2

    .line 867
    goto :goto_0

    .line 869
    :cond_2
    invoke-static {v1}, Lcom/onesignal/GenerateNotification;->getDrawableId(Ljava/lang/String;)I

    move-result v0

    .line 870
    .local v0, "notificationIcon":I
    if-nez v0, :cond_0

    .line 875
    :try_start_0
    const-class v3, Landroid/R$drawable;

    invoke-virtual {v3, p0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 876
    :catch_0
    move-exception v3

    move v0, v2

    .line 878
    goto :goto_0
.end method

.method private static getSmallIconId(Lorg/json/JSONObject;)I
    .locals 3
    .param p0, "gcmBundle"    # Lorg/json/JSONObject;

    .prologue
    .line 882
    const-string v1, "sicon"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/onesignal/GenerateNotification;->getResourceIcon(Ljava/lang/String;)I

    move-result v0

    .line 883
    .local v0, "notificationIcon":I
    if-eqz v0, :cond_0

    .line 886
    .end local v0    # "notificationIcon":I
    :goto_0
    return v0

    .restart local v0    # "notificationIcon":I
    :cond_0
    invoke-static {}, Lcom/onesignal/GenerateNotification;->getDefaultSmallIconId()I

    move-result v0

    goto :goto_0
.end method

.method private static getTitle(Lorg/json/JSONObject;)Ljava/lang/CharSequence;
    .locals 3
    .param p0, "gcmBundle"    # Lorg/json/JSONObject;

    .prologue
    .line 175
    const-string v1, "title"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 177
    .local v0, "title":Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    .line 180
    .end local v0    # "title":Ljava/lang/CharSequence;
    :goto_0
    return-object v0

    .restart local v0    # "title":Ljava/lang/CharSequence;
    :cond_0
    sget-object v1, Lcom/onesignal/GenerateNotification;->currentContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    sget-object v2, Lcom/onesignal/GenerateNotification;->currentContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method private static isSoundEnabled(Lorg/json/JSONObject;)Z
    .locals 3
    .param p0, "gcmBundle"    # Lorg/json/JSONObject;

    .prologue
    .line 910
    const-string v1, "sound"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 911
    .local v0, "sound":Ljava/lang/String;
    const-string v1, "null"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "nil"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 912
    :cond_0
    const/4 v1, 0x0

    .line 913
    :goto_0
    return v1

    :cond_1
    sget-object v1, Lcom/onesignal/GenerateNotification;->currentContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/onesignal/OneSignal;->getSoundEnabled(Landroid/content/Context;)Z

    move-result v1

    goto :goto_0
.end method

.method private static osPriorityToAndroidPriority(I)I
    .locals 1
    .param p0, "priority"    # I

    .prologue
    .line 1006
    const/16 v0, 0x9

    if-le p0, v0, :cond_0

    .line 1007
    const/4 v0, 0x2

    .line 1015
    :goto_0
    return v0

    .line 1008
    :cond_0
    const/4 v0, 0x7

    if-le p0, v0, :cond_1

    .line 1009
    const/4 v0, 0x1

    goto :goto_0

    .line 1010
    :cond_1
    const/4 v0, 0x5

    if-le p0, v0, :cond_2

    .line 1011
    const/4 v0, 0x0

    goto :goto_0

    .line 1012
    :cond_2
    const/4 v0, 0x3

    if-le p0, v0, :cond_3

    .line 1013
    const/4 v0, -0x1

    goto :goto_0

    .line 1015
    :cond_3
    const/4 v0, -0x2

    goto :goto_0
.end method

.method private static removeNotifyOptions(Landroid/support/v4/app/NotificationCompat$Builder;)V
    .locals 3
    .param p0, "builder"    # Landroid/support/v4/app/NotificationCompat$Builder;

    .prologue
    const/4 v2, 0x0

    .line 304
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setOnlyAlertOnce(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 305
    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setDefaults(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 306
    invoke-virtual {v0, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 307
    invoke-virtual {v0, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setVibrate([J)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 308
    invoke-virtual {v0, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 309
    return-void
.end method

.method private static resizeBitmapForLargeIconArea(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 9
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 786
    if-nez p0, :cond_1

    .line 787
    const/4 p0, 0x0

    .line 809
    .end local p0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-object p0

    .line 790
    .restart local p0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    :try_start_0
    sget-object v7, Lcom/onesignal/GenerateNotification;->contextResources:Landroid/content/res/Resources;

    const v8, 0x1050006

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v5, v7

    .line 791
    .local v5, "systemLargeIconHeight":I
    sget-object v7, Lcom/onesignal/GenerateNotification;->contextResources:Landroid/content/res/Resources;

    const v8, 0x1050005

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v6, v7

    .line 792
    .local v6, "systemLargeIconWidth":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 793
    .local v0, "bitmapHeight":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 795
    .local v1, "bitmapWidth":I
    if-gt v1, v6, :cond_2

    if-le v0, v5, :cond_0

    .line 796
    :cond_2
    move v3, v6

    .local v3, "newWidth":I
    move v2, v5

    .line 797
    .local v2, "newHeight":I
    if-le v0, v1, :cond_4

    .line 798
    int-to-float v7, v1

    int-to-float v8, v0

    div-float v4, v7, v8

    .line 799
    .local v4, "ratio":F
    int-to-float v7, v2

    mul-float/2addr v7, v4

    float-to-int v3, v7

    .line 805
    .end local v4    # "ratio":F
    :cond_3
    :goto_1
    const/4 v7, 0x1

    invoke-static {p0, v3, v2, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    goto :goto_0

    .line 800
    :cond_4
    if-le v1, v0, :cond_3

    .line 801
    int-to-float v7, v0

    int-to-float v8, v1

    div-float v4, v7, v8

    .line 802
    .restart local v4    # "ratio":F
    int-to-float v7, v3

    mul-float/2addr v7, v4

    float-to-int v2, v7

    goto :goto_1

    .line 807
    .end local v0    # "bitmapHeight":I
    .end local v1    # "bitmapWidth":I
    .end local v2    # "newHeight":I
    .end local v3    # "newWidth":I
    .end local v4    # "ratio":F
    .end local v5    # "systemLargeIconHeight":I
    .end local v6    # "systemLargeIconWidth":I
    :catch_0
    move-exception v7

    goto :goto_0
.end method

.method private static safeGetColorFromHex(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 3
    .param p0, "gcmBundle"    # Lorg/json/JSONObject;
    .param p1, "colorKey"    # Ljava/lang/String;

    .prologue
    .line 761
    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 762
    new-instance v0, Ljava/math/BigInteger;

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 765
    :goto_0
    return-object v0

    .line 764
    :catch_0
    move-exception v0

    .line 765
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static setStatics(Landroid/content/Context;)V
    .locals 4
    .param p0, "inContext"    # Landroid/content/Context;

    .prologue
    .line 83
    sput-object p0, Lcom/onesignal/GenerateNotification;->currentContext:Landroid/content/Context;

    .line 84
    sget-object v2, Lcom/onesignal/GenerateNotification;->currentContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/onesignal/GenerateNotification;->packageName:Ljava/lang/String;

    .line 85
    sget-object v2, Lcom/onesignal/GenerateNotification;->currentContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sput-object v2, Lcom/onesignal/GenerateNotification;->contextResources:Landroid/content/res/Resources;

    .line 87
    sget-object v2, Lcom/onesignal/GenerateNotification;->currentContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 88
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    new-instance v0, Landroid/content/Intent;

    sget-object v2, Lcom/onesignal/GenerateNotification;->currentContext:Landroid/content/Context;

    const-class v3, Lcom/onesignal/NotificationOpenedReceiver;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 89
    .local v0, "intent":Landroid/content/Intent;
    sget-object v2, Lcom/onesignal/GenerateNotification;->currentContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 90
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 91
    const/4 v2, 0x1

    sput-boolean v2, Lcom/onesignal/GenerateNotification;->openerIsBroadcast:Z

    .line 92
    const-class v2, Lcom/onesignal/NotificationOpenedReceiver;

    sput-object v2, Lcom/onesignal/GenerateNotification;->notificationOpenedClass:Ljava/lang/Class;

    .line 96
    :goto_0
    return-void

    .line 95
    :cond_0
    const-class v2, Lcom/onesignal/NotificationOpenedActivity;

    sput-object v2, Lcom/onesignal/GenerateNotification;->notificationOpenedClass:Ljava/lang/Class;

    goto :goto_0
.end method

.method private static setTextColor(Landroid/widget/RemoteViews;Lorg/json/JSONObject;ILjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "customView"    # Landroid/widget/RemoteViews;
    .param p1, "gcmBundle"    # Lorg/json/JSONObject;
    .param p2, "viewId"    # I
    .param p3, "colorPayloadKey"    # Ljava/lang/String;
    .param p4, "colorDefaultResource"    # Ljava/lang/String;

    .prologue
    .line 749
    invoke-static {p1, p3}, Lcom/onesignal/GenerateNotification;->safeGetColorFromHex(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 750
    .local v0, "color":Ljava/lang/Integer;
    if-eqz v0, :cond_1

    .line 751
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, p2, v2}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 757
    :cond_0
    :goto_0
    return-void

    .line 753
    :cond_1
    sget-object v2, Lcom/onesignal/GenerateNotification;->contextResources:Landroid/content/res/Resources;

    const-string v3, "color"

    sget-object v4, Lcom/onesignal/GenerateNotification;->packageName:Ljava/lang/String;

    invoke-virtual {v2, p4, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 754
    .local v1, "colorId":I
    if-eqz v1, :cond_0

    .line 755
    sget-object v2, Lcom/onesignal/GenerateNotification;->currentContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/onesignal/AndroidSupportV4Compat$ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {p0, p2, v2}, Landroid/widget/RemoteViews;->setTextColor(II)V

    goto :goto_0
.end method

.method private static showNotification(Lcom/onesignal/NotificationGenerationJob;)V
    .locals 14
    .param p0, "notifJob"    # Lcom/onesignal/NotificationGenerationJob;

    .prologue
    const/4 v11, 0x0

    .line 313
    new-instance v8, Ljava/util/Random;

    invoke-direct {v8}, Ljava/util/Random;-><init>()V

    .line 315
    .local v8, "random":Ljava/util/Random;
    invoke-virtual {p0}, Lcom/onesignal/NotificationGenerationJob;->getAndroidId()Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 316
    .local v6, "notificationId":I
    iget-object v2, p0, Lcom/onesignal/NotificationGenerationJob;->jsonPayload:Lorg/json/JSONObject;

    .line 317
    .local v2, "gcmBundle":Lorg/json/JSONObject;
    const-string v10, "grp"

    invoke-virtual {v2, v10, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 319
    .local v3, "group":Ljava/lang/String;
    invoke-static {p0}, Lcom/onesignal/GenerateNotification;->getBaseOneSignalNotificationBuilder(Lcom/onesignal/NotificationGenerationJob;)Lcom/onesignal/GenerateNotification$OneSignalNotificationBuilder;

    move-result-object v7

    .line 320
    .local v7, "oneSignalNotificationBuilder":Lcom/onesignal/GenerateNotification$OneSignalNotificationBuilder;
    iget-object v4, v7, Lcom/onesignal/GenerateNotification$OneSignalNotificationBuilder;->compatBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    .line 322
    .local v4, "notifBuilder":Landroid/support/v4/app/NotificationCompat$Builder;
    invoke-static {v2, v4, v6, v11}, Lcom/onesignal/GenerateNotification;->addNotificationActionButtons(Lorg/json/JSONObject;Landroid/support/v4/app/NotificationCompat$Builder;ILjava/lang/String;)V

    .line 325
    :try_start_0
    invoke-static {v2, v4}, Lcom/onesignal/GenerateNotification;->addBackgroundImage(Lorg/json/JSONObject;Landroid/support/v4/app/NotificationCompat$Builder;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 330
    :goto_0
    invoke-static {p0, v4}, Lcom/onesignal/GenerateNotification;->applyNotificationExtender(Lcom/onesignal/NotificationGenerationJob;Landroid/support/v4/app/NotificationCompat$Builder;)V

    .line 333
    iget-boolean v10, p0, Lcom/onesignal/NotificationGenerationJob;->restoring:Z

    if-eqz v10, :cond_0

    .line 334
    invoke-static {v4}, Lcom/onesignal/GenerateNotification;->removeNotifyOptions(Landroid/support/v4/app/NotificationCompat$Builder;)V

    .line 338
    :cond_0
    if-eqz v3, :cond_3

    .line 339
    invoke-virtual {v8}, Ljava/util/Random;->nextInt()I

    move-result v10

    invoke-static {v6}, Lcom/onesignal/GenerateNotification;->getNewBaseIntent(I)Landroid/content/Intent;

    move-result-object v11

    const-string v12, "onesignal_data"

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v11

    const-string v12, "grp"

    invoke-virtual {v11, v12, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/onesignal/GenerateNotification;->getNewActionPendingIntent(ILandroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 340
    .local v0, "contentIntent":Landroid/app/PendingIntent;
    invoke-virtual {v4, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 341
    invoke-virtual {v8}, Ljava/util/Random;->nextInt()I

    move-result v10

    invoke-static {v6}, Lcom/onesignal/GenerateNotification;->getNewBaseDeleteIntent(I)Landroid/content/Intent;

    move-result-object v11

    const-string v12, "grp"

    invoke-virtual {v11, v12, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/onesignal/GenerateNotification;->getNewActionPendingIntent(ILandroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 342
    .local v1, "deleteIntent":Landroid/app/PendingIntent;
    invoke-virtual {v4, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 343
    invoke-virtual {v4, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setGroup(Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 346
    const/4 v10, 0x1

    :try_start_1
    invoke-virtual {v4, v10}, Landroid/support/v4/app/NotificationCompat$Builder;->setGroupAlertBehavior(I)Landroid/support/v4/app/NotificationCompat$Builder;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 352
    :goto_1
    invoke-static {p0, v4}, Lcom/onesignal/GenerateNotification;->createSingleNotificationBeforeSummaryBuilder(Lcom/onesignal/NotificationGenerationJob;Landroid/support/v4/app/NotificationCompat$Builder;)Landroid/app/Notification;

    move-result-object v5

    .line 354
    .local v5, "notification":Landroid/app/Notification;
    invoke-static {p0, v7}, Lcom/onesignal/GenerateNotification;->createSummaryNotification(Lcom/onesignal/NotificationGenerationJob;Lcom/onesignal/GenerateNotification$OneSignalNotificationBuilder;)V

    .line 370
    :goto_2
    if-eqz v3, :cond_1

    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x11

    if-le v10, v11, :cond_2

    .line 371
    :cond_1
    invoke-static {v7, v5}, Lcom/onesignal/GenerateNotification;->addXiaomiSettings(Lcom/onesignal/GenerateNotification$OneSignalNotificationBuilder;Landroid/app/Notification;)V

    .line 372
    sget-object v10, Lcom/onesignal/GenerateNotification;->currentContext:Landroid/content/Context;

    invoke-static {v10}, Landroid/support/v4/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroid/support/v4/app/NotificationManagerCompat;

    move-result-object v10

    invoke-virtual {v10, v6, v5}, Landroid/support/v4/app/NotificationManagerCompat;->notify(ILandroid/app/Notification;)V

    .line 374
    :cond_2
    return-void

    .line 326
    .end local v0    # "contentIntent":Landroid/app/PendingIntent;
    .end local v1    # "deleteIntent":Landroid/app/PendingIntent;
    .end local v5    # "notification":Landroid/app/Notification;
    :catch_0
    move-exception v9

    .line 327
    .local v9, "t":Ljava/lang/Throwable;
    sget-object v10, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v11, "Could not set background notification image!"

    invoke-static {v10, v11, v9}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 357
    .end local v9    # "t":Ljava/lang/Throwable;
    :cond_3
    invoke-virtual {v8}, Ljava/util/Random;->nextInt()I

    move-result v10

    invoke-static {v6}, Lcom/onesignal/GenerateNotification;->getNewBaseIntent(I)Landroid/content/Intent;

    move-result-object v11

    const-string v12, "onesignal_data"

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/onesignal/GenerateNotification;->getNewActionPendingIntent(ILandroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 358
    .restart local v0    # "contentIntent":Landroid/app/PendingIntent;
    invoke-virtual {v4, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 359
    invoke-virtual {v8}, Ljava/util/Random;->nextInt()I

    move-result v10

    invoke-static {v6}, Lcom/onesignal/GenerateNotification;->getNewBaseDeleteIntent(I)Landroid/content/Intent;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/onesignal/GenerateNotification;->getNewActionPendingIntent(ILandroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 360
    .restart local v1    # "deleteIntent":Landroid/app/PendingIntent;
    invoke-virtual {v4, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 361
    invoke-virtual {v4}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v5

    .restart local v5    # "notification":Landroid/app/Notification;
    goto :goto_2

    .line 348
    .end local v5    # "notification":Landroid/app/Notification;
    :catch_1
    move-exception v10

    goto :goto_1
.end method

.method private static showNotificationAsAlert(Lorg/json/JSONObject;Landroid/app/Activity;I)V
    .locals 1
    .param p0, "gcmJson"    # Lorg/json/JSONObject;
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "notificationId"    # I

    .prologue
    .line 110
    new-instance v0, Lcom/onesignal/GenerateNotification$1;

    invoke-direct {v0, p1, p0, p2}, Lcom/onesignal/GenerateNotification$1;-><init>(Landroid/app/Activity;Lorg/json/JSONObject;I)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 172
    return-void
.end method

.method static updateSummaryNotification(Lcom/onesignal/NotificationGenerationJob;)V
    .locals 1
    .param p0, "notifJob"    # Lcom/onesignal/NotificationGenerationJob;

    .prologue
    .line 456
    iget-object v0, p0, Lcom/onesignal/NotificationGenerationJob;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/onesignal/GenerateNotification;->setStatics(Landroid/content/Context;)V

    .line 457
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/onesignal/GenerateNotification;->createSummaryNotification(Lcom/onesignal/NotificationGenerationJob;Lcom/onesignal/GenerateNotification$OneSignalNotificationBuilder;)V

    .line 458
    return-void
.end method
