.class public Lcom/onesignal/OutcomeEvent;
.super Ljava/lang/Object;
.source "OutcomeEvent.java"


# static fields
.field private static final NOTIFICATION_IDS:Ljava/lang/String; = "notification_ids"

.field private static final OUTCOME_ID:Ljava/lang/String; = "id"

.field private static final SESSION:Ljava/lang/String; = "session"

.field private static final TIMESTAMP:Ljava/lang/String; = "timestamp"

.field private static final WEIGHT:Ljava/lang/String; = "weight"


# instance fields
.field private name:Ljava/lang/String;

.field private notificationIds:Lorg/json/JSONArray;

.field private session:Lcom/onesignal/influence/model/OSInfluenceType;

.field private timestamp:J

.field private weight:Ljava/lang/Float;


# direct methods
.method public constructor <init>(Lcom/onesignal/influence/model/OSInfluenceType;Lorg/json/JSONArray;Ljava/lang/String;JF)V
    .locals 1
    .param p1, "session"    # Lcom/onesignal/influence/model/OSInfluenceType;
    .param p2, "notificationIds"    # Lorg/json/JSONArray;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "timestamp"    # J
    .param p6, "weight"    # F

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/onesignal/OutcomeEvent;->session:Lcom/onesignal/influence/model/OSInfluenceType;

    .line 30
    iput-object p2, p0, Lcom/onesignal/OutcomeEvent;->notificationIds:Lorg/json/JSONArray;

    .line 31
    iput-object p3, p0, Lcom/onesignal/OutcomeEvent;->name:Ljava/lang/String;

    .line 32
    iput-wide p4, p0, Lcom/onesignal/OutcomeEvent;->timestamp:J

    .line 33
    invoke-static {p6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/onesignal/OutcomeEvent;->weight:Ljava/lang/Float;

    .line 34
    return-void
.end method

.method public static fromOutcomeEventParamsV2toOutcomeEventV1(Lcom/onesignal/outcomes/model/OSOutcomeEventParams;)Lcom/onesignal/OutcomeEvent;
    .locals 10
    .param p0, "outcomeEventParams"    # Lcom/onesignal/outcomes/model/OSOutcomeEventParams;

    .line 40
    sget-object v0, Lcom/onesignal/influence/model/OSInfluenceType;->UNATTRIBUTED:Lcom/onesignal/influence/model/OSInfluenceType;

    .line 41
    .local v0, "influenceType":Lcom/onesignal/influence/model/OSInfluenceType;
    const/4 v1, 0x0

    .line 42
    .local v1, "notificationId":Lorg/json/JSONArray;
    invoke-virtual {p0}, Lcom/onesignal/outcomes/model/OSOutcomeEventParams;->getOutcomeSource()Lcom/onesignal/outcomes/model/OSOutcomeSource;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 43
    invoke-virtual {p0}, Lcom/onesignal/outcomes/model/OSOutcomeEventParams;->getOutcomeSource()Lcom/onesignal/outcomes/model/OSOutcomeSource;

    move-result-object v2

    .line 44
    .local v2, "source":Lcom/onesignal/outcomes/model/OSOutcomeSource;
    invoke-virtual {v2}, Lcom/onesignal/outcomes/model/OSOutcomeSource;->getDirectBody()Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/onesignal/outcomes/model/OSOutcomeSource;->getDirectBody()Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;->getNotificationIds()Lorg/json/JSONArray;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/onesignal/outcomes/model/OSOutcomeSource;->getDirectBody()Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;->getNotificationIds()Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 45
    sget-object v0, Lcom/onesignal/influence/model/OSInfluenceType;->DIRECT:Lcom/onesignal/influence/model/OSInfluenceType;

    .line 46
    invoke-virtual {v2}, Lcom/onesignal/outcomes/model/OSOutcomeSource;->getDirectBody()Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;->getNotificationIds()Lorg/json/JSONArray;

    move-result-object v1

    goto :goto_0

    .line 47
    :cond_0
    invoke-virtual {v2}, Lcom/onesignal/outcomes/model/OSOutcomeSource;->getIndirectBody()Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/onesignal/outcomes/model/OSOutcomeSource;->getIndirectBody()Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;->getNotificationIds()Lorg/json/JSONArray;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/onesignal/outcomes/model/OSOutcomeSource;->getIndirectBody()Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;->getNotificationIds()Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 48
    sget-object v0, Lcom/onesignal/influence/model/OSInfluenceType;->INDIRECT:Lcom/onesignal/influence/model/OSInfluenceType;

    .line 49
    invoke-virtual {v2}, Lcom/onesignal/outcomes/model/OSOutcomeSource;->getIndirectBody()Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;->getNotificationIds()Lorg/json/JSONArray;

    move-result-object v1

    .line 53
    .end local v2    # "source":Lcom/onesignal/outcomes/model/OSOutcomeSource;
    :cond_1
    :goto_0
    new-instance v2, Lcom/onesignal/OutcomeEvent;

    invoke-virtual {p0}, Lcom/onesignal/outcomes/model/OSOutcomeEventParams;->getOutcomeId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/onesignal/outcomes/model/OSOutcomeEventParams;->getTimestamp()J

    move-result-wide v7

    invoke-virtual {p0}, Lcom/onesignal/outcomes/model/OSOutcomeEventParams;->getWeight()Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v9

    move-object v3, v2

    move-object v4, v0

    move-object v5, v1

    invoke-direct/range {v3 .. v9}, Lcom/onesignal/OutcomeEvent;-><init>(Lcom/onesignal/influence/model/OSInfluenceType;Lorg/json/JSONArray;Ljava/lang/String;JF)V

    return-object v2
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    .line 100
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 101
    return v0

    .line 103
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 106
    :cond_1
    move-object v2, p1

    check-cast v2, Lcom/onesignal/OutcomeEvent;

    .line 107
    .local v2, "event":Lcom/onesignal/OutcomeEvent;
    iget-object v3, p0, Lcom/onesignal/OutcomeEvent;->session:Lcom/onesignal/influence/model/OSInfluenceType;

    iget-object v4, v2, Lcom/onesignal/OutcomeEvent;->session:Lcom/onesignal/influence/model/OSInfluenceType;

    invoke-virtual {v3, v4}, Lcom/onesignal/influence/model/OSInfluenceType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/onesignal/OutcomeEvent;->notificationIds:Lorg/json/JSONArray;

    iget-object v4, v2, Lcom/onesignal/OutcomeEvent;->notificationIds:Lorg/json/JSONArray;

    .line 108
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/onesignal/OutcomeEvent;->name:Ljava/lang/String;

    iget-object v4, v2, Lcom/onesignal/OutcomeEvent;->name:Ljava/lang/String;

    .line 109
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-wide v3, p0, Lcom/onesignal/OutcomeEvent;->timestamp:J

    iget-wide v5, v2, Lcom/onesignal/OutcomeEvent;->timestamp:J

    cmp-long v7, v3, v5

    if-nez v7, :cond_2

    iget-object v3, p0, Lcom/onesignal/OutcomeEvent;->weight:Ljava/lang/Float;

    iget-object v4, v2, Lcom/onesignal/OutcomeEvent;->weight:Ljava/lang/Float;

    .line 111
    invoke-virtual {v3, v4}, Ljava/lang/Float;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 107
    :goto_0
    return v0

    .line 104
    .end local v2    # "event":Lcom/onesignal/OutcomeEvent;
    :cond_3
    :goto_1
    return v1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/onesignal/OutcomeEvent;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNotificationIds()Lorg/json/JSONArray;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/onesignal/OutcomeEvent;->notificationIds:Lorg/json/JSONArray;

    return-object v0
.end method

.method public getSession()Lcom/onesignal/influence/model/OSInfluenceType;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/onesignal/OutcomeEvent;->session:Lcom/onesignal/influence/model/OSInfluenceType;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .line 69
    iget-wide v0, p0, Lcom/onesignal/OutcomeEvent;->timestamp:J

    return-wide v0
.end method

.method public getWeight()F
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/onesignal/OutcomeEvent;->weight:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 8

    .line 116
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/onesignal/OutcomeEvent;->session:Lcom/onesignal/influence/model/OSInfluenceType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/onesignal/OutcomeEvent;->notificationIds:Lorg/json/JSONArray;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/onesignal/OutcomeEvent;->name:Ljava/lang/String;

    const/4 v3, 0x2

    aput-object v1, v0, v3

    iget-wide v3, p0, Lcom/onesignal/OutcomeEvent;->timestamp:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v3, 0x3

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/onesignal/OutcomeEvent;->weight:Ljava/lang/Float;

    const/4 v3, 0x4

    aput-object v1, v0, v3

    .line 118
    .local v0, "a":[Ljava/lang/Object;
    const/4 v1, 0x1

    .line 120
    .local v1, "result":I
    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v0, v4

    .line 121
    .local v5, "element":Ljava/lang/Object;
    mul-int/lit8 v6, v1, 0x1f

    if-nez v5, :cond_0

    const/4 v7, 0x0

    goto :goto_1

    :cond_0
    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v7

    :goto_1
    add-int v1, v6, v7

    .line 120
    .end local v5    # "element":Ljava/lang/Object;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 123
    :cond_1
    return v1
.end method

.method public toJSONObject()Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 77
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 78
    .local v0, "json":Lorg/json/JSONObject;
    iget-object v1, p0, Lcom/onesignal/OutcomeEvent;->session:Lcom/onesignal/influence/model/OSInfluenceType;

    const-string v2, "session"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 79
    iget-object v1, p0, Lcom/onesignal/OutcomeEvent;->notificationIds:Lorg/json/JSONArray;

    const-string v2, "notification_ids"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 80
    iget-object v1, p0, Lcom/onesignal/OutcomeEvent;->name:Ljava/lang/String;

    const-string v2, "id"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 81
    iget-wide v1, p0, Lcom/onesignal/OutcomeEvent;->timestamp:J

    const-string v3, "timestamp"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 82
    iget-object v1, p0, Lcom/onesignal/OutcomeEvent;->weight:Ljava/lang/Float;

    const-string v2, "weight"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 83
    return-object v0
.end method

.method public toJSONObjectForMeasure()Lorg/json/JSONObject;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 87
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 88
    .local v0, "json":Lorg/json/JSONObject;
    iget-object v1, p0, Lcom/onesignal/OutcomeEvent;->notificationIds:Lorg/json/JSONArray;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 89
    iget-object v1, p0, Lcom/onesignal/OutcomeEvent;->notificationIds:Lorg/json/JSONArray;

    const-string v2, "notification_ids"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 90
    :cond_0
    iget-object v1, p0, Lcom/onesignal/OutcomeEvent;->name:Ljava/lang/String;

    const-string v2, "id"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 91
    iget-object v1, p0, Lcom/onesignal/OutcomeEvent;->weight:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 92
    iget-object v1, p0, Lcom/onesignal/OutcomeEvent;->weight:Ljava/lang/Float;

    const-string v2, "weight"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 93
    :cond_1
    iget-wide v1, p0, Lcom/onesignal/OutcomeEvent;->timestamp:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_2

    .line 94
    const-string v3, "timestamp"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 95
    :cond_2
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OutcomeEvent{session="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onesignal/OutcomeEvent;->session:Lcom/onesignal/influence/model/OSInfluenceType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", notificationIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onesignal/OutcomeEvent;->notificationIds:Lorg/json/JSONArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onesignal/OutcomeEvent;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", timestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/onesignal/OutcomeEvent;->timestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", weight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onesignal/OutcomeEvent;->weight:Ljava/lang/Float;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
