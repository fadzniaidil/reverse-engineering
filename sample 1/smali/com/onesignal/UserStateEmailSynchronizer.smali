.class Lcom/onesignal/UserStateEmailSynchronizer;
.super Lcom/onesignal/UserStateSynchronizer;
.source "UserStateEmailSynchronizer.java"


# direct methods
.method constructor <init>()V
    .locals 1

    .line 13
    sget-object v0, Lcom/onesignal/OneSignalStateSynchronizer$UserStateSynchronizerType;->EMAIL:Lcom/onesignal/OneSignalStateSynchronizer$UserStateSynchronizerType;

    invoke-direct {p0, v0}, Lcom/onesignal/UserStateSynchronizer;-><init>(Lcom/onesignal/OneSignalStateSynchronizer$UserStateSynchronizerType;)V

    .line 14
    return-void
.end method


# virtual methods
.method protected addOnSessionOrCreateExtras(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "jsonBody"    # Lorg/json/JSONObject;

    .line 126
    :try_start_0
    const-string v0, "device_type"

    const/16 v1, 0xb

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 127
    const-string v0, "device_player_id"

    invoke-static {}, Lcom/onesignal/OneSignal;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    goto :goto_0

    .line 128
    :catch_0
    move-exception v0

    .line 129
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 131
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_0
    return-void
.end method

.method protected fireEventsForUpdateFailure(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "jsonFields"    # Lorg/json/JSONObject;

    .line 149
    const-string v0, "identifier"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    invoke-static {}, Lcom/onesignal/OneSignal;->fireEmailUpdateFailure()V

    .line 151
    :cond_0
    return-void
.end method

.method getExternalId(Z)Ljava/lang/String;
    .locals 1
    .param p1, "fromServer"    # Z

    .line 41
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getId()Ljava/lang/String;
    .locals 1

    .line 115
    invoke-static {}, Lcom/onesignal/OneSignal;->getEmailId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getLogLevel()Lcom/onesignal/OneSignal$LOG_LEVEL;
    .locals 1

    .line 23
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->INFO:Lcom/onesignal/OneSignal$LOG_LEVEL;

    return-object v0
.end method

.method getSubscribed()Z
    .locals 1

    .line 29
    const/4 v0, 0x0

    return v0
.end method

.method getTags(Z)Lcom/onesignal/UserStateSynchronizer$GetTagsResult;
    .locals 1
    .param p1, "fromServer"    # Z

    .line 35
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUserSubscribePreference()Z
    .locals 1

    .line 51
    const/4 v0, 0x0

    return v0
.end method

.method logoutEmail()V
    .locals 2

    .line 135
    const-string v0, ""

    invoke-static {v0}, Lcom/onesignal/OneSignal;->saveEmailId(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p0}, Lcom/onesignal/UserStateEmailSynchronizer;->resetCurrentState()V

    .line 138
    invoke-virtual {p0}, Lcom/onesignal/UserStateEmailSynchronizer;->getToSyncUserState()Lcom/onesignal/UserState;

    move-result-object v0

    iget-object v0, v0, Lcom/onesignal/UserState;->syncValues:Lorg/json/JSONObject;

    const-string v1, "identifier"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 139
    iget-object v0, p0, Lcom/onesignal/UserStateEmailSynchronizer;->toSyncUserState:Lcom/onesignal/UserState;

    iget-object v0, v0, Lcom/onesignal/UserState;->syncValues:Lorg/json/JSONObject;

    const-string v1, "email_auth_hash"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 140
    iget-object v0, p0, Lcom/onesignal/UserStateEmailSynchronizer;->toSyncUserState:Lcom/onesignal/UserState;

    iget-object v0, v0, Lcom/onesignal/UserState;->syncValues:Lorg/json/JSONObject;

    const-string v1, "device_player_id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 141
    iget-object v0, p0, Lcom/onesignal/UserStateEmailSynchronizer;->toSyncUserState:Lcom/onesignal/UserState;

    iget-object v0, v0, Lcom/onesignal/UserState;->syncValues:Lorg/json/JSONObject;

    const-string v1, "external_user_id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 142
    iget-object v0, p0, Lcom/onesignal/UserStateEmailSynchronizer;->toSyncUserState:Lcom/onesignal/UserState;

    invoke-virtual {v0}, Lcom/onesignal/UserState;->persistState()V

    .line 144
    invoke-static {}, Lcom/onesignal/OneSignal;->getPermissionSubscriptionState()Lcom/onesignal/OSPermissionSubscriptionState;

    move-result-object v0

    iget-object v0, v0, Lcom/onesignal/OSPermissionSubscriptionState;->emailSubscriptionStatus:Lcom/onesignal/OSEmailSubscriptionState;

    invoke-virtual {v0}, Lcom/onesignal/OSEmailSubscriptionState;->clearEmailAndId()V

    .line 145
    return-void
.end method

.method protected newUserState(Ljava/lang/String;Z)Lcom/onesignal/UserState;
    .locals 1
    .param p1, "inPersistKey"    # Ljava/lang/String;
    .param p2, "load"    # Z

    .line 18
    new-instance v0, Lcom/onesignal/UserStateEmail;

    invoke-direct {v0, p1, p2}, Lcom/onesignal/UserStateEmail;-><init>(Ljava/lang/String;Z)V

    return-object v0
.end method

.method protected onSuccessfulSync(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "jsonFields"    # Lorg/json/JSONObject;

    .line 155
    const-string v0, "identifier"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    invoke-static {}, Lcom/onesignal/OneSignal;->fireEmailUpdateSuccess()V

    .line 157
    :cond_0
    return-void
.end method

.method refresh()V
    .locals 0

    .line 62
    invoke-virtual {p0}, Lcom/onesignal/UserStateEmailSynchronizer;->scheduleSyncToServer()V

    .line 63
    return-void
.end method

.method protected scheduleSyncToServer()V
    .locals 3

    .line 68
    invoke-virtual {p0}, Lcom/onesignal/UserStateEmailSynchronizer;->getId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/onesignal/UserStateEmailSynchronizer;->getRegistrationId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 69
    .local v0, "neverEmail":Z
    :goto_0
    if-nez v0, :cond_2

    invoke-static {}, Lcom/onesignal/OneSignal;->getUserId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_1

    .line 72
    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/onesignal/UserStateEmailSynchronizer;->getNetworkHandlerThread(Ljava/lang/Integer;)Lcom/onesignal/UserStateSynchronizer$NetworkHandlerThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onesignal/UserStateSynchronizer$NetworkHandlerThread;->runNewJobDelayed()V

    .line 73
    return-void

    .line 70
    :cond_2
    :goto_1
    return-void
.end method

.method setEmail(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "email"    # Ljava/lang/String;
    .param p2, "emailAuthHash"    # Ljava/lang/String;

    .line 76
    invoke-virtual {p0}, Lcom/onesignal/UserStateEmailSynchronizer;->getUserStateForModification()Lcom/onesignal/UserState;

    move-result-object v0

    iget-object v0, v0, Lcom/onesignal/UserState;->syncValues:Lorg/json/JSONObject;

    .line 78
    .local v0, "syncValues":Lorg/json/JSONObject;
    const-string v1, "identifier"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, ""

    const-string v4, "email_auth_hash"

    if-eqz v2, :cond_1

    .line 79
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez p2, :cond_0

    move-object v5, v3

    goto :goto_0

    :cond_0
    move-object v5, p2

    :goto_0
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 80
    .local v2, "noChange":Z
    :goto_1
    if-eqz v2, :cond_2

    .line 81
    invoke-static {}, Lcom/onesignal/OneSignal;->fireEmailUpdateSuccess()V

    .line 82
    return-void

    .line 85
    :cond_2
    const/4 v5, 0x0

    invoke-virtual {v0, v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 87
    .local v6, "existingEmail":Ljava/lang/String;
    if-nez v6, :cond_3

    .line 88
    invoke-virtual {p0}, Lcom/onesignal/UserStateEmailSynchronizer;->setNewSession()V

    .line 91
    :cond_3
    :try_start_0
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 92
    .local v7, "emailJSON":Lorg/json/JSONObject;
    invoke-virtual {v7, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 94
    if-eqz p2, :cond_4

    .line 95
    invoke-virtual {v7, v4, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 97
    :cond_4
    if-nez p2, :cond_5

    .line 98
    if-eqz v6, :cond_5

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 99
    invoke-static {v3}, Lcom/onesignal/OneSignal;->saveEmailId(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p0}, Lcom/onesignal/UserStateEmailSynchronizer;->resetCurrentState()V

    .line 101
    invoke-virtual {p0}, Lcom/onesignal/UserStateEmailSynchronizer;->setNewSession()V

    .line 105
    :cond_5
    invoke-virtual {p0, v0, v7, v0, v5}, Lcom/onesignal/UserStateEmailSynchronizer;->generateJsonDiff(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/util/Set;)Lorg/json/JSONObject;

    .line 106
    invoke-virtual {p0}, Lcom/onesignal/UserStateEmailSynchronizer;->scheduleSyncToServer()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    .end local v7    # "emailJSON":Lorg/json/JSONObject;
    goto :goto_2

    .line 108
    :catch_0
    move-exception v1

    .line 109
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 111
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_2
    return-void
.end method

.method public setPermission(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .line 56
    return-void
.end method

.method setSubscription(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .line 46
    return-void
.end method

.method updateIdDependents(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .line 120
    invoke-static {p1}, Lcom/onesignal/OneSignal;->updateEmailIdDependents(Ljava/lang/String;)V

    .line 121
    return-void
.end method

.method updateState(Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "state"    # Lorg/json/JSONObject;

    .line 59
    return-void
.end method
