.class Lcom/onesignal/NotificationLimitManager;
.super Ljava/lang/Object;
.source "NotificationLimitManager.java"


# static fields
.field private static final MAX_NUMBER_OF_NOTIFICATIONS_INT:I = 0x31

.field static final MAX_NUMBER_OF_NOTIFICATIONS_STR:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    const/16 v0, 0x31

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/onesignal/NotificationLimitManager;->MAX_NUMBER_OF_NOTIFICATIONS_STR:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static clearOldestOverLimit(Landroid/content/Context;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "notifsToMakeRoomFor"    # I

    .line 41
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 42
    invoke-static {p0, p1}, Lcom/onesignal/NotificationLimitManager;->clearOldestOverLimitStandard(Landroid/content/Context;I)V

    goto :goto_0

    .line 44
    :cond_0
    invoke-static {p0, p1}, Lcom/onesignal/NotificationLimitManager;->clearOldestOverLimitFallback(Landroid/content/Context;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    :goto_0
    goto :goto_1

    .line 45
    :catchall_0
    move-exception v0

    .line 47
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {p0, p1}, Lcom/onesignal/NotificationLimitManager;->clearOldestOverLimitFallback(Landroid/content/Context;I)V

    .line 49
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_1
    return-void
.end method

.method static clearOldestOverLimitFallback(Landroid/content/Context;I)V
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "notifsToMakeRoomFor"    # I

    .line 80
    const-string v0, "android_notification_id"

    invoke-static {p0}, Lcom/onesignal/OneSignalDbHelper;->getInstance(Landroid/content/Context;)Lcom/onesignal/OneSignalDbHelper;

    move-result-object v10

    .line 82
    .local v10, "dbHelper":Lcom/onesignal/OneSignalDbHelper;
    const/4 v11, 0x0

    .line 84
    .local v11, "cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v2, "notification"

    const/4 v12, 0x1

    new-array v3, v12, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v0, v3, v1

    .line 87
    invoke-static {}, Lcom/onesignal/OneSignalDbHelper;->recentUninteractedWithNotificationsWhere()Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "_id"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    invoke-static {}, Lcom/onesignal/NotificationLimitManager;->getMaxNumberOfNotificationsString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 84
    move-object v1, v10

    invoke-virtual/range {v1 .. v9}, Lcom/onesignal/OneSignalDbHelper;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    move-object v11, v1

    .line 95
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-static {}, Lcom/onesignal/NotificationLimitManager;->getMaxNumberOfNotificationsInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr v1, v2

    add-int/2addr v1, p1

    .line 97
    .local v1, "notifsToClear":I
    if-ge v1, v12, :cond_1

    .line 110
    if-eqz v11, :cond_0

    invoke-interface {v11}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 111
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 98
    :cond_0
    return-void

    .line 100
    :cond_1
    :goto_0
    :try_start_1
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 101
    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 102
    .local v2, "existingId":I
    invoke-static {v2}, Lcom/onesignal/OneSignal;->cancelNotification(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 104
    add-int/lit8 v1, v1, -0x1

    if-gtz v1, :cond_2

    .line 105
    goto :goto_1

    .line 106
    .end local v2    # "existingId":I
    :cond_2
    goto :goto_0

    .line 110
    .end local v1    # "notifsToClear":I
    :cond_3
    :goto_1
    if-eqz v11, :cond_4

    invoke-interface {v11}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_4

    .line 111
    :goto_2
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .line 107
    :catchall_0
    move-exception v0

    .line 108
    .local v0, "t":Ljava/lang/Throwable;
    :try_start_2
    sget-object v1, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v2, "Error clearing oldest notifications over limit! "

    invoke-static {v1, v2, v0}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 110
    .end local v0    # "t":Ljava/lang/Throwable;
    if-eqz v11, :cond_4

    invoke-interface {v11}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_4

    .line 111
    goto :goto_2

    .line 113
    :cond_4
    :goto_3
    return-void

    .line 110
    :catchall_1
    move-exception v0

    if-eqz v11, :cond_5

    invoke-interface {v11}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_5

    .line 111
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_5
    goto :goto_5

    :goto_4
    throw v0

    :goto_5
    goto :goto_4
.end method

.method static clearOldestOverLimitStandard(Landroid/content/Context;I)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "notifsToMakeRoomFor"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 55
    invoke-static {p0}, Lcom/onesignal/OneSignalNotificationManager;->getActiveNotifications(Landroid/content/Context;)[Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    .line 57
    .local v0, "activeNotifs":[Landroid/service/notification/StatusBarNotification;
    array-length v1, v0

    invoke-static {}, Lcom/onesignal/NotificationLimitManager;->getMaxNumberOfNotificationsInt()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/2addr v1, p1

    .line 59
    .local v1, "notifsToClear":I
    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    .line 60
    return-void

    .line 63
    :cond_0
    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    .line 64
    .local v2, "activeNotifIds":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v0, v4

    .line 65
    .local v5, "activeNotif":Landroid/service/notification/StatusBarNotification;
    invoke-static {v5}, Lcom/onesignal/NotificationLimitManager;->isGroupSummary(Landroid/service/notification/StatusBarNotification;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 66
    goto :goto_1

    .line 67
    :cond_1
    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v6

    iget-wide v6, v6, Landroid/app/Notification;->when:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v2, v6, v7}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .end local v5    # "activeNotif":Landroid/service/notification/StatusBarNotification;
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 71
    :cond_2
    invoke-interface {v2}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 72
    .local v4, "mapData":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Integer;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Lcom/onesignal/OneSignal;->cancelNotification(I)V

    .line 73
    add-int/lit8 v1, v1, -0x1

    if-gtz v1, :cond_3

    .line 74
    goto :goto_3

    .line 75
    .end local v4    # "mapData":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Integer;>;"
    :cond_3
    goto :goto_2

    .line 76
    :cond_4
    :goto_3
    return-void
.end method

.method private static getMaxNumberOfNotificationsInt()I
    .locals 1

    .line 30
    const/16 v0, 0x31

    return v0
.end method

.method private static getMaxNumberOfNotificationsString()Ljava/lang/String;
    .locals 1

    .line 34
    sget-object v0, Lcom/onesignal/NotificationLimitManager;->MAX_NUMBER_OF_NOTIFICATIONS_STR:Ljava/lang/String;

    return-object v0
.end method

.method static isGroupSummary(Landroid/service/notification/StatusBarNotification;)Z
    .locals 1
    .param p0, "notif"    # Landroid/service/notification/StatusBarNotification;

    .line 117
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget v0, v0, Landroid/app/Notification;->flags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
