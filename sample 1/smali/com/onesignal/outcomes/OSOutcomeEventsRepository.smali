.class abstract Lcom/onesignal/outcomes/OSOutcomeEventsRepository;
.super Ljava/lang/Object;
.source "OSOutcomeEventsRepository.java"

# interfaces
.implements Lcom/onesignal/outcomes/domain/OSOutcomeEventsRepository;


# static fields
.field static final APP_ID:Ljava/lang/String; = "app_id"

.field static final DEVICE_TYPE:Ljava/lang/String; = "device_type"


# instance fields
.field protected final logger:Lcom/onesignal/OSLogger;

.field private final outcomeEventsCache:Lcom/onesignal/outcomes/OSOutcomeEventsCache;

.field final outcomeEventsService:Lcom/onesignal/outcomes/domain/OutcomeEventsService;


# direct methods
.method constructor <init>(Lcom/onesignal/OSLogger;Lcom/onesignal/outcomes/OSOutcomeEventsCache;Lcom/onesignal/outcomes/domain/OutcomeEventsService;)V
    .locals 0
    .param p1, "logger"    # Lcom/onesignal/OSLogger;
    .param p2, "outcomeEventsCache"    # Lcom/onesignal/outcomes/OSOutcomeEventsCache;
    .param p3, "outcomeEventsService"    # Lcom/onesignal/outcomes/domain/OutcomeEventsService;

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/onesignal/outcomes/OSOutcomeEventsRepository;->logger:Lcom/onesignal/OSLogger;

    .line 23
    iput-object p2, p0, Lcom/onesignal/outcomes/OSOutcomeEventsRepository;->outcomeEventsCache:Lcom/onesignal/outcomes/OSOutcomeEventsCache;

    .line 24
    iput-object p3, p0, Lcom/onesignal/outcomes/OSOutcomeEventsRepository;->outcomeEventsService:Lcom/onesignal/outcomes/domain/OutcomeEventsService;

    .line 25
    return-void
.end method


# virtual methods
.method public getNotCachedUniqueOutcome(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 4
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

    .line 46
    .local p2, "influences":Ljava/util/List;, "Ljava/util/List<Lcom/onesignal/influence/model/OSInfluence;>;"
    iget-object v0, p0, Lcom/onesignal/outcomes/OSOutcomeEventsRepository;->outcomeEventsCache:Lcom/onesignal/outcomes/OSOutcomeEventsCache;

    invoke-virtual {v0, p1, p2}, Lcom/onesignal/outcomes/OSOutcomeEventsCache;->getNotCachedUniqueInfluencesForOutcome(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 47
    .local v0, "influencesNotCached":Ljava/util/List;, "Ljava/util/List<Lcom/onesignal/influence/model/OSInfluence;>;"
    iget-object v1, p0, Lcom/onesignal/outcomes/OSOutcomeEventsRepository;->logger:Lcom/onesignal/OSLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OneSignal getNotCachedUniqueOutcome influences: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/onesignal/OSLogger;->debug(Ljava/lang/String;)V

    .line 48
    return-object v0
.end method

.method public getSavedOutcomeEvents()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onesignal/outcomes/model/OSOutcomeEventParams;",
            ">;"
        }
    .end annotation

    .line 30
    iget-object v0, p0, Lcom/onesignal/outcomes/OSOutcomeEventsRepository;->outcomeEventsCache:Lcom/onesignal/outcomes/OSOutcomeEventsCache;

    invoke-virtual {v0}, Lcom/onesignal/outcomes/OSOutcomeEventsCache;->getAllEventsToSend()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUnattributedUniqueOutcomeEventsSent()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lcom/onesignal/outcomes/OSOutcomeEventsRepository;->outcomeEventsCache:Lcom/onesignal/outcomes/OSOutcomeEventsCache;

    invoke-virtual {v0}, Lcom/onesignal/outcomes/OSOutcomeEventsCache;->getUnattributedUniqueOutcomeEventsSentByChannel()Ljava/util/Set;

    move-result-object v0

    .line 54
    .local v0, "unattributedUniqueOutcomeEvents":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/onesignal/outcomes/OSOutcomeEventsRepository;->logger:Lcom/onesignal/OSLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OneSignal getUnattributedUniqueOutcomeEventsSentByChannel: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/onesignal/OSLogger;->debug(Ljava/lang/String;)V

    .line 55
    return-object v0
.end method

.method public removeEvent(Lcom/onesignal/outcomes/model/OSOutcomeEventParams;)V
    .locals 1
    .param p1, "outcomeEvent"    # Lcom/onesignal/outcomes/model/OSOutcomeEventParams;

    .line 38
    iget-object v0, p0, Lcom/onesignal/outcomes/OSOutcomeEventsRepository;->outcomeEventsCache:Lcom/onesignal/outcomes/OSOutcomeEventsCache;

    invoke-virtual {v0, p1}, Lcom/onesignal/outcomes/OSOutcomeEventsCache;->deleteOldOutcomeEvent(Lcom/onesignal/outcomes/model/OSOutcomeEventParams;)V

    .line 39
    return-void
.end method

.method public abstract requestMeasureOutcomeEvent(Ljava/lang/String;ILcom/onesignal/outcomes/model/OSOutcomeEventParams;Lcom/onesignal/OneSignalApiResponseHandler;)V
.end method

.method public saveOutcomeEvent(Lcom/onesignal/outcomes/model/OSOutcomeEventParams;)V
    .locals 1
    .param p1, "event"    # Lcom/onesignal/outcomes/model/OSOutcomeEventParams;

    .line 34
    iget-object v0, p0, Lcom/onesignal/outcomes/OSOutcomeEventsRepository;->outcomeEventsCache:Lcom/onesignal/outcomes/OSOutcomeEventsCache;

    invoke-virtual {v0, p1}, Lcom/onesignal/outcomes/OSOutcomeEventsCache;->saveOutcomeEvent(Lcom/onesignal/outcomes/model/OSOutcomeEventParams;)V

    .line 35
    return-void
.end method

.method public saveUnattributedUniqueOutcomeEventsSent(Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 60
    .local p1, "unattributedUniqueOutcomeEvents":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/onesignal/outcomes/OSOutcomeEventsRepository;->logger:Lcom/onesignal/OSLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OneSignal save unattributedUniqueOutcomeEvents: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/onesignal/OSLogger;->debug(Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/onesignal/outcomes/OSOutcomeEventsRepository;->outcomeEventsCache:Lcom/onesignal/outcomes/OSOutcomeEventsCache;

    invoke-virtual {v0, p1}, Lcom/onesignal/outcomes/OSOutcomeEventsCache;->saveUnattributedUniqueOutcomeEventsSentByChannel(Ljava/util/Set;)V

    .line 62
    return-void
.end method

.method public saveUniqueOutcomeNotifications(Lcom/onesignal/outcomes/model/OSOutcomeEventParams;)V
    .locals 1
    .param p1, "eventParams"    # Lcom/onesignal/outcomes/model/OSOutcomeEventParams;

    .line 42
    iget-object v0, p0, Lcom/onesignal/outcomes/OSOutcomeEventsRepository;->outcomeEventsCache:Lcom/onesignal/outcomes/OSOutcomeEventsCache;

    invoke-virtual {v0, p1}, Lcom/onesignal/outcomes/OSOutcomeEventsCache;->saveUniqueOutcomeEventParams(Lcom/onesignal/outcomes/model/OSOutcomeEventParams;)V

    .line 43
    return-void
.end method
