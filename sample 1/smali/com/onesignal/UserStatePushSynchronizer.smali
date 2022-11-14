.class Lcom/onesignal/UserStatePushSynchronizer;
.super Lcom/onesignal/UserStateSynchronizer;
.source "UserStatePushSynchronizer.java"


# static fields
.field private static serverSuccess:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .line 13
    sget-object v0, Lcom/onesignal/OneSignalStateSynchronizer$UserStateSynchronizerType;->PUSH:Lcom/onesignal/OneSignalStateSynchronizer$UserStateSynchronizerType;

    invoke-direct {p0, v0}, Lcom/onesignal/UserStateSynchronizer;-><init>(Lcom/onesignal/OneSignalStateSynchronizer$UserStateSynchronizerType;)V

    .line 14
    return-void
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .line 10
    sput-boolean p0, Lcom/onesignal/UserStatePushSynchronizer;->serverSuccess:Z

    return p0
.end method


# virtual methods
.method protected addOnSessionOrCreateExtras(Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "jsonBody"    # Lorg/json/JSONObject;

    .line 166
    return-void
.end method

.method protected fireEventsForUpdateFailure(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "jsonFields"    # Lorg/json/JSONObject;

    .line 179
    const-string v0, "email"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    invoke-static {}, Lcom/onesignal/OneSignal;->fireEmailUpdateFailure()V

    .line 181
    :cond_0
    return-void
.end method

.method getExternalId(Z)Ljava/lang/String;
    .locals 4
    .param p1, "fromServer"    # Z

    .line 81
    iget-object v0, p0, Lcom/onesignal/UserStatePushSynchronizer;->syncLock:Ljava/lang/Object;

    monitor-enter v0

    .line 82
    :try_start_0
    iget-object v1, p0, Lcom/onesignal/UserStatePushSynchronizer;->toSyncUserState:Lcom/onesignal/UserState;

    iget-object v1, v1, Lcom/onesignal/UserState;->syncValues:Lorg/json/JSONObject;

    const-string v2, "external_user_id"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 83
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected getId()Ljava/lang/String;
    .locals 1

    .line 157
    invoke-static {}, Lcom/onesignal/OneSignal;->getUserId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getLogLevel()Lcom/onesignal/OneSignal$LOG_LEVEL;
    .locals 1

    .line 23
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    return-object v0
.end method

.method getSubscribed()Z
    .locals 1

    .line 28
    invoke-virtual {p0}, Lcom/onesignal/UserStatePushSynchronizer;->getToSyncUserState()Lcom/onesignal/UserState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onesignal/UserState;->isSubscribed()Z

    move-result v0

    return v0
.end method

.method getTags(Z)Lcom/onesignal/UserStateSynchronizer$GetTagsResult;
    .locals 5
    .param p1, "fromServer"    # Z

    .line 35
    if-eqz p1, :cond_0

    .line 36
    invoke-static {}, Lcom/onesignal/OneSignal;->getUserId()Ljava/lang/String;

    move-result-object v0

    .line 37
    .local v0, "userId":Ljava/lang/String;
    invoke-static {}, Lcom/onesignal/OneSignal;->getSavedAppId()Ljava/lang/String;

    move-result-object v1

    .line 39
    .local v1, "appId":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "players/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "?app_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/onesignal/UserStatePushSynchronizer$1;

    invoke-direct {v3, p0}, Lcom/onesignal/UserStatePushSynchronizer$1;-><init>(Lcom/onesignal/UserStatePushSynchronizer;)V

    const-string v4, "CACHE_KEY_GET_TAGS"

    invoke-static {v2, v3, v4}, Lcom/onesignal/OneSignalRestClient;->getSync(Ljava/lang/String;Lcom/onesignal/OneSignalRestClient$ResponseHandler;Ljava/lang/String;)V

    .line 74
    .end local v0    # "userId":Ljava/lang/String;
    .end local v1    # "appId":Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lcom/onesignal/UserStatePushSynchronizer;->syncLock:Ljava/lang/Object;

    monitor-enter v0

    .line 75
    :try_start_0
    new-instance v1, Lcom/onesignal/UserStateSynchronizer$GetTagsResult;

    sget-boolean v2, Lcom/onesignal/UserStatePushSynchronizer;->serverSuccess:Z

    iget-object v3, p0, Lcom/onesignal/UserStatePushSynchronizer;->toSyncUserState:Lcom/onesignal/UserState;

    iget-object v3, v3, Lcom/onesignal/UserState;->syncValues:Lorg/json/JSONObject;

    const-string v4, "tags"

    invoke-static {v3, v4}, Lcom/onesignal/JSONUtils;->getJSONObjectWithoutBlankValues(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/onesignal/UserStateSynchronizer$GetTagsResult;-><init>(ZLorg/json/JSONObject;)V

    monitor-exit v0

    return-object v1

    .line 76
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getUserSubscribePreference()Z
    .locals 3

    .line 143
    invoke-virtual {p0}, Lcom/onesignal/UserStatePushSynchronizer;->getToSyncUserState()Lcom/onesignal/UserState;

    move-result-object v0

    iget-object v0, v0, Lcom/onesignal/UserState;->dependValues:Lorg/json/JSONObject;

    const-string v1, "userSubscribePref"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method logoutEmail()V
    .locals 3

    .line 171
    :try_start_0
    invoke-virtual {p0}, Lcom/onesignal/UserStatePushSynchronizer;->getUserStateForModification()Lcom/onesignal/UserState;

    move-result-object v0

    iget-object v0, v0, Lcom/onesignal/UserState;->dependValues:Lorg/json/JSONObject;

    const-string v1, "logoutEmail"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    goto :goto_0

    .line 172
    :catch_0
    move-exception v0

    .line 173
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 175
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_0
    return-void
.end method

.method protected newUserState(Ljava/lang/String;Z)Lcom/onesignal/UserState;
    .locals 1
    .param p1, "inPersistKey"    # Ljava/lang/String;
    .param p2, "load"    # Z

    .line 18
    new-instance v0, Lcom/onesignal/UserStatePush;

    invoke-direct {v0, p1, p2}, Lcom/onesignal/UserStatePush;-><init>(Ljava/lang/String;Z)V

    return-object v0
.end method

.method protected onSuccessfulSync(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "jsonFields"    # Lorg/json/JSONObject;

    .line 185
    const-string v0, "email"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    invoke-static {}, Lcom/onesignal/OneSignal;->fireEmailUpdateSuccess()V

    .line 187
    :cond_0
    const-string v0, "identifier"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 188
    invoke-static {}, Lcom/onesignal/OneSignal;->fireIdsAvailableCallback()V

    .line 189
    :cond_1
    return-void
.end method

.method protected scheduleSyncToServer()V
    .locals 1

    .line 88
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onesignal/UserStatePushSynchronizer;->getNetworkHandlerThread(Ljava/lang/Integer;)Lcom/onesignal/UserStateSynchronizer$NetworkHandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onesignal/UserStateSynchronizer$NetworkHandlerThread;->runNewJobDelayed()V

    .line 89
    return-void
.end method

.method setEmail(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "email"    # Ljava/lang/String;
    .param p2, "emailAuthHash"    # Ljava/lang/String;

    .line 120
    :try_start_0
    invoke-virtual {p0}, Lcom/onesignal/UserStatePushSynchronizer;->getUserStateForModification()Lcom/onesignal/UserState;

    move-result-object v0

    .line 122
    .local v0, "userState":Lcom/onesignal/UserState;
    iget-object v1, v0, Lcom/onesignal/UserState;->dependValues:Lorg/json/JSONObject;

    const-string v2, "email_auth_hash"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 124
    iget-object v1, v0, Lcom/onesignal/UserState;->syncValues:Lorg/json/JSONObject;

    .line 125
    .local v1, "syncValues":Lorg/json/JSONObject;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "email"

    invoke-virtual {v2, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v1, v3}, Lcom/onesignal/UserStatePushSynchronizer;->generateJsonDiff(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/util/Set;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    nop

    .end local v0    # "userState":Lcom/onesignal/UserState;
    .end local v1    # "syncValues":Lorg/json/JSONObject;
    goto :goto_0

    .line 127
    :catch_0
    move-exception v0

    .line 128
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 130
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_0
    return-void
.end method

.method public setPermission(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .line 149
    :try_start_0
    invoke-virtual {p0}, Lcom/onesignal/UserStatePushSynchronizer;->getUserStateForModification()Lcom/onesignal/UserState;

    move-result-object v0

    iget-object v0, v0, Lcom/onesignal/UserState;->dependValues:Lorg/json/JSONObject;

    const-string v1, "androidPermission"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    goto :goto_0

    .line 150
    :catch_0
    move-exception v0

    .line 151
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 153
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_0
    return-void
.end method

.method setSubscription(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .line 135
    :try_start_0
    invoke-virtual {p0}, Lcom/onesignal/UserStatePushSynchronizer;->getUserStateForModification()Lcom/onesignal/UserState;

    move-result-object v0

    iget-object v0, v0, Lcom/onesignal/UserState;->dependValues:Lorg/json/JSONObject;

    const-string v1, "userSubscribePref"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    goto :goto_0

    .line 136
    :catch_0
    move-exception v0

    .line 137
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 139
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_0
    return-void
.end method

.method updateIdDependents(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .line 162
    invoke-static {p1}, Lcom/onesignal/OneSignal;->updateUserIdDependents(Ljava/lang/String;)V

    .line 163
    return-void
.end method

.method updateState(Lorg/json/JSONObject;)V
    .locals 8
    .param p1, "pushState"    # Lorg/json/JSONObject;

    .line 94
    const-string v0, "parent_player_id"

    const-string v1, "identifier"

    const-string v2, "androidPermission"

    const-string v3, "device_type"

    const-string v4, "subscribableStatus"

    const/4 v5, 0x0

    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 95
    .local v6, "syncUpdate":Lorg/json/JSONObject;
    invoke-virtual {p1, v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v1, v7}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 96
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 97
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v6, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 98
    :cond_0
    invoke-virtual {p1, v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 99
    invoke-virtual {p0}, Lcom/onesignal/UserStatePushSynchronizer;->getUserStateForModification()Lcom/onesignal/UserState;

    move-result-object v0

    iget-object v0, v0, Lcom/onesignal/UserState;->syncValues:Lorg/json/JSONObject;

    .line 100
    .local v0, "toSync":Lorg/json/JSONObject;
    invoke-virtual {p0, v0, v6, v0, v5}, Lcom/onesignal/UserStatePushSynchronizer;->generateJsonDiff(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/util/Set;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    nop

    .end local v0    # "toSync":Lorg/json/JSONObject;
    .end local v6    # "syncUpdate":Lorg/json/JSONObject;
    goto :goto_0

    .line 101
    :catch_0
    move-exception v0

    .line 102
    .local v0, "t":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 106
    .end local v0    # "t":Lorg/json/JSONException;
    :goto_0
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 107
    .local v0, "dependUpdate":Lorg/json/JSONObject;
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 108
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 109
    :cond_1
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 110
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 111
    :cond_2
    invoke-virtual {p0}, Lcom/onesignal/UserStatePushSynchronizer;->getUserStateForModification()Lcom/onesignal/UserState;

    move-result-object v1

    iget-object v1, v1, Lcom/onesignal/UserState;->dependValues:Lorg/json/JSONObject;

    .line 112
    .local v1, "dependValues":Lorg/json/JSONObject;
    invoke-virtual {p0, v1, v0, v1, v5}, Lcom/onesignal/UserStatePushSynchronizer;->generateJsonDiff(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/util/Set;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 115
    nop

    .end local v0    # "dependUpdate":Lorg/json/JSONObject;
    .end local v1    # "dependValues":Lorg/json/JSONObject;
    goto :goto_1

    .line 113
    :catch_1
    move-exception v0

    .line 114
    .local v0, "t":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 116
    .end local v0    # "t":Lorg/json/JSONException;
    :goto_1
    return-void
.end method
