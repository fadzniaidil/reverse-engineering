.class public Lcom/onesignal/influence/OSTrackerFactory;
.super Ljava/lang/Object;
.source "OSTrackerFactory.java"


# instance fields
.field private dataRepository:Lcom/onesignal/influence/OSInfluenceDataRepository;

.field private trackers:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/onesignal/influence/OSChannelTracker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onesignal/OSSharedPreferences;Lcom/onesignal/OSLogger;)V
    .locals 4
    .param p1, "preferences"    # Lcom/onesignal/OSSharedPreferences;
    .param p2, "logger"    # Lcom/onesignal/OSLogger;

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/onesignal/influence/OSTrackerFactory;->trackers:Ljava/util/concurrent/ConcurrentHashMap;

    .line 25
    new-instance v0, Lcom/onesignal/influence/OSInfluenceDataRepository;

    invoke-direct {v0, p1}, Lcom/onesignal/influence/OSInfluenceDataRepository;-><init>(Lcom/onesignal/OSSharedPreferences;)V

    iput-object v0, p0, Lcom/onesignal/influence/OSTrackerFactory;->dataRepository:Lcom/onesignal/influence/OSInfluenceDataRepository;

    .line 27
    iget-object v0, p0, Lcom/onesignal/influence/OSTrackerFactory;->trackers:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v1, Lcom/onesignal/influence/OSInAppMessageTracker;->TAG:Ljava/lang/String;

    new-instance v2, Lcom/onesignal/influence/OSInAppMessageTracker;

    iget-object v3, p0, Lcom/onesignal/influence/OSTrackerFactory;->dataRepository:Lcom/onesignal/influence/OSInfluenceDataRepository;

    invoke-direct {v2, v3, p2}, Lcom/onesignal/influence/OSInAppMessageTracker;-><init>(Lcom/onesignal/influence/OSInfluenceDataRepository;Lcom/onesignal/OSLogger;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    iget-object v0, p0, Lcom/onesignal/influence/OSTrackerFactory;->trackers:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v1, Lcom/onesignal/influence/OSNotificationTracker;->TAG:Ljava/lang/String;

    new-instance v2, Lcom/onesignal/influence/OSNotificationTracker;

    iget-object v3, p0, Lcom/onesignal/influence/OSTrackerFactory;->dataRepository:Lcom/onesignal/influence/OSInfluenceDataRepository;

    invoke-direct {v2, v3, p2}, Lcom/onesignal/influence/OSNotificationTracker;-><init>(Lcom/onesignal/influence/OSInfluenceDataRepository;Lcom/onesignal/OSLogger;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    return-void
.end method


# virtual methods
.method public addSessionData(Lorg/json/JSONObject;Ljava/util/List;)V
    .locals 4
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

    .line 36
    .local p2, "influences":Ljava/util/List;, "Ljava/util/List<Lcom/onesignal/influence/model/OSInfluence;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onesignal/influence/model/OSInfluence;

    .line 37
    .local v1, "influence":Lcom/onesignal/influence/model/OSInfluence;
    sget-object v2, Lcom/onesignal/influence/OSTrackerFactory$1;->$SwitchMap$com$onesignal$influence$model$OSInfluenceChannel:[I

    invoke-virtual {v1}, Lcom/onesignal/influence/model/OSInfluence;->getInfluenceChannel()Lcom/onesignal/influence/model/OSInfluenceChannel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onesignal/influence/model/OSInfluenceChannel;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 39
    :pswitch_0
    invoke-virtual {p0}, Lcom/onesignal/influence/OSTrackerFactory;->getNotificationChannelTracker()Lcom/onesignal/influence/OSChannelTracker;

    move-result-object v2

    invoke-virtual {v2, p1, v1}, Lcom/onesignal/influence/OSChannelTracker;->addSessionData(Lorg/json/JSONObject;Lcom/onesignal/influence/model/OSInfluence;)V

    .line 43
    .end local v1    # "influence":Lcom/onesignal/influence/model/OSInfluence;
    :goto_1
    goto :goto_0

    .line 44
    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public getChannelByEntryAction(Lcom/onesignal/OneSignal$AppEntryAction;)Lcom/onesignal/influence/OSChannelTracker;
    .locals 1
    .param p1, "entryAction"    # Lcom/onesignal/OneSignal$AppEntryAction;

    .line 81
    invoke-virtual {p1}, Lcom/onesignal/OneSignal$AppEntryAction;->isNotificationClick()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {p0}, Lcom/onesignal/influence/OSTrackerFactory;->getNotificationChannelTracker()Lcom/onesignal/influence/OSChannelTracker;

    move-result-object v0

    return-object v0

    .line 84
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getChannels()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onesignal/influence/OSChannelTracker;",
            ">;"
        }
    .end annotation

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 90
    .local v0, "channels":Ljava/util/List;, "Ljava/util/List<Lcom/onesignal/influence/OSChannelTracker;>;"
    invoke-virtual {p0}, Lcom/onesignal/influence/OSTrackerFactory;->getNotificationChannelTracker()Lcom/onesignal/influence/OSChannelTracker;

    move-result-object v1

    .line 91
    .local v1, "notificationChannel":Lcom/onesignal/influence/OSChannelTracker;
    if-eqz v1, :cond_0

    .line 92
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    :cond_0
    invoke-virtual {p0}, Lcom/onesignal/influence/OSTrackerFactory;->getIAMChannelTracker()Lcom/onesignal/influence/OSChannelTracker;

    move-result-object v2

    .line 95
    .local v2, "iamChannel":Lcom/onesignal/influence/OSChannelTracker;
    if-eqz v2, :cond_1

    .line 96
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    :cond_1
    return-object v0
.end method

.method public getChannelsToResetByEntryAction(Lcom/onesignal/OneSignal$AppEntryAction;)Ljava/util/List;
    .locals 2
    .param p1, "entryAction"    # Lcom/onesignal/OneSignal$AppEntryAction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onesignal/OneSignal$AppEntryAction;",
            ")",
            "Ljava/util/List<",
            "Lcom/onesignal/influence/OSChannelTracker;",
            ">;"
        }
    .end annotation

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 105
    .local v0, "channels":Ljava/util/List;, "Ljava/util/List<Lcom/onesignal/influence/OSChannelTracker;>;"
    invoke-virtual {p1}, Lcom/onesignal/OneSignal$AppEntryAction;->isAppClose()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 106
    return-object v0

    .line 109
    :cond_0
    invoke-virtual {p1}, Lcom/onesignal/OneSignal$AppEntryAction;->isAppOpen()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 110
    invoke-virtual {p0}, Lcom/onesignal/influence/OSTrackerFactory;->getNotificationChannelTracker()Lcom/onesignal/influence/OSChannelTracker;

    move-result-object v1

    .line 111
    .local v1, "notificationChannel":Lcom/onesignal/influence/OSChannelTracker;
    if-eqz v1, :cond_1

    .line 112
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    .end local v1    # "notificationChannel":Lcom/onesignal/influence/OSChannelTracker;
    :cond_1
    invoke-virtual {p0}, Lcom/onesignal/influence/OSTrackerFactory;->getIAMChannelTracker()Lcom/onesignal/influence/OSChannelTracker;

    move-result-object v1

    .line 116
    .local v1, "iamChannel":Lcom/onesignal/influence/OSChannelTracker;
    if-eqz v1, :cond_2

    .line 117
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    :cond_2
    return-object v0
.end method

.method public getIAMChannelTracker()Lcom/onesignal/influence/OSChannelTracker;
    .locals 2

    .line 72
    iget-object v0, p0, Lcom/onesignal/influence/OSTrackerFactory;->trackers:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v1, Lcom/onesignal/influence/OSInAppMessageTracker;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onesignal/influence/OSChannelTracker;

    return-object v0
.end method

.method public getInfluences()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onesignal/influence/model/OSInfluence;",
            ">;"
        }
    .end annotation

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 54
    .local v0, "influences":Ljava/util/List;, "Ljava/util/List<Lcom/onesignal/influence/model/OSInfluence;>;"
    iget-object v1, p0, Lcom/onesignal/influence/OSTrackerFactory;->trackers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onesignal/influence/OSChannelTracker;

    .line 55
    .local v2, "tracker":Lcom/onesignal/influence/OSChannelTracker;
    invoke-virtual {v2}, Lcom/onesignal/influence/OSChannelTracker;->getCurrentSessionInfluence()Lcom/onesignal/influence/model/OSInfluence;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    .end local v2    # "tracker":Lcom/onesignal/influence/OSChannelTracker;
    goto :goto_0

    .line 57
    :cond_0
    return-object v0
.end method

.method public getNotificationChannelTracker()Lcom/onesignal/influence/OSChannelTracker;
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/onesignal/influence/OSTrackerFactory;->trackers:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v1, Lcom/onesignal/influence/OSNotificationTracker;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onesignal/influence/OSChannelTracker;

    return-object v0
.end method

.method public getSessionInfluences()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onesignal/influence/model/OSInfluence;",
            ">;"
        }
    .end annotation

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 62
    .local v0, "influences":Ljava/util/List;, "Ljava/util/List<Lcom/onesignal/influence/model/OSInfluence;>;"
    iget-object v1, p0, Lcom/onesignal/influence/OSTrackerFactory;->trackers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onesignal/influence/OSChannelTracker;

    .line 64
    .local v2, "tracker":Lcom/onesignal/influence/OSChannelTracker;
    instance-of v3, v2, Lcom/onesignal/influence/OSInAppMessageTracker;

    if-eqz v3, :cond_0

    .line 65
    goto :goto_0

    .line 66
    :cond_0
    invoke-virtual {v2}, Lcom/onesignal/influence/OSChannelTracker;->getCurrentSessionInfluence()Lcom/onesignal/influence/model/OSInfluence;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    .end local v2    # "tracker":Lcom/onesignal/influence/OSChannelTracker;
    goto :goto_0

    .line 68
    :cond_1
    return-object v0
.end method

.method public initFromCache()V
    .locals 2

    .line 47
    iget-object v0, p0, Lcom/onesignal/influence/OSTrackerFactory;->trackers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onesignal/influence/OSChannelTracker;

    .line 48
    .local v1, "tracker":Lcom/onesignal/influence/OSChannelTracker;
    invoke-virtual {v1}, Lcom/onesignal/influence/OSChannelTracker;->initInfluencedTypeFromCache()V

    .line 49
    .end local v1    # "tracker":Lcom/onesignal/influence/OSChannelTracker;
    goto :goto_0

    .line 50
    :cond_0
    return-void
.end method

.method public saveInfluenceParams(Lcom/onesignal/OneSignalRemoteParams$InfluenceParams;)V
    .locals 1
    .param p1, "influenceParams"    # Lcom/onesignal/OneSignalRemoteParams$InfluenceParams;

    .line 32
    iget-object v0, p0, Lcom/onesignal/influence/OSTrackerFactory;->dataRepository:Lcom/onesignal/influence/OSInfluenceDataRepository;

    invoke-virtual {v0, p1}, Lcom/onesignal/influence/OSInfluenceDataRepository;->saveInfluenceParams(Lcom/onesignal/OneSignalRemoteParams$InfluenceParams;)V

    .line 33
    return-void
.end method
