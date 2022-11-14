.class public Lcom/app/tmyclean/notification/NotificationExtenderExample;
.super Lcom/onesignal/NotificationExtenderService;
.source "NotificationExtenderExample.java"


# static fields
.field public static final NOTIFICATION_ID:I = 0x1


# instance fields
.field private NOTIFICATION_CHANNEL_ID:Ljava/lang/String;

.field bigpicture:Ljava/lang/String;

.field cname:Ljava/lang/String;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field message:Ljava/lang/String;

.field nid:J

.field title:Ljava/lang/String;

.field url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Lcom/onesignal/NotificationExtenderService;-><init>()V

    .line 34
    const-string v0, "ecommerce_channel_01"

    iput-object v0, p0, Lcom/app/tmyclean/notification/NotificationExtenderExample;->NOTIFICATION_CHANNEL_ID:Ljava/lang/String;

    return-void
.end method

.method public static getBitmapFromURL(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4
    .param p0, "src"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "src"
        }
    .end annotation

    .line 122
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 123
    .local v0, "url":Ljava/net/URL;
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    .line 124
    .local v1, "connection":Ljava/net/HttpURLConnection;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 125
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    .line 126
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 127
    .local v2, "input":Ljava/io/InputStream;
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 128
    .end local v0    # "url":Ljava/net/URL;
    .end local v1    # "connection":Ljava/net/HttpURLConnection;
    .end local v2    # "input":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 130
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    return-object v1
.end method

.method private getColour()I
    .locals 1

    .line 117
    const v0, 0x3f51b5

    return v0
.end method

.method private getNotificationIcon(Landroidx/core/app/NotificationCompat$Builder;)I
    .locals 3
    .param p1, "notificationBuilder"    # Landroidx/core/app/NotificationCompat$Builder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "notificationBuilder"
        }
    .end annotation

    .line 108
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const v1, 0x7f070098

    const/16 v2, 0x15

    if-lt v0, v2, :cond_0

    .line 109
    invoke-direct {p0}, Lcom/app/tmyclean/notification/NotificationExtenderExample;->getColour()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/core/app/NotificationCompat$Builder;->setColor(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 110
    return v1

    .line 112
    :cond_0
    return v1
.end method

.method private sendNotification()V
    .locals 8

    .line 56
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/app/tmyclean/notification/NotificationExtenderExample;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/app/tmyclean/notification/NotificationExtenderExample;->mNotificationManager:Landroid/app/NotificationManager;

    .line 59
    iget-wide v0, p0, Lcom/app/tmyclean/notification/NotificationExtenderExample;->nid:J

    const-string v2, "cname"

    const-string v3, "external_link"

    const-string v4, "nid"

    const-wide/16 v5, 0x0

    cmp-long v7, v0, v5

    if-nez v7, :cond_0

    iget-object v0, p0, Lcom/app/tmyclean/notification/NotificationExtenderExample;->url:Ljava/lang/String;

    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/app/tmyclean/notification/NotificationExtenderExample;->url:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/app/tmyclean/activities/ActivitySplash;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 61
    .local v0, "intent":Landroid/content/Intent;
    iget-wide v5, p0, Lcom/app/tmyclean/notification/NotificationExtenderExample;->nid:J

    invoke-virtual {v0, v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 62
    iget-object v1, p0, Lcom/app/tmyclean/notification/NotificationExtenderExample;->url:Ljava/lang/String;

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 63
    iget-object v1, p0, Lcom/app/tmyclean/notification/NotificationExtenderExample;->cname:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 65
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/app/tmyclean/activities/ActivitySplash;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 66
    .restart local v0    # "intent":Landroid/content/Intent;
    iget-wide v5, p0, Lcom/app/tmyclean/notification/NotificationExtenderExample;->nid:J

    invoke-virtual {v0, v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 67
    iget-object v1, p0, Lcom/app/tmyclean/notification/NotificationExtenderExample;->url:Ljava/lang/String;

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    iget-object v1, p0, Lcom/app/tmyclean/notification/NotificationExtenderExample;->cname:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 72
    :goto_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_1

    .line 73
    const-string v1, "Ecommerce Android App Channel"

    .line 74
    .local v1, "name":Ljava/lang/CharSequence;
    const/4 v2, 0x4

    .line 75
    .local v2, "importance":I
    new-instance v3, Landroid/app/NotificationChannel;

    iget-object v4, p0, Lcom/app/tmyclean/notification/NotificationExtenderExample;->NOTIFICATION_CHANNEL_ID:Ljava/lang/String;

    invoke-direct {v3, v4, v1, v2}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 76
    .local v3, "mChannel":Landroid/app/NotificationChannel;
    iget-object v4, p0, Lcom/app/tmyclean/notification/NotificationExtenderExample;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v4, v3}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 79
    .end local v1    # "name":Ljava/lang/CharSequence;
    .end local v2    # "importance":I
    .end local v3    # "mChannel":Landroid/app/NotificationChannel;
    :cond_1
    const/4 v1, 0x0

    const/high16 v2, 0x8000000

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 80
    .local v1, "contentIntent":Landroid/app/PendingIntent;
    const/4 v2, 0x2

    invoke-static {v2}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v2

    .line 81
    .local v2, "uri":Landroid/net/Uri;
    new-instance v3, Landroidx/core/app/NotificationCompat$Builder;

    iget-object v4, p0, Lcom/app/tmyclean/notification/NotificationExtenderExample;->NOTIFICATION_CHANNEL_ID:Ljava/lang/String;

    invoke-direct {v3, p0, v4}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0}, Lcom/app/tmyclean/notification/NotificationExtenderExample;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f07008f

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/core/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v3

    .line 83
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v3

    .line 84
    invoke-virtual {v3, v2}, Landroidx/core/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v3

    .line 85
    invoke-virtual {v3, v4}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v3

    iget-object v5, p0, Lcom/app/tmyclean/notification/NotificationExtenderExample;->NOTIFICATION_CHANNEL_ID:Ljava/lang/String;

    .line 86
    invoke-virtual {v3, v5}, Landroidx/core/app/NotificationCompat$Builder;->setChannelId(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v3

    const/high16 v5, -0x10000

    .line 87
    const/16 v6, 0x320

    invoke-virtual {v3, v5, v6, v6}, Landroidx/core/app/NotificationCompat$Builder;->setLights(III)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v3

    .line 89
    .local v3, "mBuilder":Landroidx/core/app/NotificationCompat$Builder;
    invoke-direct {p0, v3}, Lcom/app/tmyclean/notification/NotificationExtenderExample;->getNotificationIcon(Landroidx/core/app/NotificationCompat$Builder;)I

    move-result v5

    invoke-virtual {v3, v5}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 91
    iget-object v5, p0, Lcom/app/tmyclean/notification/NotificationExtenderExample;->title:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 92
    iget-object v5, p0, Lcom/app/tmyclean/notification/NotificationExtenderExample;->message:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroidx/core/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 94
    iget-object v5, p0, Lcom/app/tmyclean/notification/NotificationExtenderExample;->bigpicture:Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 95
    new-instance v5, Landroidx/core/app/NotificationCompat$BigPictureStyle;

    invoke-direct {v5}, Landroidx/core/app/NotificationCompat$BigPictureStyle;-><init>()V

    iget-object v6, p0, Lcom/app/tmyclean/notification/NotificationExtenderExample;->bigpicture:Ljava/lang/String;

    invoke-static {v6}, Lcom/app/tmyclean/notification/NotificationExtenderExample;->getBitmapFromURL(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroidx/core/app/NotificationCompat$BigPictureStyle;->bigPicture(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$BigPictureStyle;

    move-result-object v5

    iget-object v6, p0, Lcom/app/tmyclean/notification/NotificationExtenderExample;->message:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroidx/core/app/NotificationCompat$BigPictureStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$BigPictureStyle;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    .line 96
    iget-object v5, p0, Lcom/app/tmyclean/notification/NotificationExtenderExample;->message:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    goto :goto_1

    .line 98
    :cond_2
    new-instance v5, Landroidx/core/app/NotificationCompat$BigTextStyle;

    invoke-direct {v5}, Landroidx/core/app/NotificationCompat$BigTextStyle;-><init>()V

    iget-object v6, p0, Lcom/app/tmyclean/notification/NotificationExtenderExample;->message:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroidx/core/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$BigTextStyle;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    .line 99
    iget-object v5, p0, Lcom/app/tmyclean/notification/NotificationExtenderExample;->message:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 102
    :goto_1
    invoke-virtual {v3, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 103
    iget-object v5, p0, Lcom/app/tmyclean/notification/NotificationExtenderExample;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v3}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 104
    return-void
.end method


# virtual methods
.method protected onNotificationProcessing(Lcom/onesignal/OSNotificationReceivedResult;)Z
    .locals 2
    .param p1, "receivedResult"    # Lcom/onesignal/OSNotificationReceivedResult;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "receivedResult"
        }
    .end annotation

    .line 39
    iget-object v0, p1, Lcom/onesignal/OSNotificationReceivedResult;->payload:Lcom/onesignal/OSNotificationPayload;

    iget-object v0, v0, Lcom/onesignal/OSNotificationPayload;->title:Ljava/lang/String;

    iput-object v0, p0, Lcom/app/tmyclean/notification/NotificationExtenderExample;->title:Ljava/lang/String;

    .line 40
    iget-object v0, p1, Lcom/onesignal/OSNotificationReceivedResult;->payload:Lcom/onesignal/OSNotificationPayload;

    iget-object v0, v0, Lcom/onesignal/OSNotificationPayload;->body:Ljava/lang/String;

    iput-object v0, p0, Lcom/app/tmyclean/notification/NotificationExtenderExample;->message:Ljava/lang/String;

    .line 41
    iget-object v0, p1, Lcom/onesignal/OSNotificationReceivedResult;->payload:Lcom/onesignal/OSNotificationPayload;

    iget-object v0, v0, Lcom/onesignal/OSNotificationPayload;->bigPicture:Ljava/lang/String;

    iput-object v0, p0, Lcom/app/tmyclean/notification/NotificationExtenderExample;->bigpicture:Ljava/lang/String;

    .line 44
    :try_start_0
    iget-object v0, p1, Lcom/onesignal/OSNotificationReceivedResult;->payload:Lcom/onesignal/OSNotificationPayload;

    iget-object v0, v0, Lcom/onesignal/OSNotificationPayload;->additionalData:Lorg/json/JSONObject;

    const-string v1, "cat_id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/app/tmyclean/notification/NotificationExtenderExample;->nid:J

    .line 45
    iget-object v0, p1, Lcom/onesignal/OSNotificationReceivedResult;->payload:Lcom/onesignal/OSNotificationPayload;

    iget-object v0, v0, Lcom/onesignal/OSNotificationPayload;->additionalData:Lorg/json/JSONObject;

    const-string v1, "cat_name"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/app/tmyclean/notification/NotificationExtenderExample;->cname:Ljava/lang/String;

    .line 46
    iget-object v0, p1, Lcom/onesignal/OSNotificationReceivedResult;->payload:Lcom/onesignal/OSNotificationPayload;

    iget-object v0, v0, Lcom/onesignal/OSNotificationPayload;->additionalData:Lorg/json/JSONObject;

    const-string v1, "external_link"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/app/tmyclean/notification/NotificationExtenderExample;->url:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    goto :goto_0

    .line 47
    :catch_0
    move-exception v0

    .line 48
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 51
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    invoke-direct {p0}, Lcom/app/tmyclean/notification/NotificationExtenderExample;->sendNotification()V

    .line 52
    const/4 v0, 0x1

    return v0
.end method
