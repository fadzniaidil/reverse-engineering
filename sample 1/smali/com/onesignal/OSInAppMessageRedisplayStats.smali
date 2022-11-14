.class Lcom/onesignal/OSInAppMessageRedisplayStats;
.super Ljava/lang/Object;
.source "OSInAppMessageRedisplayStats.java"


# static fields
.field private static final DISPLAY_DELAY:Ljava/lang/String; = "delay"

.field private static final DISPLAY_LIMIT:Ljava/lang/String; = "limit"


# instance fields
.field private displayDelay:J

.field private displayLimit:I

.field private displayQuantity:I

.field private lastDisplayTime:J

.field private redisplayEnabled:Z


# direct methods
.method constructor <init>()V
    .locals 3

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/onesignal/OSInAppMessageRedisplayStats;->lastDisplayTime:J

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Lcom/onesignal/OSInAppMessageRedisplayStats;->displayQuantity:I

    .line 16
    const/4 v1, 0x1

    iput v1, p0, Lcom/onesignal/OSInAppMessageRedisplayStats;->displayLimit:I

    .line 18
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/onesignal/OSInAppMessageRedisplayStats;->displayDelay:J

    .line 20
    iput-boolean v0, p0, Lcom/onesignal/OSInAppMessageRedisplayStats;->redisplayEnabled:Z

    .line 23
    return-void
.end method

.method constructor <init>(IJ)V
    .locals 3
    .param p1, "displayQuantity"    # I
    .param p2, "lastDisplayTime"    # J

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/onesignal/OSInAppMessageRedisplayStats;->lastDisplayTime:J

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Lcom/onesignal/OSInAppMessageRedisplayStats;->displayQuantity:I

    .line 16
    const/4 v1, 0x1

    iput v1, p0, Lcom/onesignal/OSInAppMessageRedisplayStats;->displayLimit:I

    .line 18
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/onesignal/OSInAppMessageRedisplayStats;->displayDelay:J

    .line 20
    iput-boolean v0, p0, Lcom/onesignal/OSInAppMessageRedisplayStats;->redisplayEnabled:Z

    .line 26
    iput p1, p0, Lcom/onesignal/OSInAppMessageRedisplayStats;->displayQuantity:I

    .line 27
    iput-wide p2, p0, Lcom/onesignal/OSInAppMessageRedisplayStats;->lastDisplayTime:J

    .line 28
    return-void
.end method

.method constructor <init>(Lorg/json/JSONObject;)V
    .locals 4
    .param p1, "json"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/onesignal/OSInAppMessageRedisplayStats;->lastDisplayTime:J

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Lcom/onesignal/OSInAppMessageRedisplayStats;->displayQuantity:I

    .line 16
    const/4 v1, 0x1

    iput v1, p0, Lcom/onesignal/OSInAppMessageRedisplayStats;->displayLimit:I

    .line 18
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/onesignal/OSInAppMessageRedisplayStats;->displayDelay:J

    .line 20
    iput-boolean v0, p0, Lcom/onesignal/OSInAppMessageRedisplayStats;->redisplayEnabled:Z

    .line 31
    iput-boolean v1, p0, Lcom/onesignal/OSInAppMessageRedisplayStats;->redisplayEnabled:Z

    .line 32
    const-string v0, "limit"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 33
    .local v0, "displayLimit":Ljava/lang/Object;
    const-string v1, "delay"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 35
    .local v1, "displayDelay":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/Integer;

    if-eqz v2, :cond_0

    .line 36
    move-object v2, v0

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/onesignal/OSInAppMessageRedisplayStats;->displayLimit:I

    .line 38
    :cond_0
    instance-of v2, v1, Ljava/lang/Long;

    if-eqz v2, :cond_1

    .line 39
    move-object v2, v1

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/onesignal/OSInAppMessageRedisplayStats;->displayDelay:J

    goto :goto_0

    .line 40
    :cond_1
    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_2

    .line 41
    move-object v2, v1

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, p0, Lcom/onesignal/OSInAppMessageRedisplayStats;->displayDelay:J

    .line 42
    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method getDisplayDelay()J
    .locals 2

    .line 78
    iget-wide v0, p0, Lcom/onesignal/OSInAppMessageRedisplayStats;->displayDelay:J

    return-wide v0
.end method

.method getDisplayLimit()I
    .locals 1

    .line 70
    iget v0, p0, Lcom/onesignal/OSInAppMessageRedisplayStats;->displayLimit:I

    return v0
.end method

.method getDisplayQuantity()I
    .locals 1

    .line 62
    iget v0, p0, Lcom/onesignal/OSInAppMessageRedisplayStats;->displayQuantity:I

    return v0
.end method

.method getLastDisplayTime()J
    .locals 2

    .line 50
    iget-wide v0, p0, Lcom/onesignal/OSInAppMessageRedisplayStats;->lastDisplayTime:J

    return-wide v0
.end method

.method incrementDisplayQuantity()V
    .locals 1

    .line 58
    iget v0, p0, Lcom/onesignal/OSInAppMessageRedisplayStats;->displayQuantity:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/onesignal/OSInAppMessageRedisplayStats;->displayQuantity:I

    .line 59
    return-void
.end method

.method isDelayTimeSatisfied()Z
    .locals 9

    .line 92
    iget-wide v0, p0, Lcom/onesignal/OSInAppMessageRedisplayStats;->lastDisplayTime:J

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-gez v5, :cond_0

    .line 93
    return v2

    .line 95
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v3, 0x3e8

    div-long/2addr v0, v3

    .line 97
    .local v0, "currentTimeInSeconds":J
    iget-wide v3, p0, Lcom/onesignal/OSInAppMessageRedisplayStats;->lastDisplayTime:J

    sub-long v3, v0, v3

    .line 98
    .local v3, "diffInSeconds":J
    sget-object v5, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OSInAppMessage lastDisplayTime: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, p0, Lcom/onesignal/OSInAppMessageRedisplayStats;->lastDisplayTime:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " currentTimeInSeconds: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " diffInSeconds: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " displayDelay: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, p0, Lcom/onesignal/OSInAppMessageRedisplayStats;->displayDelay:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 100
    iget-wide v5, p0, Lcom/onesignal/OSInAppMessageRedisplayStats;->displayDelay:J

    cmp-long v7, v3, v5

    if-ltz v7, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public isRedisplayEnabled()Z
    .locals 1

    .line 104
    iget-boolean v0, p0, Lcom/onesignal/OSInAppMessageRedisplayStats;->redisplayEnabled:Z

    return v0
.end method

.method setDisplayDelay(J)V
    .locals 0
    .param p1, "displayDelay"    # J

    .line 82
    iput-wide p1, p0, Lcom/onesignal/OSInAppMessageRedisplayStats;->displayDelay:J

    .line 83
    return-void
.end method

.method setDisplayLimit(I)V
    .locals 0
    .param p1, "displayLimit"    # I

    .line 74
    iput p1, p0, Lcom/onesignal/OSInAppMessageRedisplayStats;->displayLimit:I

    .line 75
    return-void
.end method

.method setDisplayQuantity(I)V
    .locals 0
    .param p1, "displayQuantity"    # I

    .line 66
    iput p1, p0, Lcom/onesignal/OSInAppMessageRedisplayStats;->displayQuantity:I

    .line 67
    return-void
.end method

.method setDisplayStats(Lcom/onesignal/OSInAppMessageRedisplayStats;)V
    .locals 2
    .param p1, "displayStats"    # Lcom/onesignal/OSInAppMessageRedisplayStats;

    .line 45
    invoke-virtual {p1}, Lcom/onesignal/OSInAppMessageRedisplayStats;->getLastDisplayTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/onesignal/OSInAppMessageRedisplayStats;->setLastDisplayTime(J)V

    .line 46
    invoke-virtual {p1}, Lcom/onesignal/OSInAppMessageRedisplayStats;->getDisplayQuantity()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/onesignal/OSInAppMessageRedisplayStats;->setDisplayQuantity(I)V

    .line 47
    return-void
.end method

.method setLastDisplayTime(J)V
    .locals 0
    .param p1, "lastDisplayTime"    # J

    .line 54
    iput-wide p1, p0, Lcom/onesignal/OSInAppMessageRedisplayStats;->lastDisplayTime:J

    .line 55
    return-void
.end method

.method shouldDisplayAgain()Z
    .locals 4

    .line 86
    iget v0, p0, Lcom/onesignal/OSInAppMessageRedisplayStats;->displayQuantity:I

    iget v1, p0, Lcom/onesignal/OSInAppMessageRedisplayStats;->displayLimit:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 87
    .local v0, "result":Z
    :goto_0
    sget-object v1, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OSInAppMessage shouldDisplayAgain: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 88
    return v0
.end method

.method toJSONObject()Lorg/json/JSONObject;
    .locals 4

    .line 108
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 111
    .local v0, "json":Lorg/json/JSONObject;
    :try_start_0
    const-string v1, "limit"

    iget v2, p0, Lcom/onesignal/OSInAppMessageRedisplayStats;->displayLimit:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 112
    const-string v1, "delay"

    iget-wide v2, p0, Lcom/onesignal/OSInAppMessageRedisplayStats;->displayDelay:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    goto :goto_0

    .line 113
    :catch_0
    move-exception v1

    .line 114
    .local v1, "exception":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 117
    .end local v1    # "exception":Lorg/json/JSONException;
    :goto_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OSInAppMessageDisplayStats{lastDisplayTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/onesignal/OSInAppMessageRedisplayStats;->lastDisplayTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", displayQuantity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/onesignal/OSInAppMessageRedisplayStats;->displayQuantity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", displayLimit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/onesignal/OSInAppMessageRedisplayStats;->displayLimit:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", displayDelay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/onesignal/OSInAppMessageRedisplayStats;->displayDelay:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
