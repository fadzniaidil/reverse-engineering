.class Lcom/onesignal/NotificationOpenedProcessor;
.super Ljava/lang/Object;
.source "NotificationOpenedProcessor.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 51
    const-class v0, Lcom/onesignal/NotificationOpenedProcessor;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/onesignal/NotificationOpenedProcessor;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addChildNotifications(Lorg/json/JSONArray;Ljava/lang/String;Lcom/onesignal/OneSignalDbHelper;)V
    .locals 10
    .param p0, "dataArray"    # Lorg/json/JSONArray;
    .param p1, "summaryGroup"    # Ljava/lang/String;
    .param p2, "writableDb"    # Lcom/onesignal/OneSignalDbHelper;

    .line 131
    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v9, "full_data"

    aput-object v9, v3, v1

    .line 132
    .local v3, "retColumn":[Ljava/lang/String;
    new-array v5, v0, [Ljava/lang/String;

    aput-object p1, v5, v1

    .line 134
    .local v5, "whereArgs":[Ljava/lang/String;
    const-string v2, "notification"

    const-string v4, "group_id = ? AND dismissed = 0 AND opened = 0 AND is_summary = 0"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p2

    invoke-virtual/range {v1 .. v8}, Lcom/onesignal/OneSignalDbHelper;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 144
    .local v1, "cursor":Landroid/database/Cursor;
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-le v2, v0, :cond_1

    .line 145
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 148
    :cond_0
    :try_start_0
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 149
    .local v0, "jsonStr":Ljava/lang/String;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    nop

    .end local v0    # "jsonStr":Ljava/lang/String;
    goto :goto_0

    .line 150
    :catch_0
    move-exception v0

    .line 151
    .local v0, "e":Lorg/json/JSONException;
    sget-object v2, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not parse JSON of sub notification in group: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 153
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 156
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 157
    return-void
.end method

.method private static clearStatusBarNotifications(Landroid/content/Context;Lcom/onesignal/OneSignalDbHelper;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "writableDb"    # Lcom/onesignal/OneSignalDbHelper;
    .param p2, "summaryGroup"    # Ljava/lang/String;

    .line 200
    if-eqz p2, :cond_0

    .line 201
    invoke-static {p0, p1, p2}, Lcom/onesignal/NotificationSummaryManager;->clearNotificationOnSummaryClick(Landroid/content/Context;Lcom/onesignal/OneSignalDbHelper;Ljava/lang/String;)V

    goto :goto_0

    .line 203
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 206
    invoke-static {p0}, Lcom/onesignal/OneSignalNotificationManager;->getGrouplessNotifsCount(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 207
    .local v0, "grouplessCount":I
    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 208
    invoke-static {}, Lcom/onesignal/OneSignalNotificationManager;->getGrouplessSummaryId()I

    move-result v1

    .line 209
    .local v1, "groupId":I
    invoke-static {p0}, Lcom/onesignal/OneSignalNotificationManager;->getNotificationManager(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v2

    .line 210
    .local v2, "notificationManager":Landroid/app/NotificationManager;
    invoke-virtual {v2, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 214
    .end local v0    # "grouplessCount":I
    .end local v1    # "groupId":I
    .end local v2    # "notificationManager":Landroid/app/NotificationManager;
    :cond_1
    :goto_0
    return-void
.end method

.method private static handleDismissFromActionButtonPress(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .line 72
    const-string v0, "action_button"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    invoke-static {p0}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object v0

    const-string v2, "androidNotificationId"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationManagerCompat;->cancel(I)V

    .line 74
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 76
    :cond_0
    return-void
.end method

.method static handleIAMPreviewOpen(Landroid/content/Context;Lorg/json/JSONObject;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "jsonData"    # Lorg/json/JSONObject;

    .line 121
    invoke-static {p1}, Lcom/onesignal/NotificationBundleProcessor;->inAppPreviewPushUUID(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    .line 122
    .local v0, "previewUUID":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 123
    const/4 v1, 0x0

    return v1

    .line 125
    :cond_0
    invoke-static {p0}, Lcom/onesignal/OneSignal;->startOrResumeApp(Landroid/content/Context;)Z

    .line 126
    invoke-static {}, Lcom/onesignal/OneSignal;->getInAppMessageController()Lcom/onesignal/OSInAppMessageController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/onesignal/OSInAppMessageController;->displayPreviewMessage(Ljava/lang/String;)V

    .line 127
    const/4 v1, 0x1

    return v1
.end method

.method private static isOneSignalIntent(Landroid/content/Intent;)Z
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;

    .line 67
    const-string v0, "onesignalData"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "summary"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "androidNotificationId"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static markNotificationsConsumed(Landroid/content/Context;Landroid/content/Intent;Lcom/onesignal/OneSignalDbHelper;Z)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "writableDb"    # Lcom/onesignal/OneSignalDbHelper;
    .param p3, "dismissed"    # Z

    .line 160
    const-string v0, "summary"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 162
    .local v0, "summaryGroup":Ljava/lang/String;
    const/4 v1, 0x0

    .line 164
    .local v1, "whereArgs":[Ljava/lang/String;
    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 165
    invoke-static {}, Lcom/onesignal/OneSignalNotificationManager;->getGrouplessSummaryKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 166
    .local v3, "isGroupless":Z
    const/4 v4, 0x1

    if-eqz v3, :cond_0

    .line 167
    const-string v5, "group_id IS NULL"

    .local v5, "whereStr":Ljava/lang/String;
    goto :goto_0

    .line 169
    .end local v5    # "whereStr":Ljava/lang/String;
    :cond_0
    const-string v5, "group_id = ?"

    .line 170
    .restart local v5    # "whereStr":Ljava/lang/String;
    new-array v6, v4, [Ljava/lang/String;

    aput-object v0, v6, v2

    move-object v1, v6

    .line 173
    :goto_0
    if-nez p3, :cond_2

    .line 175
    invoke-static {}, Lcom/onesignal/OneSignal;->getClearGroupSummaryClick()Z

    move-result v6

    .line 176
    .local v6, "shouldDismissAll":Z
    if-nez v6, :cond_2

    .line 179
    invoke-static {p2, v0, v3}, Lcom/onesignal/OneSignalNotificationManager;->getMostRecentNotifIdFromGroup(Lcom/onesignal/OneSignalDbHelper;Ljava/lang/String;Z)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 180
    .local v7, "mostRecentId":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " AND android_notification_id = ?"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 181
    if-eqz v3, :cond_1

    new-array v4, v4, [Ljava/lang/String;

    aput-object v7, v4, v2

    goto :goto_1

    :cond_1
    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    aput-object v0, v8, v2

    aput-object v7, v8, v4

    move-object v4, v8

    :goto_1
    move-object v1, v4

    .line 186
    .end local v3    # "isGroupless":Z
    .end local v6    # "shouldDismissAll":Z
    .end local v7    # "mostRecentId":Ljava/lang/String;
    :cond_2
    goto :goto_2

    .line 187
    .end local v5    # "whereStr":Ljava/lang/String;
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "android_notification_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "androidNotificationId"

    invoke-virtual {p1, v4, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 190
    .restart local v5    # "whereStr":Ljava/lang/String;
    :goto_2
    invoke-static {p0, p2, v0}, Lcom/onesignal/NotificationOpenedProcessor;->clearStatusBarNotifications(Landroid/content/Context;Lcom/onesignal/OneSignalDbHelper;Ljava/lang/String;)V

    .line 191
    invoke-static {p1}, Lcom/onesignal/NotificationOpenedProcessor;->newContentValuesWithConsumed(Landroid/content/Intent;)Landroid/content/ContentValues;

    move-result-object v2

    const-string v3, "notification"

    invoke-virtual {p2, v3, v2, v5, v1}, Lcom/onesignal/OneSignalDbHelper;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 192
    invoke-static {p2, p0}, Lcom/onesignal/BadgeCountUpdater;->update(Lcom/onesignal/OneSignalDb;Landroid/content/Context;)V

    .line 193
    return-void
.end method

.method private static newContentValuesWithConsumed(Landroid/content/Intent;)Landroid/content/ContentValues;
    .locals 4
    .param p0, "intent"    # Landroid/content/Intent;

    .line 217
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 219
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "dismissed"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 221
    .local v2, "dismissed":Z
    const/4 v3, 0x1

    .line 224
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 221
    if-eqz v2, :cond_0

    .line 222
    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 224
    :cond_0
    const-string v1, "opened"

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 226
    :goto_0
    return-object v0
.end method

.method static processFromContext(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .line 54
    invoke-static {p1}, Lcom/onesignal/NotificationOpenedProcessor;->isOneSignalIntent(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 55
    return-void

    .line 57
    :cond_0
    invoke-static {p0}, Lcom/onesignal/OneSignal;->setAppContext(Landroid/content/Context;)V

    .line 59
    invoke-static {p0, p1}, Lcom/onesignal/NotificationOpenedProcessor;->handleDismissFromActionButtonPress(Landroid/content/Context;Landroid/content/Intent;)V

    .line 61
    invoke-static {p0, p1}, Lcom/onesignal/NotificationOpenedProcessor;->processIntent(Landroid/content/Context;Landroid/content/Intent;)V

    .line 62
    return-void
.end method

.method static processIntent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .line 79
    const-string v0, "androidNotificationId"

    const-string v1, "onesignalData"

    const-string v2, "summary"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 81
    .local v2, "summaryGroup":Ljava/lang/String;
    const-string v3, "dismissed"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 83
    .local v3, "dismissed":Z
    const/4 v5, 0x0

    .line 84
    .local v5, "dataArray":Lorg/json/JSONArray;
    const/4 v6, 0x0

    .line 85
    .local v6, "jsonData":Lorg/json/JSONObject;
    if-nez v3, :cond_1

    .line 87
    :try_start_0
    new-instance v7, Lorg/json/JSONObject;

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v6, v7

    .line 89
    invoke-static {p0, v6}, Lcom/onesignal/NotificationOpenedProcessor;->handleIAMPreviewOpen(Landroid/content/Context;Lorg/json/JSONObject;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 90
    return-void

    .line 92
    :cond_0
    invoke-virtual {p1, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v6, v0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 93
    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 94
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/onesignal/NotificationBundleProcessor;->newJsonArray(Lorg/json/JSONObject;)Lorg/json/JSONArray;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v5, v0

    .line 97
    goto :goto_0

    .line 95
    :catch_0
    move-exception v0

    .line 96
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 100
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_1
    :goto_0
    invoke-static {p0}, Lcom/onesignal/OneSignalDbHelper;->getInstance(Landroid/content/Context;)Lcom/onesignal/OneSignalDbHelper;

    move-result-object v0

    .line 103
    .local v0, "dbHelper":Lcom/onesignal/OneSignalDbHelper;
    if-nez v3, :cond_2

    if-eqz v2, :cond_2

    .line 104
    invoke-static {v5, v2, v0}, Lcom/onesignal/NotificationOpenedProcessor;->addChildNotifications(Lorg/json/JSONArray;Ljava/lang/String;Lcom/onesignal/OneSignalDbHelper;)V

    .line 106
    :cond_2
    invoke-static {p0, p1, v0, v3}, Lcom/onesignal/NotificationOpenedProcessor;->markNotificationsConsumed(Landroid/content/Context;Landroid/content/Intent;Lcom/onesignal/OneSignalDbHelper;Z)V

    .line 109
    if-nez v2, :cond_3

    .line 110
    const-string v1, "grp"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 111
    .local v1, "group":Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 112
    invoke-static {p0, v0, v1, v3}, Lcom/onesignal/NotificationSummaryManager;->updateSummaryNotificationAfterChildRemoved(Landroid/content/Context;Lcom/onesignal/OneSignalDb;Ljava/lang/String;Z)V

    .line 115
    .end local v1    # "group":Ljava/lang/String;
    :cond_3
    if-nez v3, :cond_4

    .line 116
    nop

    .line 117
    const-string v1, "from_alert"

    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v6}, Lcom/onesignal/OSNotificationFormatHelper;->getOSNotificationIdFromJson(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v4

    .line 116
    invoke-static {p0, v5, v1, v4}, Lcom/onesignal/OneSignal;->handleNotificationOpen(Landroid/content/Context;Lorg/json/JSONArray;ZLjava/lang/String;)V

    .line 118
    :cond_4
    return-void
.end method
