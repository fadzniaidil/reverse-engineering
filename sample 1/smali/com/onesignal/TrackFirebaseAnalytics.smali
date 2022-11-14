.class Lcom/onesignal/TrackFirebaseAnalytics;
.super Ljava/lang/Object;
.source "TrackFirebaseAnalytics.java"


# static fields
.field private static final EVENT_NOTIFICATION_INFLUENCE_OPEN:Ljava/lang/String; = "os_notification_influence_open"

.field private static final EVENT_NOTIFICATION_OPENED:Ljava/lang/String; = "os_notification_opened"

.field private static final EVENT_NOTIFICATION_RECEIVED:Ljava/lang/String; = "os_notification_received"

.field private static FirebaseAnalyticsClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static lastOpenedTime:Ljava/util/concurrent/atomic/AtomicLong;

.field private static lastReceivedPayload:Lcom/onesignal/OSNotificationPayload;

.field private static lastReceivedTime:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field private appContext:Landroid/content/Context;

.field private mFirebaseAnalyticsInstance:Ljava/lang/Object;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "activity"    # Landroid/content/Context;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/onesignal/TrackFirebaseAnalytics;->appContext:Landroid/content/Context;

    .line 53
    return-void
.end method

.method static CanTrack()Z
    .locals 2

    .line 57
    :try_start_0
    const-string v0, "com.google.firebase.analytics.FirebaseAnalytics"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/onesignal/TrackFirebaseAnalytics;->FirebaseAnalyticsClass:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    const/4 v0, 0x1

    return v0

    .line 59
    :catch_0
    move-exception v0

    .line 60
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    const/4 v1, 0x0

    return v1
.end method

.method private getCampaignNameFromPayload(Lcom/onesignal/OSNotificationPayload;)Ljava/lang/String;
    .locals 4
    .param p1, "payload"    # Lcom/onesignal/OSNotificationPayload;

    .line 152
    iget-object v0, p1, Lcom/onesignal/OSNotificationPayload;->templateName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/onesignal/OSNotificationPayload;->templateId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lcom/onesignal/OSNotificationPayload;->templateName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/onesignal/OSNotificationPayload;->templateId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 154
    :cond_0
    iget-object v0, p1, Lcom/onesignal/OSNotificationPayload;->title:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 155
    iget-object v0, p1, Lcom/onesignal/OSNotificationPayload;->title:Ljava/lang/String;

    const/4 v1, 0x0

    const/16 v2, 0xa

    iget-object v3, p1, Lcom/onesignal/OSNotificationPayload;->title:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 157
    :cond_1
    const-string v0, ""

    return-object v0
.end method

.method private getFirebaseAnalyticsInstance(Landroid/content/Context;)Ljava/lang/Object;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 162
    iget-object v0, p0, Lcom/onesignal/TrackFirebaseAnalytics;->mFirebaseAnalyticsInstance:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 163
    sget-object v0, Lcom/onesignal/TrackFirebaseAnalytics;->FirebaseAnalyticsClass:Ljava/lang/Class;

    invoke-static {v0}, Lcom/onesignal/TrackFirebaseAnalytics;->getInstanceMethod(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 165
    .local v0, "getInstanceMethod":Ljava/lang/reflect/Method;
    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v1, v3

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/onesignal/TrackFirebaseAnalytics;->mFirebaseAnalyticsInstance:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    goto :goto_0

    .line 166
    :catchall_0
    move-exception v1

    .line 167
    .local v1, "e":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 168
    return-object v2

    .line 172
    .end local v0    # "getInstanceMethod":Ljava/lang/reflect/Method;
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/onesignal/TrackFirebaseAnalytics;->mFirebaseAnalyticsInstance:Ljava/lang/Object;

    return-object v0
.end method

.method private static getInstanceMethod(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 4
    .param p0, "clazz"    # Ljava/lang/Class;

    .line 186
    :try_start_0
    const-string v0, "getInstance"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Landroid/content/Context;

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 187
    :catch_0
    move-exception v0

    .line 188
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 189
    const/4 v1, 0x0

    return-object v1
.end method

.method private static getTrackMethod(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 4
    .param p0, "clazz"    # Ljava/lang/Class;

    .line 177
    :try_start_0
    const-string v0, "logEvent"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Landroid/os/Bundle;

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 178
    :catch_0
    move-exception v0

    .line 179
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 180
    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method trackInfluenceOpenEvent()V
    .locals 8

    .line 65
    sget-object v0, Lcom/onesignal/TrackFirebaseAnalytics;->lastReceivedTime:Ljava/util/concurrent/atomic/AtomicLong;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/onesignal/TrackFirebaseAnalytics;->lastReceivedPayload:Lcom/onesignal/OSNotificationPayload;

    if-nez v0, :cond_0

    goto :goto_1

    .line 69
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 70
    .local v0, "now":J
    sget-object v2, Lcom/onesignal/TrackFirebaseAnalytics;->lastReceivedTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    sub-long v2, v0, v2

    const-wide/32 v4, 0x1d4c0

    cmp-long v6, v2, v4

    if-lez v6, :cond_1

    .line 71
    return-void

    .line 75
    :cond_1
    sget-object v2, Lcom/onesignal/TrackFirebaseAnalytics;->lastOpenedTime:Ljava/util/concurrent/atomic/AtomicLong;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    sub-long v2, v0, v2

    const-wide/16 v4, 0x7530

    cmp-long v6, v2, v4

    if-gez v6, :cond_2

    .line 76
    return-void

    .line 79
    :cond_2
    :try_start_0
    iget-object v2, p0, Lcom/onesignal/TrackFirebaseAnalytics;->appContext:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/onesignal/TrackFirebaseAnalytics;->getFirebaseAnalyticsInstance(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v2

    .line 81
    .local v2, "firebaseAnalyticsInstance":Ljava/lang/Object;
    sget-object v3, Lcom/onesignal/TrackFirebaseAnalytics;->FirebaseAnalyticsClass:Ljava/lang/Class;

    invoke-static {v3}, Lcom/onesignal/TrackFirebaseAnalytics;->getTrackMethod(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 83
    .local v3, "trackMethod":Ljava/lang/reflect/Method;
    const-string v4, "os_notification_influence_open"

    .line 86
    .local v4, "event":Ljava/lang/String;
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 87
    .local v5, "bundle":Landroid/os/Bundle;
    const-string v6, "source"

    const-string v7, "OneSignal"

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const-string v6, "medium"

    const-string v7, "notification"

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const-string v6, "notification_id"

    sget-object v7, Lcom/onesignal/TrackFirebaseAnalytics;->lastReceivedPayload:Lcom/onesignal/OSNotificationPayload;

    iget-object v7, v7, Lcom/onesignal/OSNotificationPayload;->notificationID:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const-string v6, "campaign"

    sget-object v7, Lcom/onesignal/TrackFirebaseAnalytics;->lastReceivedPayload:Lcom/onesignal/OSNotificationPayload;

    invoke-direct {p0, v7}, Lcom/onesignal/TrackFirebaseAnalytics;->getCampaignNameFromPayload(Lcom/onesignal/OSNotificationPayload;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    const/4 v7, 0x1

    aput-object v5, v6, v7

    invoke-virtual {v3, v2, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    nop

    .end local v2    # "firebaseAnalyticsInstance":Ljava/lang/Object;
    .end local v3    # "trackMethod":Ljava/lang/reflect/Method;
    .end local v4    # "event":Ljava/lang/String;
    .end local v5    # "bundle":Landroid/os/Bundle;
    goto :goto_0

    .line 93
    :catchall_0
    move-exception v2

    .line 94
    .local v2, "t":Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 96
    .end local v2    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void

    .line 66
    .end local v0    # "now":J
    :cond_3
    :goto_1
    return-void
.end method

.method trackOpenedEvent(Lcom/onesignal/OSNotificationOpenResult;)V
    .locals 6
    .param p1, "openResult"    # Lcom/onesignal/OSNotificationOpenResult;

    .line 99
    sget-object v0, Lcom/onesignal/TrackFirebaseAnalytics;->lastOpenedTime:Ljava/util/concurrent/atomic/AtomicLong;

    if-nez v0, :cond_0

    .line 100
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    sput-object v0, Lcom/onesignal/TrackFirebaseAnalytics;->lastOpenedTime:Ljava/util/concurrent/atomic/AtomicLong;

    .line 101
    :cond_0
    sget-object v0, Lcom/onesignal/TrackFirebaseAnalytics;->lastOpenedTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 105
    :try_start_0
    iget-object v0, p0, Lcom/onesignal/TrackFirebaseAnalytics;->appContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/onesignal/TrackFirebaseAnalytics;->getFirebaseAnalyticsInstance(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    .line 107
    .local v0, "firebaseAnalyticsInstance":Ljava/lang/Object;
    sget-object v1, Lcom/onesignal/TrackFirebaseAnalytics;->FirebaseAnalyticsClass:Ljava/lang/Class;

    invoke-static {v1}, Lcom/onesignal/TrackFirebaseAnalytics;->getTrackMethod(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 110
    .local v1, "trackMethod":Ljava/lang/reflect/Method;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 111
    .local v2, "bundle":Landroid/os/Bundle;
    const-string v3, "source"

    const-string v4, "OneSignal"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const-string v3, "medium"

    const-string v4, "notification"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const-string v3, "notification_id"

    iget-object v4, p1, Lcom/onesignal/OSNotificationOpenResult;->notification:Lcom/onesignal/OSNotification;

    iget-object v4, v4, Lcom/onesignal/OSNotification;->payload:Lcom/onesignal/OSNotificationPayload;

    iget-object v4, v4, Lcom/onesignal/OSNotificationPayload;->notificationID:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    const-string v3, "campaign"

    iget-object v4, p1, Lcom/onesignal/OSNotificationOpenResult;->notification:Lcom/onesignal/OSNotification;

    iget-object v4, v4, Lcom/onesignal/OSNotification;->payload:Lcom/onesignal/OSNotificationPayload;

    invoke-direct {p0, v4}, Lcom/onesignal/TrackFirebaseAnalytics;->getCampaignNameFromPayload(Lcom/onesignal/OSNotificationPayload;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "os_notification_opened"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v2, v3, v4

    invoke-virtual {v1, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    nop

    .end local v0    # "firebaseAnalyticsInstance":Ljava/lang/Object;
    .end local v1    # "trackMethod":Ljava/lang/reflect/Method;
    .end local v2    # "bundle":Landroid/os/Bundle;
    goto :goto_0

    .line 118
    :catchall_0
    move-exception v0

    .line 119
    .local v0, "t":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 123
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method trackReceivedEvent(Lcom/onesignal/OSNotificationOpenResult;)V
    .locals 6
    .param p1, "receivedResult"    # Lcom/onesignal/OSNotificationOpenResult;

    .line 128
    :try_start_0
    iget-object v0, p0, Lcom/onesignal/TrackFirebaseAnalytics;->appContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/onesignal/TrackFirebaseAnalytics;->getFirebaseAnalyticsInstance(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    .line 130
    .local v0, "firebaseAnalyticsInstance":Ljava/lang/Object;
    sget-object v1, Lcom/onesignal/TrackFirebaseAnalytics;->FirebaseAnalyticsClass:Ljava/lang/Class;

    invoke-static {v1}, Lcom/onesignal/TrackFirebaseAnalytics;->getTrackMethod(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 132
    .local v1, "trackMethod":Ljava/lang/reflect/Method;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 133
    .local v2, "bundle":Landroid/os/Bundle;
    const-string v3, "source"

    const-string v4, "OneSignal"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    const-string v3, "medium"

    const-string v4, "notification"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    const-string v3, "notification_id"

    iget-object v4, p1, Lcom/onesignal/OSNotificationOpenResult;->notification:Lcom/onesignal/OSNotification;

    iget-object v4, v4, Lcom/onesignal/OSNotification;->payload:Lcom/onesignal/OSNotificationPayload;

    iget-object v4, v4, Lcom/onesignal/OSNotificationPayload;->notificationID:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    const-string v3, "campaign"

    iget-object v4, p1, Lcom/onesignal/OSNotificationOpenResult;->notification:Lcom/onesignal/OSNotification;

    iget-object v4, v4, Lcom/onesignal/OSNotification;->payload:Lcom/onesignal/OSNotificationPayload;

    invoke-direct {p0, v4}, Lcom/onesignal/TrackFirebaseAnalytics;->getCampaignNameFromPayload(Lcom/onesignal/OSNotificationPayload;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "os_notification_received"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v2, v3, v4

    invoke-virtual {v1, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    sget-object v3, Lcom/onesignal/TrackFirebaseAnalytics;->lastReceivedTime:Ljava/util/concurrent/atomic/AtomicLong;

    if-nez v3, :cond_0

    .line 141
    new-instance v3, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    sput-object v3, Lcom/onesignal/TrackFirebaseAnalytics;->lastReceivedTime:Ljava/util/concurrent/atomic/AtomicLong;

    .line 142
    :cond_0
    sget-object v3, Lcom/onesignal/TrackFirebaseAnalytics;->lastReceivedTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 144
    iget-object v3, p1, Lcom/onesignal/OSNotificationOpenResult;->notification:Lcom/onesignal/OSNotification;

    iget-object v3, v3, Lcom/onesignal/OSNotification;->payload:Lcom/onesignal/OSNotificationPayload;

    sput-object v3, Lcom/onesignal/TrackFirebaseAnalytics;->lastReceivedPayload:Lcom/onesignal/OSNotificationPayload;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    .end local v0    # "firebaseAnalyticsInstance":Ljava/lang/Object;
    .end local v1    # "trackMethod":Ljava/lang/reflect/Method;
    .end local v2    # "bundle":Landroid/os/Bundle;
    goto :goto_0

    .line 146
    :catchall_0
    move-exception v0

    .line 147
    .local v0, "t":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 149
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method
