.class Lcom/onesignal/NotificationRestorer;
.super Ljava/lang/Object;
.source "NotificationRestorer.java"


# static fields
.field static final COLUMNS_FOR_RESTORE:[Ljava/lang/String;

.field static final DEFAULT_TTL_IF_NOT_IN_PAYLOAD:I = 0x3f480

.field private static final DELAY_BETWEEN_NOTIFICATION_RESTORES_MS:I = 0xc8

.field private static final RESTORE_KICKOFF_REQUEST_CODE:I = 0x7b7e1b68

.field private static final RESTORE_NOTIFICATIONS_DELAY_MS:I = 0x3a98

.field public static restored:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 84
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android_notification_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "full_data"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "created_time"

    aput-object v2, v0, v1

    sput-object v0, Lcom/onesignal/NotificationRestorer;->COLUMNS_FOR_RESTORE:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addRestoreExtras(Landroid/content/Intent;Landroid/database/Cursor;)Landroid/content/Intent;
    .locals 6
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "cursor"    # Landroid/database/Cursor;

    .line 216
    const-string v0, "android_notification_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 217
    .local v0, "existingId":I
    const-string v1, "full_data"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 218
    .local v1, "fullData":Ljava/lang/String;
    const-string v2, "created_time"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 220
    .local v2, "datetime":Ljava/lang/Long;
    const-string v3, "json_payload"

    invoke-virtual {p0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 221
    const-string v4, "android_notif_id"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v3

    .line 222
    const-string v4, "restoring"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v3

    .line 223
    const-string v4, "timestamp"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 225
    return-object p0
.end method

.method static asyncRestore(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 102
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/onesignal/NotificationRestorer$1;

    invoke-direct {v1, p0}, Lcom/onesignal/NotificationRestorer$1;-><init>(Landroid/content/Context;)V

    const-string v2, "OS_RESTORE_NOTIFS"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 108
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 109
    return-void
.end method

.method private static queryAndRestoreNotificationsAndBadgeCount(Landroid/content/Context;Lcom/onesignal/OneSignalDbHelper;Ljava/lang/StringBuilder;)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dbHelper"    # Lcom/onesignal/OneSignalDbHelper;
    .param p2, "dbQuerySelection"    # Ljava/lang/StringBuilder;

    .line 134
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->INFO:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Querying DB for notifs to restore: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 134
    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 137
    const/4 v0, 0x0

    .line 139
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v2, "notification"

    sget-object v3, Lcom/onesignal/NotificationRestorer;->COLUMNS_FOR_RESTORE:[Ljava/lang/String;

    .line 142
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "_id DESC"

    sget-object v9, Lcom/onesignal/NotificationLimitManager;->MAX_NUMBER_OF_NOTIFICATIONS_STR:Ljava/lang/String;

    .line 139
    move-object v1, p1

    invoke-virtual/range {v1 .. v9}, Lcom/onesignal/OneSignalDbHelper;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    move-object v0, v1

    .line 149
    const/16 v1, 0xc8

    invoke-static {p0, v0, v1}, Lcom/onesignal/NotificationRestorer;->showNotificationsFromCursor(Landroid/content/Context;Landroid/database/Cursor;I)V

    .line 150
    invoke-static {p1, p0}, Lcom/onesignal/BadgeCountUpdater;->update(Lcom/onesignal/OneSignalDb;Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 155
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 151
    :catchall_0
    move-exception v1

    .line 152
    .local v1, "t":Ljava/lang/Throwable;
    :try_start_1
    sget-object v2, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v3, "Error restoring notification records! "

    invoke-static {v2, v3, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 154
    .end local v1    # "t":Ljava/lang/Throwable;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 155
    goto :goto_0

    .line 157
    :cond_0
    :goto_1
    return-void

    .line 154
    :catchall_1
    move-exception v1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_1

    .line 155
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    goto :goto_3

    :goto_2
    throw v1

    :goto_3
    goto :goto_2
.end method

.method public static restore(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 113
    invoke-static {p0}, Lcom/onesignal/OSUtils;->areNotificationsEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 114
    return-void

    .line 116
    :cond_0
    sget-boolean v0, Lcom/onesignal/NotificationRestorer;->restored:Z

    if-eqz v0, :cond_1

    .line 117
    return-void

    .line 118
    :cond_1
    const/4 v0, 0x1

    sput-boolean v0, Lcom/onesignal/NotificationRestorer;->restored:Z

    .line 120
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->INFO:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v1, "Restoring notifications"

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 122
    invoke-static {p0}, Lcom/onesignal/OneSignalDbHelper;->getInstance(Landroid/content/Context;)Lcom/onesignal/OneSignalDbHelper;

    move-result-object v0

    .line 124
    .local v0, "dbHelper":Lcom/onesignal/OneSignalDbHelper;
    invoke-static {}, Lcom/onesignal/OneSignalDbHelper;->recentUninteractedWithNotificationsWhere()Ljava/lang/StringBuilder;

    move-result-object v1

    .line 125
    .local v1, "dbQuerySelection":Ljava/lang/StringBuilder;
    invoke-static {p0, v1}, Lcom/onesignal/NotificationRestorer;->skipVisibleNotifications(Landroid/content/Context;Ljava/lang/StringBuilder;)V

    .line 127
    invoke-static {p0, v0, v1}, Lcom/onesignal/NotificationRestorer;->queryAndRestoreNotificationsAndBadgeCount(Landroid/content/Context;Lcom/onesignal/OneSignalDbHelper;Ljava/lang/StringBuilder;)V

    .line 128
    return-void
.end method

.method static showNotificationsFromCursor(Landroid/content/Context;Landroid/database/Cursor;I)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "delay"    # I

    .line 189
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_0

    .line 190
    return-void

    .line 192
    :cond_0
    invoke-static {p0}, Lcom/onesignal/NotificationExtenderService;->getIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 195
    .local v0, "useExtender":Z
    :goto_0
    if-eqz v0, :cond_2

    .line 196
    invoke-static {p0}, Lcom/onesignal/NotificationExtenderService;->getIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    .line 197
    .local v2, "intent":Landroid/content/Intent;
    invoke-static {v2, p1}, Lcom/onesignal/NotificationRestorer;->addRestoreExtras(Landroid/content/Intent;Landroid/database/Cursor;)Landroid/content/Intent;

    .line 198
    nop

    .line 199
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    const v4, 0x7b7e1b69

    .line 198
    invoke-static {p0, v3, v4, v2, v1}, Lcom/onesignal/NotificationExtenderService;->enqueueWork(Landroid/content/Context;Landroid/content/ComponentName;ILandroid/content/Intent;Z)V

    .line 203
    .end local v2    # "intent":Landroid/content/Intent;
    goto :goto_1

    .line 205
    :cond_2
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-static {v2, p1}, Lcom/onesignal/NotificationRestorer;->addRestoreExtras(Landroid/content/Intent;Landroid/database/Cursor;)Landroid/content/Intent;

    move-result-object v2

    .line 206
    .restart local v2    # "intent":Landroid/content/Intent;
    new-instance v3, Landroid/content/ComponentName;

    const-class v4, Lcom/onesignal/RestoreJobService;

    invoke-direct {v3, p0, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 207
    .local v3, "componentName":Landroid/content/ComponentName;
    const v4, 0x7b7e1b6a

    invoke-static {p0, v3, v4, v2, v1}, Lcom/onesignal/RestoreJobService;->enqueueWork(Landroid/content/Context;Landroid/content/ComponentName;ILandroid/content/Intent;Z)V

    .line 210
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "componentName":Landroid/content/ComponentName;
    :goto_1
    if-lez p2, :cond_3

    .line 211
    invoke-static {p2}, Lcom/onesignal/OSUtils;->sleep(I)V

    .line 212
    :cond_3
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_4

    .line 213
    return-void

    .line 212
    :cond_4
    goto :goto_0
.end method

.method private static skipVisibleNotifications(Landroid/content/Context;Ljava/lang/StringBuilder;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dbQuerySelection"    # Ljava/lang/StringBuilder;

    .line 165
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    .line 166
    return-void

    .line 168
    :cond_0
    invoke-static {p0}, Lcom/onesignal/OneSignalNotificationManager;->getActiveNotifications(Landroid/content/Context;)[Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    .line 169
    .local v0, "activeNotifs":[Landroid/service/notification/StatusBarNotification;
    array-length v1, v0

    if-nez v1, :cond_1

    .line 170
    return-void

    .line 172
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 173
    .local v1, "activeNotifIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    .line 174
    .local v4, "activeNotif":Landroid/service/notification/StatusBarNotification;
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    .end local v4    # "activeNotif":Landroid/service/notification/StatusBarNotification;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 176
    :cond_2
    nop

    .line 177
    const-string v2, " AND android_notification_id NOT IN ("

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    const-string v2, ","

    invoke-static {v2, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    const-string v2, ")"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    return-void
.end method

.method static startDelayedRestoreTaskFromReceiver(Landroid/content/Context;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .line 230
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const v1, 0x7b7e1b68

    const-wide/16 v2, 0x3a98

    const/16 v4, 0x15

    if-lt v0, v4, :cond_0

    .line 231
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->INFO:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v4, "scheduleRestoreKickoffJob"

    invoke-static {v0, v4}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 234
    new-instance v0, Landroid/app/job/JobInfo$Builder;

    new-instance v4, Landroid/content/ComponentName;

    const-class v5, Lcom/onesignal/RestoreKickoffJobService;

    invoke-direct {v4, p0, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-direct {v0, v1, v4}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 236
    .local v0, "jobBuilder":Landroid/app/job/JobInfo$Builder;
    nop

    .line 237
    invoke-virtual {v0, v2, v3}, Landroid/app/job/JobInfo$Builder;->setOverrideDeadline(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    .line 238
    invoke-virtual {v1, v2, v3}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    .line 239
    invoke-virtual {v1}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v1

    .line 240
    .local v1, "job":Landroid/app/job/JobInfo;
    const-string v2, "jobscheduler"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/job/JobScheduler;

    .line 241
    .local v2, "jobScheduler":Landroid/app/job/JobScheduler;
    invoke-virtual {v2, v1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    .line 242
    .end local v0    # "jobBuilder":Landroid/app/job/JobInfo$Builder;
    .end local v1    # "job":Landroid/app/job/JobInfo;
    .end local v2    # "jobScheduler":Landroid/app/job/JobScheduler;
    goto :goto_0

    .line 244
    :cond_0
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->INFO:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v4, "scheduleRestoreKickoffAlarmTask"

    invoke-static {v0, v4}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 246
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 247
    .local v0, "intentForService":Landroid/content/Intent;
    new-instance v4, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-class v6, Lcom/onesignal/NotificationRestoreService;

    .line 248
    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 253
    const/high16 v4, 0x8000000

    invoke-static {p0, v1, v0, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 256
    .local v1, "pendingIntent":Landroid/app/PendingIntent;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    add-long/2addr v4, v2

    .line 257
    .local v4, "scheduleTime":J
    const-string v2, "alarm"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    .line 258
    .local v2, "alarm":Landroid/app/AlarmManager;
    const/4 v3, 0x1

    invoke-virtual {v2, v3, v4, v5, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 260
    .end local v0    # "intentForService":Landroid/content/Intent;
    .end local v1    # "pendingIntent":Landroid/app/PendingIntent;
    .end local v2    # "alarm":Landroid/app/AlarmManager;
    .end local v4    # "scheduleTime":J
    :goto_0
    return-void
.end method
