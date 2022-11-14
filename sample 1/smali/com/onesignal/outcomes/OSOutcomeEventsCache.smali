.class Lcom/onesignal/outcomes/OSOutcomeEventsCache;
.super Ljava/lang/Object;
.source "OSOutcomeEventsCache.java"


# static fields
.field private static final PREFS_OS_UNATTRIBUTED_UNIQUE_OUTCOME_EVENTS_SENT:Ljava/lang/String; = "PREFS_OS_UNATTRIBUTED_UNIQUE_OUTCOME_EVENTS_SENT"


# instance fields
.field private dbHelper:Lcom/onesignal/OneSignalDb;

.field private logger:Lcom/onesignal/OSLogger;

.field private preferences:Lcom/onesignal/OSSharedPreferences;


# direct methods
.method constructor <init>(Lcom/onesignal/OSLogger;Lcom/onesignal/OneSignalDb;Lcom/onesignal/OSSharedPreferences;)V
    .locals 0
    .param p1, "logger"    # Lcom/onesignal/OSLogger;
    .param p2, "dbHelper"    # Lcom/onesignal/OneSignalDb;
    .param p3, "preferences"    # Lcom/onesignal/OSSharedPreferences;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/onesignal/outcomes/OSOutcomeEventsCache;->logger:Lcom/onesignal/OSLogger;

    .line 38
    iput-object p2, p0, Lcom/onesignal/outcomes/OSOutcomeEventsCache;->dbHelper:Lcom/onesignal/OneSignalDb;

    .line 39
    iput-object p3, p0, Lcom/onesignal/outcomes/OSOutcomeEventsCache;->preferences:Lcom/onesignal/OSSharedPreferences;

    .line 40
    return-void
.end method

.method private addIdToListFromChannel(Ljava/util/List;Lorg/json/JSONArray;Lcom/onesignal/influence/model/OSInfluenceChannel;)V
    .locals 3
    .param p2, "channelIds"    # Lorg/json/JSONArray;
    .param p3, "channel"    # Lcom/onesignal/influence/model/OSInfluenceChannel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onesignal/outcomes/model/OSCachedUniqueOutcome;",
            ">;",
            "Lorg/json/JSONArray;",
            "Lcom/onesignal/influence/model/OSInfluenceChannel;",
            ")V"
        }
    .end annotation

    .line 221
    .local p1, "cachedUniqueOutcomes":Ljava/util/List;, "Ljava/util/List<Lcom/onesignal/outcomes/model/OSCachedUniqueOutcome;>;"
    if-eqz p2, :cond_0

    .line 222
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 224
    :try_start_0
    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 225
    .local v1, "influenceId":Ljava/lang/String;
    new-instance v2, Lcom/onesignal/outcomes/model/OSCachedUniqueOutcome;

    invoke-direct {v2, v1, p3}, Lcom/onesignal/outcomes/model/OSCachedUniqueOutcome;-><init>(Ljava/lang/String;Lcom/onesignal/influence/model/OSInfluenceChannel;)V

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    nop

    .end local v1    # "influenceId":Ljava/lang/String;
    goto :goto_1

    .line 226
    :catch_0
    move-exception v1

    .line 227
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 222
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 231
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private addIdsToListFromSource(Ljava/util/List;Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;)V
    .locals 3
    .param p2, "sourceBody"    # Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onesignal/outcomes/model/OSCachedUniqueOutcome;",
            ">;",
            "Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;",
            ")V"
        }
    .end annotation

    .line 234
    .local p1, "cachedUniqueOutcomes":Ljava/util/List;, "Ljava/util/List<Lcom/onesignal/outcomes/model/OSCachedUniqueOutcome;>;"
    if-eqz p2, :cond_0

    .line 235
    invoke-virtual {p2}, Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;->getInAppMessagesIds()Lorg/json/JSONArray;

    move-result-object v0

    .line 236
    .local v0, "iamIds":Lorg/json/JSONArray;
    invoke-virtual {p2}, Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;->getNotificationIds()Lorg/json/JSONArray;

    move-result-object v1

    .line 238
    .local v1, "notificationIds":Lorg/json/JSONArray;
    sget-object v2, Lcom/onesignal/influence/model/OSInfluenceChannel;->IAM:Lcom/onesignal/influence/model/OSInfluenceChannel;

    invoke-direct {p0, p1, v0, v2}, Lcom/onesignal/outcomes/OSOutcomeEventsCache;->addIdToListFromChannel(Ljava/util/List;Lorg/json/JSONArray;Lcom/onesignal/influence/model/OSInfluenceChannel;)V

    .line 239
    sget-object v2, Lcom/onesignal/influence/model/OSInfluenceChannel;->NOTIFICATION:Lcom/onesignal/influence/model/OSInfluenceChannel;

    invoke-direct {p0, p1, v1, v2}, Lcom/onesignal/outcomes/OSOutcomeEventsCache;->addIdToListFromChannel(Ljava/util/List;Lorg/json/JSONArray;Lcom/onesignal/influence/model/OSInfluenceChannel;)V

    .line 241
    .end local v0    # "iamIds":Lorg/json/JSONArray;
    .end local v1    # "notificationIds":Lorg/json/JSONArray;
    :cond_0
    return-void
.end method


# virtual methods
.method declared-synchronized deleteOldOutcomeEvent(Lcom/onesignal/outcomes/model/OSOutcomeEventParams;)V
    .locals 7
    .param p1, "event"    # Lcom/onesignal/outcomes/model/OSOutcomeEventParams;

    monitor-enter p0

    .line 69
    :try_start_0
    iget-object v0, p0, Lcom/onesignal/outcomes/OSOutcomeEventsCache;->dbHelper:Lcom/onesignal/OneSignalDb;

    const-string v1, "outcome"

    const-string v2, "timestamp = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    .line 70
    invoke-virtual {p1}, Lcom/onesignal/outcomes/model/OSOutcomeEventParams;->getTimestamp()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 69
    invoke-interface {v0, v1, v2, v3}, Lcom/onesignal/OneSignalDb;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    monitor-exit p0

    return-void

    .line 68
    .end local p0    # "this":Lcom/onesignal/outcomes/OSOutcomeEventsCache;
    .end local p1    # "event":Lcom/onesignal/outcomes/model/OSOutcomeEventParams;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized getAllEventsToSend()Ljava/util/List;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onesignal/outcomes/model/OSOutcomeEventParams;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    monitor-enter p0

    .line 138
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v0

    .line 140
    .local v2, "events":Ljava/util/List;, "Ljava/util/List<Lcom/onesignal/outcomes/model/OSOutcomeEventParams;>;"
    iget-object v3, v1, Lcom/onesignal/outcomes/OSOutcomeEventsCache;->dbHelper:Lcom/onesignal/OneSignalDb;

    const-string v4, "outcome"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-interface/range {v3 .. v10}, Lcom/onesignal/OneSignalDb;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v3, v0

    .line 149
    .local v3, "cursor":Landroid/database/Cursor;
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 152
    :cond_0
    const-string v0, "notification_influence_type"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    .line 153
    .local v4, "notificationInfluenceTypeString":Ljava/lang/String;
    invoke-static {v4}, Lcom/onesignal/influence/model/OSInfluenceType;->fromString(Ljava/lang/String;)Lcom/onesignal/influence/model/OSInfluenceType;

    move-result-object v0

    move-object v5, v0

    .line 154
    .local v5, "notificationInfluenceType":Lcom/onesignal/influence/model/OSInfluenceType;
    const-string v0, "iam_influence_type"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    .line 155
    .local v6, "iamInfluenceTypeString":Ljava/lang/String;
    invoke-static {v6}, Lcom/onesignal/influence/model/OSInfluenceType;->fromString(Ljava/lang/String;)Lcom/onesignal/influence/model/OSInfluenceType;

    move-result-object v0

    move-object v7, v0

    .line 158
    .local v7, "iamInfluenceType":Lcom/onesignal/influence/model/OSInfluenceType;
    const-string v0, "notification_ids"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 159
    .local v0, "notificationIds":Ljava/lang/String;
    if-eqz v0, :cond_1

    move-object v8, v0

    goto :goto_0

    :cond_1
    const-string v8, "[]"

    .line 160
    .end local v0    # "notificationIds":Ljava/lang/String;
    .local v8, "notificationIds":Ljava/lang/String;
    :goto_0
    const-string v0, "iam_ids"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 161
    .local v0, "iamIds":Ljava/lang/String;
    if-eqz v0, :cond_2

    move-object v9, v0

    goto :goto_1

    :cond_2
    const-string v9, "[]"

    .line 164
    .end local v0    # "iamIds":Ljava/lang/String;
    .local v9, "iamIds":Ljava/lang/String;
    :goto_1
    const-string v0, "name"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 165
    .local v11, "name":Ljava/lang/String;
    const-string v0, "weight"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getFloat(I)F

    move-result v13

    .line 166
    .local v13, "weight":F
    const-string v0, "timestamp"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    .local v14, "timestamp":J
    :try_start_1
    new-instance v0, Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;

    invoke-direct {v0}, Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;-><init>()V

    .line 170
    .local v0, "directSourceBody":Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;
    new-instance v10, Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;

    invoke-direct {v10}, Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;-><init>()V

    move-object v12, v10

    .line 171
    .local v12, "indirectSourceBody":Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;
    const/4 v10, 0x0

    .line 173
    .local v10, "source":Lcom/onesignal/outcomes/model/OSOutcomeSource;
    sget-object v16, Lcom/onesignal/outcomes/OSOutcomeEventsCache$1;->$SwitchMap$com$onesignal$influence$model$OSInfluenceType:[I

    invoke-virtual {v5}, Lcom/onesignal/influence/model/OSInfluenceType;->ordinal()I

    move-result v17

    aget v16, v16, v17
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v17, v4

    .end local v4    # "notificationInfluenceTypeString":Ljava/lang/String;
    .local v17, "notificationInfluenceTypeString":Ljava/lang/String;
    packed-switch v16, :pswitch_data_0

    .end local p0    # "this":Lcom/onesignal/outcomes/OSOutcomeEventsCache;
    move-object/from16 v18, v5

    .end local v5    # "notificationInfluenceType":Lcom/onesignal/influence/model/OSInfluenceType;
    .local v18, "notificationInfluenceType":Lcom/onesignal/influence/model/OSInfluenceType;
    goto :goto_2

    .line 184
    .end local v18    # "notificationInfluenceType":Lcom/onesignal/influence/model/OSInfluenceType;
    .restart local v5    # "notificationInfluenceType":Lcom/onesignal/influence/model/OSInfluenceType;
    .restart local p0    # "this":Lcom/onesignal/outcomes/OSOutcomeEventsCache;
    :pswitch_0
    move-object/from16 v18, v5

    goto :goto_2

    .line 179
    :pswitch_1
    :try_start_2
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4, v8}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v4}, Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;->setNotificationIds(Lorg/json/JSONArray;)V

    .line 180
    new-instance v4, Lcom/onesignal/outcomes/model/OSOutcomeSource;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object/from16 v18, v5

    const/4 v5, 0x0

    .end local v5    # "notificationInfluenceType":Lcom/onesignal/influence/model/OSInfluenceType;
    .restart local v18    # "notificationInfluenceType":Lcom/onesignal/influence/model/OSInfluenceType;
    :try_start_3
    invoke-direct {v4, v5, v12}, Lcom/onesignal/outcomes/model/OSOutcomeSource;-><init>(Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;)V

    move-object v10, v4

    .line 181
    goto :goto_2

    .line 209
    .end local v0    # "directSourceBody":Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;
    .end local v10    # "source":Lcom/onesignal/outcomes/model/OSOutcomeSource;
    .end local v12    # "indirectSourceBody":Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;
    .end local v18    # "notificationInfluenceType":Lcom/onesignal/influence/model/OSInfluenceType;
    .end local p0    # "this":Lcom/onesignal/outcomes/OSOutcomeEventsCache;
    .restart local v5    # "notificationInfluenceType":Lcom/onesignal/influence/model/OSInfluenceType;
    :catch_0
    move-exception v0

    move-object/from16 v18, v5

    .end local v5    # "notificationInfluenceType":Lcom/onesignal/influence/model/OSInfluenceType;
    .restart local v18    # "notificationInfluenceType":Lcom/onesignal/influence/model/OSInfluenceType;
    goto/16 :goto_7

    .line 175
    .end local v18    # "notificationInfluenceType":Lcom/onesignal/influence/model/OSInfluenceType;
    .restart local v0    # "directSourceBody":Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;
    .restart local v5    # "notificationInfluenceType":Lcom/onesignal/influence/model/OSInfluenceType;
    .restart local v10    # "source":Lcom/onesignal/outcomes/model/OSOutcomeSource;
    .restart local v12    # "indirectSourceBody":Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;
    :pswitch_2
    move-object/from16 v18, v5

    .end local v5    # "notificationInfluenceType":Lcom/onesignal/influence/model/OSInfluenceType;
    .restart local v18    # "notificationInfluenceType":Lcom/onesignal/influence/model/OSInfluenceType;
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4, v8}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;->setNotificationIds(Lorg/json/JSONArray;)V

    .line 176
    new-instance v4, Lcom/onesignal/outcomes/model/OSOutcomeSource;

    const/4 v5, 0x0

    invoke-direct {v4, v0, v5}, Lcom/onesignal/outcomes/model/OSOutcomeSource;-><init>(Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;)V

    move-object v10, v4

    .line 177
    nop

    .line 190
    :goto_2
    sget-object v4, Lcom/onesignal/outcomes/OSOutcomeEventsCache$1;->$SwitchMap$com$onesignal$influence$model$OSInfluenceType:[I

    invoke-virtual {v7}, Lcom/onesignal/influence/model/OSInfluenceType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_1

    goto :goto_5

    .line 201
    :pswitch_3
    goto :goto_5

    .line 196
    :pswitch_4
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4, v9}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v4}, Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;->setInAppMessagesIds(Lorg/json/JSONArray;)V

    .line 197
    if-nez v10, :cond_3

    new-instance v4, Lcom/onesignal/outcomes/model/OSOutcomeSource;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v12}, Lcom/onesignal/outcomes/model/OSOutcomeSource;-><init>(Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;)V

    goto :goto_3

    :cond_3
    invoke-virtual {v10, v12}, Lcom/onesignal/outcomes/model/OSOutcomeSource;->setIndirectBody(Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;)Lcom/onesignal/outcomes/model/OSOutcomeSource;

    move-result-object v4

    :goto_3
    move-object v10, v4

    .line 198
    goto :goto_6

    .line 192
    :pswitch_5
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4, v9}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;->setInAppMessagesIds(Lorg/json/JSONArray;)V

    .line 193
    if-nez v10, :cond_4

    new-instance v4, Lcom/onesignal/outcomes/model/OSOutcomeSource;

    const/4 v5, 0x0

    invoke-direct {v4, v0, v5}, Lcom/onesignal/outcomes/model/OSOutcomeSource;-><init>(Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;)V

    goto :goto_4

    :cond_4
    invoke-virtual {v10, v0}, Lcom/onesignal/outcomes/model/OSOutcomeSource;->setDirectBody(Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;)Lcom/onesignal/outcomes/model/OSOutcomeSource;

    move-result-object v4

    :goto_4
    move-object v10, v4

    .line 194
    goto :goto_6

    .line 207
    :goto_5
    move-object v4, v10

    .end local v10    # "source":Lcom/onesignal/outcomes/model/OSOutcomeSource;
    .local v4, "source":Lcom/onesignal/outcomes/model/OSOutcomeSource;
    :goto_6
    new-instance v5, Lcom/onesignal/outcomes/model/OSOutcomeEventParams;

    move-object v10, v5

    move-object/from16 v16, v12

    .end local v12    # "indirectSourceBody":Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;
    .local v16, "indirectSourceBody":Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;
    move-object v12, v4

    invoke-direct/range {v10 .. v15}, Lcom/onesignal/outcomes/model/OSOutcomeEventParams;-><init>(Ljava/lang/String;Lcom/onesignal/outcomes/model/OSOutcomeSource;FJ)V

    .line 208
    .local v5, "eventParams":Lcom/onesignal/outcomes/model/OSOutcomeEventParams;
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 211
    .end local v0    # "directSourceBody":Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;
    .end local v4    # "source":Lcom/onesignal/outcomes/model/OSOutcomeSource;
    .end local v5    # "eventParams":Lcom/onesignal/outcomes/model/OSOutcomeEventParams;
    .end local v16    # "indirectSourceBody":Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;
    goto :goto_8

    .line 209
    :catch_1
    move-exception v0

    goto :goto_7

    .end local v17    # "notificationInfluenceTypeString":Ljava/lang/String;
    .end local v18    # "notificationInfluenceType":Lcom/onesignal/influence/model/OSInfluenceType;
    .local v4, "notificationInfluenceTypeString":Ljava/lang/String;
    .local v5, "notificationInfluenceType":Lcom/onesignal/influence/model/OSInfluenceType;
    :catch_2
    move-exception v0

    move-object/from16 v17, v4

    move-object/from16 v18, v5

    .line 210
    .end local v4    # "notificationInfluenceTypeString":Ljava/lang/String;
    .end local v5    # "notificationInfluenceType":Lcom/onesignal/influence/model/OSInfluenceType;
    .local v0, "e":Lorg/json/JSONException;
    .restart local v17    # "notificationInfluenceTypeString":Ljava/lang/String;
    .restart local v18    # "notificationInfluenceType":Lcom/onesignal/influence/model/OSInfluenceType;
    :goto_7
    :try_start_4
    iget-object v4, v1, Lcom/onesignal/outcomes/OSOutcomeEventsCache;->logger:Lcom/onesignal/OSLogger;

    const-string v5, "Generating JSONArray from notifications ids outcome:JSON Failed."

    invoke-interface {v4, v5, v0}, Lcom/onesignal/OSLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 212
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v6    # "iamInfluenceTypeString":Ljava/lang/String;
    .end local v7    # "iamInfluenceType":Lcom/onesignal/influence/model/OSInfluenceType;
    .end local v8    # "notificationIds":Ljava/lang/String;
    .end local v9    # "iamIds":Ljava/lang/String;
    .end local v11    # "name":Ljava/lang/String;
    .end local v13    # "weight":F
    .end local v14    # "timestamp":J
    .end local v17    # "notificationInfluenceTypeString":Ljava/lang/String;
    .end local v18    # "notificationInfluenceType":Lcom/onesignal/influence/model/OSInfluenceType;
    :goto_8
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 215
    :cond_5
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 217
    monitor-exit p0

    return-object v2

    .line 137
    .end local v2    # "events":Ljava/util/List;, "Ljava/util/List<Lcom/onesignal/outcomes/model/OSOutcomeEventParams;>;"
    .end local v3    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_a

    :goto_9
    throw v0

    :goto_a
    goto :goto_9

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method declared-synchronized getNotCachedUniqueInfluencesForOutcome(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 20
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/onesignal/influence/model/OSInfluence;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/onesignal/influence/model/OSInfluence;",
            ">;"
        }
    .end annotation

    .local p2, "influences":Ljava/util/List;, "Ljava/util/List<Lcom/onesignal/influence/model/OSInfluence;>;"
    move-object/from16 v1, p0

    monitor-enter p0

    .line 277
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-object v2, v0

    .line 278
    .local v2, "uniqueInfluences":Ljava/util/List;, "Ljava/util/List<Lcom/onesignal/influence/model/OSInfluence;>;"
    const/4 v3, 0x0

    .line 281
    .local v3, "cursor":Landroid/database/Cursor;
    :try_start_1
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v4, :cond_4

    :try_start_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/onesignal/influence/model/OSInfluence;

    .line 282
    .local v4, "influence":Lcom/onesignal/influence/model/OSInfluence;
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 283
    .local v5, "availableInfluenceIds":Lorg/json/JSONArray;
    invoke-virtual {v4}, Lcom/onesignal/influence/model/OSInfluence;->getIds()Lorg/json/JSONArray;

    move-result-object v6

    .line 285
    .local v6, "influenceIds":Lorg/json/JSONArray;
    if-nez v6, :cond_0

    .line 286
    goto :goto_0

    .line 288
    :cond_0
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v7, v8, :cond_2

    .line 289
    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 290
    .local v8, "channelInfluenceId":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/onesignal/influence/model/OSInfluence;->getInfluenceChannel()Lcom/onesignal/influence/model/OSInfluenceChannel;

    move-result-object v9

    .line 292
    .local v9, "channel":Lcom/onesignal/influence/model/OSInfluenceChannel;
    const/4 v10, 0x0

    new-array v13, v10, [Ljava/lang/String;

    .line 294
    .local v13, "columns":[Ljava/lang/String;
    const-string v14, "channel_influence_id = ? AND channel_type = ? AND name = ?"

    .line 298
    .local v14, "where":Ljava/lang/String;
    const/4 v11, 0x3

    new-array v15, v11, [Ljava/lang/String;

    aput-object v8, v15, v10

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    aput-object v10, v15, v11

    const/4 v10, 0x2

    aput-object p1, v15, v10

    .line 300
    .local v15, "args":[Ljava/lang/String;
    iget-object v11, v1, Lcom/onesignal/outcomes/OSOutcomeEventsCache;->dbHelper:Lcom/onesignal/OneSignalDb;

    const-string v12, "cached_unique_outcome"

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-string v19, "1"

    invoke-interface/range {v11 .. v19}, Lcom/onesignal/OneSignalDb;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    move-object v3, v10

    .line 312
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v10

    if-nez v10, :cond_1

    .line 313
    invoke-virtual {v5, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 288
    .end local v8    # "channelInfluenceId":Ljava/lang/String;
    .end local v9    # "channel":Lcom/onesignal/influence/model/OSInfluenceChannel;
    .end local v13    # "columns":[Ljava/lang/String;
    .end local v14    # "where":Ljava/lang/String;
    .end local v15    # "args":[Ljava/lang/String;
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 316
    .end local v7    # "i":I
    :cond_2
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-lez v7, :cond_3

    .line 317
    invoke-virtual {v4}, Lcom/onesignal/influence/model/OSInfluence;->copy()Lcom/onesignal/influence/model/OSInfluence;

    move-result-object v7

    .line 318
    .local v7, "newInfluence":Lcom/onesignal/influence/model/OSInfluence;
    invoke-virtual {v7, v5}, Lcom/onesignal/influence/model/OSInfluence;->setIds(Lorg/json/JSONArray;)V

    .line 319
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 321
    .end local v4    # "influence":Lcom/onesignal/influence/model/OSInfluence;
    .end local v5    # "availableInfluenceIds":Lorg/json/JSONArray;
    .end local v6    # "influenceIds":Lorg/json/JSONArray;
    .end local v7    # "newInfluence":Lcom/onesignal/influence/model/OSInfluence;
    :cond_3
    goto :goto_0

    .line 325
    :catchall_0
    move-exception v0

    goto :goto_4

    .line 322
    :catch_0
    move-exception v0

    goto :goto_2

    .line 325
    :cond_4
    if-eqz v3, :cond_5

    :try_start_3
    invoke-interface {v3}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_5

    .line 326
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_3

    .line 325
    .end local p0    # "this":Lcom/onesignal/outcomes/OSOutcomeEventsCache;
    :catchall_1
    move-exception v0

    goto :goto_4

    .line 322
    :catch_1
    move-exception v0

    .line 323
    .local v0, "e":Lorg/json/JSONException;
    :goto_2
    :try_start_4
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 325
    .end local v0    # "e":Lorg/json/JSONException;
    if-eqz v3, :cond_5

    :try_start_5
    invoke-interface {v3}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_5

    .line 326
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 329
    :cond_5
    :goto_3
    monitor-exit p0

    return-object v2

    .line 325
    :goto_4
    if-eqz v3, :cond_6

    :try_start_6
    invoke-interface {v3}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_6

    .line 326
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 276
    .end local v2    # "uniqueInfluences":Ljava/util/List;, "Ljava/util/List<Lcom/onesignal/influence/model/OSInfluence;>;"
    .end local v3    # "cursor":Landroid/database/Cursor;
    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "influences":Ljava/util/List;, "Ljava/util/List<Lcom/onesignal/influence/model/OSInfluence;>;"
    :catchall_2
    move-exception v0

    monitor-exit p0

    goto :goto_6

    :goto_5
    throw v0

    :goto_6
    goto :goto_5
.end method

.method getUnattributedUniqueOutcomeEventsSentByChannel()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/onesignal/outcomes/OSOutcomeEventsCache;->preferences:Lcom/onesignal/OSSharedPreferences;

    .line 51
    invoke-interface {v0}, Lcom/onesignal/OSSharedPreferences;->getPreferencesName()Ljava/lang/String;

    move-result-object v1

    .line 50
    const-string v2, "PREFS_OS_UNATTRIBUTED_UNIQUE_OUTCOME_EVENTS_SENT"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/onesignal/OSSharedPreferences;->getStringSet(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method isOutcomesV2ServiceEnabled()Z
    .locals 4

    .line 43
    iget-object v0, p0, Lcom/onesignal/outcomes/OSOutcomeEventsCache;->preferences:Lcom/onesignal/OSSharedPreferences;

    .line 44
    invoke-interface {v0}, Lcom/onesignal/OSSharedPreferences;->getPreferencesName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/onesignal/outcomes/OSOutcomeEventsCache;->preferences:Lcom/onesignal/OSSharedPreferences;

    .line 45
    invoke-interface {v2}, Lcom/onesignal/OSSharedPreferences;->getOutcomesV2KeyName()Ljava/lang/String;

    move-result-object v2

    .line 43
    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/onesignal/OSSharedPreferences;->getBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method declared-synchronized saveOutcomeEvent(Lcom/onesignal/outcomes/model/OSOutcomeEventParams;)V
    .locals 8
    .param p1, "eventParams"    # Lcom/onesignal/outcomes/model/OSOutcomeEventParams;

    monitor-enter p0

    .line 80
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 81
    .local v0, "notificationIds":Lorg/json/JSONArray;
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 82
    .local v1, "iamIds":Lorg/json/JSONArray;
    sget-object v2, Lcom/onesignal/influence/model/OSInfluenceType;->UNATTRIBUTED:Lcom/onesignal/influence/model/OSInfluenceType;

    .line 83
    .local v2, "notificationInfluenceType":Lcom/onesignal/influence/model/OSInfluenceType;
    sget-object v3, Lcom/onesignal/influence/model/OSInfluenceType;->UNATTRIBUTED:Lcom/onesignal/influence/model/OSInfluenceType;

    .line 85
    .local v3, "iamInfluenceType":Lcom/onesignal/influence/model/OSInfluenceType;
    invoke-virtual {p1}, Lcom/onesignal/outcomes/model/OSOutcomeEventParams;->getOutcomeSource()Lcom/onesignal/outcomes/model/OSOutcomeSource;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 86
    invoke-virtual {p1}, Lcom/onesignal/outcomes/model/OSOutcomeEventParams;->getOutcomeSource()Lcom/onesignal/outcomes/model/OSOutcomeSource;

    move-result-object v4

    .line 88
    .local v4, "source":Lcom/onesignal/outcomes/model/OSOutcomeSource;
    invoke-virtual {v4}, Lcom/onesignal/outcomes/model/OSOutcomeSource;->getDirectBody()Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 89
    invoke-virtual {v4}, Lcom/onesignal/outcomes/model/OSOutcomeSource;->getDirectBody()Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;

    move-result-object v5

    .line 91
    .local v5, "directBody":Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;
    invoke-virtual {v5}, Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;->getNotificationIds()Lorg/json/JSONArray;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v5}, Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;->getNotificationIds()Lorg/json/JSONArray;

    move-result-object v6

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-lez v6, :cond_0

    .line 92
    sget-object v6, Lcom/onesignal/influence/model/OSInfluenceType;->DIRECT:Lcom/onesignal/influence/model/OSInfluenceType;

    move-object v2, v6

    .line 93
    invoke-virtual {v4}, Lcom/onesignal/outcomes/model/OSOutcomeSource;->getDirectBody()Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;

    move-result-object v6

    invoke-virtual {v6}, Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;->getNotificationIds()Lorg/json/JSONArray;

    move-result-object v6

    move-object v0, v6

    .line 96
    .end local p0    # "this":Lcom/onesignal/outcomes/OSOutcomeEventsCache;
    :cond_0
    invoke-virtual {v5}, Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;->getInAppMessagesIds()Lorg/json/JSONArray;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v5}, Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;->getInAppMessagesIds()Lorg/json/JSONArray;

    move-result-object v6

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-lez v6, :cond_1

    .line 97
    sget-object v6, Lcom/onesignal/influence/model/OSInfluenceType;->DIRECT:Lcom/onesignal/influence/model/OSInfluenceType;

    move-object v3, v6

    .line 98
    invoke-virtual {v4}, Lcom/onesignal/outcomes/model/OSOutcomeSource;->getDirectBody()Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;

    move-result-object v6

    invoke-virtual {v6}, Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;->getInAppMessagesIds()Lorg/json/JSONArray;

    move-result-object v6

    move-object v1, v6

    .line 102
    .end local v5    # "directBody":Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;
    :cond_1
    invoke-virtual {v4}, Lcom/onesignal/outcomes/model/OSOutcomeSource;->getIndirectBody()Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 103
    invoke-virtual {v4}, Lcom/onesignal/outcomes/model/OSOutcomeSource;->getIndirectBody()Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;

    move-result-object v5

    .line 105
    .local v5, "indirectBody":Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;
    invoke-virtual {v5}, Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;->getNotificationIds()Lorg/json/JSONArray;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {v5}, Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;->getNotificationIds()Lorg/json/JSONArray;

    move-result-object v6

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-lez v6, :cond_2

    .line 106
    sget-object v6, Lcom/onesignal/influence/model/OSInfluenceType;->INDIRECT:Lcom/onesignal/influence/model/OSInfluenceType;

    move-object v2, v6

    .line 107
    invoke-virtual {v4}, Lcom/onesignal/outcomes/model/OSOutcomeSource;->getIndirectBody()Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;

    move-result-object v6

    invoke-virtual {v6}, Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;->getNotificationIds()Lorg/json/JSONArray;

    move-result-object v6

    move-object v0, v6

    .line 110
    :cond_2
    invoke-virtual {v5}, Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;->getInAppMessagesIds()Lorg/json/JSONArray;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual {v5}, Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;->getInAppMessagesIds()Lorg/json/JSONArray;

    move-result-object v6

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-lez v6, :cond_3

    .line 111
    sget-object v6, Lcom/onesignal/influence/model/OSInfluenceType;->INDIRECT:Lcom/onesignal/influence/model/OSInfluenceType;

    move-object v3, v6

    .line 112
    invoke-virtual {v4}, Lcom/onesignal/outcomes/model/OSOutcomeSource;->getIndirectBody()Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;

    move-result-object v6

    invoke-virtual {v6}, Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;->getInAppMessagesIds()Lorg/json/JSONArray;

    move-result-object v6

    move-object v1, v6

    .line 116
    .end local v4    # "source":Lcom/onesignal/outcomes/model/OSOutcomeSource;
    .end local v5    # "indirectBody":Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;
    :cond_3
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 118
    .local v4, "values":Landroid/content/ContentValues;
    const-string v5, "notification_ids"

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    const-string v5, "iam_ids"

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    const-string v5, "notification_influence_type"

    invoke-virtual {v2}, Lcom/onesignal/influence/model/OSInfluenceType;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    const-string v5, "iam_influence_type"

    invoke-virtual {v3}, Lcom/onesignal/influence/model/OSInfluenceType;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    const-string v5, "name"

    invoke-virtual {p1}, Lcom/onesignal/outcomes/model/OSOutcomeEventParams;->getOutcomeId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    const-string v5, "weight"

    invoke-virtual {p1}, Lcom/onesignal/outcomes/model/OSOutcomeEventParams;->getWeight()Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 126
    const-string v5, "timestamp"

    invoke-virtual {p1}, Lcom/onesignal/outcomes/model/OSOutcomeEventParams;->getTimestamp()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 128
    iget-object v5, p0, Lcom/onesignal/outcomes/OSOutcomeEventsCache;->dbHelper:Lcom/onesignal/OneSignalDb;

    const-string v6, "outcome"

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7, v4}, Lcom/onesignal/OneSignalDb;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    monitor-exit p0

    return-void

    .line 79
    .end local v0    # "notificationIds":Lorg/json/JSONArray;
    .end local v1    # "iamIds":Lorg/json/JSONArray;
    .end local v2    # "notificationInfluenceType":Lcom/onesignal/influence/model/OSInfluenceType;
    .end local v3    # "iamInfluenceType":Lcom/onesignal/influence/model/OSInfluenceType;
    .end local v4    # "values":Landroid/content/ContentValues;
    .end local p1    # "eventParams":Lcom/onesignal/outcomes/model/OSOutcomeEventParams;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method saveUnattributedUniqueOutcomeEventsSentByChannel(Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 57
    .local p1, "unattributedUniqueOutcomeEvents":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/onesignal/outcomes/OSOutcomeEventsCache;->preferences:Lcom/onesignal/OSSharedPreferences;

    .line 58
    invoke-interface {v0}, Lcom/onesignal/OSSharedPreferences;->getPreferencesName()Ljava/lang/String;

    move-result-object v1

    .line 57
    const-string v2, "PREFS_OS_UNATTRIBUTED_UNIQUE_OUTCOME_EVENTS_SENT"

    invoke-interface {v0, v1, v2, p1}, Lcom/onesignal/OSSharedPreferences;->saveStringSet(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 62
    return-void
.end method

.method declared-synchronized saveUniqueOutcomeEventParams(Lcom/onesignal/outcomes/model/OSOutcomeEventParams;)V
    .locals 10
    .param p1, "eventParams"    # Lcom/onesignal/outcomes/model/OSOutcomeEventParams;

    monitor-enter p0

    .line 248
    :try_start_0
    iget-object v0, p0, Lcom/onesignal/outcomes/OSOutcomeEventsCache;->logger:Lcom/onesignal/OSLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OneSignal saveUniqueOutcomeEventParams: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/onesignal/outcomes/model/OSOutcomeEventParams;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/onesignal/OSLogger;->debug(Ljava/lang/String;)V

    .line 249
    invoke-virtual {p1}, Lcom/onesignal/outcomes/model/OSOutcomeEventParams;->getOutcomeSource()Lcom/onesignal/outcomes/model/OSOutcomeSource;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 250
    monitor-exit p0

    return-void

    .line 252
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lcom/onesignal/outcomes/model/OSOutcomeEventParams;->getOutcomeId()Ljava/lang/String;

    move-result-object v0

    .line 253
    .local v0, "outcomeName":Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 255
    .local v1, "cachedUniqueOutcomes":Ljava/util/List;, "Ljava/util/List<Lcom/onesignal/outcomes/model/OSCachedUniqueOutcome;>;"
    invoke-virtual {p1}, Lcom/onesignal/outcomes/model/OSOutcomeEventParams;->getOutcomeSource()Lcom/onesignal/outcomes/model/OSOutcomeSource;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onesignal/outcomes/model/OSOutcomeSource;->getDirectBody()Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;

    move-result-object v2

    .line 256
    .local v2, "directBody":Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;
    invoke-virtual {p1}, Lcom/onesignal/outcomes/model/OSOutcomeEventParams;->getOutcomeSource()Lcom/onesignal/outcomes/model/OSOutcomeSource;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onesignal/outcomes/model/OSOutcomeSource;->getIndirectBody()Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;

    move-result-object v3

    .line 258
    .local v3, "indirectBody":Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;
    invoke-direct {p0, v1, v2}, Lcom/onesignal/outcomes/OSOutcomeEventsCache;->addIdsToListFromSource(Ljava/util/List;Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;)V

    .line 259
    invoke-direct {p0, v1, v3}, Lcom/onesignal/outcomes/OSOutcomeEventsCache;->addIdsToListFromSource(Ljava/util/List;Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;)V

    .line 261
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/onesignal/outcomes/model/OSCachedUniqueOutcome;

    .line 262
    .local v5, "uniqueOutcome":Lcom/onesignal/outcomes/model/OSCachedUniqueOutcome;
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 264
    .local v6, "values":Landroid/content/ContentValues;
    const-string v7, "channel_influence_id"

    invoke-virtual {v5}, Lcom/onesignal/outcomes/model/OSCachedUniqueOutcome;->getInfluenceId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    const-string v7, "channel_type"

    invoke-virtual {v5}, Lcom/onesignal/outcomes/model/OSCachedUniqueOutcome;->getChannel()Lcom/onesignal/influence/model/OSInfluenceChannel;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    const-string v7, "name"

    invoke-virtual {v6, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    iget-object v7, p0, Lcom/onesignal/outcomes/OSOutcomeEventsCache;->dbHelper:Lcom/onesignal/OneSignalDb;

    const-string v8, "cached_unique_outcome"

    const/4 v9, 0x0

    invoke-interface {v7, v8, v9, v6}, Lcom/onesignal/OneSignalDb;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 269
    .end local v5    # "uniqueOutcome":Lcom/onesignal/outcomes/model/OSCachedUniqueOutcome;
    .end local v6    # "values":Landroid/content/ContentValues;
    goto :goto_0

    .line 270
    .end local p0    # "this":Lcom/onesignal/outcomes/OSOutcomeEventsCache;
    :cond_1
    monitor-exit p0

    return-void

    .line 247
    .end local v0    # "outcomeName":Ljava/lang/String;
    .end local v1    # "cachedUniqueOutcomes":Ljava/util/List;, "Ljava/util/List<Lcom/onesignal/outcomes/model/OSCachedUniqueOutcome;>;"
    .end local v2    # "directBody":Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;
    .end local v3    # "indirectBody":Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;
    .end local p1    # "eventParams":Lcom/onesignal/outcomes/model/OSOutcomeEventParams;
    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method
