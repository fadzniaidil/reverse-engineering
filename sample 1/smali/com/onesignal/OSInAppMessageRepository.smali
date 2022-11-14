.class Lcom/onesignal/OSInAppMessageRepository;
.super Ljava/lang/Object;
.source "OSInAppMessageRepository.java"


# static fields
.field static final IAM_CACHE_DATA_LIFETIME:J = 0xed4e00L


# instance fields
.field private final dbHelper:Lcom/onesignal/OneSignalDbHelper;


# direct methods
.method constructor <init>(Lcom/onesignal/OneSignalDbHelper;)V
    .locals 0
    .param p1, "dbHelper"    # Lcom/onesignal/OneSignalDbHelper;

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/onesignal/OSInAppMessageRepository;->dbHelper:Lcom/onesignal/OneSignalDbHelper;

    .line 22
    return-void
.end method

.method private cleanInAppMessageClickedClickIds(Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 193
    .local p1, "oldClickedClickIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 194
    sget-object v0, Lcom/onesignal/OneSignalPrefs;->PREFS_ONESIGNAL:Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "PREFS_OS_CLICKED_CLICK_IDS_IAMS"

    invoke-static {v0, v2, v1}, Lcom/onesignal/OneSignalPrefs;->getStringSet(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 199
    .local v0, "clickedClickIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 200
    invoke-interface {v0, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 201
    sget-object v1, Lcom/onesignal/OneSignalPrefs;->PREFS_ONESIGNAL:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/onesignal/OneSignalPrefs;->saveStringSet(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 207
    .end local v0    # "clickedClickIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_0
    return-void
.end method

.method private cleanInAppMessageIds(Ljava/util/Set;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 153
    .local p1, "oldMessageIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 154
    sget-object v0, Lcom/onesignal/OneSignalPrefs;->PREFS_ONESIGNAL:Ljava/lang/String;

    const-string v1, "PREFS_OS_DISPLAYED_IAMS"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/onesignal/OneSignalPrefs;->getStringSet(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 159
    .local v0, "dismissedMessages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v3, Lcom/onesignal/OneSignalPrefs;->PREFS_ONESIGNAL:Ljava/lang/String;

    const-string v4, "PREFS_OS_IMPRESSIONED_IAMS"

    invoke-static {v3, v4, v2}, Lcom/onesignal/OneSignalPrefs;->getStringSet(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    .line 164
    .local v2, "impressionedMessages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 165
    invoke-interface {v0, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 166
    sget-object v3, Lcom/onesignal/OneSignalPrefs;->PREFS_ONESIGNAL:Ljava/lang/String;

    invoke-static {v3, v1, v0}, Lcom/onesignal/OneSignalPrefs;->saveStringSet(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 172
    :cond_0
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 173
    invoke-interface {v2, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 174
    sget-object v1, Lcom/onesignal/OneSignalPrefs;->PREFS_ONESIGNAL:Ljava/lang/String;

    invoke-static {v1, v4, v2}, Lcom/onesignal/OneSignalPrefs;->saveStringSet(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 180
    .end local v0    # "dismissedMessages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v2    # "impressionedMessages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    return-void
.end method


# virtual methods
.method declared-synchronized cleanCachedInAppMessages()V
    .locals 14

    monitor-enter p0

    .line 82
    const/4 v0, 0x2

    :try_start_0
    new-array v3, v0, [Ljava/lang/String;

    const-string v0, "message_id"

    const/4 v1, 0x0

    aput-object v0, v3, v1

    const-string v0, "click_ids"

    const/4 v2, 0x1

    aput-object v0, v3, v2

    .line 87
    .local v3, "retColumns":[Ljava/lang/String;
    const-string v0, "last_display < ?"

    .line 89
    .local v0, "whereStr":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    const-wide/32 v6, 0xed4e00

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    move-object v9, v4

    .line 90
    .local v9, "sixMonthsAgoInSeconds":Ljava/lang/String;
    new-array v2, v2, [Ljava/lang/String;

    aput-object v9, v2, v1

    move-object v10, v2

    .line 92
    .local v10, "whereArgs":[Ljava/lang/String;
    invoke-static {}, Lcom/onesignal/OSUtils;->newConcurrentSet()Ljava/util/Set;

    move-result-object v1

    move-object v11, v1

    .line 93
    .local v11, "oldMessageIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {}, Lcom/onesignal/OSUtils;->newConcurrentSet()Ljava/util/Set;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-object v12, v1

    .line 95
    .local v12, "oldClickedClickIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v13, 0x0

    .line 97
    .local v13, "cursor":Landroid/database/Cursor;
    :try_start_1
    iget-object v1, p0, Lcom/onesignal/OSInAppMessageRepository;->dbHelper:Lcom/onesignal/OneSignalDbHelper;

    const-string v2, "in_app_message"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, v0

    move-object v5, v10

    invoke-virtual/range {v1 .. v8}, Lcom/onesignal/OneSignalDbHelper;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    move-object v13, v1

    .line 105
    if-eqz v13, :cond_3

    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 111
    :cond_0
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_2

    .line 113
    :cond_1
    :try_start_2
    const-string v1, "message_id"

    .line 114
    invoke-interface {v13, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 113
    invoke-interface {v13, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 116
    .local v1, "oldMessageId":Ljava/lang/String;
    const-string v2, "click_ids"

    .line 117
    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 116
    invoke-interface {v13, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 120
    .local v2, "oldClickIds":Ljava/lang/String;
    invoke-interface {v11, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 121
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/onesignal/OSUtils;->newStringSetFromJSONArray(Lorg/json/JSONArray;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v12, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 122
    nop

    .end local v1    # "oldMessageId":Ljava/lang/String;
    .end local v2    # "oldClickIds":Ljava/lang/String;
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v1, :cond_1

    goto :goto_0

    .line 127
    :catchall_0
    move-exception v1

    goto :goto_4

    .line 124
    :catch_0
    move-exception v1

    goto :goto_2

    .line 127
    :cond_2
    :goto_0
    if-eqz v13, :cond_5

    :try_start_3
    invoke-interface {v13}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_5

    .line 128
    invoke-interface {v13}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_3

    .line 106
    .end local p0    # "this":Lcom/onesignal/OSInAppMessageRepository;
    :cond_3
    :goto_1
    :try_start_4
    sget-object v1, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v2, "Attempted to clean 6 month old IAM data, but none exists!"

    invoke-static {v1, v2}, Lcom/onesignal/OneSignal;->onesignalLog(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 127
    if-eqz v13, :cond_4

    :try_start_5
    invoke-interface {v13}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_4

    .line 128
    invoke-interface {v13}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 107
    :cond_4
    monitor-exit p0

    return-void

    .line 127
    :catchall_1
    move-exception v1

    goto :goto_4

    .line 124
    :catch_1
    move-exception v1

    .line 125
    .local v1, "e":Lorg/json/JSONException;
    :goto_2
    :try_start_6
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 127
    .end local v1    # "e":Lorg/json/JSONException;
    if-eqz v13, :cond_5

    :try_start_7
    invoke-interface {v13}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_5

    .line 128
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 131
    :cond_5
    :goto_3
    iget-object v1, p0, Lcom/onesignal/OSInAppMessageRepository;->dbHelper:Lcom/onesignal/OneSignalDbHelper;

    const-string v2, "in_app_message"

    invoke-virtual {v1, v2, v0, v10}, Lcom/onesignal/OneSignalDbHelper;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 137
    invoke-direct {p0, v11}, Lcom/onesignal/OSInAppMessageRepository;->cleanInAppMessageIds(Ljava/util/Set;)V

    .line 138
    invoke-direct {p0, v12}, Lcom/onesignal/OSInAppMessageRepository;->cleanInAppMessageClickedClickIds(Ljava/util/Set;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 139
    monitor-exit p0

    return-void

    .line 127
    :goto_4
    if-eqz v13, :cond_6

    :try_start_8
    invoke-interface {v13}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_6

    .line 128
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 81
    .end local v0    # "whereStr":Ljava/lang/String;
    .end local v3    # "retColumns":[Ljava/lang/String;
    .end local v9    # "sixMonthsAgoInSeconds":Ljava/lang/String;
    .end local v10    # "whereArgs":[Ljava/lang/String;
    .end local v11    # "oldMessageIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v12    # "oldClickedClickIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v13    # "cursor":Landroid/database/Cursor;
    :catchall_2
    move-exception v0

    monitor-exit p0

    goto :goto_6

    :goto_5
    throw v0

    :goto_6
    goto :goto_5
.end method

.method declared-synchronized getCachedInAppMessages()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onesignal/OSInAppMessage;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 41
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 42
    .local v0, "inAppMessages":Ljava/util/List;, "Ljava/util/List<Lcom/onesignal/OSInAppMessage;>;"
    const/4 v1, 0x0

    .line 45
    .local v1, "cursor":Landroid/database/Cursor;
    :try_start_1
    iget-object v2, p0, Lcom/onesignal/OSInAppMessageRepository;->dbHelper:Lcom/onesignal/OneSignalDbHelper;

    const-string v3, "in_app_message"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Lcom/onesignal/OneSignalDbHelper;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move-object v1, v2

    .line 55
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v2, :cond_2

    .line 57
    :cond_0
    :try_start_2
    const-string v2, "message_id"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 58
    .local v2, "messageId":Ljava/lang/String;
    const-string v3, "click_ids"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 59
    .local v3, "clickIds":Ljava/lang/String;
    const-string v4, "display_quantity"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 60
    .local v4, "displayQuantity":I
    const-string v5, "last_display"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 61
    .local v5, "lastDisplay":J
    const-string v7, "displayed_in_session"

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    goto :goto_0

    :cond_1
    const/4 v8, 0x0

    :goto_0
    move v7, v8

    .line 63
    .local v7, "displayed":Z
    new-instance v8, Lorg/json/JSONArray;

    invoke-direct {v8, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-static {v8}, Lcom/onesignal/OSUtils;->newStringSetFromJSONArray(Lorg/json/JSONArray;)Ljava/util/Set;

    move-result-object v8

    .line 65
    .local v8, "clickIdsSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v9, Lcom/onesignal/OSInAppMessage;

    new-instance v10, Lcom/onesignal/OSInAppMessageRedisplayStats;

    invoke-direct {v10, v4, v5, v6}, Lcom/onesignal/OSInAppMessageRedisplayStats;-><init>(IJ)V

    invoke-direct {v9, v2, v8, v7, v10}, Lcom/onesignal/OSInAppMessage;-><init>(Ljava/lang/String;Ljava/util/Set;ZLcom/onesignal/OSInAppMessageRedisplayStats;)V

    .line 66
    .local v9, "inAppMessage":Lcom/onesignal/OSInAppMessage;
    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    nop

    .end local v2    # "messageId":Ljava/lang/String;
    .end local v3    # "clickIds":Ljava/lang/String;
    .end local v4    # "displayQuantity":I
    .end local v5    # "lastDisplay":J
    .end local v7    # "displayed":Z
    .end local v8    # "clickIdsSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v9    # "inAppMessage":Lcom/onesignal/OSInAppMessage;
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v2, :cond_0

    goto :goto_1

    .line 72
    :catchall_0
    move-exception v2

    goto :goto_4

    .line 69
    :catch_0
    move-exception v2

    goto :goto_2

    .line 72
    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_3

    .line 73
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_3

    .line 72
    .end local p0    # "this":Lcom/onesignal/OSInAppMessageRepository;
    :catchall_1
    move-exception v2

    goto :goto_4

    .line 69
    :catch_1
    move-exception v2

    .line 70
    .local v2, "e":Lorg/json/JSONException;
    :goto_2
    :try_start_4
    sget-object v3, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v4, "Generating JSONArray from iam click ids:JSON Failed."

    invoke-static {v3, v4, v2}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 72
    .end local v2    # "e":Lorg/json/JSONException;
    if-eqz v1, :cond_3

    :try_start_5
    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_3

    .line 73
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 76
    :cond_3
    :goto_3
    monitor-exit p0

    return-object v0

    .line 72
    :goto_4
    if-eqz v1, :cond_4

    :try_start_6
    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_4

    .line 73
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 40
    .end local v0    # "inAppMessages":Ljava/util/List;, "Ljava/util/List<Lcom/onesignal/OSInAppMessage;>;"
    .end local v1    # "cursor":Landroid/database/Cursor;
    :catchall_2
    move-exception v0

    monitor-exit p0

    goto :goto_6

    :goto_5
    throw v0

    :goto_6
    goto :goto_5
.end method

.method declared-synchronized saveInAppMessage(Lcom/onesignal/OSInAppMessage;)V
    .locals 7
    .param p1, "inAppMessage"    # Lcom/onesignal/OSInAppMessage;

    monitor-enter p0

    .line 26
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 27
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "message_id"

    iget-object v2, p1, Lcom/onesignal/OSInAppMessage;->messageId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    const-string v1, "display_quantity"

    invoke-virtual {p1}, Lcom/onesignal/OSInAppMessage;->getRedisplayStats()Lcom/onesignal/OSInAppMessageRedisplayStats;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onesignal/OSInAppMessageRedisplayStats;->getDisplayQuantity()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 29
    const-string v1, "last_display"

    invoke-virtual {p1}, Lcom/onesignal/OSInAppMessage;->getRedisplayStats()Lcom/onesignal/OSInAppMessageRedisplayStats;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onesignal/OSInAppMessageRedisplayStats;->getLastDisplayTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 30
    const-string v1, "click_ids"

    invoke-virtual {p1}, Lcom/onesignal/OSInAppMessage;->getClickedClickIds()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    const-string v1, "displayed_in_session"

    invoke-virtual {p1}, Lcom/onesignal/OSInAppMessage;->isDisplayedInSession()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 33
    iget-object v1, p0, Lcom/onesignal/OSInAppMessageRepository;->dbHelper:Lcom/onesignal/OneSignalDbHelper;

    const-string v2, "in_app_message"

    const-string v3, "message_id = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p1, Lcom/onesignal/OSInAppMessage;->messageId:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/onesignal/OneSignalDbHelper;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 35
    .local v1, "rowsUpdated":I
    if-nez v1, :cond_0

    .line 36
    iget-object v2, p0, Lcom/onesignal/OSInAppMessageRepository;->dbHelper:Lcom/onesignal/OneSignalDbHelper;

    const-string v3, "in_app_message"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v0}, Lcom/onesignal/OneSignalDbHelper;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    .end local p0    # "this":Lcom/onesignal/OSInAppMessageRepository;
    :cond_0
    monitor-exit p0

    return-void

    .line 25
    .end local v0    # "values":Landroid/content/ContentValues;
    .end local v1    # "rowsUpdated":I
    .end local p1    # "inAppMessage":Lcom/onesignal/OSInAppMessage;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
