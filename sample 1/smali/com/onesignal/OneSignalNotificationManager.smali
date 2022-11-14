.class public Lcom/onesignal/OneSignalNotificationManager;
.super Ljava/lang/Object;
.source "OneSignalNotificationManager.java"


# static fields
.field private static final GROUPLESS_SUMMARY_ID:I = -0x2ad2e222

.field private static final GROUPLESS_SUMMARY_KEY:Ljava/lang/String; = "os_group_undefined"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static assignGrouplessNotifications(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Landroid/service/notification/StatusBarNotification;",
            ">;)V"
        }
    .end annotation

    .line 101
    .local p1, "grouplessNotifs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/notification/StatusBarNotification;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/notification/StatusBarNotification;

    .line 103
    .local v1, "grouplessNotif":Landroid/service/notification/StatusBarNotification;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_0

    .line 104
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/app/Notification$Builder;->recoverBuilder(Landroid/content/Context;Landroid/app/Notification;)Landroid/app/Notification$Builder;

    move-result-object v2

    .local v2, "grouplessNotifBuilder":Landroid/app/Notification$Builder;
    goto :goto_1

    .line 106
    .end local v2    # "grouplessNotifBuilder":Landroid/app/Notification$Builder;
    :cond_0
    new-instance v2, Landroid/app/Notification$Builder;

    invoke-direct {v2, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 110
    .restart local v2    # "grouplessNotifBuilder":Landroid/app/Notification$Builder;
    :goto_1
    nop

    .line 111
    const-string v3, "os_group_undefined"

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 112
    invoke-virtual {v3}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    .line 114
    .local v3, "notif":Landroid/app/Notification;
    invoke-static {p0}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object v4

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v5

    invoke-virtual {v4, v5, v3}, Landroidx/core/app/NotificationManagerCompat;->notify(ILandroid/app/Notification;)V

    .line 115
    .end local v1    # "grouplessNotif":Landroid/service/notification/StatusBarNotification;
    .end local v2    # "grouplessNotifBuilder":Landroid/app/Notification$Builder;
    .end local v3    # "notif":Landroid/app/Notification;
    goto :goto_0

    .line 116
    :cond_1
    return-void
.end method

.method static getActiveGrouplessNotifications(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/service/notification/StatusBarNotification;",
            ">;"
        }
    .end annotation

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 83
    .local v0, "grouplessStatusBarNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/notification/StatusBarNotification;>;"
    invoke-static {p0}, Lcom/onesignal/OneSignalNotificationManager;->getActiveNotifications(Landroid/content/Context;)[Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    .line 84
    .local v1, "statusBarNotifications":[Landroid/service/notification/StatusBarNotification;
    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_3

    aget-object v5, v1, v4

    .line 85
    .local v5, "statusBarNotification":Landroid/service/notification/StatusBarNotification;
    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v6

    .line 87
    .local v6, "notification":Landroid/app/Notification;
    invoke-static {v5}, Lcom/onesignal/NotificationLimitManager;->isGroupSummary(Landroid/service/notification/StatusBarNotification;)Z

    move-result v7

    .line 88
    .local v7, "isGroupSummary":Z
    invoke-virtual {v6}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 89
    invoke-virtual {v6}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Lcom/onesignal/OneSignalNotificationManager;->getGrouplessSummaryKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    goto :goto_1

    :cond_0
    const/4 v8, 0x0

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v8, 0x1

    .line 90
    .local v8, "isGroupless":Z
    :goto_2
    if-nez v7, :cond_2

    if-eqz v8, :cond_2

    .line 91
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    .end local v5    # "statusBarNotification":Landroid/service/notification/StatusBarNotification;
    .end local v6    # "notification":Landroid/app/Notification;
    .end local v7    # "isGroupSummary":Z
    .end local v8    # "isGroupless":Z
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 93
    :cond_3
    return-object v0
.end method

.method static getActiveNotifications(Landroid/content/Context;)[Landroid/service/notification/StatusBarNotification;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 59
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/service/notification/StatusBarNotification;

    .line 61
    .local v0, "statusBarNotifications":[Landroid/service/notification/StatusBarNotification;
    :try_start_0
    invoke-static {p0}, Lcom/onesignal/OneSignalNotificationManager;->getNotificationManager(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/NotificationManager;->getActiveNotifications()[Landroid/service/notification/StatusBarNotification;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    .line 67
    goto :goto_0

    .line 62
    :catchall_0
    move-exception v1

    .line 68
    :goto_0
    return-object v0
.end method

.method static getGrouplessNotifsCount(Landroid/content/Context;)Ljava/lang/Integer;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .line 42
    invoke-static {p0}, Lcom/onesignal/OneSignalNotificationManager;->getActiveNotifications(Landroid/content/Context;)[Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    .line 44
    .local v0, "statusBarNotifications":[Landroid/service/notification/StatusBarNotification;
    const/4 v1, 0x0

    .line 45
    .local v1, "groupCount":I
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 46
    .local v4, "statusBarNotification":Landroid/service/notification/StatusBarNotification;
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    invoke-static {v5}, Landroidx/core/app/NotificationCompat;->isGroupSummary(Landroid/app/Notification;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 47
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v5

    const-string v6, "os_group_undefined"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 48
    add-int/lit8 v1, v1, 0x1

    .line 45
    .end local v4    # "statusBarNotification":Landroid/service/notification/StatusBarNotification;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 51
    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    return-object v2
.end method

.method static getGrouplessSummaryId()I
    .locals 1

    .line 26
    const v0, -0x2ad2e222

    return v0
.end method

.method static getGrouplessSummaryKey()Ljava/lang/String;
    .locals 1

    .line 22
    const-string v0, "os_group_undefined"

    return-object v0
.end method

.method static getMostRecentNotifIdFromGroup(Lcom/onesignal/OneSignalDbHelper;Ljava/lang/String;Z)Ljava/lang/Integer;
    .locals 12
    .param p0, "db"    # Lcom/onesignal/OneSignalDbHelper;
    .param p1, "group"    # Ljava/lang/String;
    .param p2, "isGroupless"    # Z

    .line 124
    if-eqz p2, :cond_0

    const-string v0, "group_id IS NULL"

    goto :goto_0

    :cond_0
    const-string v0, "group_id = ?"

    .line 129
    .local v0, "whereStr":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " AND dismissed = 0 AND opened = 0 AND is_summary = 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 133
    const/4 v1, 0x0

    if-eqz p2, :cond_1

    move-object v7, v1

    goto :goto_1

    :cond_1
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    move-object v7, v2

    .line 138
    .local v7, "whereArgs":[Ljava/lang/String;
    :goto_1
    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v4, "notification"

    const-string v10, "created_time DESC"

    const-string v11, "1"

    move-object v3, p0

    move-object v6, v0

    invoke-virtual/range {v3 .. v11}, Lcom/onesignal/OneSignalDbHelper;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 147
    .local v2, "cursor":Landroid/database/Cursor;
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    .line 149
    .local v3, "hasRecord":Z
    if-nez v3, :cond_2

    .line 150
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 151
    return-object v1

    .line 155
    :cond_2
    const-string v1, "android_notification_id"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 157
    .local v1, "recentId":Ljava/lang/Integer;
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 159
    return-object v1
.end method

.method static getNotificationManager(Landroid/content/Context;)Landroid/app/NotificationManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 33
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    return-object v0
.end method
