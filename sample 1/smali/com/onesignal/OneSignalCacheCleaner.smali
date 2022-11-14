.class Lcom/onesignal/OneSignalCacheCleaner;
.super Ljava/lang/Object;
.source "OneSignalCacheCleaner.java"


# static fields
.field private static final NOTIFICATION_CACHE_DATA_LIFETIME:J = 0x93a80L

.field private static final OS_DELETE_CACHED_NOTIFICATIONS_THREAD:Ljava/lang/String; = "OS_DELETE_CACHED_NOTIFICATIONS_THREAD"

.field private static final OS_DELETE_CACHED_REDISPLAYED_IAMS_THREAD:Ljava/lang/String; = "OS_DELETE_CACHED_REDISPLAYED_IAMS_THREAD"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/onesignal/OneSignalDbHelper;)V
    .locals 0
    .param p0, "x0"    # Lcom/onesignal/OneSignalDbHelper;

    .line 11
    invoke-static {p0}, Lcom/onesignal/OneSignalCacheCleaner;->cleanCachedNotifications(Lcom/onesignal/OneSignalDbHelper;)V

    return-void
.end method

.method static synthetic access$100(Lcom/onesignal/OneSignalDbHelper;)V
    .locals 0
    .param p0, "x0"    # Lcom/onesignal/OneSignalDbHelper;

    .line 11
    invoke-static {p0}, Lcom/onesignal/OneSignalCacheCleaner;->cleanCachedUniqueOutcomeEventNotifications(Lcom/onesignal/OneSignalDbHelper;)V

    return-void
.end method

.method static declared-synchronized cleanCachedInAppMessages(Lcom/onesignal/OneSignalDbHelper;)V
    .locals 4
    .param p0, "dbHelper"    # Lcom/onesignal/OneSignalDbHelper;

    const-class v0, Lcom/onesignal/OneSignalCacheCleaner;

    monitor-enter v0

    .line 55
    :try_start_0
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/onesignal/OneSignalCacheCleaner$2;

    invoke-direct {v2, p0}, Lcom/onesignal/OneSignalCacheCleaner$2;-><init>(Lcom/onesignal/OneSignalDbHelper;)V

    const-string v3, "OS_DELETE_CACHED_REDISPLAYED_IAMS_THREAD"

    invoke-direct {v1, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 65
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    monitor-exit v0

    return-void

    .line 54
    .end local p0    # "dbHelper":Lcom/onesignal/OneSignalDbHelper;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static cleanCachedNotifications(Lcom/onesignal/OneSignalDbHelper;)V
    .locals 5
    .param p0, "writableDb"    # Lcom/onesignal/OneSignalDbHelper;

    .line 77
    const-string v0, "created_time < ?"

    .line 79
    .local v0, "whereStr":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    const-wide/32 v3, 0x93a80

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 80
    .local v1, "sevenDaysAgoInSeconds":Ljava/lang/String;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    .line 82
    .local v2, "whereArgs":[Ljava/lang/String;
    const-string v3, "notification"

    invoke-virtual {p0, v3, v0, v2}, Lcom/onesignal/OneSignalDbHelper;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method private static cleanCachedUniqueOutcomeEventNotifications(Lcom/onesignal/OneSignalDbHelper;)V
    .locals 3
    .param p0, "writableDb"    # Lcom/onesignal/OneSignalDbHelper;

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NOT EXISTS(SELECT NULL FROM notification n WHERE n.notification_id = channel_influence_id AND channel_type = \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/onesignal/influence/model/OSInfluenceChannel;->NOTIFICATION:Lcom/onesignal/influence/model/OSInfluenceChannel;

    .line 100
    invoke-virtual {v1}, Lcom/onesignal/influence/model/OSInfluenceChannel;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, "whereStr":Ljava/lang/String;
    const-string v1, "cached_unique_outcome"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lcom/onesignal/OneSignalDbHelper;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 107
    return-void
.end method

.method static declared-synchronized cleanNotificationCache(Lcom/onesignal/OneSignalDbHelper;)V
    .locals 4
    .param p0, "writableDb"    # Lcom/onesignal/OneSignalDbHelper;

    const-class v0, Lcom/onesignal/OneSignalCacheCleaner;

    monitor-enter v0

    .line 35
    :try_start_0
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/onesignal/OneSignalCacheCleaner$1;

    invoke-direct {v2, p0}, Lcom/onesignal/OneSignalCacheCleaner$1;-><init>(Lcom/onesignal/OneSignalDbHelper;)V

    const-string v3, "OS_DELETE_CACHED_NOTIFICATIONS_THREAD"

    invoke-direct {v1, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 44
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    monitor-exit v0

    return-void

    .line 34
    .end local p0    # "writableDb":Lcom/onesignal/OneSignalDbHelper;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static cleanOldCachedData(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 24
    invoke-static {p0}, Lcom/onesignal/OneSignalDbHelper;->getInstance(Landroid/content/Context;)Lcom/onesignal/OneSignalDbHelper;

    move-result-object v0

    .line 25
    .local v0, "dbHelper":Lcom/onesignal/OneSignalDbHelper;
    invoke-static {v0}, Lcom/onesignal/OneSignalCacheCleaner;->cleanNotificationCache(Lcom/onesignal/OneSignalDbHelper;)V

    .line 26
    invoke-static {v0}, Lcom/onesignal/OneSignalCacheCleaner;->cleanCachedInAppMessages(Lcom/onesignal/OneSignalDbHelper;)V

    .line 27
    return-void
.end method
