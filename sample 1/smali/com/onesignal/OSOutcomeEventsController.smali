.class Lcom/onesignal/OSOutcomeEventsController;
.super Ljava/lang/Object;
.source "OSOutcomeEventsController.java"


# static fields
.field private static final OS_SAVE_OUTCOMES:Ljava/lang/String; = "OS_SAVE_OUTCOMES"

.field private static final OS_SAVE_UNIQUE_OUTCOME_NOTIFICATIONS:Ljava/lang/String; = "OS_SAVE_UNIQUE_OUTCOME_NOTIFICATIONS"

.field private static final OS_SEND_SAVED_OUTCOMES:Ljava/lang/String; = "OS_SEND_SAVED_OUTCOMES"


# instance fields
.field private final osSessionManager:Lcom/onesignal/OSSessionManager;

.field private final outcomeEventsFactory:Lcom/onesignal/outcomes/OSOutcomeEventsFactory;

.field private unattributedUniqueOutcomeEventsSentOnSession:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onesignal/OSSessionManager;Lcom/onesignal/outcomes/OSOutcomeEventsFactory;)V
    .locals 0
    .param p1, "osSessionManager"    # Lcom/onesignal/OSSessionManager;
    .param p2, "outcomeEventsFactory"    # Lcom/onesignal/outcomes/OSOutcomeEventsFactory;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/onesignal/OSOutcomeEventsController;->osSessionManager:Lcom/onesignal/OSSessionManager;

    .line 34
    iput-object p2, p0, Lcom/onesignal/OSOutcomeEventsController;->outcomeEventsFactory:Lcom/onesignal/outcomes/OSOutcomeEventsFactory;

    .line 36
    invoke-direct {p0}, Lcom/onesignal/OSOutcomeEventsController;->initUniqueOutcomeEventsSentSets()V

    .line 37
    return-void
.end method

.method static synthetic access$000(Lcom/onesignal/OSOutcomeEventsController;)Lcom/onesignal/outcomes/OSOutcomeEventsFactory;
    .locals 1
    .param p0, "x0"    # Lcom/onesignal/OSOutcomeEventsController;

    .line 18
    iget-object v0, p0, Lcom/onesignal/OSOutcomeEventsController;->outcomeEventsFactory:Lcom/onesignal/outcomes/OSOutcomeEventsFactory;

    return-object v0
.end method

.method static synthetic access$100(Lcom/onesignal/OSOutcomeEventsController;Lcom/onesignal/outcomes/model/OSOutcomeEventParams;)V
    .locals 0
    .param p0, "x0"    # Lcom/onesignal/OSOutcomeEventsController;
    .param p1, "x1"    # Lcom/onesignal/outcomes/model/OSOutcomeEventParams;

    .line 18
    invoke-direct {p0, p1}, Lcom/onesignal/OSOutcomeEventsController;->sendSavedOutcomeEvent(Lcom/onesignal/outcomes/model/OSOutcomeEventParams;)V

    return-void
.end method

.method static synthetic access$200(Lcom/onesignal/OSOutcomeEventsController;Lcom/onesignal/outcomes/model/OSOutcomeEventParams;)V
    .locals 0
    .param p0, "x0"    # Lcom/onesignal/OSOutcomeEventsController;
    .param p1, "x1"    # Lcom/onesignal/outcomes/model/OSOutcomeEventParams;

    .line 18
    invoke-direct {p0, p1}, Lcom/onesignal/OSOutcomeEventsController;->saveUniqueOutcome(Lcom/onesignal/outcomes/model/OSOutcomeEventParams;)V

    return-void
.end method

.method private getUniqueIds(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/onesignal/influence/model/OSInfluence;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/onesignal/influence/model/OSInfluence;",
            ">;"
        }
    .end annotation

    .line 314
    .local p2, "influences":Ljava/util/List;, "Ljava/util/List<Lcom/onesignal/influence/model/OSInfluence;>;"
    iget-object v0, p0, Lcom/onesignal/OSOutcomeEventsController;->outcomeEventsFactory:Lcom/onesignal/outcomes/OSOutcomeEventsFactory;

    invoke-virtual {v0}, Lcom/onesignal/outcomes/OSOutcomeEventsFactory;->getRepository()Lcom/onesignal/outcomes/domain/OSOutcomeEventsRepository;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/onesignal/outcomes/domain/OSOutcomeEventsRepository;->getNotCachedUniqueOutcome(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 315
    .local v0, "uniqueInfluences":Ljava/util/List;, "Ljava/util/List<Lcom/onesignal/influence/model/OSInfluence;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method private initUniqueOutcomeEventsSentSets()V
    .locals 1

    .line 44
    invoke-static {}, Lcom/onesignal/OSUtils;->newConcurrentSet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/onesignal/OSOutcomeEventsController;->unattributedUniqueOutcomeEventsSentOnSession:Ljava/util/Set;

    .line 45
    iget-object v0, p0, Lcom/onesignal/OSOutcomeEventsController;->outcomeEventsFactory:Lcom/onesignal/outcomes/OSOutcomeEventsFactory;

    invoke-virtual {v0}, Lcom/onesignal/outcomes/OSOutcomeEventsFactory;->getRepository()Lcom/onesignal/outcomes/domain/OSOutcomeEventsRepository;

    move-result-object v0

    invoke-interface {v0}, Lcom/onesignal/outcomes/domain/OSOutcomeEventsRepository;->getUnattributedUniqueOutcomeEventsSent()Ljava/util/Set;

    move-result-object v0

    .line 46
    .local v0, "tempUnattributedUniqueOutcomeEventsSentSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 47
    iput-object v0, p0, Lcom/onesignal/OSOutcomeEventsController;->unattributedUniqueOutcomeEventsSentOnSession:Ljava/util/Set;

    .line 48
    :cond_0
    return-void
.end method

.method private removeDisabledInfluences(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onesignal/influence/model/OSInfluence;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/onesignal/influence/model/OSInfluence;",
            ">;"
        }
    .end annotation

    .line 270
    .local p1, "influences":Ljava/util/List;, "Ljava/util/List<Lcom/onesignal/influence/model/OSInfluence;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 271
    .local v0, "availableInfluences":Ljava/util/List;, "Ljava/util/List<Lcom/onesignal/influence/model/OSInfluence;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onesignal/influence/model/OSInfluence;

    .line 272
    .local v2, "influence":Lcom/onesignal/influence/model/OSInfluence;
    invoke-virtual {v2}, Lcom/onesignal/influence/model/OSInfluence;->getInfluenceType()Lcom/onesignal/influence/model/OSInfluenceType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onesignal/influence/model/OSInfluenceType;->isDisabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 273
    sget-object v3, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Outcomes disabled for channel: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    invoke-virtual {v2}, Lcom/onesignal/influence/model/OSInfluence;->getInfluenceChannel()Lcom/onesignal/influence/model/OSInfluenceChannel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/onesignal/influence/model/OSInfluenceChannel;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 273
    invoke-static {v3, v4}, Lcom/onesignal/OneSignal;->onesignalLog(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 275
    invoke-interface {v0, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 277
    .end local v2    # "influence":Lcom/onesignal/influence/model/OSInfluence;
    :cond_0
    goto :goto_0

    .line 279
    :cond_1
    return-object v0
.end method

.method private saveAttributedUniqueOutcomeNotifications(Lcom/onesignal/outcomes/model/OSOutcomeEventParams;)V
    .locals 3
    .param p1, "eventParams"    # Lcom/onesignal/outcomes/model/OSOutcomeEventParams;

    .line 294
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/onesignal/OSOutcomeEventsController$4;

    invoke-direct {v1, p0, p1}, Lcom/onesignal/OSOutcomeEventsController$4;-><init>(Lcom/onesignal/OSOutcomeEventsController;Lcom/onesignal/outcomes/model/OSOutcomeEventParams;)V

    const-string v2, "OS_SAVE_UNIQUE_OUTCOME_NOTIFICATIONS"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 300
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 301
    return-void
.end method

.method private saveUnattributedUniqueOutcomeEvents()V
    .locals 2

    .line 307
    iget-object v0, p0, Lcom/onesignal/OSOutcomeEventsController;->outcomeEventsFactory:Lcom/onesignal/outcomes/OSOutcomeEventsFactory;

    invoke-virtual {v0}, Lcom/onesignal/outcomes/OSOutcomeEventsFactory;->getRepository()Lcom/onesignal/outcomes/domain/OSOutcomeEventsRepository;

    move-result-object v0

    iget-object v1, p0, Lcom/onesignal/OSOutcomeEventsController;->unattributedUniqueOutcomeEventsSentOnSession:Ljava/util/Set;

    invoke-interface {v0, v1}, Lcom/onesignal/outcomes/domain/OSOutcomeEventsRepository;->saveUnattributedUniqueOutcomeEventsSent(Ljava/util/Set;)V

    .line 308
    return-void
.end method

.method private saveUniqueOutcome(Lcom/onesignal/outcomes/model/OSOutcomeEventParams;)V
    .locals 1
    .param p1, "eventParams"    # Lcom/onesignal/outcomes/model/OSOutcomeEventParams;

    .line 283
    invoke-virtual {p1}, Lcom/onesignal/outcomes/model/OSOutcomeEventParams;->isUnattributed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 284
    invoke-direct {p0}, Lcom/onesignal/OSOutcomeEventsController;->saveUnattributedUniqueOutcomeEvents()V

    goto :goto_0

    .line 286
    :cond_0
    invoke-direct {p0, p1}, Lcom/onesignal/OSOutcomeEventsController;->saveAttributedUniqueOutcomeNotifications(Lcom/onesignal/outcomes/model/OSOutcomeEventParams;)V

    .line 288
    :goto_0
    return-void
.end method

.method private sendAndCreateOutcomeEvent(Ljava/lang/String;FLjava/util/List;Lcom/onesignal/OneSignal$OutcomeCallback;)V
    .locals 18
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "weight"    # F
    .param p4, "callback"    # Lcom/onesignal/OneSignal$OutcomeCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "F",
            "Ljava/util/List<",
            "Lcom/onesignal/influence/model/OSInfluence;",
            ">;",
            "Lcom/onesignal/OneSignal$OutcomeCallback;",
            ")V"
        }
    .end annotation

    .line 186
    .local p3, "influences":Ljava/util/List;, "Ljava/util/List<Lcom/onesignal/influence/model/OSInfluence;>;"
    move-object/from16 v7, p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long v8, v0, v2

    .line 187
    .local v8, "timestampSeconds":J
    new-instance v0, Lcom/onesignal/OSUtils;

    invoke-direct {v0}, Lcom/onesignal/OSUtils;-><init>()V

    invoke-virtual {v0}, Lcom/onesignal/OSUtils;->getDeviceType()I

    move-result v10

    .line 188
    .local v10, "deviceType":I
    sget-object v11, Lcom/onesignal/OneSignal;->appId:Ljava/lang/String;

    .line 190
    .local v11, "appId":Ljava/lang/String;
    const/4 v0, 0x0

    .line 191
    .local v0, "directSourceBody":Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;
    const/4 v1, 0x0

    .line 192
    .local v1, "indirectSourceBody":Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;
    const/4 v2, 0x0

    .line 194
    .local v2, "unattributed":Z
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v12, v0

    move-object v13, v1

    move v14, v2

    .end local v0    # "directSourceBody":Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;
    .end local v1    # "indirectSourceBody":Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;
    .end local v2    # "unattributed":Z
    .local v12, "directSourceBody":Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;
    .local v13, "indirectSourceBody":Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;
    .local v14, "unattributed":Z
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onesignal/influence/model/OSInfluence;

    .line 195
    .local v0, "influence":Lcom/onesignal/influence/model/OSInfluence;
    sget-object v1, Lcom/onesignal/OSOutcomeEventsController$5;->$SwitchMap$com$onesignal$influence$model$OSInfluenceType:[I

    invoke-virtual {v0}, Lcom/onesignal/influence/model/OSInfluence;->getInfluenceType()Lcom/onesignal/influence/model/OSInfluenceType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onesignal/influence/model/OSInfluenceType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_3

    .line 206
    :pswitch_0
    sget-object v1, Lcom/onesignal/OneSignal$LOG_LEVEL;->VERBOSE:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Outcomes disabled for channel: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/onesignal/influence/model/OSInfluence;->getInfluenceChannel()Lcom/onesignal/influence/model/OSInfluenceChannel;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 207
    return-void

    .line 203
    :pswitch_1
    const/4 v1, 0x1

    .line 204
    .end local v14    # "unattributed":Z
    .local v1, "unattributed":Z
    move v14, v1

    goto :goto_3

    .line 200
    .end local v1    # "unattributed":Z
    .restart local v14    # "unattributed":Z
    :pswitch_2
    if-nez v13, :cond_0

    new-instance v1, Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;

    invoke-direct {v1}, Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;-><init>()V

    goto :goto_1

    :cond_0
    move-object v1, v13

    :goto_1
    invoke-direct {v7, v0, v1}, Lcom/onesignal/OSOutcomeEventsController;->setSourceChannelIds(Lcom/onesignal/influence/model/OSInfluence;Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;)Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;

    move-result-object v1

    .line 201
    .end local v13    # "indirectSourceBody":Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;
    .local v1, "indirectSourceBody":Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;
    move-object v13, v1

    goto :goto_3

    .line 197
    .end local v1    # "indirectSourceBody":Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;
    .restart local v13    # "indirectSourceBody":Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;
    :pswitch_3
    if-nez v12, :cond_1

    new-instance v1, Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;

    invoke-direct {v1}, Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;-><init>()V

    goto :goto_2

    :cond_1
    move-object v1, v12

    :goto_2
    invoke-direct {v7, v0, v1}, Lcom/onesignal/OSOutcomeEventsController;->setSourceChannelIds(Lcom/onesignal/influence/model/OSInfluence;Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;)Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;

    move-result-object v1

    .line 198
    .end local v12    # "directSourceBody":Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;
    .local v1, "directSourceBody":Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;
    move-object v12, v1

    .line 209
    .end local v0    # "influence":Lcom/onesignal/influence/model/OSInfluence;
    .end local v1    # "directSourceBody":Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;
    .restart local v12    # "directSourceBody":Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;
    :goto_3
    goto :goto_0

    .line 211
    :cond_2
    if-nez v12, :cond_3

    if-nez v13, :cond_3

    if-nez v14, :cond_3

    .line 213
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->VERBOSE:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v1, "Outcomes disabled for all channels"

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 214
    return-void

    .line 217
    :cond_3
    new-instance v0, Lcom/onesignal/outcomes/model/OSOutcomeSource;

    invoke-direct {v0, v12, v13}, Lcom/onesignal/outcomes/model/OSOutcomeSource;-><init>(Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;)V

    move-object v15, v0

    .line 219
    .local v15, "source":Lcom/onesignal/outcomes/model/OSOutcomeSource;
    new-instance v0, Lcom/onesignal/outcomes/model/OSOutcomeEventParams;

    move-object/from16 v6, p1

    move/from16 v4, p2

    invoke-direct {v0, v6, v15, v4}, Lcom/onesignal/outcomes/model/OSOutcomeEventParams;-><init>(Ljava/lang/String;Lcom/onesignal/outcomes/model/OSOutcomeSource;F)V

    move-object v5, v0

    .line 221
    .local v5, "eventParams":Lcom/onesignal/outcomes/model/OSOutcomeEventParams;
    new-instance v16, Lcom/onesignal/OSOutcomeEventsController$3;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object v2, v5

    move-object/from16 v3, p4

    move-object/from16 v17, v12

    move-object v12, v5

    .end local v5    # "eventParams":Lcom/onesignal/outcomes/model/OSOutcomeEventParams;
    .local v12, "eventParams":Lcom/onesignal/outcomes/model/OSOutcomeEventParams;
    .local v17, "directSourceBody":Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;
    move-wide v4, v8

    invoke-direct/range {v0 .. v6}, Lcom/onesignal/OSOutcomeEventsController$3;-><init>(Lcom/onesignal/OSOutcomeEventsController;Lcom/onesignal/outcomes/model/OSOutcomeEventParams;Lcom/onesignal/OneSignal$OutcomeCallback;JLjava/lang/String;)V

    .line 253
    .local v0, "responseHandler":Lcom/onesignal/OneSignalApiResponseHandler;
    iget-object v1, v7, Lcom/onesignal/OSOutcomeEventsController;->outcomeEventsFactory:Lcom/onesignal/outcomes/OSOutcomeEventsFactory;

    invoke-virtual {v1}, Lcom/onesignal/outcomes/OSOutcomeEventsFactory;->getRepository()Lcom/onesignal/outcomes/domain/OSOutcomeEventsRepository;

    move-result-object v1

    invoke-interface {v1, v11, v10, v12, v0}, Lcom/onesignal/outcomes/domain/OSOutcomeEventsRepository;->requestMeasureOutcomeEvent(Ljava/lang/String;ILcom/onesignal/outcomes/model/OSOutcomeEventParams;Lcom/onesignal/OneSignalApiResponseHandler;)V

    .line 254
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private sendSavedOutcomeEvent(Lcom/onesignal/outcomes/model/OSOutcomeEventParams;)V
    .locals 4
    .param p1, "event"    # Lcom/onesignal/outcomes/model/OSOutcomeEventParams;

    .line 78
    new-instance v0, Lcom/onesignal/OSUtils;

    invoke-direct {v0}, Lcom/onesignal/OSUtils;-><init>()V

    invoke-virtual {v0}, Lcom/onesignal/OSUtils;->getDeviceType()I

    move-result v0

    .line 79
    .local v0, "deviceType":I
    sget-object v1, Lcom/onesignal/OneSignal;->appId:Ljava/lang/String;

    .line 81
    .local v1, "appId":Ljava/lang/String;
    new-instance v2, Lcom/onesignal/OSOutcomeEventsController$2;

    invoke-direct {v2, p0, p1}, Lcom/onesignal/OSOutcomeEventsController$2;-><init>(Lcom/onesignal/OSOutcomeEventsController;Lcom/onesignal/outcomes/model/OSOutcomeEventParams;)V

    .line 92
    .local v2, "responseHandler":Lcom/onesignal/OneSignalApiResponseHandler;
    iget-object v3, p0, Lcom/onesignal/OSOutcomeEventsController;->outcomeEventsFactory:Lcom/onesignal/outcomes/OSOutcomeEventsFactory;

    invoke-virtual {v3}, Lcom/onesignal/outcomes/OSOutcomeEventsFactory;->getRepository()Lcom/onesignal/outcomes/domain/OSOutcomeEventsRepository;

    move-result-object v3

    invoke-interface {v3, v1, v0, p1, v2}, Lcom/onesignal/outcomes/domain/OSOutcomeEventsRepository;->requestMeasureOutcomeEvent(Ljava/lang/String;ILcom/onesignal/outcomes/model/OSOutcomeEventParams;Lcom/onesignal/OneSignalApiResponseHandler;)V

    .line 93
    return-void
.end method

.method private sendUniqueOutcomeEvent(Ljava/lang/String;Ljava/util/List;Lcom/onesignal/OneSignal$OutcomeCallback;)V
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/onesignal/OneSignal$OutcomeCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/onesignal/influence/model/OSInfluence;",
            ">;",
            "Lcom/onesignal/OneSignal$OutcomeCallback;",
            ")V"
        }
    .end annotation

    .line 129
    .local p2, "sessionInfluences":Ljava/util/List;, "Ljava/util/List<Lcom/onesignal/influence/model/OSInfluence;>;"
    invoke-direct {p0, p2}, Lcom/onesignal/OSOutcomeEventsController;->removeDisabledInfluences(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 130
    .local v0, "influences":Ljava/util/List;, "Ljava/util/List<Lcom/onesignal/influence/model/OSInfluence;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 131
    sget-object v1, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v2, "Unique Outcome disabled for current session"

    invoke-static {v1, v2}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 132
    return-void

    .line 135
    :cond_0
    const/4 v1, 0x0

    .line 136
    .local v1, "attributed":Z
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onesignal/influence/model/OSInfluence;

    .line 137
    .local v3, "influence":Lcom/onesignal/influence/model/OSInfluence;
    invoke-virtual {v3}, Lcom/onesignal/influence/model/OSInfluence;->getInfluenceType()Lcom/onesignal/influence/model/OSInfluenceType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/onesignal/influence/model/OSInfluenceType;->isAttributed()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 139
    const/4 v1, 0x1

    .line 140
    goto :goto_1

    .line 142
    .end local v3    # "influence":Lcom/onesignal/influence/model/OSInfluence;
    :cond_1
    goto :goto_0

    .line 145
    :cond_2
    :goto_1
    const/4 v2, 0x0

    const-string v3, "\nOutcome name: "

    const/4 v4, 0x0

    if-eqz v1, :cond_5

    .line 147
    invoke-direct {p0, p1, v0}, Lcom/onesignal/OSOutcomeEventsController;->getUniqueIds(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    .line 148
    .local v5, "uniqueInfluences":Ljava/util/List;, "Ljava/util/List<Lcom/onesignal/influence/model/OSInfluence;>;"
    if-nez v5, :cond_4

    .line 149
    sget-object v4, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Measure endpoint will not send because unique outcome already sent for: \nSessionInfluences: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 149
    invoke-static {v4, v3}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 155
    if-eqz p3, :cond_3

    .line 156
    invoke-interface {p3, v2}, Lcom/onesignal/OneSignal$OutcomeCallback;->onSuccess(Lcom/onesignal/OutcomeEvent;)V

    .line 158
    :cond_3
    return-void

    .line 161
    :cond_4
    invoke-direct {p0, p1, v4, v5, p3}, Lcom/onesignal/OSOutcomeEventsController;->sendAndCreateOutcomeEvent(Ljava/lang/String;FLjava/util/List;Lcom/onesignal/OneSignal$OutcomeCallback;)V

    .line 162
    .end local v5    # "uniqueInfluences":Ljava/util/List;, "Ljava/util/List<Lcom/onesignal/influence/model/OSInfluence;>;"
    goto :goto_2

    .line 164
    :cond_5
    iget-object v5, p0, Lcom/onesignal/OSOutcomeEventsController;->unattributedUniqueOutcomeEventsSentOnSession:Ljava/util/Set;

    invoke-interface {v5, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 165
    sget-object v4, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Measure endpoint will not send because unique outcome already sent for: \nSession: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/onesignal/influence/model/OSInfluenceType;->UNATTRIBUTED:Lcom/onesignal/influence/model/OSInfluenceType;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 171
    if-eqz p3, :cond_6

    .line 172
    invoke-interface {p3, v2}, Lcom/onesignal/OneSignal$OutcomeCallback;->onSuccess(Lcom/onesignal/OutcomeEvent;)V

    .line 174
    :cond_6
    return-void

    .line 177
    :cond_7
    iget-object v2, p0, Lcom/onesignal/OSOutcomeEventsController;->unattributedUniqueOutcomeEventsSentOnSession:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 178
    invoke-direct {p0, p1, v4, v0, p3}, Lcom/onesignal/OSOutcomeEventsController;->sendAndCreateOutcomeEvent(Ljava/lang/String;FLjava/util/List;Lcom/onesignal/OneSignal$OutcomeCallback;)V

    .line 180
    :goto_2
    return-void
.end method

.method private setSourceChannelIds(Lcom/onesignal/influence/model/OSInfluence;Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;)Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;
    .locals 2
    .param p1, "influence"    # Lcom/onesignal/influence/model/OSInfluence;
    .param p2, "sourceBody"    # Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;

    .line 257
    sget-object v0, Lcom/onesignal/OSOutcomeEventsController$5;->$SwitchMap$com$onesignal$influence$model$OSInfluenceChannel:[I

    invoke-virtual {p1}, Lcom/onesignal/influence/model/OSInfluence;->getInfluenceChannel()Lcom/onesignal/influence/model/OSInfluenceChannel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onesignal/influence/model/OSInfluenceChannel;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 262
    :pswitch_0
    invoke-virtual {p1}, Lcom/onesignal/influence/model/OSInfluence;->getIds()Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;->setNotificationIds(Lorg/json/JSONArray;)V

    goto :goto_0

    .line 259
    :pswitch_1
    invoke-virtual {p1}, Lcom/onesignal/influence/model/OSInfluence;->getIds()Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;->setInAppMessagesIds(Lorg/json/JSONArray;)V

    .line 260
    nop

    .line 266
    :goto_0
    return-object p2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method cleanOutcomes()V
    .locals 2

    .line 54
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v1, "OneSignal cleanOutcomes for session"

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 55
    invoke-static {}, Lcom/onesignal/OSUtils;->newConcurrentSet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/onesignal/OSOutcomeEventsController;->unattributedUniqueOutcomeEventsSentOnSession:Ljava/util/Set;

    .line 56
    invoke-direct {p0}, Lcom/onesignal/OSOutcomeEventsController;->saveUnattributedUniqueOutcomeEvents()V

    .line 57
    return-void
.end method

.method sendClickActionOutcomes(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onesignal/OSInAppMessageOutcome;",
            ">;)V"
        }
    .end annotation

    .line 96
    .local p1, "outcomes":Ljava/util/List;, "Ljava/util/List<Lcom/onesignal/OSInAppMessageOutcome;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onesignal/OSInAppMessageOutcome;

    .line 97
    .local v1, "outcome":Lcom/onesignal/OSInAppMessageOutcome;
    invoke-virtual {v1}, Lcom/onesignal/OSInAppMessageOutcome;->getName()Ljava/lang/String;

    move-result-object v2

    .line 99
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/onesignal/OSInAppMessageOutcome;->isUnique()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 100
    invoke-virtual {p0, v2, v4}, Lcom/onesignal/OSOutcomeEventsController;->sendUniqueOutcomeEvent(Ljava/lang/String;Lcom/onesignal/OneSignal$OutcomeCallback;)V

    goto :goto_1

    .line 101
    :cond_0
    invoke-virtual {v1}, Lcom/onesignal/OSInAppMessageOutcome;->getWeight()F

    move-result v3

    const/4 v5, 0x0

    cmpl-float v3, v3, v5

    if-lez v3, :cond_1

    .line 102
    invoke-virtual {v1}, Lcom/onesignal/OSInAppMessageOutcome;->getWeight()F

    move-result v3

    invoke-virtual {p0, v2, v3, v4}, Lcom/onesignal/OSOutcomeEventsController;->sendOutcomeEventWithValue(Ljava/lang/String;FLcom/onesignal/OneSignal$OutcomeCallback;)V

    goto :goto_1

    .line 104
    :cond_1
    invoke-virtual {p0, v2, v4}, Lcom/onesignal/OSOutcomeEventsController;->sendOutcomeEvent(Ljava/lang/String;Lcom/onesignal/OneSignal$OutcomeCallback;)V

    .line 106
    .end local v1    # "outcome":Lcom/onesignal/OSInAppMessageOutcome;
    .end local v2    # "name":Ljava/lang/String;
    :goto_1
    goto :goto_0

    .line 107
    :cond_2
    return-void
.end method

.method sendOutcomeEvent(Ljava/lang/String;Lcom/onesignal/OneSignal$OutcomeCallback;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/onesignal/OneSignal$OutcomeCallback;

    .line 115
    iget-object v0, p0, Lcom/onesignal/OSOutcomeEventsController;->osSessionManager:Lcom/onesignal/OSSessionManager;

    invoke-virtual {v0}, Lcom/onesignal/OSSessionManager;->getInfluences()Ljava/util/List;

    move-result-object v0

    .line 116
    .local v0, "influences":Ljava/util/List;, "Ljava/util/List<Lcom/onesignal/influence/model/OSInfluence;>;"
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0, p2}, Lcom/onesignal/OSOutcomeEventsController;->sendAndCreateOutcomeEvent(Ljava/lang/String;FLjava/util/List;Lcom/onesignal/OneSignal$OutcomeCallback;)V

    .line 117
    return-void
.end method

.method sendOutcomeEventWithValue(Ljava/lang/String;FLcom/onesignal/OneSignal$OutcomeCallback;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "weight"    # F
    .param p3, "callback"    # Lcom/onesignal/OneSignal$OutcomeCallback;

    .line 120
    iget-object v0, p0, Lcom/onesignal/OSOutcomeEventsController;->osSessionManager:Lcom/onesignal/OSSessionManager;

    invoke-virtual {v0}, Lcom/onesignal/OSSessionManager;->getInfluences()Ljava/util/List;

    move-result-object v0

    .line 121
    .local v0, "influences":Ljava/util/List;, "Ljava/util/List<Lcom/onesignal/influence/model/OSInfluence;>;"
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/onesignal/OSOutcomeEventsController;->sendAndCreateOutcomeEvent(Ljava/lang/String;FLjava/util/List;Lcom/onesignal/OneSignal$OutcomeCallback;)V

    .line 122
    return-void
.end method

.method sendSavedOutcomes()V
    .locals 3

    .line 64
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/onesignal/OSOutcomeEventsController$1;

    invoke-direct {v1, p0}, Lcom/onesignal/OSOutcomeEventsController$1;-><init>(Lcom/onesignal/OSOutcomeEventsController;)V

    const-string v2, "OS_SEND_SAVED_OUTCOMES"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 74
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 75
    return-void
.end method

.method sendUniqueOutcomeEvent(Ljava/lang/String;Lcom/onesignal/OneSignal$OutcomeCallback;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/onesignal/OneSignal$OutcomeCallback;

    .line 110
    iget-object v0, p0, Lcom/onesignal/OSOutcomeEventsController;->osSessionManager:Lcom/onesignal/OSSessionManager;

    invoke-virtual {v0}, Lcom/onesignal/OSSessionManager;->getInfluences()Ljava/util/List;

    move-result-object v0

    .line 111
    .local v0, "sessionResult":Ljava/util/List;, "Ljava/util/List<Lcom/onesignal/influence/model/OSInfluence;>;"
    invoke-direct {p0, p1, v0, p2}, Lcom/onesignal/OSOutcomeEventsController;->sendUniqueOutcomeEvent(Ljava/lang/String;Ljava/util/List;Lcom/onesignal/OneSignal$OutcomeCallback;)V

    .line 112
    return-void
.end method
