.class abstract Lcom/onesignal/UserStateSynchronizer;
.super Ljava/lang/Object;
.source "UserStateSynchronizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onesignal/UserStateSynchronizer$NetworkHandlerThread;,
        Lcom/onesignal/UserStateSynchronizer$GetTagsResult;
    }
.end annotation


# instance fields
.field private canMakeUpdates:Z

.field private channel:Lcom/onesignal/OneSignalStateSynchronizer$UserStateSynchronizerType;

.field protected currentUserState:Lcom/onesignal/UserState;

.field private final externalUserIdUpdateHandlers:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/onesignal/OneSignal$OSInternalExternalUserIdUpdateCompletionHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final networkHandlerSyncLock:Ljava/lang/Object;

.field networkHandlerThreads:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/onesignal/UserStateSynchronizer$NetworkHandlerThread;",
            ">;"
        }
    .end annotation
.end field

.field private runningSyncUserState:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final sendTagsHandlers:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/onesignal/OneSignal$ChangeTagsUpdateHandler;",
            ">;"
        }
    .end annotation
.end field

.field protected final syncLock:Ljava/lang/Object;

.field protected toSyncUserState:Lcom/onesignal/UserState;

.field protected waitingForSessionResponse:Z


# direct methods
.method constructor <init>(Lcom/onesignal/OneSignalStateSynchronizer$UserStateSynchronizerType;)V
    .locals 1
    .param p1, "channel"    # Lcom/onesignal/OneSignalStateSynchronizer$UserStateSynchronizerType;

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Lcom/onesignal/UserStateSynchronizer$1;

    invoke-direct {v0, p0}, Lcom/onesignal/UserStateSynchronizer$1;-><init>(Lcom/onesignal/UserStateSynchronizer;)V

    iput-object v0, p0, Lcom/onesignal/UserStateSynchronizer;->syncLock:Ljava/lang/Object;

    .line 64
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/onesignal/UserStateSynchronizer;->runningSyncUserState:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 68
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/onesignal/UserStateSynchronizer;->sendTagsHandlers:Ljava/util/Queue;

    .line 69
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/onesignal/UserStateSynchronizer;->externalUserIdUpdateHandlers:Ljava/util/Queue;

    .line 139
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/onesignal/UserStateSynchronizer;->networkHandlerThreads:Ljava/util/HashMap;

    .line 140
    new-instance v0, Lcom/onesignal/UserStateSynchronizer$2;

    invoke-direct {v0, p0}, Lcom/onesignal/UserStateSynchronizer$2;-><init>(Lcom/onesignal/UserStateSynchronizer;)V

    iput-object v0, p0, Lcom/onesignal/UserStateSynchronizer;->networkHandlerSyncLock:Ljava/lang/Object;

    .line 142
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/onesignal/UserStateSynchronizer;->waitingForSessionResponse:Z

    .line 28
    iput-object p1, p0, Lcom/onesignal/UserStateSynchronizer;->channel:Lcom/onesignal/OneSignalStateSynchronizer$UserStateSynchronizerType;

    .line 29
    return-void
.end method

.method static synthetic access$000(Lcom/onesignal/UserStateSynchronizer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/onesignal/UserStateSynchronizer;

    .line 23
    iget-boolean v0, p0, Lcom/onesignal/UserStateSynchronizer;->canMakeUpdates:Z

    return v0
.end method

.method static synthetic access$100(Lcom/onesignal/UserStateSynchronizer;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/onesignal/UserStateSynchronizer;

    .line 23
    iget-object v0, p0, Lcom/onesignal/UserStateSynchronizer;->runningSyncUserState:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$200(Lcom/onesignal/UserStateSynchronizer;ILjava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/onesignal/UserStateSynchronizer;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .line 23
    invoke-direct {p0, p1, p2, p3}, Lcom/onesignal/UserStateSynchronizer;->response400WithErrorsContaining(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/onesignal/UserStateSynchronizer;)V
    .locals 0
    .param p0, "x0"    # Lcom/onesignal/UserStateSynchronizer;

    .line 23
    invoke-direct {p0}, Lcom/onesignal/UserStateSynchronizer;->logoutEmailSyncSuccess()V

    return-void
.end method

.method static synthetic access$400(Lcom/onesignal/UserStateSynchronizer;)V
    .locals 0
    .param p0, "x0"    # Lcom/onesignal/UserStateSynchronizer;

    .line 23
    invoke-direct {p0}, Lcom/onesignal/UserStateSynchronizer;->handlePlayerDeletedFromServer()V

    return-void
.end method

.method static synthetic access$500(Lcom/onesignal/UserStateSynchronizer;I)V
    .locals 0
    .param p0, "x0"    # Lcom/onesignal/UserStateSynchronizer;
    .param p1, "x1"    # I

    .line 23
    invoke-direct {p0, p1}, Lcom/onesignal/UserStateSynchronizer;->handleNetworkFailure(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/onesignal/UserStateSynchronizer;Lcom/onesignal/OneSignal$SendTagsError;)V
    .locals 0
    .param p0, "x0"    # Lcom/onesignal/UserStateSynchronizer;
    .param p1, "x1"    # Lcom/onesignal/OneSignal$SendTagsError;

    .line 23
    invoke-direct {p0, p1}, Lcom/onesignal/UserStateSynchronizer;->sendTagsHandlersPerformOnFailure(Lcom/onesignal/OneSignal$SendTagsError;)V

    return-void
.end method

.method static synthetic access$700(Lcom/onesignal/UserStateSynchronizer;)V
    .locals 0
    .param p0, "x0"    # Lcom/onesignal/UserStateSynchronizer;

    .line 23
    invoke-direct {p0}, Lcom/onesignal/UserStateSynchronizer;->externalUserIdUpdateHandlersPerformOnFailure()V

    return-void
.end method

.method static synthetic access$800(Lcom/onesignal/UserStateSynchronizer;)V
    .locals 0
    .param p0, "x0"    # Lcom/onesignal/UserStateSynchronizer;

    .line 23
    invoke-direct {p0}, Lcom/onesignal/UserStateSynchronizer;->sendTagsHandlersPerformOnSuccess()V

    return-void
.end method

.method static synthetic access$900(Lcom/onesignal/UserStateSynchronizer;)V
    .locals 0
    .param p0, "x0"    # Lcom/onesignal/UserStateSynchronizer;

    .line 23
    invoke-direct {p0}, Lcom/onesignal/UserStateSynchronizer;->externalUserIdUpdateHandlersPerformOnSuccess()V

    return-void
.end method

.method private doCreateOrNewSession(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "jsonBody"    # Lorg/json/JSONObject;
    .param p3, "dependDiff"    # Lorg/json/JSONObject;

    .line 355
    if-nez p1, :cond_0

    .line 356
    const-string v0, "players"

    .local v0, "urlStr":Ljava/lang/String;
    goto :goto_0

    .line 358
    .end local v0    # "urlStr":Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "players/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/on_session"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 360
    .restart local v0    # "urlStr":Ljava/lang/String;
    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/onesignal/UserStateSynchronizer;->waitingForSessionResponse:Z

    .line 361
    invoke-virtual {p0, p2}, Lcom/onesignal/UserStateSynchronizer;->addOnSessionOrCreateExtras(Lorg/json/JSONObject;)V

    .line 362
    new-instance v1, Lcom/onesignal/UserStateSynchronizer$5;

    invoke-direct {v1, p0, p3, p2, p1}, Lcom/onesignal/UserStateSynchronizer$5;-><init>(Lcom/onesignal/UserStateSynchronizer;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;)V

    invoke-static {v0, p2, v1}, Lcom/onesignal/OneSignalRestClient;->postSync(Ljava/lang/String;Lorg/json/JSONObject;Lcom/onesignal/OneSignalRestClient$ResponseHandler;)V

    .line 408
    return-void
.end method

.method private doEmailLogout(Ljava/lang/String;)V
    .locals 7
    .param p1, "userId"    # Ljava/lang/String;

    .line 252
    const-string v0, "app_id"

    const-string v1, "parent_player_id"

    const-string v2, "email_auth_hash"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "players/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/email_logout"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 253
    .local v3, "urlStr":Ljava/lang/String;
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 255
    .local v4, "jsonBody":Lorg/json/JSONObject;
    :try_start_0
    iget-object v5, p0, Lcom/onesignal/UserStateSynchronizer;->currentUserState:Lcom/onesignal/UserState;

    iget-object v5, v5, Lcom/onesignal/UserState;->dependValues:Lorg/json/JSONObject;

    .line 256
    .local v5, "dependValues":Lorg/json/JSONObject;
    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 257
    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 259
    :cond_0
    iget-object v2, p0, Lcom/onesignal/UserStateSynchronizer;->currentUserState:Lcom/onesignal/UserState;

    iget-object v2, v2, Lcom/onesignal/UserState;->syncValues:Lorg/json/JSONObject;

    .line 260
    .local v2, "syncValues":Lorg/json/JSONObject;
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 261
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 263
    :cond_1
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 266
    nop

    .end local v2    # "syncValues":Lorg/json/JSONObject;
    .end local v5    # "dependValues":Lorg/json/JSONObject;
    goto :goto_0

    .line 264
    :catch_0
    move-exception v0

    .line 265
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 268
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_0
    new-instance v0, Lcom/onesignal/UserStateSynchronizer$3;

    invoke-direct {v0, p0}, Lcom/onesignal/UserStateSynchronizer$3;-><init>(Lcom/onesignal/UserStateSynchronizer;)V

    invoke-static {v3, v4, v0}, Lcom/onesignal/OneSignalRestClient;->postSync(Ljava/lang/String;Lorg/json/JSONObject;Lcom/onesignal/OneSignalRestClient$ResponseHandler;)V

    .line 289
    return-void
.end method

.method private doPutSync(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "jsonBody"    # Lorg/json/JSONObject;
    .param p3, "dependDiff"    # Lorg/json/JSONObject;

    .line 309
    if-nez p1, :cond_0

    .line 310
    invoke-virtual {p0}, Lcom/onesignal/UserStateSynchronizer;->getLogLevel()Lcom/onesignal/OneSignal$LOG_LEVEL;

    move-result-object v0

    const-string v1, "Error updating the user record because of the null user id"

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->onesignalLog(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 311
    new-instance v0, Lcom/onesignal/OneSignal$SendTagsError;

    const/4 v1, -0x1

    const-string v2, "Unable to update tags: the current user is not registered with OneSignal"

    invoke-direct {v0, v1, v2}, Lcom/onesignal/OneSignal$SendTagsError;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/onesignal/UserStateSynchronizer;->sendTagsHandlersPerformOnFailure(Lcom/onesignal/OneSignal$SendTagsError;)V

    .line 312
    invoke-direct {p0}, Lcom/onesignal/UserStateSynchronizer;->externalUserIdUpdateHandlersPerformOnFailure()V

    .line 313
    return-void

    .line 316
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "players/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/onesignal/UserStateSynchronizer$4;

    invoke-direct {v1, p0, p2, p3}, Lcom/onesignal/UserStateSynchronizer$4;-><init>(Lcom/onesignal/UserStateSynchronizer;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    invoke-static {v0, p2, v1}, Lcom/onesignal/OneSignalRestClient;->putSync(Ljava/lang/String;Lorg/json/JSONObject;Lcom/onesignal/OneSignalRestClient$ResponseHandler;)V

    .line 351
    return-void
.end method

.method private externalUserIdUpdateHandlersPerformOnFailure()V
    .locals 3

    .line 569
    :goto_0
    iget-object v0, p0, Lcom/onesignal/UserStateSynchronizer;->externalUserIdUpdateHandlers:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onesignal/OneSignal$OSInternalExternalUserIdUpdateCompletionHandler;

    move-object v1, v0

    .local v1, "handler":Lcom/onesignal/OneSignal$OSInternalExternalUserIdUpdateCompletionHandler;
    if-eqz v0, :cond_0

    .line 570
    invoke-virtual {p0}, Lcom/onesignal/UserStateSynchronizer;->getChannelString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/onesignal/OneSignal$OSInternalExternalUserIdUpdateCompletionHandler;->onComplete(Ljava/lang/String;Z)V

    goto :goto_0

    .line 572
    :cond_0
    return-void
.end method

.method private externalUserIdUpdateHandlersPerformOnSuccess()V
    .locals 3

    .line 562
    :goto_0
    iget-object v0, p0, Lcom/onesignal/UserStateSynchronizer;->externalUserIdUpdateHandlers:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onesignal/OneSignal$OSInternalExternalUserIdUpdateCompletionHandler;

    move-object v1, v0

    .local v1, "handler":Lcom/onesignal/OneSignal$OSInternalExternalUserIdUpdateCompletionHandler;
    if-eqz v0, :cond_0

    .line 563
    invoke-virtual {p0}, Lcom/onesignal/UserStateSynchronizer;->getChannelString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v1, v0, v2}, Lcom/onesignal/OneSignal$OSInternalExternalUserIdUpdateCompletionHandler;->onComplete(Ljava/lang/String;Z)V

    goto :goto_0

    .line 565
    :cond_0
    return-void
.end method

.method private fireNetworkFailureEvents()V
    .locals 4

    .line 426
    iget-object v0, p0, Lcom/onesignal/UserStateSynchronizer;->currentUserState:Lcom/onesignal/UserState;

    iget-object v1, p0, Lcom/onesignal/UserStateSynchronizer;->toSyncUserState:Lcom/onesignal/UserState;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/onesignal/UserState;->generateJsonDiff(Lcom/onesignal/UserState;Z)Lorg/json/JSONObject;

    move-result-object v0

    .line 427
    .local v0, "jsonBody":Lorg/json/JSONObject;
    if-eqz v0, :cond_0

    .line 428
    invoke-virtual {p0, v0}, Lcom/onesignal/UserStateSynchronizer;->fireEventsForUpdateFailure(Lorg/json/JSONObject;)V

    .line 430
    :cond_0
    invoke-virtual {p0}, Lcom/onesignal/UserStateSynchronizer;->getToSyncUserState()Lcom/onesignal/UserState;

    move-result-object v1

    iget-object v1, v1, Lcom/onesignal/UserState;->dependValues:Lorg/json/JSONObject;

    const-string v3, "logoutEmail"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 431
    invoke-static {}, Lcom/onesignal/OneSignal;->handleFailedEmailLogout()V

    .line 432
    :cond_1
    return-void
.end method

.method private handleNetworkFailure(I)V
    .locals 2
    .param p1, "statusCode"    # I

    .line 413
    const/16 v0, 0x193

    if-ne p1, v0, :cond_0

    .line 414
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->FATAL:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v1, "403 error updating player, omitting further retries!"

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 415
    invoke-direct {p0}, Lcom/onesignal/UserStateSynchronizer;->fireNetworkFailureEvents()V

    .line 416
    return-void

    .line 419
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onesignal/UserStateSynchronizer;->getNetworkHandlerThread(Ljava/lang/Integer;)Lcom/onesignal/UserStateSynchronizer$NetworkHandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onesignal/UserStateSynchronizer$NetworkHandlerThread;->doRetry()Z

    move-result v0

    .line 421
    .local v0, "retried":Z
    if-nez v0, :cond_1

    .line 422
    invoke-direct {p0}, Lcom/onesignal/UserStateSynchronizer;->fireNetworkFailureEvents()V

    .line 423
    :cond_1
    return-void
.end method

.method private handlePlayerDeletedFromServer()V
    .locals 2

    .line 516
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->WARN:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v1, "Creating new player based on missing player_id noted above."

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 517
    invoke-static {}, Lcom/onesignal/OneSignal;->handleSuccessfulEmailLogout()V

    .line 518
    invoke-virtual {p0}, Lcom/onesignal/UserStateSynchronizer;->resetCurrentState()V

    .line 519
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/onesignal/UserStateSynchronizer;->updateIdDependents(Ljava/lang/String;)V

    .line 520
    invoke-virtual {p0}, Lcom/onesignal/UserStateSynchronizer;->scheduleSyncToServer()V

    .line 521
    return-void
.end method

.method private internalSyncUserState(Z)V
    .locals 7
    .param p1, "fromSyncService"    # Z

    .line 219
    invoke-virtual {p0}, Lcom/onesignal/UserStateSynchronizer;->getId()Ljava/lang/String;

    move-result-object v0

    .line 221
    .local v0, "userId":Ljava/lang/String;
    invoke-direct {p0}, Lcom/onesignal/UserStateSynchronizer;->syncEmailLogout()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 222
    invoke-direct {p0, v0}, Lcom/onesignal/UserStateSynchronizer;->doEmailLogout(Ljava/lang/String;)V

    .line 223
    return-void

    .line 226
    :cond_0
    iget-object v1, p0, Lcom/onesignal/UserStateSynchronizer;->currentUserState:Lcom/onesignal/UserState;

    if-nez v1, :cond_1

    .line 227
    invoke-virtual {p0}, Lcom/onesignal/UserStateSynchronizer;->initUserState()V

    .line 229
    :cond_1
    if-nez p1, :cond_2

    invoke-direct {p0}, Lcom/onesignal/UserStateSynchronizer;->isSessionCall()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 231
    .local v1, "isSessionCall":Z
    :goto_0
    iget-object v2, p0, Lcom/onesignal/UserStateSynchronizer;->syncLock:Ljava/lang/Object;

    monitor-enter v2

    .line 232
    :try_start_0
    iget-object v3, p0, Lcom/onesignal/UserStateSynchronizer;->currentUserState:Lcom/onesignal/UserState;

    invoke-virtual {p0}, Lcom/onesignal/UserStateSynchronizer;->getToSyncUserState()Lcom/onesignal/UserState;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Lcom/onesignal/UserState;->generateJsonDiff(Lcom/onesignal/UserState;Z)Lorg/json/JSONObject;

    move-result-object v3

    .line 233
    .local v3, "jsonBody":Lorg/json/JSONObject;
    iget-object v4, p0, Lcom/onesignal/UserStateSynchronizer;->currentUserState:Lcom/onesignal/UserState;

    iget-object v4, v4, Lcom/onesignal/UserState;->dependValues:Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/onesignal/UserStateSynchronizer;->getToSyncUserState()Lcom/onesignal/UserState;

    move-result-object v5

    iget-object v5, v5, Lcom/onesignal/UserState;->dependValues:Lorg/json/JSONObject;

    const/4 v6, 0x0

    invoke-virtual {p0, v4, v5, v6, v6}, Lcom/onesignal/UserStateSynchronizer;->generateJsonDiff(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/util/Set;)Lorg/json/JSONObject;

    move-result-object v4

    .line 236
    .local v4, "dependDiff":Lorg/json/JSONObject;
    if-nez v3, :cond_3

    .line 237
    iget-object v5, p0, Lcom/onesignal/UserStateSynchronizer;->currentUserState:Lcom/onesignal/UserState;

    invoke-virtual {v5, v4, v6}, Lcom/onesignal/UserState;->persistStateAfterSync(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 238
    invoke-direct {p0}, Lcom/onesignal/UserStateSynchronizer;->sendTagsHandlersPerformOnSuccess()V

    .line 239
    invoke-direct {p0}, Lcom/onesignal/UserStateSynchronizer;->externalUserIdUpdateHandlersPerformOnSuccess()V

    .line 240
    monitor-exit v2

    return-void

    .line 242
    :cond_3
    invoke-virtual {p0}, Lcom/onesignal/UserStateSynchronizer;->getToSyncUserState()Lcom/onesignal/UserState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/onesignal/UserState;->persistState()V

    .line 243
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 245
    if-nez v1, :cond_4

    .line 246
    invoke-direct {p0, v0, v3, v4}, Lcom/onesignal/UserStateSynchronizer;->doPutSync(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    goto :goto_1

    .line 248
    :cond_4
    invoke-direct {p0, v0, v3, v4}, Lcom/onesignal/UserStateSynchronizer;->doCreateOrNewSession(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 249
    :goto_1
    return-void

    .line 243
    .end local v3    # "jsonBody":Lorg/json/JSONObject;
    .end local v4    # "dependDiff":Lorg/json/JSONObject;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method private isSessionCall()Z
    .locals 2

    .line 204
    invoke-virtual {p0}, Lcom/onesignal/UserStateSynchronizer;->getToSyncUserState()Lcom/onesignal/UserState;

    move-result-object v0

    iget-object v0, v0, Lcom/onesignal/UserState;->dependValues:Lorg/json/JSONObject;

    const-string v1, "session"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 205
    .local v0, "toSyncSession":Z
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/onesignal/UserStateSynchronizer;->getId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    iget-boolean v1, p0, Lcom/onesignal/UserStateSynchronizer;->waitingForSessionResponse:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private logoutEmailSyncSuccess()V
    .locals 4

    .line 292
    invoke-virtual {p0}, Lcom/onesignal/UserStateSynchronizer;->getToSyncUserState()Lcom/onesignal/UserState;

    move-result-object v0

    iget-object v0, v0, Lcom/onesignal/UserState;->dependValues:Lorg/json/JSONObject;

    const-string v1, "logoutEmail"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 293
    iget-object v0, p0, Lcom/onesignal/UserStateSynchronizer;->toSyncUserState:Lcom/onesignal/UserState;

    iget-object v0, v0, Lcom/onesignal/UserState;->dependValues:Lorg/json/JSONObject;

    const-string v1, "email_auth_hash"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 294
    iget-object v0, p0, Lcom/onesignal/UserStateSynchronizer;->toSyncUserState:Lcom/onesignal/UserState;

    iget-object v0, v0, Lcom/onesignal/UserState;->syncValues:Lorg/json/JSONObject;

    const-string v2, "parent_player_id"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 295
    iget-object v0, p0, Lcom/onesignal/UserStateSynchronizer;->toSyncUserState:Lcom/onesignal/UserState;

    invoke-virtual {v0}, Lcom/onesignal/UserState;->persistState()V

    .line 297
    iget-object v0, p0, Lcom/onesignal/UserStateSynchronizer;->currentUserState:Lcom/onesignal/UserState;

    iget-object v0, v0, Lcom/onesignal/UserState;->dependValues:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 298
    iget-object v0, p0, Lcom/onesignal/UserStateSynchronizer;->currentUserState:Lcom/onesignal/UserState;

    iget-object v0, v0, Lcom/onesignal/UserState;->syncValues:Lorg/json/JSONObject;

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 299
    iget-object v0, p0, Lcom/onesignal/UserStateSynchronizer;->currentUserState:Lcom/onesignal/UserState;

    iget-object v0, v0, Lcom/onesignal/UserState;->syncValues:Lorg/json/JSONObject;

    const-string v1, "email"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 300
    .local v0, "emailLoggedOut":Ljava/lang/String;
    iget-object v2, p0, Lcom/onesignal/UserStateSynchronizer;->currentUserState:Lcom/onesignal/UserState;

    iget-object v2, v2, Lcom/onesignal/UserState;->syncValues:Lorg/json/JSONObject;

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 302
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->setNewSessionForEmail()V

    .line 304
    sget-object v1, Lcom/onesignal/OneSignal$LOG_LEVEL;->INFO:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Device successfully logged out of email: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 305
    invoke-static {}, Lcom/onesignal/OneSignal;->handleSuccessfulEmailLogout()V

    .line 306
    return-void
.end method

.method private response400WithErrorsContaining(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "statusCode"    # I
    .param p2, "response"    # Ljava/lang/String;
    .param p3, "contains"    # Ljava/lang/String;

    .line 439
    const-string v0, "errors"

    const/4 v1, 0x0

    const/16 v2, 0x190

    if-ne p1, v2, :cond_1

    if-eqz p2, :cond_1

    .line 441
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 442
    .local v2, "responseJson":Lorg/json/JSONObject;
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 443
    .end local v2    # "responseJson":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 444
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 448
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_1
    return v1
.end method

.method private sendTagsHandlersPerformOnFailure(Lcom/onesignal/OneSignal$SendTagsError;)V
    .locals 2
    .param p1, "error"    # Lcom/onesignal/OneSignal$SendTagsError;

    .line 556
    :goto_0
    iget-object v0, p0, Lcom/onesignal/UserStateSynchronizer;->sendTagsHandlers:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onesignal/OneSignal$ChangeTagsUpdateHandler;

    move-object v1, v0

    .local v1, "handler":Lcom/onesignal/OneSignal$ChangeTagsUpdateHandler;
    if-eqz v0, :cond_0

    .line 557
    invoke-interface {v1, p1}, Lcom/onesignal/OneSignal$ChangeTagsUpdateHandler;->onFailure(Lcom/onesignal/OneSignal$SendTagsError;)V

    goto :goto_0

    .line 558
    :cond_0
    return-void
.end method

.method private sendTagsHandlersPerformOnSuccess()V
    .locals 3

    .line 548
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/onesignal/OneSignalStateSynchronizer;->getTags(Z)Lcom/onesignal/UserStateSynchronizer$GetTagsResult;

    move-result-object v0

    iget-object v0, v0, Lcom/onesignal/UserStateSynchronizer$GetTagsResult;->result:Lorg/json/JSONObject;

    .line 550
    .local v0, "tags":Lorg/json/JSONObject;
    :goto_0
    iget-object v1, p0, Lcom/onesignal/UserStateSynchronizer;->sendTagsHandlers:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onesignal/OneSignal$ChangeTagsUpdateHandler;

    move-object v2, v1

    .local v2, "handler":Lcom/onesignal/OneSignal$ChangeTagsUpdateHandler;
    if-eqz v1, :cond_0

    .line 551
    invoke-interface {v2, v0}, Lcom/onesignal/OneSignal$ChangeTagsUpdateHandler;->onSuccess(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 552
    :cond_0
    return-void
.end method

.method private syncEmailLogout()Z
    .locals 3

    .line 209
    invoke-virtual {p0}, Lcom/onesignal/UserStateSynchronizer;->getToSyncUserState()Lcom/onesignal/UserState;

    move-result-object v0

    iget-object v0, v0, Lcom/onesignal/UserState;->dependValues:Lorg/json/JSONObject;

    const-string v1, "logoutEmail"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected abstract addOnSessionOrCreateExtras(Lorg/json/JSONObject;)V
.end method

.method clearLocation()V
    .locals 1

    .line 185
    invoke-virtual {p0}, Lcom/onesignal/UserStateSynchronizer;->getToSyncUserState()Lcom/onesignal/UserState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onesignal/UserState;->clearLocation()V

    .line 186
    invoke-virtual {p0}, Lcom/onesignal/UserStateSynchronizer;->getToSyncUserState()Lcom/onesignal/UserState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onesignal/UserState;->persistState()V

    .line 187
    return-void
.end method

.method protected abstract fireEventsForUpdateFailure(Lorg/json/JSONObject;)V
.end method

.method protected generateJsonDiff(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/util/Set;)Lorg/json/JSONObject;
    .locals 2
    .param p1, "cur"    # Lorg/json/JSONObject;
    .param p2, "changedTo"    # Lorg/json/JSONObject;
    .param p3, "baseOutput"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Lorg/json/JSONObject;",
            "Lorg/json/JSONObject;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .line 150
    .local p4, "includeFields":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/onesignal/UserStateSynchronizer;->syncLock:Ljava/lang/Object;

    monitor-enter v0

    .line 151
    :try_start_0
    invoke-static {p1, p2, p3, p4}, Lcom/onesignal/JSONUtils;->generateJsonDiff(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/util/Set;)Lorg/json/JSONObject;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 152
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getChannelString()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/onesignal/UserStateSynchronizer;->channel:Lcom/onesignal/OneSignalStateSynchronizer$UserStateSynchronizerType;

    invoke-virtual {v0}, Lcom/onesignal/OneSignalStateSynchronizer$UserStateSynchronizerType;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getChannelType()Lcom/onesignal/OneSignalStateSynchronizer$UserStateSynchronizerType;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/onesignal/UserStateSynchronizer;->channel:Lcom/onesignal/OneSignalStateSynchronizer$UserStateSynchronizerType;

    return-object v0
.end method

.method protected getCurrentUserState()Lcom/onesignal/UserState;
    .locals 3

    .line 156
    iget-object v0, p0, Lcom/onesignal/UserStateSynchronizer;->syncLock:Ljava/lang/Object;

    monitor-enter v0

    .line 157
    :try_start_0
    iget-object v1, p0, Lcom/onesignal/UserStateSynchronizer;->currentUserState:Lcom/onesignal/UserState;

    if-nez v1, :cond_0

    .line 158
    const-string v1, "CURRENT_STATE"

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/onesignal/UserStateSynchronizer;->newUserState(Ljava/lang/String;Z)Lcom/onesignal/UserState;

    move-result-object v1

    iput-object v1, p0, Lcom/onesignal/UserStateSynchronizer;->currentUserState:Lcom/onesignal/UserState;

    .line 159
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    iget-object v0, p0, Lcom/onesignal/UserStateSynchronizer;->currentUserState:Lcom/onesignal/UserState;

    return-object v0

    .line 159
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method abstract getExternalId(Z)Ljava/lang/String;
.end method

.method protected abstract getId()Ljava/lang/String;
.end method

.method protected abstract getLogLevel()Lcom/onesignal/OneSignal$LOG_LEVEL;
.end method

.method protected getNetworkHandlerThread(Ljava/lang/Integer;)Lcom/onesignal/UserStateSynchronizer$NetworkHandlerThread;
    .locals 4
    .param p1, "type"    # Ljava/lang/Integer;

    .line 452
    iget-object v0, p0, Lcom/onesignal/UserStateSynchronizer;->networkHandlerSyncLock:Ljava/lang/Object;

    monitor-enter v0

    .line 453
    :try_start_0
    iget-object v1, p0, Lcom/onesignal/UserStateSynchronizer;->networkHandlerThreads:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 454
    iget-object v1, p0, Lcom/onesignal/UserStateSynchronizer;->networkHandlerThreads:Ljava/util/HashMap;

    new-instance v2, Lcom/onesignal/UserStateSynchronizer$NetworkHandlerThread;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {v2, p0, v3}, Lcom/onesignal/UserStateSynchronizer$NetworkHandlerThread;-><init>(Lcom/onesignal/UserStateSynchronizer;I)V

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    :cond_0
    iget-object v1, p0, Lcom/onesignal/UserStateSynchronizer;->networkHandlerThreads:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onesignal/UserStateSynchronizer$NetworkHandlerThread;

    monitor-exit v0

    return-object v1

    .line 456
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getRegistrationId()Ljava/lang/String;
    .locals 3

    .line 57
    invoke-virtual {p0}, Lcom/onesignal/UserStateSynchronizer;->getToSyncUserState()Lcom/onesignal/UserState;

    move-result-object v0

    iget-object v0, v0, Lcom/onesignal/UserState;->syncValues:Lorg/json/JSONObject;

    const-string v1, "identifier"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method abstract getSubscribed()Z
.end method

.method getSyncAsNewSession()Z
    .locals 2

    .line 492
    invoke-virtual {p0}, Lcom/onesignal/UserStateSynchronizer;->getUserStateForModification()Lcom/onesignal/UserState;

    move-result-object v0

    iget-object v0, v0, Lcom/onesignal/UserState;->dependValues:Lorg/json/JSONObject;

    const-string v1, "session"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method abstract getTags(Z)Lcom/onesignal/UserStateSynchronizer$GetTagsResult;
.end method

.method protected getToSyncUserState()Lcom/onesignal/UserState;
    .locals 3

    .line 165
    iget-object v0, p0, Lcom/onesignal/UserStateSynchronizer;->syncLock:Ljava/lang/Object;

    monitor-enter v0

    .line 166
    :try_start_0
    iget-object v1, p0, Lcom/onesignal/UserStateSynchronizer;->toSyncUserState:Lcom/onesignal/UserState;

    if-nez v1, :cond_0

    .line 167
    const-string v1, "TOSYNC_STATE"

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/onesignal/UserStateSynchronizer;->newUserState(Ljava/lang/String;Z)Lcom/onesignal/UserState;

    move-result-object v1

    iput-object v1, p0, Lcom/onesignal/UserStateSynchronizer;->toSyncUserState:Lcom/onesignal/UserState;

    .line 168
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    iget-object v0, p0, Lcom/onesignal/UserStateSynchronizer;->toSyncUserState:Lcom/onesignal/UserState;

    return-object v0

    .line 168
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method protected getUserStateForModification()Lcom/onesignal/UserState;
    .locals 2

    .line 463
    iget-object v0, p0, Lcom/onesignal/UserStateSynchronizer;->toSyncUserState:Lcom/onesignal/UserState;

    if-nez v0, :cond_0

    .line 464
    invoke-virtual {p0}, Lcom/onesignal/UserStateSynchronizer;->getCurrentUserState()Lcom/onesignal/UserState;

    move-result-object v0

    const-string v1, "TOSYNC_STATE"

    invoke-virtual {v0, v1}, Lcom/onesignal/UserState;->deepClone(Ljava/lang/String;)Lcom/onesignal/UserState;

    move-result-object v0

    iput-object v0, p0, Lcom/onesignal/UserStateSynchronizer;->toSyncUserState:Lcom/onesignal/UserState;

    .line 466
    :cond_0
    invoke-virtual {p0}, Lcom/onesignal/UserStateSynchronizer;->scheduleSyncToServer()V

    .line 468
    iget-object v0, p0, Lcom/onesignal/UserStateSynchronizer;->toSyncUserState:Lcom/onesignal/UserState;

    return-object v0
.end method

.method public abstract getUserSubscribePreference()Z
.end method

.method hasQueuedHandlers()Z
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/onesignal/UserStateSynchronizer;->externalUserIdUpdateHandlers:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method initUserState()V
    .locals 3

    .line 174
    iget-object v0, p0, Lcom/onesignal/UserStateSynchronizer;->syncLock:Ljava/lang/Object;

    monitor-enter v0

    .line 175
    :try_start_0
    iget-object v1, p0, Lcom/onesignal/UserStateSynchronizer;->currentUserState:Lcom/onesignal/UserState;

    if-nez v1, :cond_0

    .line 176
    const-string v1, "CURRENT_STATE"

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/onesignal/UserStateSynchronizer;->newUserState(Ljava/lang/String;Z)Lcom/onesignal/UserState;

    move-result-object v1

    iput-object v1, p0, Lcom/onesignal/UserStateSynchronizer;->currentUserState:Lcom/onesignal/UserState;

    .line 177
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    invoke-virtual {p0}, Lcom/onesignal/UserStateSynchronizer;->getToSyncUserState()Lcom/onesignal/UserState;

    .line 180
    return-void

    .line 177
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method abstract logoutEmail()V
.end method

.method protected abstract newUserState(Ljava/lang/String;Z)Lcom/onesignal/UserState;
.end method

.method protected abstract onSuccessfulSync(Lorg/json/JSONObject;)V
.end method

.method persist()Z
    .locals 5

    .line 190
    iget-object v0, p0, Lcom/onesignal/UserStateSynchronizer;->toSyncUserState:Lcom/onesignal/UserState;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 191
    iget-object v0, p0, Lcom/onesignal/UserStateSynchronizer;->syncLock:Ljava/lang/Object;

    monitor-enter v0

    .line 192
    :try_start_0
    iget-object v2, p0, Lcom/onesignal/UserStateSynchronizer;->currentUserState:Lcom/onesignal/UserState;

    iget-object v3, p0, Lcom/onesignal/UserStateSynchronizer;->toSyncUserState:Lcom/onesignal/UserState;

    invoke-direct {p0}, Lcom/onesignal/UserStateSynchronizer;->isSessionCall()Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/onesignal/UserState;->generateJsonDiff(Lcom/onesignal/UserState;Z)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 193
    .local v1, "unSynced":Z
    :cond_0
    iget-object v2, p0, Lcom/onesignal/UserStateSynchronizer;->toSyncUserState:Lcom/onesignal/UserState;

    invoke-virtual {v2}, Lcom/onesignal/UserState;->persistState()V

    .line 194
    monitor-exit v0

    return v1

    .line 195
    .end local v1    # "unSynced":Z
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 197
    :cond_1
    return v1
.end method

.method readyToUpdate(Z)V
    .locals 1
    .param p1, "canMakeUpdates"    # Z

    .line 541
    iget-boolean v0, p0, Lcom/onesignal/UserStateSynchronizer;->canMakeUpdates:Z

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 542
    .local v0, "changed":Z
    :goto_0
    iput-boolean p1, p0, Lcom/onesignal/UserStateSynchronizer;->canMakeUpdates:Z

    .line 543
    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 544
    invoke-virtual {p0}, Lcom/onesignal/UserStateSynchronizer;->scheduleSyncToServer()V

    .line 545
    :cond_1
    return-void
.end method

.method resetCurrentState()V
    .locals 2

    .line 524
    iget-object v0, p0, Lcom/onesignal/UserStateSynchronizer;->currentUserState:Lcom/onesignal/UserState;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iput-object v1, v0, Lcom/onesignal/UserState;->syncValues:Lorg/json/JSONObject;

    .line 525
    iget-object v0, p0, Lcom/onesignal/UserStateSynchronizer;->currentUserState:Lcom/onesignal/UserState;

    invoke-virtual {v0}, Lcom/onesignal/UserState;->persistState()V

    .line 526
    return-void
.end method

.method protected abstract scheduleSyncToServer()V
.end method

.method sendTags(Lorg/json/JSONObject;Lcom/onesignal/OneSignal$ChangeTagsUpdateHandler;)V
    .locals 2
    .param p1, "tags"    # Lorg/json/JSONObject;
    .param p2, "handler"    # Lcom/onesignal/OneSignal$ChangeTagsUpdateHandler;

    .line 496
    if-eqz p2, :cond_0

    .line 497
    iget-object v0, p0, Lcom/onesignal/UserStateSynchronizer;->sendTagsHandlers:Ljava/util/Queue;

    invoke-interface {v0, p2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 498
    :cond_0
    invoke-virtual {p0}, Lcom/onesignal/UserStateSynchronizer;->getUserStateForModification()Lcom/onesignal/UserState;

    move-result-object v0

    iget-object v0, v0, Lcom/onesignal/UserState;->syncValues:Lorg/json/JSONObject;

    .line 499
    .local v0, "userStateTags":Lorg/json/JSONObject;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v0, v1}, Lcom/onesignal/UserStateSynchronizer;->generateJsonDiff(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/util/Set;)Lorg/json/JSONObject;

    .line 500
    return-void
.end method

.method setExternalUserId(Ljava/lang/String;Lcom/onesignal/OneSignal$OSInternalExternalUserIdUpdateCompletionHandler;)V
    .locals 2
    .param p1, "externalId"    # Ljava/lang/String;
    .param p2, "handler"    # Lcom/onesignal/OneSignal$OSInternalExternalUserIdUpdateCompletionHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 508
    if-eqz p2, :cond_0

    .line 509
    iget-object v0, p0, Lcom/onesignal/UserStateSynchronizer;->externalUserIdUpdateHandlers:Ljava/util/Queue;

    invoke-interface {v0, p2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 510
    :cond_0
    invoke-virtual {p0}, Lcom/onesignal/UserStateSynchronizer;->getUserStateForModification()Lcom/onesignal/UserState;

    move-result-object v0

    iget-object v0, v0, Lcom/onesignal/UserState;->syncValues:Lorg/json/JSONObject;

    const-string v1, "external_user_id"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 511
    return-void
.end method

.method setNewSession()V
    .locals 4

    .line 482
    :try_start_0
    iget-object v0, p0, Lcom/onesignal/UserStateSynchronizer;->syncLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 483
    :try_start_1
    invoke-virtual {p0}, Lcom/onesignal/UserStateSynchronizer;->getUserStateForModification()Lcom/onesignal/UserState;

    move-result-object v1

    iget-object v1, v1, Lcom/onesignal/UserState;->dependValues:Lorg/json/JSONObject;

    const-string v2, "session"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 484
    invoke-virtual {p0}, Lcom/onesignal/UserStateSynchronizer;->getUserStateForModification()Lcom/onesignal/UserState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onesignal/UserState;->persistState()V

    .line 485
    monitor-exit v0

    .line 488
    goto :goto_0

    .line 485
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 486
    :catch_0
    move-exception v0

    .line 487
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 489
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_0
    return-void
.end method

.method public abstract setPermission(Z)V
.end method

.method abstract setSubscription(Z)V
.end method

.method syncHashedEmail(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "emailFields"    # Lorg/json/JSONObject;

    .line 503
    invoke-virtual {p0}, Lcom/onesignal/UserStateSynchronizer;->getUserStateForModification()Lcom/onesignal/UserState;

    move-result-object v0

    iget-object v0, v0, Lcom/onesignal/UserState;->syncValues:Lorg/json/JSONObject;

    .line 504
    .local v0, "syncValues":Lorg/json/JSONObject;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v0, v1}, Lcom/onesignal/UserStateSynchronizer;->generateJsonDiff(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/util/Set;)Lorg/json/JSONObject;

    .line 505
    return-void
.end method

.method syncUserState(Z)V
    .locals 2
    .param p1, "fromSyncService"    # Z

    .line 213
    iget-object v0, p0, Lcom/onesignal/UserStateSynchronizer;->runningSyncUserState:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 214
    invoke-direct {p0, p1}, Lcom/onesignal/UserStateSynchronizer;->internalSyncUserState(Z)V

    .line 215
    iget-object v0, p0, Lcom/onesignal/UserStateSynchronizer;->runningSyncUserState:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 216
    return-void
.end method

.method updateDeviceInfo(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "deviceInfo"    # Lorg/json/JSONObject;

    .line 474
    invoke-virtual {p0}, Lcom/onesignal/UserStateSynchronizer;->getUserStateForModification()Lcom/onesignal/UserState;

    move-result-object v0

    iget-object v0, v0, Lcom/onesignal/UserState;->syncValues:Lorg/json/JSONObject;

    .line 475
    .local v0, "toSync":Lorg/json/JSONObject;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v0, v1}, Lcom/onesignal/UserStateSynchronizer;->generateJsonDiff(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/util/Set;)Lorg/json/JSONObject;

    .line 476
    return-void
.end method

.method abstract updateIdDependents(Ljava/lang/String;)V
.end method

.method updateLocation(Lcom/onesignal/LocationController$LocationPoint;)V
    .locals 1
    .param p1, "point"    # Lcom/onesignal/LocationController$LocationPoint;

    .line 532
    invoke-virtual {p0}, Lcom/onesignal/UserStateSynchronizer;->getUserStateForModification()Lcom/onesignal/UserState;

    move-result-object v0

    .line 533
    .local v0, "userState":Lcom/onesignal/UserState;
    invoke-virtual {v0, p1}, Lcom/onesignal/UserState;->setLocation(Lcom/onesignal/LocationController$LocationPoint;)V

    .line 534
    return-void
.end method

.method abstract updateState(Lorg/json/JSONObject;)V
.end method
