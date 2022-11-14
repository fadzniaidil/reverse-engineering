.class public Lcom/app/tmyclean/notification/MyFirebaseMessagingService;
.super Lcom/google/firebase/messaging/FirebaseMessagingService;
.source "MyFirebaseMessagingService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "E-Commerce Android App"


# instance fields
.field NOTIFICATION_CHANNEL_ID:Ljava/lang/String;

.field private preferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Lcom/google/firebase/messaging/FirebaseMessagingService;-><init>()V

    .line 23
    const-string v0, "ecommerce_channel_001"

    iput-object v0, p0, Lcom/app/tmyclean/notification/MyFirebaseMessagingService;->NOTIFICATION_CHANNEL_ID:Ljava/lang/String;

    return-void
.end method

.method private sendNotification(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "messageBody"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "title",
            "messageBody"
        }
    .end annotation

    .line 49
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/app/tmyclean/activities/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 50
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 51
    const/4 v1, 0x0

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 54
    .local v2, "pendingIntent":Landroid/app/PendingIntent;
    const/4 v3, 0x2

    invoke-static {v3}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v3

    .line 55
    .local v3, "defaultSoundUri":Landroid/net/Uri;
    new-instance v4, Landroidx/core/app/NotificationCompat$Builder;

    iget-object v5, p0, Lcom/app/tmyclean/notification/MyFirebaseMessagingService;->NOTIFICATION_CHANNEL_ID:Ljava/lang/String;

    invoke-direct {v4, p0, v5}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 56
    const/high16 v5, 0x7f0d0000

    invoke-virtual {v4, v5}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v4

    .line 57
    invoke-virtual {v4, p1}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v4

    .line 58
    invoke-virtual {v4, p2}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v4

    .line 59
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v4

    .line 60
    invoke-virtual {v4, v3}, Landroidx/core/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v4

    .line 61
    invoke-virtual {v4, v2}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v4

    .line 63
    .local v4, "notificationBuilder":Landroidx/core/app/NotificationCompat$Builder;
    nop

    .line 64
    const-string v5, "notification"

    invoke-virtual {p0, v5}, Lcom/app/tmyclean/notification/MyFirebaseMessagingService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationManager;

    .line 66
    .local v5, "notificationManager":Landroid/app/NotificationManager;
    invoke-virtual {v4}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v6

    invoke-virtual {v5, v1, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 67
    return-void
.end method


# virtual methods
.method public onMessageReceived(Lcom/google/firebase/messaging/RemoteMessage;)V
    .locals 3
    .param p1, "remoteMessage"    # Lcom/google/firebase/messaging/RemoteMessage;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "remoteMessage"
        }
    .end annotation

    .line 37
    invoke-virtual {p0}, Lcom/app/tmyclean/notification/MyFirebaseMessagingService;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/app/tmyclean/notification/MyFirebaseMessagingService;->preferences:Landroid/content/SharedPreferences;

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "From: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/firebase/messaging/RemoteMessage;->getFrom()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "E-Commerce Android App"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Notification Message Body: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/firebase/messaging/RemoteMessage;->getNotification()Lcom/google/firebase/messaging/RemoteMessage$Notification;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firebase/messaging/RemoteMessage$Notification;->getBody()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    invoke-virtual {p1}, Lcom/google/firebase/messaging/RemoteMessage;->getNotification()Lcom/google/firebase/messaging/RemoteMessage$Notification;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/messaging/RemoteMessage$Notification;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/firebase/messaging/RemoteMessage;->getNotification()Lcom/google/firebase/messaging/RemoteMessage$Notification;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/messaging/RemoteMessage$Notification;->getBody()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/app/tmyclean/notification/MyFirebaseMessagingService;->sendNotification(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public onNewToken(Ljava/lang/String;)V
    .locals 2
    .param p1, "token"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "token"
        }
    .end annotation

    .line 27
    invoke-super {p0, p1}, Lcom/google/firebase/messaging/FirebaseMessagingService;->onNewToken(Ljava/lang/String;)V

    .line 28
    invoke-virtual {p0}, Lcom/app/tmyclean/notification/MyFirebaseMessagingService;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/app/tmyclean/notification/MyFirebaseMessagingService;->preferences:Landroid/content/SharedPreferences;

    .line 29
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 30
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "fcm_token"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 31
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 32
    return-void
.end method
