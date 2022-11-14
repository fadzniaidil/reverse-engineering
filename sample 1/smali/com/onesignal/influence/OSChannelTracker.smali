.class public abstract Lcom/onesignal/influence/OSChannelTracker;
.super Ljava/lang/Object;
.source "OSChannelTracker.java"


# static fields
.field private static final TIME:Ljava/lang/String; = "time"


# instance fields
.field dataRepository:Lcom/onesignal/influence/OSInfluenceDataRepository;

.field directId:Ljava/lang/String;

.field indirectIds:Lorg/json/JSONArray;

.field influenceType:Lcom/onesignal/influence/model/OSInfluenceType;

.field protected logger:Lcom/onesignal/OSLogger;


# direct methods
.method constructor <init>(Lcom/onesignal/influence/OSInfluenceDataRepository;Lcom/onesignal/OSLogger;)V
    .locals 0
    .param p1, "dataRepository"    # Lcom/onesignal/influence/OSInfluenceDataRepository;
    .param p2, "logger"    # Lcom/onesignal/OSLogger;

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/onesignal/influence/OSChannelTracker;->dataRepository:Lcom/onesignal/influence/OSInfluenceDataRepository;

    .line 31
    iput-object p2, p0, Lcom/onesignal/influence/OSChannelTracker;->logger:Lcom/onesignal/OSLogger;

    .line 32
    return-void
.end method

.method private isDirectSessionEnabled()Z
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/onesignal/influence/OSChannelTracker;->dataRepository:Lcom/onesignal/influence/OSInfluenceDataRepository;

    invoke-virtual {v0}, Lcom/onesignal/influence/OSInfluenceDataRepository;->isDirectInfluenceEnabled()Z

    move-result v0

    return v0
.end method

.method private isIndirectSessionEnabled()Z
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/onesignal/influence/OSChannelTracker;->dataRepository:Lcom/onesignal/influence/OSInfluenceDataRepository;

    invoke-virtual {v0}, Lcom/onesignal/influence/OSInfluenceDataRepository;->isIndirectInfluenceEnabled()Z

    move-result v0

    return v0
.end method

.method private isUnattributedSessionEnabled()Z
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/onesignal/influence/OSChannelTracker;->dataRepository:Lcom/onesignal/influence/OSInfluenceDataRepository;

    invoke-virtual {v0}, Lcom/onesignal/influence/OSInfluenceDataRepository;->isUnattributedInfluenceEnabled()Z

    move-result v0

    return v0
.end method


# virtual methods
.method abstract addSessionData(Lorg/json/JSONObject;Lcom/onesignal/influence/model/OSInfluence;)V
.end method

.method public abstract cacheState()V
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 224
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 225
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 226
    :cond_1
    move-object v2, p1

    check-cast v2, Lcom/onesignal/influence/OSChannelTracker;

    .line 227
    .local v2, "tracker":Lcom/onesignal/influence/OSChannelTracker;
    iget-object v3, p0, Lcom/onesignal/influence/OSChannelTracker;->influenceType:Lcom/onesignal/influence/model/OSInfluenceType;

    iget-object v4, v2, Lcom/onesignal/influence/OSChannelTracker;->influenceType:Lcom/onesignal/influence/model/OSInfluenceType;

    if-ne v3, v4, :cond_2

    invoke-virtual {v2}, Lcom/onesignal/influence/OSChannelTracker;->getIdTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/onesignal/influence/OSChannelTracker;->getIdTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 225
    .end local v2    # "tracker":Lcom/onesignal/influence/OSChannelTracker;
    :cond_3
    :goto_1
    return v1
.end method

.method abstract getChannelLimit()I
.end method

.method abstract getChannelType()Lcom/onesignal/influence/model/OSInfluenceChannel;
.end method

.method public getCurrentSessionInfluence()Lcom/onesignal/influence/model/OSInfluence;
    .locals 4

    .line 144
    invoke-static {}, Lcom/onesignal/influence/model/OSInfluence$Builder;->newInstance()Lcom/onesignal/influence/model/OSInfluence$Builder;

    move-result-object v0

    sget-object v1, Lcom/onesignal/influence/model/OSInfluenceType;->DISABLED:Lcom/onesignal/influence/model/OSInfluenceType;

    invoke-virtual {v0, v1}, Lcom/onesignal/influence/model/OSInfluence$Builder;->setInfluenceType(Lcom/onesignal/influence/model/OSInfluenceType;)Lcom/onesignal/influence/model/OSInfluence$Builder;

    move-result-object v0

    .line 147
    .local v0, "sessionInfluenceBuilder":Lcom/onesignal/influence/model/OSInfluence$Builder;
    iget-object v1, p0, Lcom/onesignal/influence/OSChannelTracker;->influenceType:Lcom/onesignal/influence/model/OSInfluenceType;

    if-nez v1, :cond_0

    .line 148
    invoke-virtual {p0}, Lcom/onesignal/influence/OSChannelTracker;->initInfluencedTypeFromCache()V

    .line 150
    :cond_0
    iget-object v1, p0, Lcom/onesignal/influence/OSChannelTracker;->influenceType:Lcom/onesignal/influence/model/OSInfluenceType;

    invoke-virtual {v1}, Lcom/onesignal/influence/model/OSInfluenceType;->isDirect()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 151
    invoke-direct {p0}, Lcom/onesignal/influence/OSChannelTracker;->isDirectSessionEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 152
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    iget-object v2, p0, Lcom/onesignal/influence/OSChannelTracker;->directId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v1

    .line 153
    .local v1, "directIds":Lorg/json/JSONArray;
    invoke-static {}, Lcom/onesignal/influence/model/OSInfluence$Builder;->newInstance()Lcom/onesignal/influence/model/OSInfluence$Builder;

    move-result-object v2

    .line 154
    invoke-virtual {v2, v1}, Lcom/onesignal/influence/model/OSInfluence$Builder;->setIds(Lorg/json/JSONArray;)Lcom/onesignal/influence/model/OSInfluence$Builder;

    move-result-object v2

    sget-object v3, Lcom/onesignal/influence/model/OSInfluenceType;->DIRECT:Lcom/onesignal/influence/model/OSInfluenceType;

    .line 155
    invoke-virtual {v2, v3}, Lcom/onesignal/influence/model/OSInfluence$Builder;->setInfluenceType(Lcom/onesignal/influence/model/OSInfluenceType;)Lcom/onesignal/influence/model/OSInfluence$Builder;

    move-result-object v0

    .line 156
    .end local v1    # "directIds":Lorg/json/JSONArray;
    goto :goto_0

    .line 157
    :cond_1
    iget-object v1, p0, Lcom/onesignal/influence/OSChannelTracker;->influenceType:Lcom/onesignal/influence/model/OSInfluenceType;

    invoke-virtual {v1}, Lcom/onesignal/influence/model/OSInfluenceType;->isIndirect()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 158
    invoke-direct {p0}, Lcom/onesignal/influence/OSChannelTracker;->isIndirectSessionEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 159
    invoke-static {}, Lcom/onesignal/influence/model/OSInfluence$Builder;->newInstance()Lcom/onesignal/influence/model/OSInfluence$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/onesignal/influence/OSChannelTracker;->indirectIds:Lorg/json/JSONArray;

    .line 160
    invoke-virtual {v1, v2}, Lcom/onesignal/influence/model/OSInfluence$Builder;->setIds(Lorg/json/JSONArray;)Lcom/onesignal/influence/model/OSInfluence$Builder;

    move-result-object v1

    sget-object v2, Lcom/onesignal/influence/model/OSInfluenceType;->INDIRECT:Lcom/onesignal/influence/model/OSInfluenceType;

    .line 161
    invoke-virtual {v1, v2}, Lcom/onesignal/influence/model/OSInfluence$Builder;->setInfluenceType(Lcom/onesignal/influence/model/OSInfluenceType;)Lcom/onesignal/influence/model/OSInfluence$Builder;

    move-result-object v0

    goto :goto_0

    .line 163
    :cond_2
    invoke-direct {p0}, Lcom/onesignal/influence/OSChannelTracker;->isUnattributedSessionEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 164
    invoke-static {}, Lcom/onesignal/influence/model/OSInfluence$Builder;->newInstance()Lcom/onesignal/influence/model/OSInfluence$Builder;

    move-result-object v1

    sget-object v2, Lcom/onesignal/influence/model/OSInfluenceType;->UNATTRIBUTED:Lcom/onesignal/influence/model/OSInfluenceType;

    .line 165
    invoke-virtual {v1, v2}, Lcom/onesignal/influence/model/OSInfluence$Builder;->setInfluenceType(Lcom/onesignal/influence/model/OSInfluenceType;)Lcom/onesignal/influence/model/OSInfluence$Builder;

    move-result-object v0

    .line 168
    :cond_3
    :goto_0
    nop

    .line 169
    invoke-virtual {p0}, Lcom/onesignal/influence/OSChannelTracker;->getChannelType()Lcom/onesignal/influence/model/OSInfluenceChannel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onesignal/influence/model/OSInfluence$Builder;->setInfluenceChannel(Lcom/onesignal/influence/model/OSInfluenceChannel;)Lcom/onesignal/influence/model/OSInfluence$Builder;

    move-result-object v1

    .line 170
    invoke-virtual {v1}, Lcom/onesignal/influence/model/OSInfluence$Builder;->build()Lcom/onesignal/influence/model/OSInfluence;

    move-result-object v1

    .line 168
    return-object v1
.end method

.method public getDirectId()Ljava/lang/String;
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/onesignal/influence/OSChannelTracker;->directId:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getIdTag()Ljava/lang/String;
.end method

.method abstract getIndirectAttributionWindow()I
.end method

.method public getIndirectIds()Lorg/json/JSONArray;
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/onesignal/influence/OSChannelTracker;->indirectIds:Lorg/json/JSONArray;

    return-object v0
.end method

.method public getInfluenceType()Lcom/onesignal/influence/model/OSInfluenceType;
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/onesignal/influence/OSChannelTracker;->influenceType:Lcom/onesignal/influence/model/OSInfluenceType;

    return-object v0
.end method

.method abstract getLastChannelObjects()Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation
.end method

.method abstract getLastChannelObjectsReceivedByNewId(Ljava/lang/String;)Lorg/json/JSONArray;
.end method

.method public getLastReceivedIds()Lorg/json/JSONArray;
    .locals 13

    .line 69
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 71
    .local v0, "ids":Lorg/json/JSONArray;
    :try_start_0
    invoke-virtual {p0}, Lcom/onesignal/influence/OSChannelTracker;->getLastChannelObjects()Lorg/json/JSONArray;

    move-result-object v1

    .line 72
    .local v1, "lastChannelObjectReceived":Lorg/json/JSONArray;
    iget-object v2, p0, Lcom/onesignal/influence/OSChannelTracker;->logger:Lcom/onesignal/OSLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OneSignal ChannelTracker getLastReceivedIds lastChannelObjectReceived: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/onesignal/OSLogger;->debug(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p0}, Lcom/onesignal/influence/OSChannelTracker;->getIndirectAttributionWindow()I

    move-result v2

    mul-int/lit8 v2, v2, 0x3c

    int-to-long v2, v2

    const-wide/16 v4, 0x3e8

    mul-long v2, v2, v4

    .line 75
    .local v2, "attributionWindow":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 76
    .local v4, "currentTime":J
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_1

    .line 77
    invoke-virtual {v1, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 78
    .local v7, "jsonObject":Lorg/json/JSONObject;
    const-string v8, "time"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 79
    .local v8, "time":J
    sub-long v10, v4, v8

    .line 81
    .local v10, "difference":J
    cmp-long v12, v10, v2

    if-gtz v12, :cond_0

    .line 82
    invoke-virtual {p0}, Lcom/onesignal/influence/OSChannelTracker;->getIdTag()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 83
    .local v12, "id":Ljava/lang/String;
    invoke-virtual {v0, v12}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    .end local v7    # "jsonObject":Lorg/json/JSONObject;
    .end local v8    # "time":J
    .end local v10    # "difference":J
    .end local v12    # "id":Ljava/lang/String;
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 88
    .end local v1    # "lastChannelObjectReceived":Lorg/json/JSONArray;
    .end local v2    # "attributionWindow":J
    .end local v4    # "currentTime":J
    .end local v6    # "i":I
    :cond_1
    goto :goto_1

    .line 86
    :catch_0
    move-exception v1

    .line 87
    .local v1, "exception":Lorg/json/JSONException;
    iget-object v2, p0, Lcom/onesignal/influence/OSChannelTracker;->logger:Lcom/onesignal/OSLogger;

    const-string v3, "Generating tracker getLastReceivedIds JSONObject "

    invoke-interface {v2, v3, v1}, Lcom/onesignal/OSLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 90
    .end local v1    # "exception":Lorg/json/JSONException;
    :goto_1
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 232
    iget-object v0, p0, Lcom/onesignal/influence/OSChannelTracker;->influenceType:Lcom/onesignal/influence/model/OSInfluenceType;

    invoke-virtual {v0}, Lcom/onesignal/influence/model/OSInfluenceType;->hashCode()I

    move-result v0

    .line 233
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    invoke-virtual {p0}, Lcom/onesignal/influence/OSChannelTracker;->getIdTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 234
    .end local v0    # "result":I
    .local v1, "result":I
    return v1
.end method

.method abstract initInfluencedTypeFromCache()V
.end method

.method public resetAndInitInfluence()V
    .locals 3

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/onesignal/influence/OSChannelTracker;->directId:Ljava/lang/String;

    .line 56
    invoke-virtual {p0}, Lcom/onesignal/influence/OSChannelTracker;->getLastReceivedIds()Lorg/json/JSONArray;

    move-result-object v0

    iput-object v0, p0, Lcom/onesignal/influence/OSChannelTracker;->indirectIds:Lorg/json/JSONArray;

    .line 57
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Lcom/onesignal/influence/model/OSInfluenceType;->INDIRECT:Lcom/onesignal/influence/model/OSInfluenceType;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/onesignal/influence/model/OSInfluenceType;->UNATTRIBUTED:Lcom/onesignal/influence/model/OSInfluenceType;

    :goto_0
    iput-object v0, p0, Lcom/onesignal/influence/OSChannelTracker;->influenceType:Lcom/onesignal/influence/model/OSInfluenceType;

    .line 59
    invoke-virtual {p0}, Lcom/onesignal/influence/OSChannelTracker;->cacheState()V

    .line 60
    iget-object v0, p0, Lcom/onesignal/influence/OSChannelTracker;->logger:Lcom/onesignal/OSLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OneSignal OSChannelTracker resetAndInitInfluence: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/onesignal/influence/OSChannelTracker;->getIdTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " finish with influenceType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/onesignal/influence/OSChannelTracker;->influenceType:Lcom/onesignal/influence/model/OSInfluenceType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/onesignal/OSLogger;->debug(Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method abstract saveChannelObjects(Lorg/json/JSONArray;)V
.end method

.method public saveLastId(Ljava/lang/String;)V
    .locals 9
    .param p1, "id"    # Ljava/lang/String;

    .line 97
    iget-object v0, p0, Lcom/onesignal/influence/OSChannelTracker;->logger:Lcom/onesignal/OSLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OneSignal OSChannelTracker for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/onesignal/influence/OSChannelTracker;->getIdTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " saveLastId: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/onesignal/OSLogger;->debug(Ljava/lang/String;)V

    .line 98
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 101
    :cond_0
    invoke-virtual {p0, p1}, Lcom/onesignal/influence/OSChannelTracker;->getLastChannelObjectsReceivedByNewId(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 102
    .local v0, "lastChannelObjectsReceived":Lorg/json/JSONArray;
    iget-object v1, p0, Lcom/onesignal/influence/OSChannelTracker;->logger:Lcom/onesignal/OSLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/onesignal/influence/OSChannelTracker;->getIdTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " saveLastId with lastChannelObjectsReceived: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/onesignal/OSLogger;->debug(Ljava/lang/String;)V

    .line 105
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 106
    invoke-virtual {p0}, Lcom/onesignal/influence/OSChannelTracker;->getIdTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v3, "time"

    .line 107
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v1

    .line 108
    .local v1, "newInfluenceId":Lorg/json/JSONObject;
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 113
    nop

    .line 115
    .end local v1    # "newInfluenceId":Lorg/json/JSONObject;
    invoke-virtual {p0}, Lcom/onesignal/influence/OSChannelTracker;->getChannelLimit()I

    move-result v1

    .line 116
    .local v1, "channelLimit":I
    move-object v3, v0

    .line 121
    .local v3, "channelObjectToSave":Lorg/json/JSONArray;
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-le v4, v1, :cond_1

    .line 122
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    sub-int/2addr v4, v1

    .line 124
    .local v4, "lengthDifference":I
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    move-object v3, v5

    .line 125
    move v5, v4

    .local v5, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 127
    :try_start_1
    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 130
    goto :goto_1

    .line 128
    :catch_0
    move-exception v6

    .line 129
    .local v6, "exception":Lorg/json/JSONException;
    iget-object v7, p0, Lcom/onesignal/influence/OSChannelTracker;->logger:Lcom/onesignal/OSLogger;

    const-string v8, "Before KITKAT API, Generating tracker lastChannelObjectsReceived get JSONObject "

    invoke-interface {v7, v8, v6}, Lcom/onesignal/OSLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 125
    .end local v6    # "exception":Lorg/json/JSONException;
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 134
    .end local v4    # "lengthDifference":I
    .end local v5    # "i":I
    :cond_1
    iget-object v4, p0, Lcom/onesignal/influence/OSChannelTracker;->logger:Lcom/onesignal/OSLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/onesignal/influence/OSChannelTracker;->getIdTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " with channelObjectToSave: "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v2}, Lcom/onesignal/OSLogger;->debug(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p0, v3}, Lcom/onesignal/influence/OSChannelTracker;->saveChannelObjects(Lorg/json/JSONArray;)V

    .line 136
    return-void

    .line 109
    .end local v1    # "channelLimit":I
    .end local v3    # "channelObjectToSave":Lorg/json/JSONArray;
    :catch_1
    move-exception v1

    .line 110
    .local v1, "exception":Lorg/json/JSONException;
    iget-object v2, p0, Lcom/onesignal/influence/OSChannelTracker;->logger:Lcom/onesignal/OSLogger;

    const-string v3, "Generating tracker newInfluenceId JSONObject "

    invoke-interface {v2, v3, v1}, Lcom/onesignal/OSLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 112
    return-void

    .line 99
    .end local v0    # "lastChannelObjectsReceived":Lorg/json/JSONArray;
    .end local v1    # "exception":Lorg/json/JSONException;
    :cond_2
    :goto_2
    return-void
.end method

.method public setDirectId(Ljava/lang/String;)V
    .locals 0
    .param p1, "directId"    # Ljava/lang/String;

    .line 209
    iput-object p1, p0, Lcom/onesignal/influence/OSChannelTracker;->directId:Ljava/lang/String;

    .line 210
    return-void
.end method

.method public setIndirectIds(Lorg/json/JSONArray;)V
    .locals 0
    .param p1, "indirectIds"    # Lorg/json/JSONArray;

    .line 200
    iput-object p1, p0, Lcom/onesignal/influence/OSChannelTracker;->indirectIds:Lorg/json/JSONArray;

    .line 201
    return-void
.end method

.method public setInfluenceType(Lcom/onesignal/influence/model/OSInfluenceType;)V
    .locals 0
    .param p1, "influenceType"    # Lcom/onesignal/influence/model/OSInfluenceType;

    .line 191
    iput-object p1, p0, Lcom/onesignal/influence/OSChannelTracker;->influenceType:Lcom/onesignal/influence/model/OSInfluenceType;

    .line 192
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OSChannelTracker{tag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    invoke-virtual {p0}, Lcom/onesignal/influence/OSChannelTracker;->getIdTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", influenceType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onesignal/influence/OSChannelTracker;->influenceType:Lcom/onesignal/influence/model/OSInfluenceType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", indirectIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onesignal/influence/OSChannelTracker;->indirectIds:Lorg/json/JSONArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", directId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onesignal/influence/OSChannelTracker;->directId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 214
    return-object v0
.end method
