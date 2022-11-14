.class Lcom/onesignal/NotificationSummaryManager;
.super Ljava/lang/Object;
.source "NotificationSummaryManager.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static clearNotificationOnSummaryClick(Landroid/content/Context;Lcom/onesignal/OneSignalDbHelper;Ljava/lang/String;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dbHelper"    # Lcom/onesignal/OneSignalDbHelper;
    .param p2, "group"    # Ljava/lang/String;

    .line 198
    invoke-static {p1, p2}, Lcom/onesignal/NotificationSummaryManager;->getSummaryNotificationId(Lcom/onesignal/OneSignalDb;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 199
    .local v0, "groupId":Ljava/lang/Integer;
    invoke-static {}, Lcom/onesignal/OneSignalNotificationManager;->getGrouplessSummaryKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 201
    .local v1, "isGroupless":Z
    invoke-static {p0}, Lcom/onesignal/OneSignalNotificationManager;->getNotificationManager(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v2

    .line 203
    .local v2, "notificationManager":Landroid/app/NotificationManager;
    invoke-static {p1, p2, v1}, Lcom/onesignal/OneSignalNotificationManager;->getMostRecentNotifIdFromGroup(Lcom/onesignal/OneSignalDbHelper;Ljava/lang/String;Z)Ljava/lang/Integer;

    move-result-object v3

    .line 204
    .local v3, "mostRecentId":Ljava/lang/Integer;
    if-eqz v3, :cond_2

    .line 205
    invoke-static {}, Lcom/onesignal/OneSignal;->getClearGroupSummaryClick()Z

    move-result v4

    .line 206
    .local v4, "shouldDismissAll":Z
    if-eqz v4, :cond_1

    .line 209
    if-eqz v1, :cond_0

    .line 210
    invoke-static {}, Lcom/onesignal/OneSignalNotificationManager;->getGrouplessSummaryId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 213
    :cond_0
    if-eqz v0, :cond_2

    .line 214
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0

    .line 217
    :cond_1
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Lcom/onesignal/OneSignal;->cancelNotification(I)V

    .line 220
    .end local v4    # "shouldDismissAll":Z
    :cond_2
    :goto_0
    return-void
.end method

.method static getSummaryNotificationId(Lcom/onesignal/OneSignalDb;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 12
    .param p0, "db"    # Lcom/onesignal/OneSignalDb;
    .param p1, "group"    # Ljava/lang/String;

    .line 156
    const-string v0, "android_notification_id"

    const/4 v1, 0x0

    .line 157
    .local v1, "androidNotifId":Ljava/lang/Integer;
    const/4 v2, 0x0

    .line 159
    .local v2, "cursor":Landroid/database/Cursor;
    const-string v11, "group_id = ? AND dismissed = 0 AND opened = 0 AND is_summary = 1"

    .line 163
    .local v11, "whereStr":Ljava/lang/String;
    const/4 v3, 0x1

    new-array v7, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v7, v4

    .line 167
    .local v7, "whereArgs":[Ljava/lang/String;
    :try_start_0
    const-string v5, "notification"

    new-array v6, v3, [Ljava/lang/String;

    aput-object v0, v6, v4

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v3, p0

    move-object v4, v5

    move-object v5, v6

    move-object v6, v11

    invoke-interface/range {v3 .. v10}, Lcom/onesignal/OneSignalDb;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    move-object v2, v3

    .line 176
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    .line 177
    .local v3, "hasRecord":Z
    if-nez v3, :cond_1

    .line 178
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    const/4 v0, 0x0

    .line 186
    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_0

    .line 187
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 179
    :cond_0
    return-object v0

    .line 181
    :cond_1
    :try_start_1
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v1, v0

    .line 182
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 186
    .end local v3    # "hasRecord":Z
    if-eqz v2, :cond_2

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 187
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 183
    :catchall_0
    move-exception v0

    .line 184
    .local v0, "t":Ljava/lang/Throwable;
    :try_start_2
    sget-object v3, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error getting android notification id for summary notification group: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 186
    .end local v0    # "t":Ljava/lang/Throwable;
    if-eqz v2, :cond_2

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 187
    goto :goto_0

    .line 190
    :cond_2
    :goto_1
    return-object v1

    .line 186
    :catchall_1
    move-exception v0

    if-eqz v2, :cond_3

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_3

    .line 187
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_3
    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method private static internalUpdateSummaryNotificationAfterChildRemoved(Landroid/content/Context;Lcom/onesignal/OneSignalDb;Ljava/lang/String;Z)Landroid/database/Cursor;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "db"    # Lcom/onesignal/OneSignalDb;
    .param p2, "group"    # Ljava/lang/String;
    .param p3, "dismissed"    # Z

    .line 48
    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/String;

    const-string v0, "android_notification_id"

    const/4 v1, 0x0

    aput-object v0, v3, v1

    const/4 v0, 0x1

    const-string v9, "created_time"

    aput-object v9, v3, v0

    new-array v5, v0, [Ljava/lang/String;

    aput-object p2, v5, v1

    const-string v2, "notification"

    const-string v4, "group_id = ? AND dismissed = 0 AND opened = 0 AND is_summary = 0"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "_id DESC"

    move-object v1, p1

    invoke-interface/range {v1 .. v8}, Lcom/onesignal/OneSignalDb;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 60
    .local v1, "cursor":Landroid/database/Cursor;
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    .line 65
    .local v2, "notifsInGroup":I
    if-nez v2, :cond_2

    .line 66
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 68
    invoke-static {p1, p2}, Lcom/onesignal/NotificationSummaryManager;->getSummaryNotificationId(Lcom/onesignal/OneSignalDb;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    .line 69
    .local v3, "androidNotifId":Ljava/lang/Integer;
    if-nez v3, :cond_0

    .line 70
    return-object v1

    .line 73
    :cond_0
    invoke-static {p0}, Lcom/onesignal/OneSignalNotificationManager;->getNotificationManager(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v4

    .line 74
    .local v4, "notificationManager":Landroid/app/NotificationManager;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/app/NotificationManager;->cancel(I)V

    .line 77
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 78
    .local v5, "values":Landroid/content/ContentValues;
    if-eqz p3, :cond_1

    const-string v6, "dismissed"

    goto :goto_0

    :cond_1
    const-string v6, "opened"

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "android_notification_id = "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x0

    const-string v7, "notification"

    invoke-interface {p1, v7, v5, v0, v6}, Lcom/onesignal/OneSignalDb;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 83
    return-object v1

    .line 89
    .end local v3    # "androidNotifId":Ljava/lang/Integer;
    .end local v4    # "notificationManager":Landroid/app/NotificationManager;
    .end local v5    # "values":Landroid/content/ContentValues;
    :cond_2
    if-ne v2, v0, :cond_4

    .line 90
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 91
    invoke-static {p1, p2}, Lcom/onesignal/NotificationSummaryManager;->getSummaryNotificationId(Lcom/onesignal/OneSignalDb;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 92
    .local v0, "androidNotifId":Ljava/lang/Integer;
    if-nez v0, :cond_3

    .line 93
    return-object v1

    .line 94
    :cond_3
    invoke-static {p0, p2}, Lcom/onesignal/NotificationSummaryManager;->restoreSummary(Landroid/content/Context;Ljava/lang/String;)V

    .line 95
    return-object v1

    .line 103
    .end local v0    # "androidNotifId":Ljava/lang/Integer;
    :cond_4
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 104
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 105
    .local v3, "datetime":Ljava/lang/Long;
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 107
    invoke-static {p1, p2}, Lcom/onesignal/NotificationSummaryManager;->getSummaryNotificationId(Lcom/onesignal/OneSignalDb;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    .line 108
    .local v4, "androidNotifId":Ljava/lang/Integer;
    if-nez v4, :cond_5

    .line 109
    return-object v1

    .line 111
    :cond_5
    new-instance v5, Lcom/onesignal/NotificationGenerationJob;

    invoke-direct {v5, p0}, Lcom/onesignal/NotificationGenerationJob;-><init>(Landroid/content/Context;)V

    .line 112
    .local v5, "notifJob":Lcom/onesignal/NotificationGenerationJob;
    iput-boolean v0, v5, Lcom/onesignal/NotificationGenerationJob;->restoring:Z

    .line 113
    iput-object v3, v5, Lcom/onesignal/NotificationGenerationJob;->shownTimeStamp:Ljava/lang/Long;

    .line 115
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 116
    .local v0, "payload":Lorg/json/JSONObject;
    const-string v6, "grp"

    invoke-virtual {v0, v6, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 117
    iput-object v0, v5, Lcom/onesignal/NotificationGenerationJob;->jsonPayload:Lorg/json/JSONObject;

    .line 119
    invoke-static {v5}, Lcom/onesignal/GenerateNotification;->updateSummaryNotification(Lcom/onesignal/NotificationGenerationJob;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "payload":Lorg/json/JSONObject;
    .end local v3    # "datetime":Ljava/lang/Long;
    .end local v4    # "androidNotifId":Ljava/lang/Integer;
    .end local v5    # "notifJob":Lcom/onesignal/NotificationGenerationJob;
    goto :goto_1

    .line 120
    :catch_0
    move-exception v0

    :goto_1
    nop

    .line 122
    return-object v1
.end method

.method private static restoreSummary(Landroid/content/Context;Ljava/lang/String;)V
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "group"    # Ljava/lang/String;

    .line 126
    invoke-static {p0}, Lcom/onesignal/OneSignalDbHelper;->getInstance(Landroid/content/Context;)Lcom/onesignal/OneSignalDbHelper;

    move-result-object v8

    .line 128
    .local v8, "dbHelper":Lcom/onesignal/OneSignalDbHelper;
    const/4 v9, 0x0

    .line 130
    .local v9, "cursor":Landroid/database/Cursor;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object p1, v4, v10

    .line 133
    .local v4, "whereArgs":[Ljava/lang/String;
    :try_start_0
    const-string v1, "notification"

    sget-object v2, Lcom/onesignal/NotificationRestorer;->COLUMNS_FOR_RESTORE:[Ljava/lang/String;

    const-string v3, "group_id = ? AND dismissed = 0 AND opened = 0 AND is_summary = 0"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v8

    invoke-virtual/range {v0 .. v7}, Lcom/onesignal/OneSignalDbHelper;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v9, v0

    .line 146
    invoke-static {p0, v9, v10}, Lcom/onesignal/NotificationRestorer;->showNotificationsFromCursor(Landroid/content/Context;Landroid/database/Cursor;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    if-eqz v9, :cond_0

    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 151
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 147
    :catchall_0
    move-exception v0

    .line 148
    .local v0, "t":Ljava/lang/Throwable;
    :try_start_1
    sget-object v1, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v2, "Error restoring notification records! "

    invoke-static {v1, v2, v0}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 150
    .end local v0    # "t":Ljava/lang/Throwable;
    if-eqz v9, :cond_0

    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 151
    goto :goto_0

    .line 153
    :cond_0
    :goto_1
    return-void

    .line 150
    :catchall_1
    move-exception v0

    if-eqz v9, :cond_1

    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 151
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_1
    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method static updatePossibleDependentSummaryOnDismiss(Landroid/content/Context;Lcom/onesignal/OneSignalDb;I)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "db"    # Lcom/onesignal/OneSignalDb;
    .param p2, "androidNotificationId"    # I

    .line 17
    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v9, "group_id"

    aput-object v9, v3, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android_notification_id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v2, "notification"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p1

    invoke-interface/range {v1 .. v8}, Lcom/onesignal/OneSignalDb;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 23
    .local v1, "cursor":Landroid/database/Cursor;
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 24
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 25
    .local v2, "group":Ljava/lang/String;
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 27
    if-eqz v2, :cond_0

    .line 28
    invoke-static {p0, p1, v2, v0}, Lcom/onesignal/NotificationSummaryManager;->updateSummaryNotificationAfterChildRemoved(Landroid/content/Context;Lcom/onesignal/OneSignalDb;Ljava/lang/String;Z)V

    .line 29
    .end local v2    # "group":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 31
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 32
    :goto_0
    return-void
.end method

.method static updateSummaryNotificationAfterChildRemoved(Landroid/content/Context;Lcom/onesignal/OneSignalDb;Ljava/lang/String;Z)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "db"    # Lcom/onesignal/OneSignalDb;
    .param p2, "group"    # Ljava/lang/String;
    .param p3, "dismissed"    # Z

    .line 36
    const/4 v0, 0x0

    .line 38
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-static {p0, p1, p2, p3}, Lcom/onesignal/NotificationSummaryManager;->internalUpdateSummaryNotificationAfterChildRemoved(Landroid/content/Context;Lcom/onesignal/OneSignalDb;Ljava/lang/String;Z)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    .line 42
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 43
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 39
    :catchall_0
    move-exception v1

    .line 40
    .local v1, "t":Ljava/lang/Throwable;
    :try_start_1
    sget-object v2, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v3, "Error running updateSummaryNotificationAfterChildRemoved!"

    invoke-static {v2, v3, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 42
    .end local v1    # "t":Ljava/lang/Throwable;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 43
    goto :goto_0

    .line 45
    :cond_0
    :goto_1
    return-void

    .line 42
    :catchall_1
    move-exception v1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_1

    .line 43
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    goto :goto_3

    :goto_2
    throw v1

    :goto_3
    goto :goto_2
.end method
