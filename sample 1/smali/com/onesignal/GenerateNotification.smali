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
.field public static final BUNDLE_KEY_ACTION_ID:Ljava/lang/String; = "actionId"

.field public static final BUNDLE_KEY_ANDROID_NOTIFICATION_ID:Ljava/lang/String; = "androidNotificationId"

.field public static final BUNDLE_KEY_ONESIGNAL_DATA:Ljava/lang/String; = "onesignalData"

.field private static contextResources:Landroid/content/res/Resources;

.field private static currentContext:Landroid/content/Context;

.field private static notificationOpenedClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static openerIsBroadcast:Z

.field private static packageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 80
    const/4 v0, 0x0

    sput-object v0, Lcom/onesignal/GenerateNotification;->currentContext:Landroid/content/Context;

    .line 81
    sput-object v0, Lcom/onesignal/GenerateNotification;->packageName:Ljava/lang/String;

    .line 82
    sput-object v0, Lcom/onesignal/GenerateNotification;->contextResources:Landroid/content/res/Resources;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lorg/json/JSONObject;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lorg/json/JSONObject;

    .line 72
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

    .line 72
    invoke-static {p0, p1, p2, p3}, Lcom/onesignal/GenerateNotification;->addAlertButtons(Landroid/content/Context;Lorg/json/JSONObject;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$200(I)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # I

    .line 72
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
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1057
    .local p2, "buttonsLabels":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "buttonsIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    invoke-static {p0, p1, p2, p3}, Lcom/onesignal/GenerateNotification;->addCustomAlertButtons(Landroid/content/Context;Lorg/json/JSONObject;Ljava/util/List;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1060
    goto :goto_0

    .line 1058
    :catchall_0
    move-exception v0

    .line 1059
    .local v0, "t":Ljava/lang/Throwable;
    sget-object v1, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v2, "Failed to parse JSON for custom buttons for alert dialog."

    invoke-static {v1, v2, v0}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1062
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    .line 1063
    :cond_0
    const-string v0, "onesignal_in_app_alert_ok_button_text"

    const-string v1, "Ok"

    invoke-static {p0, v0, v1}, Lcom/onesignal/OSUtils;->getResourceString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1064
    const-string v0, "__DEFAULT__"

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1066
    :cond_1
    return-void
.end method

.method private static addBackgroundImage(Lorg/json/JSONObject;Landroidx/core/app/NotificationCompat$Builder;)V
    .locals 13
    .param p0, "gcmBundle"    # Lorg/json/JSONObject;
    .param p1, "notifBuilder"    # Landroidx/core/app/NotificationCompat$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 780
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 781
    return-void

    .line 783
    :cond_0
    const/4 v0, 0x0

    .line 784
    .local v0, "bg_image":Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    .line 785
    .local v1, "jsonBgImage":Lorg/json/JSONObject;
    const-string v2, "bg_img"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 787
    .local v2, "jsonStrBgImage":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 788
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v1, v4

    .line 789
    const-string v4, "img"

    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/onesignal/GenerateNotification;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 792
    :cond_1
    if-nez v0, :cond_2

    .line 793
    const-string v4, "onesignal_bgimage_default_image"

    invoke-static {v4}, Lcom/onesignal/GenerateNotification;->getBitmapFromAssetsOrResourceName(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 795
    :cond_2
    if-eqz v0, :cond_6

    .line 796
    new-instance v4, Landroid/widget/RemoteViews;

    sget-object v5, Lcom/onesignal/GenerateNotification;->currentContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    sget v6, Lcom/onesignal/R$layout;->onesignal_bgimage_notif_layout:I

    invoke-direct {v4, v5, v6}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 797
    .local v4, "customView":Landroid/widget/RemoteViews;
    sget v5, Lcom/onesignal/R$id;->os_bgimage_notif_title:I

    invoke-static {p0}, Lcom/onesignal/GenerateNotification;->getTitle(Lorg/json/JSONObject;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 798
    sget v5, Lcom/onesignal/R$id;->os_bgimage_notif_body:I

    const-string v6, "alert"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 799
    sget v5, Lcom/onesignal/R$id;->os_bgimage_notif_title:I

    const-string v6, "tc"

    const-string v7, "onesignal_bgimage_notif_title_color"

    invoke-static {v4, v1, v5, v6, v7}, Lcom/onesignal/GenerateNotification;->setTextColor(Landroid/widget/RemoteViews;Lorg/json/JSONObject;ILjava/lang/String;Ljava/lang/String;)V

    .line 800
    sget v5, Lcom/onesignal/R$id;->os_bgimage_notif_body:I

    const-string v6, "bc"

    const-string v7, "onesignal_bgimage_notif_body_color"

    invoke-static {v4, v1, v5, v6, v7}, Lcom/onesignal/GenerateNotification;->setTextColor(Landroid/widget/RemoteViews;Lorg/json/JSONObject;ILjava/lang/String;Ljava/lang/String;)V

    .line 802
    const/4 v5, 0x0

    .line 803
    .local v5, "alignSetting":Ljava/lang/String;
    if-eqz v1, :cond_3

    const-string v6, "img_align"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 804
    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 806
    :cond_3
    sget-object v6, Lcom/onesignal/GenerateNotification;->contextResources:Landroid/content/res/Resources;

    sget-object v7, Lcom/onesignal/GenerateNotification;->packageName:Ljava/lang/String;

    const-string v8, "onesignal_bgimage_notif_image_align"

    const-string v9, "string"

    invoke-virtual {v6, v8, v9, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 807
    .local v6, "iAlignSetting":I
    if-eqz v6, :cond_4

    .line 808
    sget-object v7, Lcom/onesignal/GenerateNotification;->contextResources:Landroid/content/res/Resources;

    invoke-virtual {v7, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 811
    .end local v6    # "iAlignSetting":I
    :cond_4
    :goto_0
    const-string v6, "right"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 815
    sget v8, Lcom/onesignal/R$id;->os_bgimage_notif_bgimage_align_layout:I

    const/16 v9, -0x1388

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v7, v4

    invoke-virtual/range {v7 .. v12}, Landroid/widget/RemoteViews;->setViewPadding(IIIII)V

    .line 816
    sget v6, Lcom/onesignal/R$id;->os_bgimage_notif_bgimage_right_aligned:I

    invoke-virtual {v4, v6, v0}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 817
    sget v6, Lcom/onesignal/R$id;->os_bgimage_notif_bgimage_right_aligned:I

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 818
    sget v6, Lcom/onesignal/R$id;->os_bgimage_notif_bgimage:I

    const/4 v7, 0x2

    invoke-virtual {v4, v6, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_1

    .line 821
    :cond_5
    sget v6, Lcom/onesignal/R$id;->os_bgimage_notif_bgimage:I

    invoke-virtual {v4, v6, v0}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 823
    :goto_1
    invoke-virtual {p1, v4}, Landroidx/core/app/NotificationCompat$Builder;->setContent(Landroid/widget/RemoteViews;)Landroidx/core/app/NotificationCompat$Builder;

    .line 827
    invoke-virtual {p1, v3}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    .line 829
    .end local v4    # "customView":Landroid/widget/RemoteViews;
    .end local v5    # "alignSetting":Ljava/lang/String;
    :cond_6
    return-void
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
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1069
    .local p2, "buttonsLabels":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "buttonsIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Lorg/json/JSONObject;

    const-string v1, "custom"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1071
    .local v0, "customJson":Lorg/json/JSONObject;
    const-string v1, "a"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1072
    return-void

    .line 1074
    :cond_0
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 1075
    .local v1, "additionalDataJSON":Lorg/json/JSONObject;
    const-string v2, "actionButtons"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1076
    return-void

    .line 1078
    :cond_1
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 1080
    .local v2, "buttons":Lorg/json/JSONArray;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 1081
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 1083
    .local v4, "button":Lorg/json/JSONObject;
    const-string v5, "text"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1084
    const-string v5, "id"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1080
    .end local v4    # "button":Lorg/json/JSONObject;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1086
    .end local v3    # "i":I
    :cond_2
    return-void
.end method

.method private static addNotificationActionButtons(Lorg/json/JSONObject;Landroidx/core/app/NotificationCompat$Builder;ILjava/lang/String;)V
    .locals 12
    .param p0, "gcmBundle"    # Lorg/json/JSONObject;
    .param p1, "mBuilder"    # Landroidx/core/app/NotificationCompat$Builder;
    .param p2, "notificationId"    # I
    .param p3, "groupSummary"    # Ljava/lang/String;

    .line 1017
    const-string v0, "icon"

    const-string v1, "actionButtons"

    const-string v2, "a"

    const-string v3, "grp"

    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    const-string v5, "custom"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1019
    .local v4, "customJson":Lorg/json/JSONObject;
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1020
    return-void

    .line 1022
    :cond_0
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 1023
    .local v2, "additionalDataJSON":Lorg/json/JSONObject;
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1024
    return-void

    .line 1026
    :cond_1
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 1028
    .local v1, "buttons":Lorg/json/JSONArray;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_5

    .line 1029
    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 1030
    .local v6, "button":Lorg/json/JSONObject;
    new-instance v7, Lorg/json/JSONObject;

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1032
    .local v7, "bundle":Lorg/json/JSONObject;
    invoke-static {p2}, Lcom/onesignal/GenerateNotification;->getNewBaseIntent(I)Landroid/content/Intent;

    move-result-object v8

    .line 1033
    .local v8, "buttonIntent":Landroid/content/Intent;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1034
    const-string v9, "action_button"

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1035
    const-string v9, "actionId"

    const-string v10, "id"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1036
    const-string v9, "onesignalData"

    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1037
    if-eqz p3, :cond_2

    .line 1038
    const-string v9, "summary"

    invoke-virtual {v8, v9, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 1039
    :cond_2
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1040
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v3, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1042
    :cond_3
    :goto_1
    invoke-static {p2, v8}, Lcom/onesignal/GenerateNotification;->getNewActionPendingIntent(ILandroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object v9

    .line 1044
    .local v9, "buttonPIntent":Landroid/app/PendingIntent;
    const/4 v10, 0x0

    .line 1045
    .local v10, "buttonIcon":I
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 1046
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/onesignal/GenerateNotification;->getResourceIcon(Ljava/lang/String;)I

    move-result v11

    move v10, v11

    .line 1048
    :cond_4
    const-string v11, "text"

    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1, v10, v11, v9}, Landroidx/core/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1028
    nop

    .end local v6    # "button":Lorg/json/JSONObject;
    .end local v7    # "bundle":Lorg/json/JSONObject;
    .end local v8    # "buttonIntent":Landroid/content/Intent;
    .end local v9    # "buttonPIntent":Landroid/app/PendingIntent;
    .end local v10    # "buttonIcon":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1052
    .end local v1    # "buttons":Lorg/json/JSONArray;
    .end local v2    # "additionalDataJSON":Lorg/json/JSONObject;
    .end local v4    # "customJson":Lorg/json/JSONObject;
    .end local v5    # "i":I
    :cond_5
    goto :goto_2

    .line 1050
    :catchall_0
    move-exception v0

    .line 1051
    .local v0, "t":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1053
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_2
    return-void
.end method

.method private static addXiaomiSettings(Lcom/onesignal/GenerateNotification$OneSignalNotificationBuilder;Landroid/app/Notification;)V
    .locals 5
    .param p0, "oneSignalNotificationBuilder"    # Lcom/onesignal/GenerateNotification$OneSignalNotificationBuilder;
    .param p1, "notification"    # Landroid/app/Notification;

    .line 490
    iget-boolean v0, p0, Lcom/onesignal/GenerateNotification$OneSignalNotificationBuilder;->hasLargeIcon:Z

    if-nez v0, :cond_0

    .line 491
    return-void

    .line 494
    :cond_0
    :try_start_0
    const-string v0, "android.app.MiuiNotification"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    .line 495
    .local v0, "miuiNotification":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "customizedIcon"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 496
    .local v1, "customizedIconField":Ljava/lang/reflect/Field;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 497
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 499
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "extraNotification"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 500
    .local v3, "extraNotificationField":Ljava/lang/reflect/Field;
    invoke-virtual {v3, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 501
    invoke-virtual {v3, p1, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "miuiNotification":Ljava/lang/Object;
    .end local v1    # "customizedIconField":Ljava/lang/reflect/Field;
    .end local v3    # "extraNotificationField":Ljava/lang/reflect/Field;
    goto :goto_0

    .line 502
    :catchall_0
    move-exception v0

    :goto_0
    nop

    .line 503
    return-void
.end method

.method private static applyNotificationExtender(Lcom/onesignal/NotificationGenerationJob;Landroidx/core/app/NotificationCompat$Builder;)V
    .locals 7
    .param p0, "notifJob"    # Lcom/onesignal/NotificationGenerationJob;
    .param p1, "notifBuilder"    # Landroidx/core/app/NotificationCompat$Builder;

    .line 429
    iget-object v0, p0, Lcom/onesignal/NotificationGenerationJob;->overrideSettings:Lcom/onesignal/NotificationExtenderService$OverrideSettings;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/onesignal/NotificationGenerationJob;->overrideSettings:Lcom/onesignal/NotificationExtenderService$OverrideSettings;

    iget-object v0, v0, Lcom/onesignal/NotificationExtenderService$OverrideSettings;->extender:Landroidx/core/app/NotificationCompat$Extender;

    if-nez v0, :cond_0

    goto :goto_1

    .line 433
    :cond_0
    :try_start_0
    const-class v0, Landroidx/core/app/NotificationCompat$Builder;

    const-string v1, "mNotification"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 434
    .local v0, "mNotificationField":Ljava/lang/reflect/Field;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 435
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Notification;

    .line 437
    .local v2, "mNotification":Landroid/app/Notification;
    iget v3, v2, Landroid/app/Notification;->flags:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Lcom/onesignal/NotificationGenerationJob;->orgFlags:Ljava/lang/Integer;

    .line 438
    iget-object v3, v2, Landroid/app/Notification;->sound:Landroid/net/Uri;

    iput-object v3, p0, Lcom/onesignal/NotificationGenerationJob;->orgSound:Landroid/net/Uri;

    .line 439
    iget-object v3, p0, Lcom/onesignal/NotificationGenerationJob;->overrideSettings:Lcom/onesignal/NotificationExtenderService$OverrideSettings;

    iget-object v3, v3, Lcom/onesignal/NotificationExtenderService$OverrideSettings;->extender:Landroidx/core/app/NotificationCompat$Extender;

    invoke-virtual {p1, v3}, Landroidx/core/app/NotificationCompat$Builder;->extend(Landroidx/core/app/NotificationCompat$Extender;)Landroidx/core/app/NotificationCompat$Builder;

    .line 441
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Notification;

    move-object v2, v3

    .line 443
    const-class v3, Landroidx/core/app/NotificationCompat$Builder;

    const-string v4, "mContentText"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 444
    .local v3, "mContentTextField":Ljava/lang/reflect/Field;
    invoke-virtual {v3, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 445
    invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    .line 447
    .local v4, "mContentText":Ljava/lang/CharSequence;
    const-class v5, Landroidx/core/app/NotificationCompat$Builder;

    const-string v6, "mContentTitle"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 448
    .local v5, "mContentTitleField":Ljava/lang/reflect/Field;
    invoke-virtual {v5, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 449
    invoke-virtual {v5, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 451
    .local v1, "mContentTitle":Ljava/lang/CharSequence;
    iput-object v4, p0, Lcom/onesignal/NotificationGenerationJob;->overriddenBodyFromExtender:Ljava/lang/CharSequence;

    .line 452
    iput-object v1, p0, Lcom/onesignal/NotificationGenerationJob;->overriddenTitleFromExtender:Ljava/lang/CharSequence;

    .line 453
    iget-boolean v6, p0, Lcom/onesignal/NotificationGenerationJob;->restoring:Z

    if-nez v6, :cond_1

    .line 454
    iget v6, v2, Landroid/app/Notification;->flags:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iput-object v6, p0, Lcom/onesignal/NotificationGenerationJob;->overriddenFlags:Ljava/lang/Integer;

    .line 455
    iget-object v6, v2, Landroid/app/Notification;->sound:Landroid/net/Uri;

    iput-object v6, p0, Lcom/onesignal/NotificationGenerationJob;->overriddenSound:Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 459
    .end local v0    # "mNotificationField":Ljava/lang/reflect/Field;
    .end local v1    # "mContentTitle":Ljava/lang/CharSequence;
    .end local v2    # "mNotification":Landroid/app/Notification;
    .end local v3    # "mContentTextField":Ljava/lang/reflect/Field;
    .end local v4    # "mContentText":Ljava/lang/CharSequence;
    .end local v5    # "mContentTitleField":Ljava/lang/reflect/Field;
    :cond_1
    goto :goto_0

    .line 457
    :catchall_0
    move-exception v0

    .line 458
    .local v0, "t":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 461
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void

    .line 430
    :cond_2
    :goto_1
    return-void
.end method

.method private static convertOSToAndroidPriority(I)I
    .locals 2
    .param p0, "priority"    # I

    .line 1089
    const/4 v0, 0x2

    const/16 v1, 0x9

    if-le p0, v1, :cond_0

    .line 1090
    return v0

    .line 1091
    :cond_0
    const/4 v1, 0x7

    if-le p0, v1, :cond_1

    .line 1092
    const/4 v0, 0x1

    return v0

    .line 1093
    :cond_1
    const/4 v1, 0x4

    if-le p0, v1, :cond_2

    .line 1094
    const/4 v0, 0x0

    return v0

    .line 1095
    :cond_2
    if-le p0, v0, :cond_3

    .line 1096
    const/4 v0, -0x1

    return v0

    .line 1098
    :cond_3
    const/4 v0, -0x2

    return v0
.end method

.method private static createBaseSummaryIntent(ILorg/json/JSONObject;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .param p0, "summaryNotificationId"    # I
    .param p1, "gcmBundle"    # Lorg/json/JSONObject;
    .param p2, "group"    # Ljava/lang/String;

    .line 763
    invoke-static {p0}, Lcom/onesignal/GenerateNotification;->getNewBaseIntent(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onesignalData"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "summary"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private static createGenericPendingIntentsForGroup(Landroidx/core/app/NotificationCompat$Builder;Lorg/json/JSONObject;Ljava/lang/String;I)V
    .locals 5
    .param p0, "notifBuilder"    # Landroidx/core/app/NotificationCompat$Builder;
    .param p1, "gcmBundle"    # Lorg/json/JSONObject;
    .param p2, "group"    # Ljava/lang/String;
    .param p3, "notificationId"    # I

    .line 411
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 412
    .local v0, "random":Ljava/util/Random;
    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v1

    invoke-static {p3}, Lcom/onesignal/GenerateNotification;->getNewBaseIntent(I)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "onesignalData"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "grp"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/onesignal/GenerateNotification;->getNewActionPendingIntent(ILandroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 413
    .local v1, "contentIntent":Landroid/app/PendingIntent;
    invoke-virtual {p0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 414
    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v2

    invoke-static {p3}, Lcom/onesignal/GenerateNotification;->getNewBaseDeleteIntent(I)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/onesignal/GenerateNotification;->getNewActionPendingIntent(ILandroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object v2

    .line 415
    .local v2, "deleteIntent":Landroid/app/PendingIntent;
    invoke-virtual {p0, v2}, Landroidx/core/app/NotificationCompat$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 416
    invoke-virtual {p0, p2}, Landroidx/core/app/NotificationCompat$Builder;->setGroup(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    .line 419
    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {p0, v3}, Landroidx/core/app/NotificationCompat$Builder;->setGroupAlertBehavior(I)Landroidx/core/app/NotificationCompat$Builder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 423
    goto :goto_0

    .line 421
    :catchall_0
    move-exception v3

    .line 424
    :goto_0
    return-void
.end method

.method private static createGenericPendingIntentsForNotif(Landroidx/core/app/NotificationCompat$Builder;Lorg/json/JSONObject;I)Landroid/app/Notification;
    .locals 5
    .param p0, "notifBuilder"    # Landroidx/core/app/NotificationCompat$Builder;
    .param p1, "gcmBundle"    # Lorg/json/JSONObject;
    .param p2, "notificationId"    # I

    .line 402
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 403
    .local v0, "random":Ljava/util/Random;
    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v1

    invoke-static {p2}, Lcom/onesignal/GenerateNotification;->getNewBaseIntent(I)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "onesignalData"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/onesignal/GenerateNotification;->getNewActionPendingIntent(ILandroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 404
    .local v1, "contentIntent":Landroid/app/PendingIntent;
    invoke-virtual {p0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 405
    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v2

    invoke-static {p2}, Lcom/onesignal/GenerateNotification;->getNewBaseDeleteIntent(I)Landroid/content/Intent;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/onesignal/GenerateNotification;->getNewActionPendingIntent(ILandroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object v2

    .line 406
    .local v2, "deleteIntent":Landroid/app/PendingIntent;
    invoke-virtual {p0, v2}, Landroidx/core/app/NotificationCompat$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 407
    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    return-object v3
.end method

.method private static createGrouplessSummaryNotification(Lcom/onesignal/NotificationGenerationJob;I)V
    .locals 12
    .param p0, "notifJob"    # Lcom/onesignal/NotificationGenerationJob;
    .param p1, "grouplessNotifCount"    # I

    .line 713
    iget-object v0, p0, Lcom/onesignal/NotificationGenerationJob;->jsonPayload:Lorg/json/JSONObject;

    .line 717
    .local v0, "gcmBundle":Lorg/json/JSONObject;
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    .line 718
    .local v1, "random":Ljava/security/SecureRandom;
    invoke-static {}, Lcom/onesignal/OneSignalNotificationManager;->getGrouplessSummaryKey()Ljava/lang/String;

    move-result-object v2

    .line 719
    .local v2, "group":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " new messages"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 720
    .local v3, "summaryMessage":Ljava/lang/String;
    invoke-static {}, Lcom/onesignal/OneSignalNotificationManager;->getGrouplessSummaryId()I

    move-result v4

    .line 722
    .local v4, "summaryNotificationId":I
    invoke-virtual {v1}, Ljava/security/SecureRandom;->nextInt()I

    move-result v5

    invoke-static {v4, v0, v2}, Lcom/onesignal/GenerateNotification;->createBaseSummaryIntent(ILorg/json/JSONObject;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/onesignal/GenerateNotification;->getNewActionPendingIntent(ILandroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object v5

    .line 723
    .local v5, "summaryContentIntent":Landroid/app/PendingIntent;
    invoke-virtual {v1}, Ljava/security/SecureRandom;->nextInt()I

    move-result v6

    const/4 v7, 0x0

    invoke-static {v7}, Lcom/onesignal/GenerateNotification;->getNewBaseDeleteIntent(I)Landroid/content/Intent;

    move-result-object v8

    const-string v9, "summary"

    invoke-virtual {v8, v9, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/onesignal/GenerateNotification;->getNewActionPendingIntent(ILandroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object v6

    .line 725
    .local v6, "summaryDeleteIntent":Landroid/app/PendingIntent;
    invoke-static {p0}, Lcom/onesignal/GenerateNotification;->getBaseOneSignalNotificationBuilder(Lcom/onesignal/NotificationGenerationJob;)Lcom/onesignal/GenerateNotification$OneSignalNotificationBuilder;

    move-result-object v8

    iget-object v8, v8, Lcom/onesignal/GenerateNotification$OneSignalNotificationBuilder;->compatBuilder:Landroidx/core/app/NotificationCompat$Builder;

    .line 726
    .local v8, "summaryBuilder":Landroidx/core/app/NotificationCompat$Builder;
    iget-object v9, p0, Lcom/onesignal/NotificationGenerationJob;->overriddenSound:Landroid/net/Uri;

    if-eqz v9, :cond_0

    .line 727
    iget-object v9, p0, Lcom/onesignal/NotificationGenerationJob;->overriddenSound:Landroid/net/Uri;

    invoke-virtual {v8, v9}, Landroidx/core/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;)Landroidx/core/app/NotificationCompat$Builder;

    .line 729
    :cond_0
    iget-object v9, p0, Lcom/onesignal/NotificationGenerationJob;->overriddenFlags:Ljava/lang/Integer;

    if-eqz v9, :cond_1

    .line 730
    iget-object v9, p0, Lcom/onesignal/NotificationGenerationJob;->overriddenFlags:Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v8, v9}, Landroidx/core/app/NotificationCompat$Builder;->setDefaults(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 734
    :cond_1
    invoke-virtual {v8, v5}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v9

    .line 735
    invoke-virtual {v9, v6}, Landroidx/core/app/NotificationCompat$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v9

    sget-object v10, Lcom/onesignal/GenerateNotification;->currentContext:Landroid/content/Context;

    .line 736
    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    sget-object v11, Lcom/onesignal/GenerateNotification;->currentContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v9

    .line 737
    invoke-virtual {v9, v3}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v9

    .line 738
    invoke-virtual {v9, p1}, Landroidx/core/app/NotificationCompat$Builder;->setNumber(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v9

    .line 739
    invoke-static {}, Lcom/onesignal/GenerateNotification;->getDefaultSmallIconId()I

    move-result v10

    invoke-virtual {v9, v10}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v9

    .line 740
    invoke-static {}, Lcom/onesignal/GenerateNotification;->getDefaultLargeIcon()Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroidx/core/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v9

    .line 741
    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroidx/core/app/NotificationCompat$Builder;->setOnlyAlertOnce(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v9

    .line 742
    invoke-virtual {v9, v7}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v7

    .line 743
    invoke-virtual {v7, v2}, Landroidx/core/app/NotificationCompat$Builder;->setGroup(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v7

    .line 744
    invoke-virtual {v7, v10}, Landroidx/core/app/NotificationCompat$Builder;->setGroupSummary(Z)Landroidx/core/app/NotificationCompat$Builder;

    .line 747
    :try_start_0
    invoke-virtual {v8, v10}, Landroidx/core/app/NotificationCompat$Builder;->setGroupAlertBehavior(I)Landroidx/core/app/NotificationCompat$Builder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 751
    goto :goto_0

    .line 749
    :catchall_0
    move-exception v7

    .line 753
    :goto_0
    new-instance v7, Landroidx/core/app/NotificationCompat$InboxStyle;

    invoke-direct {v7}, Landroidx/core/app/NotificationCompat$InboxStyle;-><init>()V

    .line 755
    .local v7, "inboxStyle":Landroidx/core/app/NotificationCompat$InboxStyle;
    invoke-virtual {v7, v3}, Landroidx/core/app/NotificationCompat$InboxStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$InboxStyle;

    .line 756
    invoke-virtual {v8, v7}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    .line 757
    invoke-virtual {v8}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v9

    .line 759
    .local v9, "summaryNotification":Landroid/app/Notification;
    sget-object v10, Lcom/onesignal/GenerateNotification;->currentContext:Landroid/content/Context;

    invoke-static {v10}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object v10

    invoke-virtual {v10, v4, v9}, Landroidx/core/app/NotificationManagerCompat;->notify(ILandroid/app/Notification;)V

    .line 760
    return-void
.end method

.method private static createSingleNotificationBeforeSummaryBuilder(Lcom/onesignal/NotificationGenerationJob;Landroidx/core/app/NotificationCompat$Builder;)Landroid/app/Notification;
    .locals 3
    .param p0, "notifJob"    # Lcom/onesignal/NotificationGenerationJob;
    .param p1, "notifBuilder"    # Landroidx/core/app/NotificationCompat$Builder;

    .line 468
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-le v0, v1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/onesignal/NotificationGenerationJob;->restoring:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 471
    .local v0, "singleNotifWorkArounds":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 472
    iget-object v1, p0, Lcom/onesignal/NotificationGenerationJob;->overriddenSound:Landroid/net/Uri;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/onesignal/NotificationGenerationJob;->overriddenSound:Landroid/net/Uri;

    iget-object v2, p0, Lcom/onesignal/NotificationGenerationJob;->orgSound:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 473
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroidx/core/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;)Landroidx/core/app/NotificationCompat$Builder;

    .line 476
    :cond_1
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    .line 478
    .local v1, "notification":Landroid/app/Notification;
    if-eqz v0, :cond_2

    .line 479
    iget-object v2, p0, Lcom/onesignal/NotificationGenerationJob;->overriddenSound:Landroid/net/Uri;

    invoke-virtual {p1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;)Landroidx/core/app/NotificationCompat$Builder;

    .line 481
    :cond_2
    return-object v1
.end method

.method private static createSummaryIdDatabaseEntry(Lcom/onesignal/OneSignalDbHelper;Ljava/lang/String;I)V
    .locals 3
    .param p0, "dbHelper"    # Lcom/onesignal/OneSignalDbHelper;
    .param p1, "group"    # Ljava/lang/String;
    .param p2, "id"    # I

    .line 769
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 770
    .local v0, "values":Landroid/content/ContentValues;
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "android_notification_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 771
    const-string v1, "group_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 772
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "is_summary"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 773
    const-string v1, "notification"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lcom/onesignal/OneSignalDbHelper;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 774
    return-void
.end method

.method private static createSummaryNotification(Lcom/onesignal/NotificationGenerationJob;Lcom/onesignal/GenerateNotification$OneSignalNotificationBuilder;)V
    .locals 28
    .param p0, "notifJob"    # Lcom/onesignal/NotificationGenerationJob;
    .param p1, "notifBuilder"    # Lcom/onesignal/GenerateNotification$OneSignalNotificationBuilder;

    .line 512
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v0, "message"

    const-string v3, "title"

    const-string v4, "is_summary"

    const-string v5, "full_data"

    const-string v6, "android_notification_id"

    iget-boolean v7, v1, Lcom/onesignal/NotificationGenerationJob;->restoring:Z

    .line 513
    .local v7, "updateSummary":Z
    iget-object v8, v1, Lcom/onesignal/NotificationGenerationJob;->jsonPayload:Lorg/json/JSONObject;

    .line 515
    .local v8, "gcmBundle":Lorg/json/JSONObject;
    const-string v9, "grp"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 517
    .local v9, "group":Ljava/lang/String;
    new-instance v11, Ljava/security/SecureRandom;

    invoke-direct {v11}, Ljava/security/SecureRandom;-><init>()V

    .line 518
    .local v11, "random":Ljava/security/SecureRandom;
    invoke-virtual {v11}, Ljava/security/SecureRandom;->nextInt()I

    move-result v12

    const/4 v13, 0x0

    invoke-static {v13}, Lcom/onesignal/GenerateNotification;->getNewBaseDeleteIntent(I)Landroid/content/Intent;

    move-result-object v14

    const-string v15, "summary"

    invoke-virtual {v14, v15, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v14

    invoke-static {v12, v14}, Lcom/onesignal/GenerateNotification;->getNewActionPendingIntent(ILandroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object v12

    .line 521
    .local v12, "summaryDeleteIntent":Landroid/app/PendingIntent;
    const/4 v14, 0x0

    .line 523
    .local v14, "summaryNotificationId":Ljava/lang/Integer;
    const/4 v15, 0x0

    .line 524
    .local v15, "firstFullData":Ljava/lang/String;
    const/16 v16, 0x0

    .line 526
    .local v16, "summaryList":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/text/SpannableString;>;"
    sget-object v17, Lcom/onesignal/GenerateNotification;->currentContext:Landroid/content/Context;

    invoke-static/range {v17 .. v17}, Lcom/onesignal/OneSignalDbHelper;->getInstance(Landroid/content/Context;)Lcom/onesignal/OneSignalDbHelper;

    move-result-object v10

    .line 527
    .local v10, "dbHelper":Lcom/onesignal/OneSignalDbHelper;
    const/16 v17, 0x0

    .line 530
    .local v17, "cursor":Landroid/database/Cursor;
    const/4 v13, 0x5

    :try_start_0
    new-array v13, v13, [Ljava/lang/String;

    const/16 v18, 0x0

    aput-object v6, v13, v18
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_9

    move-object/from16 v26, v8

    .end local v8    # "gcmBundle":Lorg/json/JSONObject;
    .local v26, "gcmBundle":Lorg/json/JSONObject;
    const/4 v8, 0x1

    :try_start_1
    aput-object v5, v13, v8

    const/16 v18, 0x2

    aput-object v4, v13, v18

    const/16 v18, 0x3

    aput-object v3, v13, v18

    const/16 v18, 0x4

    aput-object v0, v13, v18

    move-object/from16 v20, v13

    .line 536
    .local v20, "retColumn":[Ljava/lang/String;
    const-string v13, "group_id = ? AND dismissed = 0 AND opened = 0"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_8

    .line 539
    .local v13, "whereStr":Ljava/lang/String;
    move-object/from16 v27, v14

    .end local v14    # "summaryNotificationId":Ljava/lang/Integer;
    .local v27, "summaryNotificationId":Ljava/lang/Integer;
    :try_start_2
    new-array v14, v8, [Ljava/lang/String;

    const/16 v18, 0x0

    aput-object v9, v14, v18
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_7

    move-object/from16 v22, v14

    .line 542
    .local v22, "whereArgs":[Ljava/lang/String;
    if-nez v7, :cond_0

    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lcom/onesignal/NotificationGenerationJob;->getAndroidId()Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    const/4 v8, -0x1

    if-eq v14, v8, :cond_0

    .line 543
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " AND android_notification_id <> "

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/onesignal/NotificationGenerationJob;->getAndroidId()Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v13, v8

    goto :goto_0

    .line 593
    .end local v13    # "whereStr":Ljava/lang/String;
    .end local v20    # "retColumn":[Ljava/lang/String;
    .end local v22    # "whereArgs":[Ljava/lang/String;
    :catchall_0
    move-exception v0

    move-object v1, v2

    move-object/from16 v14, v27

    goto/16 :goto_10

    .line 545
    .restart local v13    # "whereStr":Ljava/lang/String;
    .restart local v20    # "retColumn":[Ljava/lang/String;
    .restart local v22    # "whereArgs":[Ljava/lang/String;
    :cond_0
    :goto_0
    :try_start_4
    const-string v19, "notification"

    const/16 v23, 0x0

    const/16 v24, 0x0

    const-string v25, "_id DESC"

    move-object/from16 v18, v10

    move-object/from16 v21, v13

    invoke-virtual/range {v18 .. v25}, Lcom/onesignal/OneSignalDbHelper;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_7

    .line 555
    .end local v17    # "cursor":Landroid/database/Cursor;
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_5
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v14
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    move-object/from16 v18, v13

    .end local v13    # "whereStr":Ljava/lang/String;
    .local v18, "whereStr":Ljava/lang/String;
    const-string v13, " "

    move-object/from16 v19, v15

    .end local v15    # "firstFullData":Ljava/lang/String;
    .local v19, "firstFullData":Ljava/lang/String;
    const-string v15, ""

    if-eqz v14, :cond_7

    .line 557
    :try_start_6
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 560
    .end local v16    # "summaryList":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/text/SpannableString;>;"
    .local v14, "summaryList":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/text/SpannableString;>;"
    :goto_1
    :try_start_7
    invoke-interface {v8, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    move-object/from16 v21, v4

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1

    .line 561
    invoke-interface {v8, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v23, v0

    move-object/from16 v27, v2

    move-object/from16 v24, v3

    move-object/from16 v2, v19

    .end local v27    # "summaryNotificationId":Ljava/lang/Integer;
    .local v2, "summaryNotificationId":Ljava/lang/Integer;
    goto/16 :goto_4

    .line 563
    .end local v2    # "summaryNotificationId":Ljava/lang/Integer;
    .restart local v27    # "summaryNotificationId":Ljava/lang/Integer;
    :cond_1
    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 564
    .local v2, "title":Ljava/lang/String;
    if-nez v2, :cond_2

    .line 565
    move-object v2, v15

    goto :goto_2

    .line 567
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    .line 571
    :goto_2
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 573
    .local v4, "msg":Ljava/lang/String;
    move-object/from16 v23, v0

    new-instance v0, Landroid/text/SpannableString;

    move-object/from16 v24, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 574
    .local v0, "spannableString":Landroid/text/SpannableString;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3

    .line 575
    new-instance v3, Landroid/text/style/StyleSpan;

    move-object/from16 v16, v4

    const/4 v4, 0x1

    .end local v4    # "msg":Ljava/lang/String;
    .local v16, "msg":Ljava/lang/String;
    invoke-direct {v3, v4}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    move-object/from16 v17, v2

    const/4 v2, 0x0

    .end local v2    # "title":Ljava/lang/String;
    .local v17, "title":Ljava/lang/String;
    invoke-virtual {v0, v3, v2, v4, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_3

    .line 574
    .end local v16    # "msg":Ljava/lang/String;
    .end local v17    # "title":Ljava/lang/String;
    .restart local v2    # "title":Ljava/lang/String;
    .restart local v4    # "msg":Ljava/lang/String;
    :cond_3
    move-object/from16 v17, v2

    move-object/from16 v16, v4

    .line 576
    .end local v2    # "title":Ljava/lang/String;
    .end local v4    # "msg":Ljava/lang/String;
    .restart local v16    # "msg":Ljava/lang/String;
    .restart local v17    # "title":Ljava/lang/String;
    :goto_3
    invoke-interface {v14, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 578
    if-nez v19, :cond_4

    .line 579
    invoke-interface {v8, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .end local v19    # "firstFullData":Ljava/lang/String;
    .local v2, "firstFullData":Ljava/lang/String;
    goto :goto_4

    .line 578
    .end local v2    # "firstFullData":Ljava/lang/String;
    .restart local v19    # "firstFullData":Ljava/lang/String;
    :cond_4
    move-object/from16 v2, v19

    .line 581
    .end local v0    # "spannableString":Landroid/text/SpannableString;
    .end local v16    # "msg":Ljava/lang/String;
    .end local v17    # "title":Ljava/lang/String;
    .end local v19    # "firstFullData":Ljava/lang/String;
    .restart local v2    # "firstFullData":Ljava/lang/String;
    :goto_4
    :try_start_8
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-nez v0, :cond_6

    .line 583
    if-eqz v7, :cond_5

    if-eqz v2, :cond_5

    .line 585
    :try_start_9
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 588
    .end local v26    # "gcmBundle":Lorg/json/JSONObject;
    .local v0, "gcmBundle":Lorg/json/JSONObject;
    move-object/from16 v19, v2

    move-object/from16 v16, v14

    move-object/from16 v14, v27

    move-object v2, v0

    goto :goto_5

    .line 586
    .end local v0    # "gcmBundle":Lorg/json/JSONObject;
    .restart local v26    # "gcmBundle":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 587
    .local v0, "e":Lorg/json/JSONException;
    :try_start_a
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 593
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v18    # "whereStr":Ljava/lang/String;
    .end local v20    # "retColumn":[Ljava/lang/String;
    .end local v22    # "whereArgs":[Ljava/lang/String;
    :cond_5
    move-object/from16 v19, v2

    move-object/from16 v16, v14

    move-object/from16 v2, v26

    move-object/from16 v14, v27

    goto :goto_5

    .line 581
    .restart local v18    # "whereStr":Ljava/lang/String;
    .restart local v20    # "retColumn":[Ljava/lang/String;
    .restart local v22    # "whereArgs":[Ljava/lang/String;
    :cond_6
    move-object/from16 v19, v2

    move-object/from16 v4, v21

    move-object/from16 v0, v23

    move-object/from16 v3, v24

    move-object/from16 v2, p1

    goto/16 :goto_1

    .line 593
    .end local v18    # "whereStr":Ljava/lang/String;
    .end local v20    # "retColumn":[Ljava/lang/String;
    .end local v22    # "whereArgs":[Ljava/lang/String;
    :catchall_1
    move-exception v0

    move-object/from16 v1, p1

    move-object v15, v2

    move-object/from16 v17, v8

    move-object/from16 v16, v14

    move-object/from16 v14, v27

    goto/16 :goto_10

    .end local v2    # "firstFullData":Ljava/lang/String;
    .restart local v19    # "firstFullData":Ljava/lang/String;
    :catchall_2
    move-exception v0

    move-object/from16 v1, p1

    move-object/from16 v17, v8

    move-object/from16 v16, v14

    move-object/from16 v15, v19

    move-object/from16 v14, v27

    goto/16 :goto_10

    .end local v14    # "summaryList":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/text/SpannableString;>;"
    .local v16, "summaryList":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/text/SpannableString;>;"
    :catchall_3
    move-exception v0

    move-object/from16 v1, p1

    move-object/from16 v17, v8

    move-object/from16 v15, v19

    move-object/from16 v14, v27

    goto/16 :goto_10

    .line 555
    .restart local v18    # "whereStr":Ljava/lang/String;
    .restart local v20    # "retColumn":[Ljava/lang/String;
    .restart local v22    # "whereArgs":[Ljava/lang/String;
    :cond_7
    move-object/from16 v2, v26

    move-object/from16 v14, v27

    .line 593
    .end local v18    # "whereStr":Ljava/lang/String;
    .end local v20    # "retColumn":[Ljava/lang/String;
    .end local v22    # "whereArgs":[Ljava/lang/String;
    .end local v26    # "gcmBundle":Lorg/json/JSONObject;
    .end local v27    # "summaryNotificationId":Ljava/lang/Integer;
    .local v2, "gcmBundle":Lorg/json/JSONObject;
    .local v14, "summaryNotificationId":Ljava/lang/Integer;
    :goto_5
    if-eqz v8, :cond_8

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_8

    .line 594
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 597
    :cond_8
    if-nez v14, :cond_9

    .line 598
    invoke-virtual {v11}, Ljava/security/SecureRandom;->nextInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    .line 599
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v10, v9, v0}, Lcom/onesignal/GenerateNotification;->createSummaryIdDatabaseEntry(Lcom/onesignal/OneSignalDbHelper;Ljava/lang/String;I)V

    .line 602
    :cond_9
    invoke-virtual {v11}, Ljava/security/SecureRandom;->nextInt()I

    move-result v0

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3, v2, v9}, Lcom/onesignal/GenerateNotification;->createBaseSummaryIntent(ILorg/json/JSONObject;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/onesignal/GenerateNotification;->getNewActionPendingIntent(ILandroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object v3

    .line 605
    .local v3, "summaryContentIntent":Landroid/app/PendingIntent;
    if-eqz v16, :cond_18

    if-eqz v7, :cond_a

    .line 606
    invoke-interface/range {v16 .. v16}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v4, 0x1

    if-gt v0, v4, :cond_b

    :cond_a
    if-nez v7, :cond_17

    .line 607
    invoke-interface/range {v16 .. v16}, Ljava/util/Collection;->size()I

    move-result v0

    if-lez v0, :cond_16

    .line 608
    :cond_b
    invoke-interface/range {v16 .. v16}, Ljava/util/Collection;->size()I

    move-result v0

    xor-int/lit8 v4, v7, 0x1

    add-int/2addr v4, v0

    .line 610
    .local v4, "notificationCount":I
    const-string v0, "grp_msg"

    const/4 v5, 0x0

    invoke-virtual {v2, v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 611
    .local v0, "summaryMessage":Ljava/lang/String;
    if-nez v0, :cond_c

    .line 612
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " new messages"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    goto :goto_6

    .line 614
    :cond_c
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "$[notif_count]"

    invoke-virtual {v0, v6, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    .line 616
    .end local v0    # "summaryMessage":Ljava/lang/String;
    .local v5, "summaryMessage":Ljava/lang/String;
    :goto_6
    invoke-static/range {p0 .. p0}, Lcom/onesignal/GenerateNotification;->getBaseOneSignalNotificationBuilder(Lcom/onesignal/NotificationGenerationJob;)Lcom/onesignal/GenerateNotification$OneSignalNotificationBuilder;

    move-result-object v0

    iget-object v6, v0, Lcom/onesignal/GenerateNotification$OneSignalNotificationBuilder;->compatBuilder:Landroidx/core/app/NotificationCompat$Builder;

    .line 617
    .local v6, "summaryBuilder":Landroidx/core/app/NotificationCompat$Builder;
    if-eqz v7, :cond_d

    .line 618
    invoke-static {v6}, Lcom/onesignal/GenerateNotification;->removeNotifyOptions(Landroidx/core/app/NotificationCompat$Builder;)V

    goto :goto_7

    .line 620
    :cond_d
    iget-object v0, v1, Lcom/onesignal/NotificationGenerationJob;->overriddenSound:Landroid/net/Uri;

    if-eqz v0, :cond_e

    .line 621
    iget-object v0, v1, Lcom/onesignal/NotificationGenerationJob;->overriddenSound:Landroid/net/Uri;

    invoke-virtual {v6, v0}, Landroidx/core/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;)Landroidx/core/app/NotificationCompat$Builder;

    .line 623
    :cond_e
    iget-object v0, v1, Lcom/onesignal/NotificationGenerationJob;->overriddenFlags:Ljava/lang/Integer;

    if-eqz v0, :cond_f

    .line 624
    iget-object v0, v1, Lcom/onesignal/NotificationGenerationJob;->overriddenFlags:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v6, v0}, Landroidx/core/app/NotificationCompat$Builder;->setDefaults(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 629
    :cond_f
    :goto_7
    invoke-virtual {v6, v3}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 630
    invoke-virtual {v0, v12}, Landroidx/core/app/NotificationCompat$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    sget-object v15, Lcom/onesignal/GenerateNotification;->currentContext:Landroid/content/Context;

    .line 631
    invoke-virtual {v15}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    sget-object v17, Lcom/onesignal/GenerateNotification;->currentContext:Landroid/content/Context;

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    invoke-virtual {v15, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 632
    invoke-virtual {v0, v5}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 633
    invoke-virtual {v0, v4}, Landroidx/core/app/NotificationCompat$Builder;->setNumber(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 634
    invoke-static {}, Lcom/onesignal/GenerateNotification;->getDefaultSmallIconId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 635
    invoke-static {}, Lcom/onesignal/GenerateNotification;->getDefaultLargeIcon()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 636
    invoke-virtual {v0, v7}, Landroidx/core/app/NotificationCompat$Builder;->setOnlyAlertOnce(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 637
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 638
    invoke-virtual {v0, v9}, Landroidx/core/app/NotificationCompat$Builder;->setGroup(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 639
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setGroupSummary(Z)Landroidx/core/app/NotificationCompat$Builder;

    .line 642
    :try_start_b
    invoke-virtual {v6, v1}, Landroidx/core/app/NotificationCompat$Builder;->setGroupAlertBehavior(I)Landroidx/core/app/NotificationCompat$Builder;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 646
    goto :goto_8

    .line 644
    :catchall_4
    move-exception v0

    .line 648
    :goto_8
    if-nez v7, :cond_10

    .line 649
    invoke-virtual {v6, v5}, Landroidx/core/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 651
    :cond_10
    new-instance v0, Landroidx/core/app/NotificationCompat$InboxStyle;

    invoke-direct {v0}, Landroidx/core/app/NotificationCompat$InboxStyle;-><init>()V

    .line 654
    .local v0, "inboxStyle":Landroidx/core/app/NotificationCompat$InboxStyle;
    if-nez v7, :cond_14

    .line 655
    const/4 v1, 0x0

    .line 657
    .local v1, "line1Title":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/onesignal/NotificationGenerationJob;->getTitle()Ljava/lang/CharSequence;

    move-result-object v15

    if-eqz v15, :cond_11

    .line 658
    invoke-virtual/range {p0 .. p0}, Lcom/onesignal/NotificationGenerationJob;->getTitle()Ljava/lang/CharSequence;

    move-result-object v15

    invoke-interface {v15}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 660
    :cond_11
    if-nez v1, :cond_12

    .line 661
    const-string v1, ""

    goto :goto_9

    .line 663
    :cond_12
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 665
    :goto_9
    invoke-virtual/range {p0 .. p0}, Lcom/onesignal/NotificationGenerationJob;->getBody()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-interface {v13}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v13

    .line 667
    .local v13, "message":Ljava/lang/String;
    new-instance v15, Landroid/text/SpannableString;

    move/from16 v17, v4

    .end local v4    # "notificationCount":I
    .local v17, "notificationCount":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v15, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    move-object v4, v15

    .line 668
    .local v4, "spannableString":Landroid/text/SpannableString;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v15

    if-lez v15, :cond_13

    .line 669
    new-instance v15, Landroid/text/style/StyleSpan;

    move-object/from16 v18, v8

    const/4 v8, 0x1

    .end local v8    # "cursor":Landroid/database/Cursor;
    .local v18, "cursor":Landroid/database/Cursor;
    invoke-direct {v15, v8}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    move-object/from16 v20, v1

    const/4 v1, 0x0

    .end local v1    # "line1Title":Ljava/lang/String;
    .local v20, "line1Title":Ljava/lang/String;
    invoke-virtual {v4, v15, v1, v8, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_a

    .line 668
    .end local v18    # "cursor":Landroid/database/Cursor;
    .end local v20    # "line1Title":Ljava/lang/String;
    .restart local v1    # "line1Title":Ljava/lang/String;
    .restart local v8    # "cursor":Landroid/database/Cursor;
    :cond_13
    move-object/from16 v20, v1

    move-object/from16 v18, v8

    .line 670
    .end local v1    # "line1Title":Ljava/lang/String;
    .end local v8    # "cursor":Landroid/database/Cursor;
    .restart local v18    # "cursor":Landroid/database/Cursor;
    .restart local v20    # "line1Title":Ljava/lang/String;
    :goto_a
    invoke-virtual {v0, v4}, Landroidx/core/app/NotificationCompat$InboxStyle;->addLine(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$InboxStyle;

    goto :goto_b

    .line 654
    .end local v13    # "message":Ljava/lang/String;
    .end local v17    # "notificationCount":I
    .end local v18    # "cursor":Landroid/database/Cursor;
    .end local v20    # "line1Title":Ljava/lang/String;
    .local v4, "notificationCount":I
    .restart local v8    # "cursor":Landroid/database/Cursor;
    :cond_14
    move/from16 v17, v4

    move-object/from16 v18, v8

    .line 673
    .end local v4    # "notificationCount":I
    .end local v8    # "cursor":Landroid/database/Cursor;
    .restart local v17    # "notificationCount":I
    .restart local v18    # "cursor":Landroid/database/Cursor;
    :goto_b
    invoke-interface/range {v16 .. v16}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_15

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/text/SpannableString;

    .line 674
    .local v4, "line":Landroid/text/SpannableString;
    invoke-virtual {v0, v4}, Landroidx/core/app/NotificationCompat$InboxStyle;->addLine(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$InboxStyle;

    goto :goto_c

    .line 675
    .end local v4    # "line":Landroid/text/SpannableString;
    :cond_15
    invoke-virtual {v0, v5}, Landroidx/core/app/NotificationCompat$InboxStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$InboxStyle;

    .line 676
    invoke-virtual {v6, v0}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    .line 678
    invoke-virtual {v6}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 679
    .end local v5    # "summaryMessage":Ljava/lang/String;
    .end local v6    # "summaryBuilder":Landroidx/core/app/NotificationCompat$Builder;
    .end local v17    # "notificationCount":I
    .local v0, "summaryNotification":Landroid/app/Notification;
    move-object/from16 v1, p1

    goto :goto_f

    .line 607
    .end local v0    # "summaryNotification":Landroid/app/Notification;
    .end local v18    # "cursor":Landroid/database/Cursor;
    .restart local v8    # "cursor":Landroid/database/Cursor;
    :cond_16
    move-object/from16 v18, v8

    .end local v8    # "cursor":Landroid/database/Cursor;
    .restart local v18    # "cursor":Landroid/database/Cursor;
    goto :goto_d

    .line 606
    .end local v18    # "cursor":Landroid/database/Cursor;
    .restart local v8    # "cursor":Landroid/database/Cursor;
    :cond_17
    move-object/from16 v18, v8

    .end local v8    # "cursor":Landroid/database/Cursor;
    .restart local v18    # "cursor":Landroid/database/Cursor;
    goto :goto_d

    .line 605
    .end local v18    # "cursor":Landroid/database/Cursor;
    .restart local v8    # "cursor":Landroid/database/Cursor;
    :cond_18
    move-object/from16 v18, v8

    .line 682
    .end local v8    # "cursor":Landroid/database/Cursor;
    .restart local v18    # "cursor":Landroid/database/Cursor;
    :goto_d
    move-object/from16 v1, p1

    iget-object v4, v1, Lcom/onesignal/GenerateNotification$OneSignalNotificationBuilder;->compatBuilder:Landroidx/core/app/NotificationCompat$Builder;

    .line 687
    .local v4, "summaryBuilder":Landroidx/core/app/NotificationCompat$Builder;
    iget-object v0, v4, Landroidx/core/app/NotificationCompat$Builder;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 688
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v2, v4, v0, v9}, Lcom/onesignal/GenerateNotification;->addNotificationActionButtons(Lorg/json/JSONObject;Landroidx/core/app/NotificationCompat$Builder;ILjava/lang/String;)V

    .line 690
    invoke-virtual {v4, v3}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 691
    invoke-virtual {v0, v12}, Landroidx/core/app/NotificationCompat$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 692
    invoke-virtual {v0, v7}, Landroidx/core/app/NotificationCompat$Builder;->setOnlyAlertOnce(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 693
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 694
    invoke-virtual {v0, v9}, Landroidx/core/app/NotificationCompat$Builder;->setGroup(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 695
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroidx/core/app/NotificationCompat$Builder;->setGroupSummary(Z)Landroidx/core/app/NotificationCompat$Builder;

    .line 698
    :try_start_c
    invoke-virtual {v4, v5}, Landroidx/core/app/NotificationCompat$Builder;->setGroupAlertBehavior(I)Landroidx/core/app/NotificationCompat$Builder;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    .line 702
    goto :goto_e

    .line 700
    :catchall_5
    move-exception v0

    .line 704
    :goto_e
    invoke-virtual {v4}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 705
    .restart local v0    # "summaryNotification":Landroid/app/Notification;
    invoke-static {v1, v0}, Lcom/onesignal/GenerateNotification;->addXiaomiSettings(Lcom/onesignal/GenerateNotification$OneSignalNotificationBuilder;Landroid/app/Notification;)V

    .line 708
    .end local v4    # "summaryBuilder":Landroidx/core/app/NotificationCompat$Builder;
    :goto_f
    sget-object v4, Lcom/onesignal/GenerateNotification;->currentContext:Landroid/content/Context;

    invoke-static {v4}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object v4

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5, v0}, Landroidx/core/app/NotificationManagerCompat;->notify(ILandroid/app/Notification;)V

    .line 709
    return-void

    .line 593
    .end local v0    # "summaryNotification":Landroid/app/Notification;
    .end local v2    # "gcmBundle":Lorg/json/JSONObject;
    .end local v3    # "summaryContentIntent":Landroid/app/PendingIntent;
    .end local v14    # "summaryNotificationId":Ljava/lang/Integer;
    .end local v18    # "cursor":Landroid/database/Cursor;
    .end local v19    # "firstFullData":Ljava/lang/String;
    .restart local v8    # "cursor":Landroid/database/Cursor;
    .restart local v15    # "firstFullData":Ljava/lang/String;
    .restart local v26    # "gcmBundle":Lorg/json/JSONObject;
    .restart local v27    # "summaryNotificationId":Ljava/lang/Integer;
    :catchall_6
    move-exception v0

    move-object v1, v2

    move-object/from16 v18, v8

    move-object/from16 v19, v15

    move-object/from16 v17, v18

    move-object/from16 v14, v27

    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v15    # "firstFullData":Ljava/lang/String;
    .restart local v18    # "cursor":Landroid/database/Cursor;
    .restart local v19    # "firstFullData":Ljava/lang/String;
    goto :goto_10

    .end local v18    # "cursor":Landroid/database/Cursor;
    .end local v19    # "firstFullData":Ljava/lang/String;
    .restart local v15    # "firstFullData":Ljava/lang/String;
    .local v17, "cursor":Landroid/database/Cursor;
    :catchall_7
    move-exception v0

    move-object v1, v2

    move-object/from16 v19, v15

    move-object/from16 v14, v27

    .end local v15    # "firstFullData":Ljava/lang/String;
    .restart local v19    # "firstFullData":Ljava/lang/String;
    goto :goto_10

    .end local v19    # "firstFullData":Ljava/lang/String;
    .end local v27    # "summaryNotificationId":Ljava/lang/Integer;
    .restart local v14    # "summaryNotificationId":Ljava/lang/Integer;
    .restart local v15    # "firstFullData":Ljava/lang/String;
    :catchall_8
    move-exception v0

    move-object v1, v2

    move-object/from16 v27, v14

    move-object/from16 v19, v15

    .end local v14    # "summaryNotificationId":Ljava/lang/Integer;
    .end local v15    # "firstFullData":Ljava/lang/String;
    .restart local v19    # "firstFullData":Ljava/lang/String;
    .restart local v27    # "summaryNotificationId":Ljava/lang/Integer;
    goto :goto_10

    .end local v19    # "firstFullData":Ljava/lang/String;
    .end local v26    # "gcmBundle":Lorg/json/JSONObject;
    .end local v27    # "summaryNotificationId":Ljava/lang/Integer;
    .local v8, "gcmBundle":Lorg/json/JSONObject;
    .restart local v14    # "summaryNotificationId":Ljava/lang/Integer;
    .restart local v15    # "firstFullData":Ljava/lang/String;
    :catchall_9
    move-exception v0

    move-object v1, v2

    move-object/from16 v26, v8

    move-object/from16 v27, v14

    move-object/from16 v19, v15

    .end local v8    # "gcmBundle":Lorg/json/JSONObject;
    .restart local v26    # "gcmBundle":Lorg/json/JSONObject;
    :goto_10
    if-eqz v17, :cond_19

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_19

    .line 594
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    :cond_19
    goto :goto_12

    :goto_11
    throw v0

    :goto_12
    goto :goto_11
.end method

.method static fromJsonPayload(Lcom/onesignal/NotificationGenerationJob;)V
    .locals 3
    .param p0, "notifJob"    # Lcom/onesignal/NotificationGenerationJob;

    .line 108
    iget-object v0, p0, Lcom/onesignal/NotificationGenerationJob;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/onesignal/GenerateNotification;->setStatics(Landroid/content/Context;)V

    .line 110
    iget-boolean v0, p0, Lcom/onesignal/NotificationGenerationJob;->restoring:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/onesignal/NotificationGenerationJob;->showAsAlert:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/onesignal/ActivityLifecycleHandler;->curActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/onesignal/NotificationGenerationJob;->jsonPayload:Lorg/json/JSONObject;

    sget-object v1, Lcom/onesignal/ActivityLifecycleHandler;->curActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/onesignal/NotificationGenerationJob;->getAndroidId()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/onesignal/GenerateNotification;->showNotificationAsAlert(Lorg/json/JSONObject;Landroid/app/Activity;I)V

    .line 112
    return-void

    .line 115
    :cond_0
    invoke-static {p0}, Lcom/onesignal/GenerateNotification;->showNotification(Lcom/onesignal/NotificationGenerationJob;)V

    .line 116
    return-void
.end method

.method private static getAccentColor(Lorg/json/JSONObject;)Ljava/math/BigInteger;
    .locals 4
    .param p0, "gcmBundle"    # Lorg/json/JSONObject;

    .line 1002
    const-string v0, "bgac"

    const/16 v1, 0x10

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1003
    new-instance v3, Ljava/math/BigInteger;

    invoke-virtual {p0, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v3

    .line 1004
    :catchall_0
    move-exception v0

    :cond_0
    nop

    .line 1007
    :try_start_1
    sget-object v0, Lcom/onesignal/GenerateNotification;->currentContext:Landroid/content/Context;

    const-string v3, "com.onesignal.NotificationAccentColor.DEFAULT"

    invoke-static {v0, v3}, Lcom/onesignal/OSUtils;->getManifestMeta(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1008
    .local v0, "defaultColor":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 1009
    new-instance v3, Ljava/math/BigInteger;

    invoke-direct {v3, v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v3

    .line 1008
    .end local v0    # "defaultColor":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 1010
    :catchall_1
    move-exception v0

    :goto_0
    nop

    .line 1012
    return-object v2
.end method

.method private static getBaseOneSignalNotificationBuilder(Lcom/onesignal/NotificationGenerationJob;)Lcom/onesignal/GenerateNotification$OneSignalNotificationBuilder;
    .locals 10
    .param p0, "notifJob"    # Lcom/onesignal/NotificationGenerationJob;

    .line 218
    const-string v0, "vis"

    iget-object v1, p0, Lcom/onesignal/NotificationGenerationJob;->jsonPayload:Lorg/json/JSONObject;

    .line 219
    .local v1, "gcmBundle":Lorg/json/JSONObject;
    new-instance v2, Lcom/onesignal/GenerateNotification$OneSignalNotificationBuilder;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/onesignal/GenerateNotification$OneSignalNotificationBuilder;-><init>(Lcom/onesignal/GenerateNotification$1;)V

    .line 223
    .local v2, "oneSignalNotificationBuilder":Lcom/onesignal/GenerateNotification$OneSignalNotificationBuilder;
    :try_start_0
    invoke-static {p0}, Lcom/onesignal/NotificationChannelManager;->createNotificationChannel(Lcom/onesignal/NotificationGenerationJob;)Ljava/lang/String;

    move-result-object v4

    .line 225
    .local v4, "channelId":Ljava/lang/String;
    new-instance v5, Landroidx/core/app/NotificationCompat$Builder;

    sget-object v6, Lcom/onesignal/GenerateNotification;->currentContext:Landroid/content/Context;

    invoke-direct {v5, v6, v4}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v5

    .line 228
    .local v4, "notifBuilder":Landroidx/core/app/NotificationCompat$Builder;
    goto :goto_0

    .line 226
    .end local v4    # "notifBuilder":Landroidx/core/app/NotificationCompat$Builder;
    :catchall_0
    move-exception v4

    .line 227
    .local v4, "t":Ljava/lang/Throwable;
    new-instance v5, Landroidx/core/app/NotificationCompat$Builder;

    sget-object v6, Lcom/onesignal/GenerateNotification;->currentContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    move-object v4, v5

    .line 230
    .local v4, "notifBuilder":Landroidx/core/app/NotificationCompat$Builder;
    :goto_0
    const-string v5, "alert"

    invoke-virtual {v1, v5, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 233
    .local v5, "message":Ljava/lang/String;
    nop

    .line 234
    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v7

    .line 235
    invoke-static {v1}, Lcom/onesignal/GenerateNotification;->getSmallIconId(Lorg/json/JSONObject;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v7

    new-instance v8, Landroidx/core/app/NotificationCompat$BigTextStyle;

    invoke-direct {v8}, Landroidx/core/app/NotificationCompat$BigTextStyle;-><init>()V

    .line 236
    invoke-virtual {v8, v5}, Landroidx/core/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$BigTextStyle;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v7

    .line 237
    invoke-virtual {v7, v5}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v7

    .line 238
    invoke-virtual {v7, v5}, Landroidx/core/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 242
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x18

    if-lt v7, v8, :cond_0

    .line 243
    const-string v7, "title"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 244
    :cond_0
    invoke-static {v1}, Lcom/onesignal/GenerateNotification;->getTitle(Lorg/json/JSONObject;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 247
    :cond_1
    :try_start_1
    invoke-static {v1}, Lcom/onesignal/GenerateNotification;->getAccentColor(Lorg/json/JSONObject;)Ljava/math/BigInteger;

    move-result-object v7

    .line 248
    .local v7, "accentColor":Ljava/math/BigInteger;
    if-eqz v7, :cond_2

    .line 249
    invoke-virtual {v7}, Ljava/math/BigInteger;->intValue()I

    move-result v8

    invoke-virtual {v4, v8}, Landroidx/core/app/NotificationCompat$Builder;->setColor(I)Landroidx/core/app/NotificationCompat$Builder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 250
    .end local v7    # "accentColor":Ljava/math/BigInteger;
    :catchall_1
    move-exception v7

    :cond_2
    :goto_1
    nop

    .line 253
    const/4 v7, 0x1

    .line 254
    .local v7, "lockScreenVisibility":I
    :try_start_2
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 255
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move v7, v0

    .line 256
    :cond_3
    invoke-virtual {v4, v7}, Landroidx/core/app/NotificationCompat$Builder;->setVisibility(I)Landroidx/core/app/NotificationCompat$Builder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 257
    nop

    .end local v7    # "lockScreenVisibility":I
    goto :goto_2

    :catchall_2
    move-exception v0

    .line 259
    :goto_2
    invoke-static {v1}, Lcom/onesignal/GenerateNotification;->getLargeIcon(Lorg/json/JSONObject;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 260
    .local v0, "largeIcon":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_4

    .line 261
    iput-boolean v6, v2, Lcom/onesignal/GenerateNotification$OneSignalNotificationBuilder;->hasLargeIcon:Z

    .line 262
    invoke-virtual {v4, v0}, Landroidx/core/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$Builder;

    .line 265
    :cond_4
    const-string v6, "bicon"

    invoke-virtual {v1, v6, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/onesignal/GenerateNotification;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 266
    .local v3, "bigPictureIcon":Landroid/graphics/Bitmap;
    if-eqz v3, :cond_5

    .line 267
    new-instance v6, Landroidx/core/app/NotificationCompat$BigPictureStyle;

    invoke-direct {v6}, Landroidx/core/app/NotificationCompat$BigPictureStyle;-><init>()V

    invoke-virtual {v6, v3}, Landroidx/core/app/NotificationCompat$BigPictureStyle;->bigPicture(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$BigPictureStyle;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroidx/core/app/NotificationCompat$BigPictureStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$BigPictureStyle;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    .line 269
    :cond_5
    iget-object v6, p0, Lcom/onesignal/NotificationGenerationJob;->shownTimeStamp:Ljava/lang/Long;

    if-eqz v6, :cond_6

    .line 271
    :try_start_3
    iget-object v6, p0, Lcom/onesignal/NotificationGenerationJob;->shownTimeStamp:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    mul-long v6, v6, v8

    invoke-virtual {v4, v6, v7}, Landroidx/core/app/NotificationCompat$Builder;->setWhen(J)Landroidx/core/app/NotificationCompat$Builder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_3

    .line 272
    :catchall_3
    move-exception v6

    .line 275
    :cond_6
    :goto_3
    invoke-static {v1, v4}, Lcom/onesignal/GenerateNotification;->setAlertnessOptions(Lorg/json/JSONObject;Landroidx/core/app/NotificationCompat$Builder;)V

    .line 277
    iput-object v4, v2, Lcom/onesignal/GenerateNotification$OneSignalNotificationBuilder;->compatBuilder:Landroidx/core/app/NotificationCompat$Builder;

    .line 278
    return-object v2
.end method

.method private static getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .line 934
    if-nez p0, :cond_0

    .line 935
    const/4 v0, 0x0

    return-object v0

    .line 936
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 938
    .local v0, "trimmedName":Ljava/lang/String;
    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 941
    :cond_1
    invoke-static {p0}, Lcom/onesignal/GenerateNotification;->getBitmapFromAssetsOrResourceName(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1

    .line 939
    :cond_2
    :goto_0
    invoke-static {v0}, Lcom/onesignal/GenerateNotification;->getBitmapFromURL(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method private static getBitmapFromAssetsOrResourceName(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "bitmapStr"    # Ljava/lang/String;

    .line 897
    const/4 v0, 0x0

    .line 900
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :try_start_0
    sget-object v1, Lcom/onesignal/GenerateNotification;->currentContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    goto :goto_0

    .line 901
    :catchall_0
    move-exception v1

    :goto_0
    nop

    .line 903
    if-eqz v0, :cond_0

    .line 904
    return-object v0

    .line 906
    :cond_0
    const/4 v1, 0x5

    :try_start_1
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, ".png"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, ".webp"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, ".jpg"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, ".gif"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, ".bmp"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 907
    .local v1, "image_extensions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 909
    .local v3, "extension":Ljava/lang/String;
    :try_start_2
    sget-object v4, Lcom/onesignal/GenerateNotification;->currentContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v0, v4

    goto :goto_2

    .line 910
    :catchall_1
    move-exception v4

    :goto_2
    nop

    .line 911
    if-eqz v0, :cond_1

    .line 912
    return-object v0

    .line 913
    .end local v3    # "extension":Ljava/lang/String;
    :cond_1
    goto :goto_1

    .line 915
    :cond_2
    :try_start_3
    invoke-static {p0}, Lcom/onesignal/GenerateNotification;->getResourceIcon(Ljava/lang/String;)I

    move-result v2

    .line 916
    .local v2, "bitmapId":I
    if-eqz v2, :cond_3

    .line 917
    sget-object v3, Lcom/onesignal/GenerateNotification;->contextResources:Landroid/content/res/Resources;

    invoke-static {v3, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    return-object v3

    .line 916
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "image_extensions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "bitmapId":I
    :cond_3
    goto :goto_3

    .line 918
    :catchall_2
    move-exception v0

    :goto_3
    nop

    .line 920
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getBitmapFromURL(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "location"    # Ljava/lang/String;

    .line 925
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 926
    :catchall_0
    move-exception v0

    .line 927
    .local v0, "t":Ljava/lang/Throwable;
    sget-object v1, Lcom/onesignal/OneSignal$LOG_LEVEL;->WARN:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v2, "Could not download image!"

    invoke-static {v1, v2, v0}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 930
    .end local v0    # "t":Ljava/lang/Throwable;
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getDefaultLargeIcon()Landroid/graphics/Bitmap;
    .locals 2

    .line 863
    const-string v0, "ic_onesignal_large_icon_default"

    invoke-static {v0}, Lcom/onesignal/GenerateNotification;->getBitmapFromAssetsOrResourceName(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 864
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/onesignal/GenerateNotification;->resizeBitmapForLargeIconArea(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method private static getDefaultSmallIconId()I
    .locals 2

    .line 973
    const-string v0, "ic_stat_onesignal_default"

    invoke-static {v0}, Lcom/onesignal/GenerateNotification;->getDrawableId(Ljava/lang/String;)I

    move-result v0

    .line 974
    .local v0, "notificationIcon":I
    if-eqz v0, :cond_0

    .line 975
    return v0

    .line 977
    :cond_0
    const-string v1, "corona_statusbar_icon_default"

    invoke-static {v1}, Lcom/onesignal/GenerateNotification;->getDrawableId(Ljava/lang/String;)I

    move-result v0

    .line 978
    if-eqz v0, :cond_1

    .line 979
    return v0

    .line 981
    :cond_1
    const-string v1, "ic_os_notification_fallback_white_24dp"

    invoke-static {v1}, Lcom/onesignal/GenerateNotification;->getDrawableId(Ljava/lang/String;)I

    move-result v0

    .line 982
    if-eqz v0, :cond_2

    .line 983
    return v0

    .line 985
    :cond_2
    const v1, 0x108005e

    return v1
.end method

.method private static getDrawableId(Ljava/lang/String;)I
    .locals 3
    .param p0, "name"    # Ljava/lang/String;

    .line 989
    sget-object v0, Lcom/onesignal/GenerateNotification;->contextResources:Landroid/content/res/Resources;

    sget-object v1, Lcom/onesignal/GenerateNotification;->packageName:Ljava/lang/String;

    const-string v2, "drawable"

    invoke-virtual {v0, p0, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static getLargeIcon(Lorg/json/JSONObject;)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "gcmBundle"    # Lorg/json/JSONObject;

    .line 852
    const-string v0, "licon"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/onesignal/GenerateNotification;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 853
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 854
    const-string v1, "ic_onesignal_large_icon_default"

    invoke-static {v1}, Lcom/onesignal/GenerateNotification;->getBitmapFromAssetsOrResourceName(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 856
    :cond_0
    if-nez v0, :cond_1

    .line 857
    const/4 v1, 0x0

    return-object v1

    .line 859
    :cond_1
    invoke-static {v0}, Lcom/onesignal/GenerateNotification;->resizeBitmapForLargeIconArea(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method private static getNewActionPendingIntent(ILandroid/content/Intent;)Landroid/app/PendingIntent;
    .locals 2
    .param p0, "requestCode"    # I
    .param p1, "intent"    # Landroid/content/Intent;

    .line 193
    sget-boolean v0, Lcom/onesignal/GenerateNotification;->openerIsBroadcast:Z

    const/high16 v1, 0x8000000

    if-eqz v0, :cond_0

    .line 194
    sget-object v0, Lcom/onesignal/GenerateNotification;->currentContext:Landroid/content/Context;

    invoke-static {v0, p0, p1, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0

    .line 195
    :cond_0
    sget-object v0, Lcom/onesignal/GenerateNotification;->currentContext:Landroid/content/Context;

    invoke-static {v0, p0, p1, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private static getNewBaseDeleteIntent(I)Landroid/content/Intent;
    .locals 3
    .param p0, "notificationId"    # I

    .line 208
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/onesignal/GenerateNotification;->currentContext:Landroid/content/Context;

    sget-object v2, Lcom/onesignal/GenerateNotification;->notificationOpenedClass:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 209
    const-string v1, "androidNotificationId"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 210
    const-string v1, "dismissed"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    .line 212
    .local v0, "intent":Landroid/content/Intent;
    sget-boolean v1, Lcom/onesignal/GenerateNotification;->openerIsBroadcast:Z

    if-eqz v1, :cond_0

    .line 213
    return-object v0

    .line 214
    :cond_0
    const/high16 v1, 0x18010000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    return-object v1
.end method

.method private static getNewBaseIntent(I)Landroid/content/Intent;
    .locals 3
    .param p0, "notificationId"    # I

    .line 199
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/onesignal/GenerateNotification;->currentContext:Landroid/content/Context;

    sget-object v2, Lcom/onesignal/GenerateNotification;->notificationOpenedClass:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 200
    const-string v1, "androidNotificationId"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 202
    .local v0, "intent":Landroid/content/Intent;
    sget-boolean v1, Lcom/onesignal/GenerateNotification;->openerIsBroadcast:Z

    if-eqz v1, :cond_0

    .line 203
    return-object v0

    .line 204
    :cond_0
    const/high16 v1, 0x24000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    return-object v1
.end method

.method private static getResourceIcon(Ljava/lang/String;)I
    .locals 5
    .param p0, "iconName"    # Ljava/lang/String;

    .line 945
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 946
    return v0

    .line 948
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 949
    .local v1, "trimmedIconName":Ljava/lang/String;
    invoke-static {v1}, Lcom/onesignal/OSUtils;->isValidResourceName(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 950
    return v0

    .line 952
    :cond_1
    invoke-static {v1}, Lcom/onesignal/GenerateNotification;->getDrawableId(Ljava/lang/String;)I

    move-result v2

    .line 953
    .local v2, "notificationIcon":I
    if-eqz v2, :cond_2

    .line 954
    return v2

    .line 958
    :cond_2
    :try_start_0
    const-class v3, Landroid/R$drawable;

    invoke-virtual {v3, p0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 959
    :catchall_0
    move-exception v3

    .line 961
    return v0
.end method

.method private static getSmallIconId(Lorg/json/JSONObject;)I
    .locals 2
    .param p0, "gcmBundle"    # Lorg/json/JSONObject;

    .line 965
    const-string v0, "sicon"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/onesignal/GenerateNotification;->getResourceIcon(Ljava/lang/String;)I

    move-result v0

    .line 966
    .local v0, "notificationIcon":I
    if-eqz v0, :cond_0

    .line 967
    return v0

    .line 969
    :cond_0
    invoke-static {}, Lcom/onesignal/GenerateNotification;->getDefaultSmallIconId()I

    move-result v1

    return v1
.end method

.method private static getTitle(Lorg/json/JSONObject;)Ljava/lang/CharSequence;
    .locals 3
    .param p0, "gcmBundle"    # Lorg/json/JSONObject;

    .line 184
    const-string v0, "title"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 186
    .local v0, "title":Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    .line 187
    return-object v0

    .line 189
    :cond_0
    sget-object v1, Lcom/onesignal/GenerateNotification;->currentContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    sget-object v2, Lcom/onesignal/GenerateNotification;->currentContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1
.end method

.method private static isSoundEnabled(Lorg/json/JSONObject;)Z
    .locals 2
    .param p0, "gcmBundle"    # Lorg/json/JSONObject;

    .line 993
    const-string v0, "sound"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 994
    .local v0, "sound":Ljava/lang/String;
    const-string v1, "null"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "nil"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 996
    :cond_0
    invoke-static {}, Lcom/onesignal/OneSignal;->getSoundEnabled()Z

    move-result v1

    return v1

    .line 995
    :cond_1
    :goto_0
    const/4 v1, 0x0

    return v1
.end method

.method private static removeNotifyOptions(Landroidx/core/app/NotificationCompat$Builder;)V
    .locals 2
    .param p0, "builder"    # Landroidx/core/app/NotificationCompat$Builder;

    .line 327
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/core/app/NotificationCompat$Builder;->setOnlyAlertOnce(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 328
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setDefaults(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 329
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 330
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setVibrate([J)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 331
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 332
    return-void
.end method

.method private static resizeBitmapForLargeIconArea(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .line 869
    if-nez p0, :cond_0

    .line 870
    const/4 v0, 0x0

    return-object v0

    .line 873
    :cond_0
    :try_start_0
    sget-object v0, Lcom/onesignal/GenerateNotification;->contextResources:Landroid/content/res/Resources;

    const v1, 0x1050006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 874
    .local v0, "systemLargeIconHeight":I
    sget-object v1, Lcom/onesignal/GenerateNotification;->contextResources:Landroid/content/res/Resources;

    const v2, 0x1050005

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    .line 875
    .local v1, "systemLargeIconWidth":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 876
    .local v2, "bitmapHeight":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 878
    .local v3, "bitmapWidth":I
    if-gt v3, v1, :cond_2

    if-le v2, v0, :cond_1

    goto :goto_0

    .end local v0    # "systemLargeIconHeight":I
    .end local v1    # "systemLargeIconWidth":I
    .end local v2    # "bitmapHeight":I
    .end local v3    # "bitmapWidth":I
    :cond_1
    goto :goto_3

    .line 879
    .restart local v0    # "systemLargeIconHeight":I
    .restart local v1    # "systemLargeIconWidth":I
    .restart local v2    # "bitmapHeight":I
    .restart local v3    # "bitmapWidth":I
    :cond_2
    :goto_0
    move v4, v1

    .local v4, "newWidth":I
    move v5, v0

    .line 880
    .local v5, "newHeight":I
    if-le v2, v3, :cond_3

    .line 881
    int-to-float v6, v3

    int-to-float v7, v2

    div-float/2addr v6, v7

    .line 882
    .local v6, "ratio":F
    int-to-float v7, v5

    mul-float v7, v7, v6

    float-to-int v4, v7

    .end local v6    # "ratio":F
    goto :goto_1

    .line 883
    :cond_3
    if-le v3, v2, :cond_4

    .line 884
    int-to-float v6, v2

    int-to-float v7, v3

    div-float/2addr v6, v7

    .line 885
    .restart local v6    # "ratio":F
    int-to-float v7, v4

    mul-float v7, v7, v6

    float-to-int v5, v7

    goto :goto_2

    .line 883
    .end local v6    # "ratio":F
    :cond_4
    :goto_1
    nop

    .line 888
    :goto_2
    const/4 v6, 0x1

    invoke-static {p0, v4, v5, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v6

    .line 890
    .end local v0    # "systemLargeIconHeight":I
    .end local v1    # "systemLargeIconWidth":I
    .end local v2    # "bitmapHeight":I
    .end local v3    # "bitmapWidth":I
    .end local v4    # "newWidth":I
    .end local v5    # "newHeight":I
    :catchall_0
    move-exception v0

    :goto_3
    nop

    .line 892
    return-object p0
.end method

.method private static safeGetColorFromHex(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 3
    .param p0, "gcmBundle"    # Lorg/json/JSONObject;
    .param p1, "colorKey"    # Ljava/lang/String;

    .line 844
    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 845
    new-instance v0, Ljava/math/BigInteger;

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 847
    :catchall_0
    move-exception v0

    :cond_0
    nop

    .line 848
    const/4 v0, 0x0

    return-object v0
.end method

.method private static setAlertnessOptions(Lorg/json/JSONObject;Landroidx/core/app/NotificationCompat$Builder;)V
    .locals 9
    .param p0, "gcmBundle"    # Lorg/json/JSONObject;
    .param p1, "notifBuilder"    # Landroidx/core/app/NotificationCompat$Builder;

    .line 283
    const-string v0, "pri"

    const/4 v1, 0x6

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 284
    .local v0, "payloadPriority":I
    invoke-static {v0}, Lcom/onesignal/GenerateNotification;->convertOSToAndroidPriority(I)I

    move-result v1

    .line 285
    .local v1, "androidPriority":I
    invoke-virtual {p1, v1}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 286
    const/4 v2, 0x1

    if-gez v1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 289
    .local v3, "lowDisplayPriority":Z
    :goto_0
    if-eqz v3, :cond_1

    .line 290
    return-void

    .line 292
    :cond_1
    const/4 v4, 0x0

    .line 294
    .local v4, "notificationDefaults":I
    const-string v5, "ledc"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "led"

    invoke-virtual {p0, v6, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v2, :cond_2

    .line 296
    :try_start_0
    new-instance v6, Ljava/math/BigInteger;

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/16 v7, 0x10

    invoke-direct {v6, v5, v7}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    move-object v5, v6

    .line 297
    .local v5, "ledColor":Ljava/math/BigInteger;
    invoke-virtual {v5}, Ljava/math/BigInteger;->intValue()I

    move-result v6

    const/16 v7, 0x7d0

    const/16 v8, 0x1388

    invoke-virtual {p1, v6, v7, v8}, Landroidx/core/app/NotificationCompat$Builder;->setLights(III)Landroidx/core/app/NotificationCompat$Builder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 300
    nop

    .end local v5    # "ledColor":Ljava/math/BigInteger;
    goto :goto_1

    .line 298
    :catchall_0
    move-exception v5

    .line 299
    .local v5, "t":Ljava/lang/Throwable;
    or-int/lit8 v4, v4, 0x4

    .line 300
    .end local v5    # "t":Ljava/lang/Throwable;
    goto :goto_1

    .line 303
    :cond_2
    or-int/lit8 v4, v4, 0x4

    .line 305
    :goto_1
    invoke-static {}, Lcom/onesignal/OneSignal;->getVibrate()Z

    move-result v5

    if-eqz v5, :cond_5

    const-string v5, "vib"

    invoke-virtual {p0, v5, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v2, :cond_5

    .line 306
    const-string v2, "vib_pt"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 307
    invoke-static {p0}, Lcom/onesignal/OSUtils;->parseVibrationPattern(Lorg/json/JSONObject;)[J

    move-result-object v2

    .line 308
    .local v2, "vibrationPattern":[J
    if-eqz v2, :cond_3

    .line 309
    invoke-virtual {p1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setVibrate([J)Landroidx/core/app/NotificationCompat$Builder;

    .line 310
    .end local v2    # "vibrationPattern":[J
    :cond_3
    goto :goto_2

    .line 312
    :cond_4
    or-int/lit8 v4, v4, 0x2

    .line 315
    :cond_5
    :goto_2
    invoke-static {p0}, Lcom/onesignal/GenerateNotification;->isSoundEnabled(Lorg/json/JSONObject;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 316
    sget-object v2, Lcom/onesignal/GenerateNotification;->currentContext:Landroid/content/Context;

    const/4 v5, 0x0

    const-string v6, "sound"

    invoke-virtual {p0, v6, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/onesignal/OSUtils;->getSoundUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 317
    .local v2, "soundUri":Landroid/net/Uri;
    if-eqz v2, :cond_6

    .line 318
    invoke-virtual {p1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;)Landroidx/core/app/NotificationCompat$Builder;

    goto :goto_3

    .line 320
    :cond_6
    or-int/lit8 v4, v4, 0x1

    .line 323
    .end local v2    # "soundUri":Landroid/net/Uri;
    :cond_7
    :goto_3
    invoke-virtual {p1, v4}, Landroidx/core/app/NotificationCompat$Builder;->setDefaults(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 324
    return-void
.end method

.method private static setStatics(Landroid/content/Context;)V
    .locals 4
    .param p0, "inContext"    # Landroid/content/Context;

    .line 92
    sput-object p0, Lcom/onesignal/GenerateNotification;->currentContext:Landroid/content/Context;

    .line 93
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/onesignal/GenerateNotification;->packageName:Ljava/lang/String;

    .line 94
    sget-object v0, Lcom/onesignal/GenerateNotification;->currentContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sput-object v0, Lcom/onesignal/GenerateNotification;->contextResources:Landroid/content/res/Resources;

    .line 96
    sget-object v0, Lcom/onesignal/GenerateNotification;->currentContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 97
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lcom/onesignal/GenerateNotification;->currentContext:Landroid/content/Context;

    const-class v3, Lcom/onesignal/NotificationOpenedReceiver;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 98
    .local v1, "intent":Landroid/content/Intent;
    sget-object v2, Lcom/onesignal/GenerateNotification;->currentContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 99
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 100
    const/4 v2, 0x1

    sput-boolean v2, Lcom/onesignal/GenerateNotification;->openerIsBroadcast:Z

    .line 101
    const-class v2, Lcom/onesignal/NotificationOpenedReceiver;

    sput-object v2, Lcom/onesignal/GenerateNotification;->notificationOpenedClass:Ljava/lang/Class;

    goto :goto_0

    .line 104
    :cond_0
    const-class v2, Lcom/onesignal/NotificationOpenedActivity;

    sput-object v2, Lcom/onesignal/GenerateNotification;->notificationOpenedClass:Ljava/lang/Class;

    .line 105
    :goto_0
    return-void
.end method

.method private static setTextColor(Landroid/widget/RemoteViews;Lorg/json/JSONObject;ILjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "customView"    # Landroid/widget/RemoteViews;
    .param p1, "gcmBundle"    # Lorg/json/JSONObject;
    .param p2, "viewId"    # I
    .param p3, "colorPayloadKey"    # Ljava/lang/String;
    .param p4, "colorDefaultResource"    # Ljava/lang/String;

    .line 832
    invoke-static {p1, p3}, Lcom/onesignal/GenerateNotification;->safeGetColorFromHex(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 833
    .local v0, "color":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 834
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, p2, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    goto :goto_0

    .line 836
    :cond_0
    sget-object v1, Lcom/onesignal/GenerateNotification;->contextResources:Landroid/content/res/Resources;

    sget-object v2, Lcom/onesignal/GenerateNotification;->packageName:Ljava/lang/String;

    const-string v3, "color"

    invoke-virtual {v1, p4, v3, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 837
    .local v1, "colorId":I
    if-eqz v1, :cond_1

    .line 838
    sget-object v2, Lcom/onesignal/GenerateNotification;->currentContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/onesignal/AndroidSupportV4Compat$ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {p0, p2, v2}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 840
    .end local v1    # "colorId":I
    :cond_1
    :goto_0
    return-void
.end method

.method private static showNotification(Lcom/onesignal/NotificationGenerationJob;)V
    .locals 10
    .param p0, "notifJob"    # Lcom/onesignal/NotificationGenerationJob;

    .line 336
    invoke-virtual {p0}, Lcom/onesignal/NotificationGenerationJob;->getAndroidId()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 337
    .local v0, "notificationId":I
    iget-object v1, p0, Lcom/onesignal/NotificationGenerationJob;->jsonPayload:Lorg/json/JSONObject;

    .line 338
    .local v1, "gcmBundle":Lorg/json/JSONObject;
    const-string v2, "grp"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 340
    .local v2, "group":Ljava/lang/String;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 341
    .local v4, "grouplessNotifs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/notification/StatusBarNotification;>;"
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x18

    if-lt v5, v6, :cond_0

    .line 344
    sget-object v5, Lcom/onesignal/GenerateNotification;->currentContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/onesignal/OneSignalNotificationManager;->getActiveGrouplessNotifications(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v4

    .line 346
    if-nez v2, :cond_0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v7, 0x3

    if-lt v5, v7, :cond_0

    .line 347
    invoke-static {}, Lcom/onesignal/OneSignalNotificationManager;->getGrouplessSummaryKey()Ljava/lang/String;

    move-result-object v2

    .line 348
    sget-object v5, Lcom/onesignal/GenerateNotification;->currentContext:Landroid/content/Context;

    invoke-static {v5, v4}, Lcom/onesignal/OneSignalNotificationManager;->assignGrouplessNotifications(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 352
    :cond_0
    invoke-static {p0}, Lcom/onesignal/GenerateNotification;->getBaseOneSignalNotificationBuilder(Lcom/onesignal/NotificationGenerationJob;)Lcom/onesignal/GenerateNotification$OneSignalNotificationBuilder;

    move-result-object v5

    .line 353
    .local v5, "oneSignalNotificationBuilder":Lcom/onesignal/GenerateNotification$OneSignalNotificationBuilder;
    iget-object v7, v5, Lcom/onesignal/GenerateNotification$OneSignalNotificationBuilder;->compatBuilder:Landroidx/core/app/NotificationCompat$Builder;

    .line 355
    .local v7, "notifBuilder":Landroidx/core/app/NotificationCompat$Builder;
    invoke-static {v1, v7, v0, v3}, Lcom/onesignal/GenerateNotification;->addNotificationActionButtons(Lorg/json/JSONObject;Landroidx/core/app/NotificationCompat$Builder;ILjava/lang/String;)V

    .line 358
    :try_start_0
    invoke-static {v1, v7}, Lcom/onesignal/GenerateNotification;->addBackgroundImage(Lorg/json/JSONObject;Landroidx/core/app/NotificationCompat$Builder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 361
    goto :goto_0

    .line 359
    :catchall_0
    move-exception v3

    .line 360
    .local v3, "t":Ljava/lang/Throwable;
    sget-object v8, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v9, "Could not set background notification image!"

    invoke-static {v8, v9, v3}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 363
    .end local v3    # "t":Ljava/lang/Throwable;
    :goto_0
    invoke-static {p0, v7}, Lcom/onesignal/GenerateNotification;->applyNotificationExtender(Lcom/onesignal/NotificationGenerationJob;Landroidx/core/app/NotificationCompat$Builder;)V

    .line 366
    iget-boolean v3, p0, Lcom/onesignal/NotificationGenerationJob;->restoring:Z

    if-eqz v3, :cond_1

    .line 367
    invoke-static {v7}, Lcom/onesignal/GenerateNotification;->removeNotifyOptions(Landroidx/core/app/NotificationCompat$Builder;)V

    .line 369
    :cond_1
    const/4 v3, 0x1

    .line 370
    .local v3, "makeRoomFor":I
    if-eqz v2, :cond_2

    .line 371
    const/4 v3, 0x2

    .line 372
    :cond_2
    sget-object v8, Lcom/onesignal/GenerateNotification;->currentContext:Landroid/content/Context;

    invoke-static {v8, v3}, Lcom/onesignal/NotificationLimitManager;->clearOldestOverLimit(Landroid/content/Context;I)V

    .line 375
    if-eqz v2, :cond_4

    .line 376
    invoke-static {v7, v1, v2, v0}, Lcom/onesignal/GenerateNotification;->createGenericPendingIntentsForGroup(Landroidx/core/app/NotificationCompat$Builder;Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 377
    invoke-static {p0, v7}, Lcom/onesignal/GenerateNotification;->createSingleNotificationBeforeSummaryBuilder(Lcom/onesignal/NotificationGenerationJob;Landroidx/core/app/NotificationCompat$Builder;)Landroid/app/Notification;

    move-result-object v8

    .line 380
    .local v8, "notification":Landroid/app/Notification;
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v9, v6, :cond_3

    .line 381
    invoke-static {}, Lcom/onesignal/OneSignalNotificationManager;->getGrouplessSummaryKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 382
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-static {p0, v6}, Lcom/onesignal/GenerateNotification;->createGrouplessSummaryNotification(Lcom/onesignal/NotificationGenerationJob;I)V

    goto :goto_1

    .line 384
    :cond_3
    invoke-static {p0, v5}, Lcom/onesignal/GenerateNotification;->createSummaryNotification(Lcom/onesignal/NotificationGenerationJob;Lcom/onesignal/GenerateNotification$OneSignalNotificationBuilder;)V

    goto :goto_1

    .line 387
    .end local v8    # "notification":Landroid/app/Notification;
    :cond_4
    invoke-static {v7, v1, v0}, Lcom/onesignal/GenerateNotification;->createGenericPendingIntentsForNotif(Landroidx/core/app/NotificationCompat$Builder;Lorg/json/JSONObject;I)Landroid/app/Notification;

    move-result-object v8

    .line 395
    .restart local v8    # "notification":Landroid/app/Notification;
    :goto_1
    if-eqz v2, :cond_5

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x11

    if-le v6, v9, :cond_6

    .line 396
    :cond_5
    invoke-static {v5, v8}, Lcom/onesignal/GenerateNotification;->addXiaomiSettings(Lcom/onesignal/GenerateNotification$OneSignalNotificationBuilder;Landroid/app/Notification;)V

    .line 397
    sget-object v6, Lcom/onesignal/GenerateNotification;->currentContext:Landroid/content/Context;

    invoke-static {v6}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object v6

    invoke-virtual {v6, v0, v8}, Landroidx/core/app/NotificationManagerCompat;->notify(ILandroid/app/Notification;)V

    .line 399
    :cond_6
    return-void
.end method

.method private static showNotificationAsAlert(Lorg/json/JSONObject;Landroid/app/Activity;I)V
    .locals 1
    .param p0, "gcmJson"    # Lorg/json/JSONObject;
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "notificationId"    # I

    .line 119
    new-instance v0, Lcom/onesignal/GenerateNotification$1;

    invoke-direct {v0, p1, p0, p2}, Lcom/onesignal/GenerateNotification$1;-><init>(Landroid/app/Activity;Lorg/json/JSONObject;I)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 181
    return-void
.end method

.method static updateSummaryNotification(Lcom/onesignal/NotificationGenerationJob;)V
    .locals 1
    .param p0, "notifJob"    # Lcom/onesignal/NotificationGenerationJob;

    .line 506
    iget-object v0, p0, Lcom/onesignal/NotificationGenerationJob;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/onesignal/GenerateNotification;->setStatics(Landroid/content/Context;)V

    .line 507
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/onesignal/GenerateNotification;->createSummaryNotification(Lcom/onesignal/NotificationGenerationJob;Lcom/onesignal/GenerateNotification$OneSignalNotificationBuilder;)V

    .line 508
    return-void
.end method
