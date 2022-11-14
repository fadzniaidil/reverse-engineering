.class Lcom/onesignal/influence/OSInfluenceDataRepository;
.super Ljava/lang/Object;
.source "OSInfluenceDataRepository.java"


# static fields
.field protected static final PREFS_OS_DIRECT_ENABLED:Ljava/lang/String; = "PREFS_OS_DIRECT_ENABLED"

.field protected static final PREFS_OS_IAM_INDIRECT_ATTRIBUTION_WINDOW:Ljava/lang/String; = "PREFS_OS_IAM_INDIRECT_ATTRIBUTION_WINDOW"

.field protected static final PREFS_OS_IAM_LIMIT:Ljava/lang/String; = "PREFS_OS_IAM_LIMIT"

.field protected static final PREFS_OS_INDIRECT_ENABLED:Ljava/lang/String; = "PREFS_OS_INDIRECT_ENABLED"

.field protected static final PREFS_OS_LAST_ATTRIBUTED_NOTIFICATION_OPEN:Ljava/lang/String; = "PREFS_OS_LAST_ATTRIBUTED_NOTIFICATION_OPEN"

.field protected static final PREFS_OS_LAST_IAMS_RECEIVED:Ljava/lang/String; = "PREFS_OS_LAST_IAMS_RECEIVED"

.field protected static final PREFS_OS_LAST_NOTIFICATIONS_RECEIVED:Ljava/lang/String; = "PREFS_OS_LAST_NOTIFICATIONS_RECEIVED"

.field protected static final PREFS_OS_NOTIFICATION_INDIRECT_ATTRIBUTION_WINDOW:Ljava/lang/String; = "PREFS_OS_INDIRECT_ATTRIBUTION_WINDOW"

.field protected static final PREFS_OS_NOTIFICATION_LIMIT:Ljava/lang/String; = "PREFS_OS_NOTIFICATION_LIMIT"

.field protected static final PREFS_OS_OUTCOMES_CURRENT_IAM_INFLUENCE:Ljava/lang/String; = "PREFS_OS_OUTCOMES_CURRENT_IAM_INFLUENCE"

.field protected static final PREFS_OS_OUTCOMES_CURRENT_NOTIFICATION_INFLUENCE:Ljava/lang/String; = "PREFS_OS_OUTCOMES_CURRENT_SESSION"

.field protected static final PREFS_OS_UNATTRIBUTED_ENABLED:Ljava/lang/String; = "PREFS_OS_UNATTRIBUTED_ENABLED"


# instance fields
.field private preferences:Lcom/onesignal/OSSharedPreferences;


# direct methods
.method public constructor <init>(Lcom/onesignal/OSSharedPreferences;)V
    .locals 0
    .param p1, "preferences"    # Lcom/onesignal/OSSharedPreferences;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/onesignal/influence/OSInfluenceDataRepository;->preferences:Lcom/onesignal/OSSharedPreferences;

    .line 40
    return-void
.end method


# virtual methods
.method cacheIAMInfluenceType(Lcom/onesignal/influence/model/OSInfluenceType;)V
    .locals 4
    .param p1, "influenceType"    # Lcom/onesignal/influence/model/OSInfluenceType;

    .line 70
    iget-object v0, p0, Lcom/onesignal/influence/OSInfluenceDataRepository;->preferences:Lcom/onesignal/OSSharedPreferences;

    .line 71
    invoke-interface {v0}, Lcom/onesignal/OSSharedPreferences;->getPreferencesName()Ljava/lang/String;

    move-result-object v1

    .line 73
    invoke-virtual {p1}, Lcom/onesignal/influence/model/OSInfluenceType;->toString()Ljava/lang/String;

    move-result-object v2

    .line 70
    const-string v3, "PREFS_OS_OUTCOMES_CURRENT_IAM_INFLUENCE"

    invoke-interface {v0, v1, v3, v2}, Lcom/onesignal/OSSharedPreferences;->saveString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method cacheNotificationInfluenceType(Lcom/onesignal/influence/model/OSInfluenceType;)V
    .locals 4
    .param p1, "influenceType"    # Lcom/onesignal/influence/model/OSInfluenceType;

    .line 46
    iget-object v0, p0, Lcom/onesignal/influence/OSInfluenceDataRepository;->preferences:Lcom/onesignal/OSSharedPreferences;

    .line 47
    invoke-interface {v0}, Lcom/onesignal/OSSharedPreferences;->getPreferencesName()Ljava/lang/String;

    move-result-object v1

    .line 49
    invoke-virtual {p1}, Lcom/onesignal/influence/model/OSInfluenceType;->toString()Ljava/lang/String;

    move-result-object v2

    .line 46
    const-string v3, "PREFS_OS_OUTCOMES_CURRENT_SESSION"

    invoke-interface {v0, v1, v3, v2}, Lcom/onesignal/OSSharedPreferences;->saveString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method cacheNotificationOpenId(Ljava/lang/String;)V
    .locals 3
    .param p1, "id"    # Ljava/lang/String;

    .line 94
    iget-object v0, p0, Lcom/onesignal/influence/OSInfluenceDataRepository;->preferences:Lcom/onesignal/OSSharedPreferences;

    .line 95
    invoke-interface {v0}, Lcom/onesignal/OSSharedPreferences;->getPreferencesName()Ljava/lang/String;

    move-result-object v1

    .line 94
    const-string v2, "PREFS_OS_LAST_ATTRIBUTED_NOTIFICATION_OPEN"

    invoke-interface {v0, v1, v2, p1}, Lcom/onesignal/OSSharedPreferences;->saveString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    return-void
.end method

.method getCachedNotificationOpenId()Ljava/lang/String;
    .locals 4

    .line 106
    iget-object v0, p0, Lcom/onesignal/influence/OSInfluenceDataRepository;->preferences:Lcom/onesignal/OSSharedPreferences;

    .line 107
    invoke-interface {v0}, Lcom/onesignal/OSSharedPreferences;->getPreferencesName()Ljava/lang/String;

    move-result-object v1

    .line 106
    const-string v2, "PREFS_OS_LAST_ATTRIBUTED_NOTIFICATION_OPEN"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/onesignal/OSSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getIAMCachedInfluenceType()Lcom/onesignal/influence/model/OSInfluenceType;
    .locals 4

    .line 82
    iget-object v0, p0, Lcom/onesignal/influence/OSInfluenceDataRepository;->preferences:Lcom/onesignal/OSSharedPreferences;

    .line 83
    invoke-interface {v0}, Lcom/onesignal/OSSharedPreferences;->getPreferencesName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/onesignal/influence/model/OSInfluenceType;->UNATTRIBUTED:Lcom/onesignal/influence/model/OSInfluenceType;

    .line 85
    invoke-virtual {v2}, Lcom/onesignal/influence/model/OSInfluenceType;->toString()Ljava/lang/String;

    move-result-object v2

    .line 82
    const-string v3, "PREFS_OS_OUTCOMES_CURRENT_IAM_INFLUENCE"

    invoke-interface {v0, v1, v3, v2}, Lcom/onesignal/OSSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, "influenceType":Ljava/lang/String;
    invoke-static {v0}, Lcom/onesignal/influence/model/OSInfluenceType;->fromString(Ljava/lang/String;)Lcom/onesignal/influence/model/OSInfluenceType;

    move-result-object v1

    return-object v1
.end method

.method getIAMIndirectAttributionWindow()I
    .locals 4

    .line 168
    iget-object v0, p0, Lcom/onesignal/influence/OSInfluenceDataRepository;->preferences:Lcom/onesignal/OSSharedPreferences;

    .line 169
    invoke-interface {v0}, Lcom/onesignal/OSSharedPreferences;->getPreferencesName()Ljava/lang/String;

    move-result-object v1

    .line 168
    const-string v2, "PREFS_OS_IAM_INDIRECT_ATTRIBUTION_WINDOW"

    const/16 v3, 0x5a0

    invoke-interface {v0, v1, v2, v3}, Lcom/onesignal/OSSharedPreferences;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method getIAMLimit()I
    .locals 4

    .line 152
    iget-object v0, p0, Lcom/onesignal/influence/OSInfluenceDataRepository;->preferences:Lcom/onesignal/OSSharedPreferences;

    .line 153
    invoke-interface {v0}, Lcom/onesignal/OSSharedPreferences;->getPreferencesName()Ljava/lang/String;

    move-result-object v1

    .line 152
    const-string v2, "PREFS_OS_IAM_LIMIT"

    const/16 v3, 0xa

    invoke-interface {v0, v1, v2, v3}, Lcom/onesignal/OSSharedPreferences;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method getLastIAMsReceivedData()Lorg/json/JSONArray;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 136
    iget-object v0, p0, Lcom/onesignal/influence/OSInfluenceDataRepository;->preferences:Lcom/onesignal/OSSharedPreferences;

    .line 137
    invoke-interface {v0}, Lcom/onesignal/OSSharedPreferences;->getPreferencesName()Ljava/lang/String;

    move-result-object v1

    .line 136
    const-string v2, "PREFS_OS_LAST_IAMS_RECEIVED"

    const-string v3, "[]"

    invoke-interface {v0, v1, v2, v3}, Lcom/onesignal/OSSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 140
    .local v0, "iamReceived":Ljava/lang/String;
    new-instance v1, Lorg/json/JSONArray;

    if-eqz v0, :cond_0

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    :goto_0
    return-object v1
.end method

.method getLastNotificationsReceivedData()Lorg/json/JSONArray;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 128
    iget-object v0, p0, Lcom/onesignal/influence/OSInfluenceDataRepository;->preferences:Lcom/onesignal/OSSharedPreferences;

    .line 129
    invoke-interface {v0}, Lcom/onesignal/OSSharedPreferences;->getPreferencesName()Ljava/lang/String;

    move-result-object v1

    .line 128
    const-string v2, "PREFS_OS_LAST_NOTIFICATIONS_RECEIVED"

    const-string v3, "[]"

    invoke-interface {v0, v1, v2, v3}, Lcom/onesignal/OSSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 132
    .local v0, "notificationsReceived":Ljava/lang/String;
    new-instance v1, Lorg/json/JSONArray;

    if-eqz v0, :cond_0

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    :goto_0
    return-object v1
.end method

.method getNotificationCachedInfluenceType()Lcom/onesignal/influence/model/OSInfluenceType;
    .locals 4

    .line 58
    iget-object v0, p0, Lcom/onesignal/influence/OSInfluenceDataRepository;->preferences:Lcom/onesignal/OSSharedPreferences;

    .line 59
    invoke-interface {v0}, Lcom/onesignal/OSSharedPreferences;->getPreferencesName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/onesignal/influence/model/OSInfluenceType;->UNATTRIBUTED:Lcom/onesignal/influence/model/OSInfluenceType;

    .line 61
    invoke-virtual {v2}, Lcom/onesignal/influence/model/OSInfluenceType;->toString()Ljava/lang/String;

    move-result-object v2

    .line 58
    const-string v3, "PREFS_OS_OUTCOMES_CURRENT_SESSION"

    invoke-interface {v0, v1, v3, v2}, Lcom/onesignal/OSSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, "influenceType":Ljava/lang/String;
    invoke-static {v0}, Lcom/onesignal/influence/model/OSInfluenceType;->fromString(Ljava/lang/String;)Lcom/onesignal/influence/model/OSInfluenceType;

    move-result-object v1

    return-object v1
.end method

.method getNotificationIndirectAttributionWindow()I
    .locals 4

    .line 160
    iget-object v0, p0, Lcom/onesignal/influence/OSInfluenceDataRepository;->preferences:Lcom/onesignal/OSSharedPreferences;

    .line 161
    invoke-interface {v0}, Lcom/onesignal/OSSharedPreferences;->getPreferencesName()Ljava/lang/String;

    move-result-object v1

    .line 160
    const-string v2, "PREFS_OS_INDIRECT_ATTRIBUTION_WINDOW"

    const/16 v3, 0x5a0

    invoke-interface {v0, v1, v2, v3}, Lcom/onesignal/OSSharedPreferences;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method getNotificationLimit()I
    .locals 4

    .line 144
    iget-object v0, p0, Lcom/onesignal/influence/OSInfluenceDataRepository;->preferences:Lcom/onesignal/OSSharedPreferences;

    .line 145
    invoke-interface {v0}, Lcom/onesignal/OSSharedPreferences;->getPreferencesName()Ljava/lang/String;

    move-result-object v1

    .line 144
    const-string v2, "PREFS_OS_NOTIFICATION_LIMIT"

    const/16 v3, 0xa

    invoke-interface {v0, v1, v2, v3}, Lcom/onesignal/OSSharedPreferences;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method isDirectInfluenceEnabled()Z
    .locals 4

    .line 176
    iget-object v0, p0, Lcom/onesignal/influence/OSInfluenceDataRepository;->preferences:Lcom/onesignal/OSSharedPreferences;

    .line 177
    invoke-interface {v0}, Lcom/onesignal/OSSharedPreferences;->getPreferencesName()Ljava/lang/String;

    move-result-object v1

    .line 176
    const-string v2, "PREFS_OS_DIRECT_ENABLED"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/onesignal/OSSharedPreferences;->getBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method isIndirectInfluenceEnabled()Z
    .locals 4

    .line 184
    iget-object v0, p0, Lcom/onesignal/influence/OSInfluenceDataRepository;->preferences:Lcom/onesignal/OSSharedPreferences;

    .line 185
    invoke-interface {v0}, Lcom/onesignal/OSSharedPreferences;->getPreferencesName()Ljava/lang/String;

    move-result-object v1

    .line 184
    const-string v2, "PREFS_OS_INDIRECT_ENABLED"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/onesignal/OSSharedPreferences;->getBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method isUnattributedInfluenceEnabled()Z
    .locals 4

    .line 192
    iget-object v0, p0, Lcom/onesignal/influence/OSInfluenceDataRepository;->preferences:Lcom/onesignal/OSSharedPreferences;

    .line 193
    invoke-interface {v0}, Lcom/onesignal/OSSharedPreferences;->getPreferencesName()Ljava/lang/String;

    move-result-object v1

    .line 192
    const-string v2, "PREFS_OS_UNATTRIBUTED_ENABLED"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/onesignal/OSSharedPreferences;->getBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method saveIAMs(Lorg/json/JSONArray;)V
    .locals 4
    .param p1, "iams"    # Lorg/json/JSONArray;

    .line 121
    iget-object v0, p0, Lcom/onesignal/influence/OSInfluenceDataRepository;->preferences:Lcom/onesignal/OSSharedPreferences;

    .line 122
    invoke-interface {v0}, Lcom/onesignal/OSSharedPreferences;->getPreferencesName()Ljava/lang/String;

    move-result-object v1

    .line 124
    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    .line 121
    const-string v3, "PREFS_OS_LAST_IAMS_RECEIVED"

    invoke-interface {v0, v1, v3, v2}, Lcom/onesignal/OSSharedPreferences;->saveString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    return-void
.end method

.method saveInfluenceParams(Lcom/onesignal/OneSignalRemoteParams$InfluenceParams;)V
    .locals 4
    .param p1, "influenceParams"    # Lcom/onesignal/OneSignalRemoteParams$InfluenceParams;

    .line 200
    iget-object v0, p0, Lcom/onesignal/influence/OSInfluenceDataRepository;->preferences:Lcom/onesignal/OSSharedPreferences;

    .line 201
    invoke-interface {v0}, Lcom/onesignal/OSSharedPreferences;->getPreferencesName()Ljava/lang/String;

    move-result-object v1

    .line 203
    invoke-virtual {p1}, Lcom/onesignal/OneSignalRemoteParams$InfluenceParams;->isDirectEnabled()Z

    move-result v2

    .line 200
    const-string v3, "PREFS_OS_DIRECT_ENABLED"

    invoke-interface {v0, v1, v3, v2}, Lcom/onesignal/OSSharedPreferences;->saveBool(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 205
    iget-object v0, p0, Lcom/onesignal/influence/OSInfluenceDataRepository;->preferences:Lcom/onesignal/OSSharedPreferences;

    .line 206
    invoke-interface {v0}, Lcom/onesignal/OSSharedPreferences;->getPreferencesName()Ljava/lang/String;

    move-result-object v1

    .line 208
    invoke-virtual {p1}, Lcom/onesignal/OneSignalRemoteParams$InfluenceParams;->isIndirectEnabled()Z

    move-result v2

    .line 205
    const-string v3, "PREFS_OS_INDIRECT_ENABLED"

    invoke-interface {v0, v1, v3, v2}, Lcom/onesignal/OSSharedPreferences;->saveBool(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 210
    iget-object v0, p0, Lcom/onesignal/influence/OSInfluenceDataRepository;->preferences:Lcom/onesignal/OSSharedPreferences;

    .line 211
    invoke-interface {v0}, Lcom/onesignal/OSSharedPreferences;->getPreferencesName()Ljava/lang/String;

    move-result-object v1

    .line 213
    invoke-virtual {p1}, Lcom/onesignal/OneSignalRemoteParams$InfluenceParams;->isUnattributedEnabled()Z

    move-result v2

    .line 210
    const-string v3, "PREFS_OS_UNATTRIBUTED_ENABLED"

    invoke-interface {v0, v1, v3, v2}, Lcom/onesignal/OSSharedPreferences;->saveBool(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 215
    iget-object v0, p0, Lcom/onesignal/influence/OSInfluenceDataRepository;->preferences:Lcom/onesignal/OSSharedPreferences;

    .line 216
    invoke-interface {v0}, Lcom/onesignal/OSSharedPreferences;->getPreferencesName()Ljava/lang/String;

    move-result-object v1

    .line 218
    invoke-virtual {p1}, Lcom/onesignal/OneSignalRemoteParams$InfluenceParams;->getNotificationLimit()I

    move-result v2

    .line 215
    const-string v3, "PREFS_OS_NOTIFICATION_LIMIT"

    invoke-interface {v0, v1, v3, v2}, Lcom/onesignal/OSSharedPreferences;->saveInt(Ljava/lang/String;Ljava/lang/String;I)V

    .line 220
    iget-object v0, p0, Lcom/onesignal/influence/OSInfluenceDataRepository;->preferences:Lcom/onesignal/OSSharedPreferences;

    .line 221
    invoke-interface {v0}, Lcom/onesignal/OSSharedPreferences;->getPreferencesName()Ljava/lang/String;

    move-result-object v1

    .line 223
    invoke-virtual {p1}, Lcom/onesignal/OneSignalRemoteParams$InfluenceParams;->getIndirectNotificationAttributionWindow()I

    move-result v2

    .line 220
    const-string v3, "PREFS_OS_INDIRECT_ATTRIBUTION_WINDOW"

    invoke-interface {v0, v1, v3, v2}, Lcom/onesignal/OSSharedPreferences;->saveInt(Ljava/lang/String;Ljava/lang/String;I)V

    .line 225
    iget-object v0, p0, Lcom/onesignal/influence/OSInfluenceDataRepository;->preferences:Lcom/onesignal/OSSharedPreferences;

    .line 226
    invoke-interface {v0}, Lcom/onesignal/OSSharedPreferences;->getPreferencesName()Ljava/lang/String;

    move-result-object v1

    .line 228
    invoke-virtual {p1}, Lcom/onesignal/OneSignalRemoteParams$InfluenceParams;->getIamLimit()I

    move-result v2

    .line 225
    const-string v3, "PREFS_OS_IAM_LIMIT"

    invoke-interface {v0, v1, v3, v2}, Lcom/onesignal/OSSharedPreferences;->saveInt(Ljava/lang/String;Ljava/lang/String;I)V

    .line 230
    iget-object v0, p0, Lcom/onesignal/influence/OSInfluenceDataRepository;->preferences:Lcom/onesignal/OSSharedPreferences;

    .line 231
    invoke-interface {v0}, Lcom/onesignal/OSSharedPreferences;->getPreferencesName()Ljava/lang/String;

    move-result-object v1

    .line 233
    invoke-virtual {p1}, Lcom/onesignal/OneSignalRemoteParams$InfluenceParams;->getIndirectIAMAttributionWindow()I

    move-result v2

    .line 230
    const-string v3, "PREFS_OS_IAM_INDIRECT_ATTRIBUTION_WINDOW"

    invoke-interface {v0, v1, v3, v2}, Lcom/onesignal/OSSharedPreferences;->saveInt(Ljava/lang/String;Ljava/lang/String;I)V

    .line 235
    return-void
.end method

.method saveNotifications(Lorg/json/JSONArray;)V
    .locals 4
    .param p1, "notifications"    # Lorg/json/JSONArray;

    .line 114
    iget-object v0, p0, Lcom/onesignal/influence/OSInfluenceDataRepository;->preferences:Lcom/onesignal/OSSharedPreferences;

    .line 115
    invoke-interface {v0}, Lcom/onesignal/OSSharedPreferences;->getPreferencesName()Ljava/lang/String;

    move-result-object v1

    .line 117
    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    .line 114
    const-string v3, "PREFS_OS_LAST_NOTIFICATIONS_RECEIVED"

    invoke-interface {v0, v1, v3, v2}, Lcom/onesignal/OSSharedPreferences;->saveString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    return-void
.end method
