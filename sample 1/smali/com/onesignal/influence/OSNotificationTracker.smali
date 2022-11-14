.class Lcom/onesignal/influence/OSNotificationTracker;
.super Lcom/onesignal/influence/OSChannelTracker;
.source "OSNotificationTracker.java"


# static fields
.field private static final DIRECT_TAG:Ljava/lang/String; = "direct"

.field private static final NOTIFICATIONS_IDS:Ljava/lang/String; = "notification_ids"

.field private static final NOTIFICATION_ID:Ljava/lang/String; = "notification_id"

.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    const-class v0, Lcom/onesignal/influence/OSNotificationTracker;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/onesignal/influence/OSNotificationTracker;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/onesignal/influence/OSInfluenceDataRepository;Lcom/onesignal/OSLogger;)V
    .locals 0
    .param p1, "dataRepository"    # Lcom/onesignal/influence/OSInfluenceDataRepository;
    .param p2, "logger"    # Lcom/onesignal/OSLogger;

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/onesignal/influence/OSChannelTracker;-><init>(Lcom/onesignal/influence/OSInfluenceDataRepository;Lcom/onesignal/OSLogger;)V

    .line 23
    return-void
.end method


# virtual methods
.method addSessionData(Lorg/json/JSONObject;Lcom/onesignal/influence/model/OSInfluence;)V
    .locals 3
    .param p1, "jsonObject"    # Lorg/json/JSONObject;
    .param p2, "influence"    # Lcom/onesignal/influence/model/OSInfluence;

    .line 80
    invoke-virtual {p2}, Lcom/onesignal/influence/model/OSInfluence;->getInfluenceType()Lcom/onesignal/influence/model/OSInfluenceType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onesignal/influence/model/OSInfluenceType;->isAttributed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    :try_start_0
    const-string v0, "direct"

    invoke-virtual {p2}, Lcom/onesignal/influence/model/OSInfluence;->getInfluenceType()Lcom/onesignal/influence/model/OSInfluenceType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onesignal/influence/model/OSInfluenceType;->isDirect()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 83
    const-string v0, "notification_ids"

    invoke-virtual {p2}, Lcom/onesignal/influence/model/OSInfluence;->getIds()Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    goto :goto_0

    .line 84
    :catch_0
    move-exception v0

    .line 85
    .local v0, "exception":Lorg/json/JSONException;
    iget-object v1, p0, Lcom/onesignal/influence/OSNotificationTracker;->logger:Lcom/onesignal/OSLogger;

    const-string v2, "Generating notification tracker addSessionData JSONObject "

    invoke-interface {v1, v2, v0}, Lcom/onesignal/OSLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 87
    .end local v0    # "exception":Lorg/json/JSONException;
    :cond_0
    :goto_0
    return-void
.end method

.method public cacheState()V
    .locals 2

    .line 91
    iget-object v0, p0, Lcom/onesignal/influence/OSNotificationTracker;->dataRepository:Lcom/onesignal/influence/OSInfluenceDataRepository;

    iget-object v1, p0, Lcom/onesignal/influence/OSNotificationTracker;->influenceType:Lcom/onesignal/influence/model/OSInfluenceType;

    if-nez v1, :cond_0

    sget-object v1, Lcom/onesignal/influence/model/OSInfluenceType;->UNATTRIBUTED:Lcom/onesignal/influence/model/OSInfluenceType;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/onesignal/influence/OSNotificationTracker;->influenceType:Lcom/onesignal/influence/model/OSInfluenceType;

    :goto_0
    invoke-virtual {v0, v1}, Lcom/onesignal/influence/OSInfluenceDataRepository;->cacheNotificationInfluenceType(Lcom/onesignal/influence/model/OSInfluenceType;)V

    .line 92
    iget-object v0, p0, Lcom/onesignal/influence/OSNotificationTracker;->dataRepository:Lcom/onesignal/influence/OSInfluenceDataRepository;

    iget-object v1, p0, Lcom/onesignal/influence/OSNotificationTracker;->directId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/onesignal/influence/OSInfluenceDataRepository;->cacheNotificationOpenId(Ljava/lang/String;)V

    .line 93
    return-void
.end method

.method getChannelLimit()I
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/onesignal/influence/OSNotificationTracker;->dataRepository:Lcom/onesignal/influence/OSInfluenceDataRepository;

    invoke-virtual {v0}, Lcom/onesignal/influence/OSInfluenceDataRepository;->getNotificationLimit()I

    move-result v0

    return v0
.end method

.method getChannelType()Lcom/onesignal/influence/model/OSInfluenceChannel;
    .locals 1

    .line 47
    sget-object v0, Lcom/onesignal/influence/model/OSInfluenceChannel;->NOTIFICATION:Lcom/onesignal/influence/model/OSInfluenceChannel;

    return-object v0
.end method

.method public getIdTag()Ljava/lang/String;
    .locals 1

    .line 27
    const-string v0, "notification_id"

    return-object v0
.end method

.method getIndirectAttributionWindow()I
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/onesignal/influence/OSNotificationTracker;->dataRepository:Lcom/onesignal/influence/OSInfluenceDataRepository;

    invoke-virtual {v0}, Lcom/onesignal/influence/OSInfluenceDataRepository;->getNotificationIndirectAttributionWindow()I

    move-result v0

    return v0
.end method

.method getLastChannelObjects()Lorg/json/JSONArray;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/onesignal/influence/OSNotificationTracker;->dataRepository:Lcom/onesignal/influence/OSInfluenceDataRepository;

    invoke-virtual {v0}, Lcom/onesignal/influence/OSInfluenceDataRepository;->getLastNotificationsReceivedData()Lorg/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method getLastChannelObjectsReceivedByNewId(Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 3
    .param p1, "id"    # Ljava/lang/String;

    .line 33
    :try_start_0
    invoke-virtual {p0}, Lcom/onesignal/influence/OSNotificationTracker;->getLastChannelObjects()Lorg/json/JSONArray;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 34
    :catch_0
    move-exception v0

    .line 35
    .local v0, "exception":Lorg/json/JSONException;
    iget-object v1, p0, Lcom/onesignal/influence/OSNotificationTracker;->logger:Lcom/onesignal/OSLogger;

    const-string v2, "Generating Notification tracker getLastChannelObjects JSONObject "

    invoke-interface {v1, v2, v0}, Lcom/onesignal/OSLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 36
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    return-object v1
.end method

.method initInfluencedTypeFromCache()V
    .locals 4

    .line 67
    iget-object v0, p0, Lcom/onesignal/influence/OSNotificationTracker;->dataRepository:Lcom/onesignal/influence/OSInfluenceDataRepository;

    invoke-virtual {v0}, Lcom/onesignal/influence/OSInfluenceDataRepository;->getNotificationCachedInfluenceType()Lcom/onesignal/influence/model/OSInfluenceType;

    move-result-object v0

    .line 68
    .local v0, "influenceType":Lcom/onesignal/influence/model/OSInfluenceType;
    invoke-virtual {p0, v0}, Lcom/onesignal/influence/OSNotificationTracker;->setInfluenceType(Lcom/onesignal/influence/model/OSInfluenceType;)V

    .line 70
    invoke-virtual {v0}, Lcom/onesignal/influence/model/OSInfluenceType;->isIndirect()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 71
    invoke-virtual {p0}, Lcom/onesignal/influence/OSNotificationTracker;->getLastReceivedIds()Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/onesignal/influence/OSNotificationTracker;->setIndirectIds(Lorg/json/JSONArray;)V

    goto :goto_0

    .line 72
    :cond_0
    invoke-virtual {v0}, Lcom/onesignal/influence/model/OSInfluenceType;->isDirect()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 73
    iget-object v1, p0, Lcom/onesignal/influence/OSNotificationTracker;->dataRepository:Lcom/onesignal/influence/OSInfluenceDataRepository;

    invoke-virtual {v1}, Lcom/onesignal/influence/OSInfluenceDataRepository;->getCachedNotificationOpenId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/onesignal/influence/OSNotificationTracker;->setDirectId(Ljava/lang/String;)V

    .line 75
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/onesignal/influence/OSNotificationTracker;->logger:Lcom/onesignal/OSLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OneSignal NotificationTracker initInfluencedTypeFromCache: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/onesignal/influence/OSNotificationTracker;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/onesignal/OSLogger;->debug(Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method saveChannelObjects(Lorg/json/JSONArray;)V
    .locals 1
    .param p1, "channelObjects"    # Lorg/json/JSONArray;

    .line 62
    iget-object v0, p0, Lcom/onesignal/influence/OSNotificationTracker;->dataRepository:Lcom/onesignal/influence/OSInfluenceDataRepository;

    invoke-virtual {v0, p1}, Lcom/onesignal/influence/OSInfluenceDataRepository;->saveNotifications(Lorg/json/JSONArray;)V

    .line 63
    return-void
.end method
