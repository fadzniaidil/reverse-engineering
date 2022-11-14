.class Lcom/onesignal/influence/OSInAppMessageTracker;
.super Lcom/onesignal/influence/OSChannelTracker;
.source "OSInAppMessageTracker.java"


# static fields
.field private static final IAM_ID:Ljava/lang/String; = "iam_id"

.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    const-class v0, Lcom/onesignal/influence/OSInAppMessageTracker;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/onesignal/influence/OSInAppMessageTracker;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/onesignal/influence/OSInfluenceDataRepository;Lcom/onesignal/OSLogger;)V
    .locals 0
    .param p1, "dataRepository"    # Lcom/onesignal/influence/OSInfluenceDataRepository;
    .param p2, "logger"    # Lcom/onesignal/OSLogger;

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/onesignal/influence/OSChannelTracker;-><init>(Lcom/onesignal/influence/OSInfluenceDataRepository;Lcom/onesignal/OSLogger;)V

    .line 21
    return-void
.end method


# virtual methods
.method addSessionData(Lorg/json/JSONObject;Lcom/onesignal/influence/model/OSInfluence;)V
    .locals 0
    .param p1, "jsonObject"    # Lorg/json/JSONObject;
    .param p2, "influence"    # Lcom/onesignal/influence/model/OSInfluence;

    .line 94
    return-void
.end method

.method public cacheState()V
    .locals 3

    .line 101
    iget-object v0, p0, Lcom/onesignal/influence/OSInAppMessageTracker;->influenceType:Lcom/onesignal/influence/model/OSInfluenceType;

    if-nez v0, :cond_0

    sget-object v0, Lcom/onesignal/influence/model/OSInfluenceType;->UNATTRIBUTED:Lcom/onesignal/influence/model/OSInfluenceType;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/onesignal/influence/OSInAppMessageTracker;->influenceType:Lcom/onesignal/influence/model/OSInfluenceType;

    .line 102
    .local v0, "influenceTypeToCache":Lcom/onesignal/influence/model/OSInfluenceType;
    :goto_0
    iget-object v1, p0, Lcom/onesignal/influence/OSInAppMessageTracker;->dataRepository:Lcom/onesignal/influence/OSInfluenceDataRepository;

    sget-object v2, Lcom/onesignal/influence/model/OSInfluenceType;->DIRECT:Lcom/onesignal/influence/model/OSInfluenceType;

    if-ne v0, v2, :cond_1

    sget-object v2, Lcom/onesignal/influence/model/OSInfluenceType;->INDIRECT:Lcom/onesignal/influence/model/OSInfluenceType;

    goto :goto_1

    :cond_1
    move-object v2, v0

    :goto_1
    invoke-virtual {v1, v2}, Lcom/onesignal/influence/OSInfluenceDataRepository;->cacheIAMInfluenceType(Lcom/onesignal/influence/model/OSInfluenceType;)V

    .line 103
    return-void
.end method

.method getChannelLimit()I
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/onesignal/influence/OSInAppMessageTracker;->dataRepository:Lcom/onesignal/influence/OSInfluenceDataRepository;

    invoke-virtual {v0}, Lcom/onesignal/influence/OSInfluenceDataRepository;->getIAMLimit()I

    move-result v0

    return v0
.end method

.method getChannelType()Lcom/onesignal/influence/model/OSInfluenceChannel;
    .locals 1

    .line 30
    sget-object v0, Lcom/onesignal/influence/model/OSInfluenceChannel;->IAM:Lcom/onesignal/influence/model/OSInfluenceChannel;

    return-object v0
.end method

.method public getIdTag()Ljava/lang/String;
    .locals 1

    .line 25
    const-string v0, "iam_id"

    return-object v0
.end method

.method getIndirectAttributionWindow()I
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/onesignal/influence/OSInAppMessageTracker;->dataRepository:Lcom/onesignal/influence/OSInfluenceDataRepository;

    invoke-virtual {v0}, Lcom/onesignal/influence/OSInfluenceDataRepository;->getIAMIndirectAttributionWindow()I

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

    .line 64
    iget-object v0, p0, Lcom/onesignal/influence/OSInAppMessageTracker;->dataRepository:Lcom/onesignal/influence/OSInfluenceDataRepository;

    invoke-virtual {v0}, Lcom/onesignal/influence/OSInfluenceDataRepository;->getLastIAMsReceivedData()Lorg/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method getLastChannelObjectsReceivedByNewId(Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 5
    .param p1, "id"    # Ljava/lang/String;

    .line 37
    :try_start_0
    invoke-virtual {p0}, Lcom/onesignal/influence/OSInAppMessageTracker;->getLastChannelObjects()Lorg/json/JSONArray;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 41
    .local v0, "lastChannelObjectReceived":Lorg/json/JSONArray;
    nop

    .line 46
    :try_start_1
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 47
    .local v1, "auxLastChannelObjectReceived":Lorg/json/JSONArray;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 48
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {p0}, Lcom/onesignal/influence/OSInAppMessageTracker;->getIdTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 49
    .local v3, "objectId":Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 50
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 47
    .end local v3    # "objectId":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 53
    .end local v2    # "i":I
    :cond_1
    move-object v0, v1

    .line 57
    .end local v1    # "auxLastChannelObjectReceived":Lorg/json/JSONArray;
    goto :goto_1

    .line 54
    :catch_0
    move-exception v1

    .line 55
    .local v1, "exception":Lorg/json/JSONException;
    iget-object v2, p0, Lcom/onesignal/influence/OSInAppMessageTracker;->logger:Lcom/onesignal/OSLogger;

    const-string v3, "Before KITKAT API, Generating tracker lastChannelObjectReceived get JSONObject "

    invoke-interface {v2, v3, v1}, Lcom/onesignal/OSLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 59
    .end local v1    # "exception":Lorg/json/JSONException;
    :goto_1
    return-object v0

    .line 38
    .end local v0    # "lastChannelObjectReceived":Lorg/json/JSONArray;
    :catch_1
    move-exception v0

    .line 39
    .local v0, "exception":Lorg/json/JSONException;
    iget-object v1, p0, Lcom/onesignal/influence/OSInAppMessageTracker;->logger:Lcom/onesignal/OSLogger;

    const-string v2, "Generating IAM tracker getLastChannelObjects JSONObject "

    invoke-interface {v1, v2, v0}, Lcom/onesignal/OSLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 40
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    return-object v1
.end method

.method initInfluencedTypeFromCache()V
    .locals 3

    .line 84
    iget-object v0, p0, Lcom/onesignal/influence/OSInAppMessageTracker;->dataRepository:Lcom/onesignal/influence/OSInfluenceDataRepository;

    invoke-virtual {v0}, Lcom/onesignal/influence/OSInfluenceDataRepository;->getIAMCachedInfluenceType()Lcom/onesignal/influence/model/OSInfluenceType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onesignal/influence/OSInAppMessageTracker;->setInfluenceType(Lcom/onesignal/influence/model/OSInfluenceType;)V

    .line 85
    iget-object v0, p0, Lcom/onesignal/influence/OSInAppMessageTracker;->influenceType:Lcom/onesignal/influence/model/OSInfluenceType;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/onesignal/influence/OSInAppMessageTracker;->influenceType:Lcom/onesignal/influence/model/OSInfluenceType;

    invoke-virtual {v0}, Lcom/onesignal/influence/model/OSInfluenceType;->isIndirect()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {p0}, Lcom/onesignal/influence/OSInAppMessageTracker;->getLastReceivedIds()Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onesignal/influence/OSInAppMessageTracker;->setIndirectIds(Lorg/json/JSONArray;)V

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/onesignal/influence/OSInAppMessageTracker;->logger:Lcom/onesignal/OSLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OneSignal InAppMessageTracker initInfluencedTypeFromCache: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/onesignal/influence/OSInAppMessageTracker;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/onesignal/OSLogger;->debug(Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method saveChannelObjects(Lorg/json/JSONArray;)V
    .locals 1
    .param p1, "channelObjects"    # Lorg/json/JSONArray;

    .line 79
    iget-object v0, p0, Lcom/onesignal/influence/OSInAppMessageTracker;->dataRepository:Lcom/onesignal/influence/OSInfluenceDataRepository;

    invoke-virtual {v0, p1}, Lcom/onesignal/influence/OSInfluenceDataRepository;->saveIAMs(Lorg/json/JSONArray;)V

    .line 80
    return-void
.end method
