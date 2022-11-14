.class Lcom/onesignal/FocusTimeController$FocusTimeProcessorAttributed;
.super Lcom/onesignal/FocusTimeController$FocusTimeProcessorBase;
.source "FocusTimeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onesignal/FocusTimeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FocusTimeProcessorAttributed"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .line 132
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/onesignal/FocusTimeController$FocusTimeProcessorBase;-><init>(Lcom/onesignal/FocusTimeController$1;)V

    .line 133
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/onesignal/FocusTimeController$FocusTimeProcessorAttributed;->MIN_ON_FOCUS_TIME_SEC:J

    .line 134
    const-string v0, "OS_UNSENT_ATTRIBUTED_ACTIVE_TIME"

    iput-object v0, p0, Lcom/onesignal/FocusTimeController$FocusTimeProcessorAttributed;->PREF_KEY_FOR_UNSENT_TIME:Ljava/lang/String;

    .line 135
    return-void
.end method

.method private getInfluences()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onesignal/influence/model/OSInfluence;",
            ">;"
        }
    .end annotation

    .line 138
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 139
    .local v0, "influences":Ljava/util/List;, "Ljava/util/List<Lcom/onesignal/influence/model/OSInfluence;>;"
    sget-object v1, Lcom/onesignal/OneSignalPrefs;->PREFS_ONESIGNAL:Ljava/lang/String;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    const-string v3, "PREFS_OS_ATTRIBUTED_INFLUENCES"

    invoke-static {v1, v3, v2}, Lcom/onesignal/OneSignalPrefs;->getStringSet(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    .line 145
    .local v1, "influenceJSONs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 147
    .local v3, "influenceJSON":Ljava/lang/String;
    :try_start_0
    new-instance v4, Lcom/onesignal/influence/model/OSInfluence;

    invoke-direct {v4, v3}, Lcom/onesignal/influence/model/OSInfluence;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    goto :goto_1

    .line 148
    :catch_0
    move-exception v4

    .line 149
    .local v4, "exception":Lorg/json/JSONException;
    sget-object v5, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ": error generation OSInfluence from json object: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 151
    .end local v3    # "influenceJSON":Ljava/lang/String;
    .end local v4    # "exception":Lorg/json/JSONException;
    :goto_1
    goto :goto_0

    .line 152
    :cond_0
    return-object v0
.end method


# virtual methods
.method protected additionalFieldsToAddToOnFocusPayload(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "jsonBody"    # Lorg/json/JSONObject;

    .line 185
    invoke-static {}, Lcom/onesignal/OneSignal;->getSessionManager()Lcom/onesignal/OSSessionManager;

    move-result-object v0

    invoke-direct {p0}, Lcom/onesignal/FocusTimeController$FocusTimeProcessorAttributed;->getInfluences()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/onesignal/OSSessionManager;->addSessionIds(Lorg/json/JSONObject;Ljava/util/List;)V

    .line 186
    return-void
.end method

.method protected saveInfluences(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onesignal/influence/model/OSInfluence;",
            ">;)V"
        }
    .end annotation

    .line 157
    .local p1, "influences":Ljava/util/List;, "Ljava/util/List<Lcom/onesignal/influence/model/OSInfluence;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 158
    .local v0, "setInfluences":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onesignal/influence/model/OSInfluence;

    .line 160
    .local v2, "influence":Lcom/onesignal/influence/model/OSInfluence;
    :try_start_0
    invoke-virtual {v2}, Lcom/onesignal/influence/model/OSInfluence;->toJSONString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    goto :goto_1

    .line 161
    :catch_0
    move-exception v3

    .line 162
    .local v3, "exception":Lorg/json/JSONException;
    sget-object v4, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ": error generation json object OSInfluence: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 164
    .end local v2    # "influence":Lcom/onesignal/influence/model/OSInfluence;
    .end local v3    # "exception":Lorg/json/JSONException;
    :goto_1
    goto :goto_0

    .line 166
    :cond_0
    sget-object v1, Lcom/onesignal/OneSignalPrefs;->PREFS_ONESIGNAL:Ljava/lang/String;

    const-string v2, "PREFS_OS_ATTRIBUTED_INFLUENCES"

    invoke-static {v1, v2, v0}, Lcom/onesignal/OneSignalPrefs;->saveStringSet(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 171
    return-void
.end method

.method protected sendTime(Lcom/onesignal/FocusTimeController$FocusEventType;)V
    .locals 1
    .param p1, "focusType"    # Lcom/onesignal/FocusTimeController$FocusEventType;

    .line 189
    sget-object v0, Lcom/onesignal/FocusTimeController$FocusEventType;->END_SESSION:Lcom/onesignal/FocusTimeController$FocusEventType;

    invoke-virtual {p1, v0}, Lcom/onesignal/FocusTimeController$FocusEventType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    invoke-virtual {p0}, Lcom/onesignal/FocusTimeController$FocusTimeProcessorAttributed;->syncOnFocusTime()V

    goto :goto_0

    .line 192
    :cond_0
    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/onesignal/OneSignalSyncServiceUtils;->scheduleSyncTask(Landroid/content/Context;)V

    .line 193
    :goto_0
    return-void
.end method

.method protected timeTypeApplies(Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onesignal/influence/model/OSInfluence;",
            ">;)Z"
        }
    .end annotation

    .line 174
    .local p1, "influences":Ljava/util/List;, "Ljava/util/List<Lcom/onesignal/influence/model/OSInfluence;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onesignal/influence/model/OSInfluence;

    .line 176
    .local v1, "influence":Lcom/onesignal/influence/model/OSInfluence;
    invoke-virtual {v1}, Lcom/onesignal/influence/model/OSInfluence;->getInfluenceType()Lcom/onesignal/influence/model/OSInfluenceType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onesignal/influence/model/OSInfluenceType;->isAttributed()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 177
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":timeTypeApplies for influences: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " true"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 178
    const/4 v0, 0x1

    return v0

    .line 180
    .end local v1    # "influence":Lcom/onesignal/influence/model/OSInfluence;
    :cond_0
    goto :goto_0

    .line 181
    :cond_1
    const/4 v0, 0x0

    return v0
.end method
