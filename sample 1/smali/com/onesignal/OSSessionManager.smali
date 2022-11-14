.class public Lcom/onesignal/OSSessionManager;
.super Ljava/lang/Object;
.source "OSSessionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onesignal/OSSessionManager$SessionListener;
    }
.end annotation


# static fields
.field private static final OS_END_CURRENT_SESSION:Ljava/lang/String; = "OS_END_CURRENT_SESSION"


# instance fields
.field private logger:Lcom/onesignal/OSLogger;

.field private sessionListener:Lcom/onesignal/OSSessionManager$SessionListener;

.field protected trackerFactory:Lcom/onesignal/influence/OSTrackerFactory;


# direct methods
.method public constructor <init>(Lcom/onesignal/OSSessionManager$SessionListener;Lcom/onesignal/influence/OSTrackerFactory;Lcom/onesignal/OSLogger;)V
    .locals 0
    .param p1, "sessionListener"    # Lcom/onesignal/OSSessionManager$SessionListener;
    .param p2, "trackerFactory"    # Lcom/onesignal/influence/OSTrackerFactory;
    .param p3, "logger"    # Lcom/onesignal/OSLogger;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/onesignal/OSSessionManager;->sessionListener:Lcom/onesignal/OSSessionManager$SessionListener;

    .line 41
    iput-object p2, p0, Lcom/onesignal/OSSessionManager;->trackerFactory:Lcom/onesignal/influence/OSTrackerFactory;

    .line 42
    iput-object p3, p0, Lcom/onesignal/OSSessionManager;->logger:Lcom/onesignal/OSLogger;

    .line 43
    return-void
.end method

.method static synthetic access$000(Lcom/onesignal/OSSessionManager;)Lcom/onesignal/OSSessionManager$SessionListener;
    .locals 1
    .param p0, "x0"    # Lcom/onesignal/OSSessionManager;

    .line 26
    iget-object v0, p0, Lcom/onesignal/OSSessionManager;->sessionListener:Lcom/onesignal/OSSessionManager$SessionListener;

    return-object v0
.end method

.method private attemptSessionUpgrade(Lcom/onesignal/OneSignal$AppEntryAction;Ljava/lang/String;)V
    .locals 11
    .param p1, "entryAction"    # Lcom/onesignal/OneSignal$AppEntryAction;
    .param p2, "directId"    # Ljava/lang/String;

    .line 138
    iget-object v0, p0, Lcom/onesignal/OSSessionManager;->logger:Lcom/onesignal/OSLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OneSignal SessionManager attemptSessionUpgrade with entryAction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/onesignal/OSLogger;->debug(Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/onesignal/OSSessionManager;->trackerFactory:Lcom/onesignal/influence/OSTrackerFactory;

    invoke-virtual {v0, p1}, Lcom/onesignal/influence/OSTrackerFactory;->getChannelByEntryAction(Lcom/onesignal/OneSignal$AppEntryAction;)Lcom/onesignal/influence/OSChannelTracker;

    move-result-object v0

    .line 140
    .local v0, "channelTrackerByAction":Lcom/onesignal/influence/OSChannelTracker;
    iget-object v1, p0, Lcom/onesignal/OSSessionManager;->trackerFactory:Lcom/onesignal/influence/OSTrackerFactory;

    invoke-virtual {v1, p1}, Lcom/onesignal/influence/OSTrackerFactory;->getChannelsToResetByEntryAction(Lcom/onesignal/OneSignal$AppEntryAction;)Ljava/util/List;

    move-result-object v1

    .line 141
    .local v1, "channelTrackersToReset":Ljava/util/List;, "Ljava/util/List<Lcom/onesignal/influence/OSChannelTracker;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 142
    .local v2, "influencesToEnd":Ljava/util/List;, "Ljava/util/List<Lcom/onesignal/influence/model/OSInfluence;>;"
    const/4 v3, 0x0

    .line 145
    .local v3, "lastInfluence":Lcom/onesignal/influence/model/OSInfluence;
    const/4 v4, 0x0

    .line 146
    .local v4, "updated":Z
    const/4 v5, 0x0

    if-eqz v0, :cond_1

    .line 147
    invoke-virtual {v0}, Lcom/onesignal/influence/OSChannelTracker;->getCurrentSessionInfluence()Lcom/onesignal/influence/model/OSInfluence;

    move-result-object v3

    .line 148
    sget-object v6, Lcom/onesignal/influence/model/OSInfluenceType;->DIRECT:Lcom/onesignal/influence/model/OSInfluenceType;

    if-nez p2, :cond_0

    .line 150
    invoke-virtual {v0}, Lcom/onesignal/influence/OSChannelTracker;->getDirectId()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    :cond_0
    move-object v7, p2

    .line 148
    :goto_0
    invoke-direct {p0, v0, v6, v7, v5}, Lcom/onesignal/OSSessionManager;->setSession(Lcom/onesignal/influence/OSChannelTracker;Lcom/onesignal/influence/model/OSInfluenceType;Ljava/lang/String;Lorg/json/JSONArray;)Z

    move-result v4

    .line 154
    :cond_1
    if-eqz v4, :cond_3

    .line 155
    iget-object v6, p0, Lcom/onesignal/OSSessionManager;->logger:Lcom/onesignal/OSLogger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "OneSignal SessionManager attemptSessionUpgrade channel updated, search for ending direct influences on channels: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/onesignal/OSLogger;->debug(Ljava/lang/String;)V

    .line 156
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/onesignal/influence/OSChannelTracker;

    .line 161
    .local v7, "tracker":Lcom/onesignal/influence/OSChannelTracker;
    invoke-virtual {v7}, Lcom/onesignal/influence/OSChannelTracker;->getInfluenceType()Lcom/onesignal/influence/model/OSInfluenceType;

    move-result-object v8

    invoke-virtual {v8}, Lcom/onesignal/influence/model/OSInfluenceType;->isDirect()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 162
    invoke-virtual {v7}, Lcom/onesignal/influence/OSChannelTracker;->getCurrentSessionInfluence()Lcom/onesignal/influence/model/OSInfluence;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    invoke-virtual {v7}, Lcom/onesignal/influence/OSChannelTracker;->resetAndInitInfluence()V

    .line 165
    .end local v7    # "tracker":Lcom/onesignal/influence/OSChannelTracker;
    :cond_2
    goto :goto_1

    .line 167
    :cond_3
    iget-object v6, p0, Lcom/onesignal/OSSessionManager;->logger:Lcom/onesignal/OSLogger;

    const-string v7, "OneSignal SessionManager attemptSessionUpgrade try UNATTRIBUTED to INDIRECT upgrade"

    invoke-interface {v6, v7}, Lcom/onesignal/OSLogger;->debug(Ljava/lang/String;)V

    .line 169
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/onesignal/influence/OSChannelTracker;

    .line 170
    .local v7, "channelTracker":Lcom/onesignal/influence/OSChannelTracker;
    invoke-virtual {v7}, Lcom/onesignal/influence/OSChannelTracker;->getInfluenceType()Lcom/onesignal/influence/model/OSInfluenceType;

    move-result-object v8

    invoke-virtual {v8}, Lcom/onesignal/influence/model/OSInfluenceType;->isUnattributed()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 171
    invoke-virtual {v7}, Lcom/onesignal/influence/OSChannelTracker;->getLastReceivedIds()Lorg/json/JSONArray;

    move-result-object v8

    .line 173
    .local v8, "lastIds":Lorg/json/JSONArray;
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-lez v9, :cond_4

    invoke-virtual {p1}, Lcom/onesignal/OneSignal$AppEntryAction;->isAppClose()Z

    move-result v9

    if-nez v9, :cond_4

    .line 176
    invoke-virtual {v7}, Lcom/onesignal/influence/OSChannelTracker;->getCurrentSessionInfluence()Lcom/onesignal/influence/model/OSInfluence;

    move-result-object v9

    .line 177
    .local v9, "influence":Lcom/onesignal/influence/model/OSInfluence;
    sget-object v10, Lcom/onesignal/influence/model/OSInfluenceType;->INDIRECT:Lcom/onesignal/influence/model/OSInfluenceType;

    invoke-direct {p0, v7, v10, v5, v8}, Lcom/onesignal/OSSessionManager;->setSession(Lcom/onesignal/influence/OSChannelTracker;Lcom/onesignal/influence/model/OSInfluenceType;Ljava/lang/String;Lorg/json/JSONArray;)Z

    move-result v4

    .line 179
    if-eqz v4, :cond_4

    .line 180
    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    .end local v7    # "channelTracker":Lcom/onesignal/influence/OSChannelTracker;
    .end local v8    # "lastIds":Lorg/json/JSONArray;
    .end local v9    # "influence":Lcom/onesignal/influence/model/OSInfluence;
    :cond_4
    goto :goto_2

    .line 185
    :cond_5
    sget-object v5, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Trackers after update attempt: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/onesignal/OSSessionManager;->trackerFactory:Lcom/onesignal/influence/OSTrackerFactory;

    invoke-virtual {v7}, Lcom/onesignal/influence/OSTrackerFactory;->getChannels()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 186
    invoke-direct {p0, v2}, Lcom/onesignal/OSSessionManager;->sendSessionEndingWithInfluences(Ljava/util/List;)V

    .line 187
    return-void
.end method

.method private sendSessionEndingWithInfluences(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onesignal/influence/model/OSInfluence;",
            ">;)V"
        }
    .end annotation

    .line 241
    .local p1, "endingInfluences":Ljava/util/List;, "Ljava/util/List<Lcom/onesignal/influence/model/OSInfluence;>;"
    iget-object v0, p0, Lcom/onesignal/OSSessionManager;->logger:Lcom/onesignal/OSLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OneSignal SessionManager sendSessionEndingWithInfluences with influences: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/onesignal/OSLogger;->debug(Ljava/lang/String;)V

    .line 243
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 244
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/onesignal/OSSessionManager$1;

    invoke-direct {v1, p0, p1}, Lcom/onesignal/OSSessionManager$1;-><init>(Lcom/onesignal/OSSessionManager;Ljava/util/List;)V

    const-string v2, "OS_END_CURRENT_SESSION"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 250
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 252
    :cond_0
    return-void
.end method

.method private setSession(Lcom/onesignal/influence/OSChannelTracker;Lcom/onesignal/influence/model/OSInfluenceType;Ljava/lang/String;Lorg/json/JSONArray;)Z
    .locals 5
    .param p1, "channelTracker"    # Lcom/onesignal/influence/OSChannelTracker;
    .param p2, "influenceType"    # Lcom/onesignal/influence/model/OSInfluenceType;
    .param p3, "directNotificationId"    # Ljava/lang/String;
    .param p4, "indirectNotificationIds"    # Lorg/json/JSONArray;

    .line 194
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/onesignal/OSSessionManager;->willChangeSession(Lcom/onesignal/influence/OSChannelTracker;Lcom/onesignal/influence/model/OSInfluenceType;Ljava/lang/String;Lorg/json/JSONArray;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 195
    const/4 v0, 0x0

    return v0

    .line 197
    :cond_0
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OSChannelTracker changed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    invoke-virtual {p1}, Lcom/onesignal/influence/OSChannelTracker;->getIdTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\nfrom:\ninfluenceType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    invoke-virtual {p1}, Lcom/onesignal/influence/OSChannelTracker;->getInfluenceType()Lcom/onesignal/influence/model/OSInfluenceType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", directNotificationId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    invoke-virtual {p1}, Lcom/onesignal/influence/OSChannelTracker;->getDirectId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", indirectNotificationIds: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    invoke-virtual {p1}, Lcom/onesignal/influence/OSChannelTracker;->getIndirectIds()Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "\nto:\ninfluenceType: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 197
    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 208
    invoke-virtual {p1, p2}, Lcom/onesignal/influence/OSChannelTracker;->setInfluenceType(Lcom/onesignal/influence/model/OSInfluenceType;)V

    .line 209
    invoke-virtual {p1, p3}, Lcom/onesignal/influence/OSChannelTracker;->setDirectId(Ljava/lang/String;)V

    .line 210
    invoke-virtual {p1, p4}, Lcom/onesignal/influence/OSChannelTracker;->setIndirectIds(Lorg/json/JSONArray;)V

    .line 211
    invoke-virtual {p1}, Lcom/onesignal/influence/OSChannelTracker;->cacheState()V

    .line 213
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trackers changed to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/onesignal/OSSessionManager;->trackerFactory:Lcom/onesignal/influence/OSTrackerFactory;

    invoke-virtual {v2}, Lcom/onesignal/influence/OSTrackerFactory;->getChannels()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 215
    const/4 v0, 0x1

    return v0
.end method

.method private willChangeSession(Lcom/onesignal/influence/OSChannelTracker;Lcom/onesignal/influence/model/OSInfluenceType;Ljava/lang/String;Lorg/json/JSONArray;)Z
    .locals 3
    .param p1, "channelTracker"    # Lcom/onesignal/influence/OSChannelTracker;
    .param p2, "influenceType"    # Lcom/onesignal/influence/model/OSInfluenceType;
    .param p3, "directNotificationId"    # Ljava/lang/String;
    .param p4, "indirectNotificationIds"    # Lorg/json/JSONArray;

    .line 222
    invoke-virtual {p1}, Lcom/onesignal/influence/OSChannelTracker;->getInfluenceType()Lcom/onesignal/influence/model/OSInfluenceType;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/onesignal/influence/model/OSInfluenceType;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 223
    return v1

    .line 225
    :cond_0
    invoke-virtual {p1}, Lcom/onesignal/influence/OSChannelTracker;->getInfluenceType()Lcom/onesignal/influence/model/OSInfluenceType;

    move-result-object v0

    .line 227
    .local v0, "channelInfluenceType":Lcom/onesignal/influence/model/OSInfluenceType;
    invoke-virtual {v0}, Lcom/onesignal/influence/model/OSInfluenceType;->isDirect()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 228
    invoke-virtual {p1}, Lcom/onesignal/influence/OSChannelTracker;->getDirectId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 229
    invoke-virtual {p1}, Lcom/onesignal/influence/OSChannelTracker;->getDirectId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 230
    return v1

    .line 234
    :cond_1
    invoke-virtual {v0}, Lcom/onesignal/influence/model/OSInfluenceType;->isIndirect()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 235
    invoke-virtual {p1}, Lcom/onesignal/influence/OSChannelTracker;->getIndirectIds()Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 236
    invoke-virtual {p1}, Lcom/onesignal/influence/OSChannelTracker;->getIndirectIds()Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 237
    invoke-virtual {p1}, Lcom/onesignal/influence/OSChannelTracker;->getIndirectIds()Lorg/json/JSONArray;

    move-result-object v2

    invoke-static {v2, p4}, Lcom/onesignal/JSONUtils;->compareJSONArrays(Lorg/json/JSONArray;Lorg/json/JSONArray;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 234
    :goto_0
    return v1
.end method


# virtual methods
.method addSessionIds(Lorg/json/JSONObject;Ljava/util/List;)V
    .locals 3
    .param p1, "jsonObject"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/util/List<",
            "Lcom/onesignal/influence/model/OSInfluence;",
            ">;)V"
        }
    .end annotation

    .line 51
    .local p2, "endingInfluences":Ljava/util/List;, "Ljava/util/List<Lcom/onesignal/influence/model/OSInfluence;>;"
    iget-object v0, p0, Lcom/onesignal/OSSessionManager;->logger:Lcom/onesignal/OSLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OneSignal SessionManager addSessionData with influences: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/onesignal/OSLogger;->debug(Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Lcom/onesignal/OSSessionManager;->trackerFactory:Lcom/onesignal/influence/OSTrackerFactory;

    invoke-virtual {v0, p1, p2}, Lcom/onesignal/influence/OSTrackerFactory;->addSessionData(Lorg/json/JSONObject;Ljava/util/List;)V

    .line 53
    iget-object v0, p0, Lcom/onesignal/OSSessionManager;->logger:Lcom/onesignal/OSLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OneSignal SessionManager addSessionIds on jsonObject: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/onesignal/OSLogger;->debug(Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method attemptSessionUpgrade(Lcom/onesignal/OneSignal$AppEntryAction;)V
    .locals 1
    .param p1, "entryAction"    # Lcom/onesignal/OneSignal$AppEntryAction;

    .line 134
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/onesignal/OSSessionManager;->attemptSessionUpgrade(Lcom/onesignal/OneSignal$AppEntryAction;Ljava/lang/String;)V

    .line 135
    return-void
.end method

.method getInfluences()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onesignal/influence/model/OSInfluence;",
            ">;"
        }
    .end annotation

    .line 118
    iget-object v0, p0, Lcom/onesignal/OSSessionManager;->trackerFactory:Lcom/onesignal/influence/OSTrackerFactory;

    invoke-virtual {v0}, Lcom/onesignal/influence/OSTrackerFactory;->getInfluences()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method getSessionInfluences()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onesignal/influence/model/OSInfluence;",
            ">;"
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lcom/onesignal/OSSessionManager;->trackerFactory:Lcom/onesignal/influence/OSTrackerFactory;

    invoke-virtual {v0}, Lcom/onesignal/influence/OSTrackerFactory;->getSessionInfluences()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method initSessionFromCache()V
    .locals 2

    .line 46
    iget-object v0, p0, Lcom/onesignal/OSSessionManager;->logger:Lcom/onesignal/OSLogger;

    const-string v1, "OneSignal SessionManager initSessionFromCache"

    invoke-interface {v0, v1}, Lcom/onesignal/OSLogger;->debug(Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lcom/onesignal/OSSessionManager;->trackerFactory:Lcom/onesignal/influence/OSTrackerFactory;

    invoke-virtual {v0}, Lcom/onesignal/influence/OSTrackerFactory;->initFromCache()V

    .line 48
    return-void
.end method

.method onDirectInfluenceFromIAMClick(Ljava/lang/String;)V
    .locals 3
    .param p1, "messageId"    # Ljava/lang/String;

    .line 87
    iget-object v0, p0, Lcom/onesignal/OSSessionManager;->logger:Lcom/onesignal/OSLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OneSignal SessionManager onDirectInfluenceFromIAMClick messageId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/onesignal/OSLogger;->debug(Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/onesignal/OSSessionManager;->trackerFactory:Lcom/onesignal/influence/OSTrackerFactory;

    invoke-virtual {v0}, Lcom/onesignal/influence/OSTrackerFactory;->getIAMChannelTracker()Lcom/onesignal/influence/OSChannelTracker;

    move-result-object v0

    .line 90
    .local v0, "inAppMessageTracker":Lcom/onesignal/influence/OSChannelTracker;
    sget-object v1, Lcom/onesignal/influence/model/OSInfluenceType;->DIRECT:Lcom/onesignal/influence/model/OSInfluenceType;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/onesignal/OSSessionManager;->setSession(Lcom/onesignal/influence/OSChannelTracker;Lcom/onesignal/influence/model/OSInfluenceType;Ljava/lang/String;Lorg/json/JSONArray;)Z

    .line 91
    return-void
.end method

.method onDirectInfluenceFromIAMClickFinished()V
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/onesignal/OSSessionManager;->logger:Lcom/onesignal/OSLogger;

    const-string v1, "OneSignal SessionManager onDirectInfluenceFromIAMClickFinished"

    invoke-interface {v0, v1}, Lcom/onesignal/OSLogger;->debug(Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/onesignal/OSSessionManager;->trackerFactory:Lcom/onesignal/influence/OSTrackerFactory;

    invoke-virtual {v0}, Lcom/onesignal/influence/OSTrackerFactory;->getIAMChannelTracker()Lcom/onesignal/influence/OSChannelTracker;

    move-result-object v0

    .line 96
    .local v0, "inAppMessageTracker":Lcom/onesignal/influence/OSChannelTracker;
    invoke-virtual {v0}, Lcom/onesignal/influence/OSChannelTracker;->resetAndInitInfluence()V

    .line 97
    return-void
.end method

.method onDirectInfluenceFromNotificationOpen(Lcom/onesignal/OneSignal$AppEntryAction;Ljava/lang/String;)V
    .locals 3
    .param p1, "entryAction"    # Lcom/onesignal/OneSignal$AppEntryAction;
    .param p2, "notificationId"    # Ljava/lang/String;

    .line 108
    iget-object v0, p0, Lcom/onesignal/OSSessionManager;->logger:Lcom/onesignal/OSLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OneSignal SessionManager onDirectInfluenceFromNotificationOpen notificationId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/onesignal/OSLogger;->debug(Ljava/lang/String;)V

    .line 109
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 112
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/onesignal/OSSessionManager;->attemptSessionUpgrade(Lcom/onesignal/OneSignal$AppEntryAction;Ljava/lang/String;)V

    .line 113
    return-void

    .line 110
    :cond_1
    :goto_0
    return-void
.end method

.method onInAppMessageReceived(Ljava/lang/String;)V
    .locals 3
    .param p1, "messageId"    # Ljava/lang/String;

    .line 80
    iget-object v0, p0, Lcom/onesignal/OSSessionManager;->logger:Lcom/onesignal/OSLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OneSignal SessionManager onInAppMessageReceived messageId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/onesignal/OSLogger;->debug(Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/onesignal/OSSessionManager;->trackerFactory:Lcom/onesignal/influence/OSTrackerFactory;

    invoke-virtual {v0}, Lcom/onesignal/influence/OSTrackerFactory;->getIAMChannelTracker()Lcom/onesignal/influence/OSChannelTracker;

    move-result-object v0

    .line 82
    .local v0, "inAppMessageTracker":Lcom/onesignal/influence/OSChannelTracker;
    invoke-virtual {v0, p1}, Lcom/onesignal/influence/OSChannelTracker;->saveLastId(Ljava/lang/String;)V

    .line 83
    invoke-virtual {v0}, Lcom/onesignal/influence/OSChannelTracker;->resetAndInitInfluence()V

    .line 84
    return-void
.end method

.method onNotificationReceived(Ljava/lang/String;)V
    .locals 3
    .param p1, "notificationId"    # Ljava/lang/String;

    .line 100
    iget-object v0, p0, Lcom/onesignal/OSSessionManager;->logger:Lcom/onesignal/OSLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OneSignal SessionManager onNotificationReceived notificationId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/onesignal/OSLogger;->debug(Ljava/lang/String;)V

    .line 101
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/onesignal/OSSessionManager;->trackerFactory:Lcom/onesignal/influence/OSTrackerFactory;

    invoke-virtual {v0}, Lcom/onesignal/influence/OSTrackerFactory;->getNotificationChannelTracker()Lcom/onesignal/influence/OSChannelTracker;

    move-result-object v0

    .line 104
    .local v0, "notificationTracker":Lcom/onesignal/influence/OSChannelTracker;
    invoke-virtual {v0, p1}, Lcom/onesignal/influence/OSChannelTracker;->saveLastId(Ljava/lang/String;)V

    .line 105
    return-void

    .line 102
    .end local v0    # "notificationTracker":Lcom/onesignal/influence/OSChannelTracker;
    :cond_1
    :goto_0
    return-void
.end method

.method restartSessionIfNeeded(Lcom/onesignal/OneSignal$AppEntryAction;)V
    .locals 8
    .param p1, "entryAction"    # Lcom/onesignal/OneSignal$AppEntryAction;

    .line 57
    iget-object v0, p0, Lcom/onesignal/OSSessionManager;->trackerFactory:Lcom/onesignal/influence/OSTrackerFactory;

    invoke-virtual {v0, p1}, Lcom/onesignal/influence/OSTrackerFactory;->getChannelsToResetByEntryAction(Lcom/onesignal/OneSignal$AppEntryAction;)Ljava/util/List;

    move-result-object v0

    .line 58
    .local v0, "channelTrackers":Ljava/util/List;, "Ljava/util/List<Lcom/onesignal/influence/OSChannelTracker;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 60
    .local v1, "updatedInfluences":Ljava/util/List;, "Ljava/util/List<Lcom/onesignal/influence/model/OSInfluence;>;"
    iget-object v2, p0, Lcom/onesignal/OSSessionManager;->logger:Lcom/onesignal/OSLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OneSignal SessionManager restartSessionIfNeeded with entryAction: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "\n channelTrackers: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/onesignal/OSLogger;->debug(Ljava/lang/String;)V

    .line 61
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onesignal/influence/OSChannelTracker;

    .line 62
    .local v3, "channelTracker":Lcom/onesignal/influence/OSChannelTracker;
    invoke-virtual {v3}, Lcom/onesignal/influence/OSChannelTracker;->getLastReceivedIds()Lorg/json/JSONArray;

    move-result-object v4

    .line 63
    .local v4, "lastIds":Lorg/json/JSONArray;
    iget-object v5, p0, Lcom/onesignal/OSSessionManager;->logger:Lcom/onesignal/OSLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OneSignal SessionManager restartSessionIfNeeded lastIds: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/onesignal/OSLogger;->debug(Ljava/lang/String;)V

    .line 65
    invoke-virtual {v3}, Lcom/onesignal/influence/OSChannelTracker;->getCurrentSessionInfluence()Lcom/onesignal/influence/model/OSInfluence;

    move-result-object v5

    .line 67
    .local v5, "influence":Lcom/onesignal/influence/model/OSInfluence;
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    const/4 v7, 0x0

    if-lez v6, :cond_0

    .line 68
    sget-object v6, Lcom/onesignal/influence/model/OSInfluenceType;->INDIRECT:Lcom/onesignal/influence/model/OSInfluenceType;

    invoke-direct {p0, v3, v6, v7, v4}, Lcom/onesignal/OSSessionManager;->setSession(Lcom/onesignal/influence/OSChannelTracker;Lcom/onesignal/influence/model/OSInfluenceType;Ljava/lang/String;Lorg/json/JSONArray;)Z

    move-result v6

    .local v6, "updated":Z
    goto :goto_1

    .line 70
    .end local v6    # "updated":Z
    :cond_0
    sget-object v6, Lcom/onesignal/influence/model/OSInfluenceType;->UNATTRIBUTED:Lcom/onesignal/influence/model/OSInfluenceType;

    invoke-direct {p0, v3, v6, v7, v7}, Lcom/onesignal/OSSessionManager;->setSession(Lcom/onesignal/influence/OSChannelTracker;Lcom/onesignal/influence/model/OSInfluenceType;Ljava/lang/String;Lorg/json/JSONArray;)Z

    move-result v6

    .line 72
    .restart local v6    # "updated":Z
    :goto_1
    if-eqz v6, :cond_1

    .line 73
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    .end local v3    # "channelTracker":Lcom/onesignal/influence/OSChannelTracker;
    .end local v4    # "lastIds":Lorg/json/JSONArray;
    .end local v5    # "influence":Lcom/onesignal/influence/model/OSInfluence;
    .end local v6    # "updated":Z
    :cond_1
    goto :goto_0

    .line 76
    :cond_2
    invoke-direct {p0, v1}, Lcom/onesignal/OSSessionManager;->sendSessionEndingWithInfluences(Ljava/util/List;)V

    .line 77
    return-void
.end method
