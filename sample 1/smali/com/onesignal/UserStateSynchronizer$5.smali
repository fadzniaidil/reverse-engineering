.class Lcom/onesignal/UserStateSynchronizer$5;
.super Lcom/onesignal/OneSignalRestClient$ResponseHandler;
.source "UserStateSynchronizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/UserStateSynchronizer;->doCreateOrNewSession(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/onesignal/UserStateSynchronizer;

.field final synthetic val$dependDiff:Lorg/json/JSONObject;

.field final synthetic val$jsonBody:Lorg/json/JSONObject;

.field final synthetic val$userId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/onesignal/UserStateSynchronizer;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/onesignal/UserStateSynchronizer;

    .line 362
    iput-object p1, p0, Lcom/onesignal/UserStateSynchronizer$5;->this$0:Lcom/onesignal/UserStateSynchronizer;

    iput-object p2, p0, Lcom/onesignal/UserStateSynchronizer$5;->val$dependDiff:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/onesignal/UserStateSynchronizer$5;->val$jsonBody:Lorg/json/JSONObject;

    iput-object p4, p0, Lcom/onesignal/UserStateSynchronizer$5;->val$userId:Ljava/lang/String;

    invoke-direct {p0}, Lcom/onesignal/OneSignalRestClient$ResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method onFailure(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "statusCode"    # I
    .param p2, "response"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    .line 365
    iget-object v0, p0, Lcom/onesignal/UserStateSynchronizer$5;->this$0:Lcom/onesignal/UserStateSynchronizer;

    iget-object v0, v0, Lcom/onesignal/UserStateSynchronizer;->syncLock:Ljava/lang/Object;

    monitor-enter v0

    .line 366
    :try_start_0
    iget-object v1, p0, Lcom/onesignal/UserStateSynchronizer$5;->this$0:Lcom/onesignal/UserStateSynchronizer;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/onesignal/UserStateSynchronizer;->waitingForSessionResponse:Z

    .line 367
    sget-object v1, Lcom/onesignal/OneSignal$LOG_LEVEL;->WARN:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed last request. statusCode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\nresponse: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 369
    iget-object v1, p0, Lcom/onesignal/UserStateSynchronizer$5;->this$0:Lcom/onesignal/UserStateSynchronizer;

    const-string v2, "not a valid device_type"

    invoke-static {v1, p1, p2, v2}, Lcom/onesignal/UserStateSynchronizer;->access$200(Lcom/onesignal/UserStateSynchronizer;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 370
    iget-object v1, p0, Lcom/onesignal/UserStateSynchronizer$5;->this$0:Lcom/onesignal/UserStateSynchronizer;

    invoke-static {v1}, Lcom/onesignal/UserStateSynchronizer;->access$400(Lcom/onesignal/UserStateSynchronizer;)V

    goto :goto_0

    .line 372
    :cond_0
    iget-object v1, p0, Lcom/onesignal/UserStateSynchronizer$5;->this$0:Lcom/onesignal/UserStateSynchronizer;

    invoke-static {v1, p1}, Lcom/onesignal/UserStateSynchronizer;->access$500(Lcom/onesignal/UserStateSynchronizer;I)V

    .line 373
    :goto_0
    monitor-exit v0

    .line 374
    return-void

    .line 373
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method onSuccess(Ljava/lang/String;)V
    .locals 7
    .param p1, "response"    # Ljava/lang/String;

    .line 378
    iget-object v0, p0, Lcom/onesignal/UserStateSynchronizer$5;->this$0:Lcom/onesignal/UserStateSynchronizer;

    iget-object v0, v0, Lcom/onesignal/UserStateSynchronizer;->syncLock:Ljava/lang/Object;

    monitor-enter v0

    .line 379
    :try_start_0
    iget-object v1, p0, Lcom/onesignal/UserStateSynchronizer$5;->this$0:Lcom/onesignal/UserStateSynchronizer;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/onesignal/UserStateSynchronizer;->waitingForSessionResponse:Z

    .line 380
    iget-object v1, p0, Lcom/onesignal/UserStateSynchronizer$5;->this$0:Lcom/onesignal/UserStateSynchronizer;

    iget-object v1, v1, Lcom/onesignal/UserStateSynchronizer;->currentUserState:Lcom/onesignal/UserState;

    iget-object v3, p0, Lcom/onesignal/UserStateSynchronizer$5;->val$dependDiff:Lorg/json/JSONObject;

    iget-object v4, p0, Lcom/onesignal/UserStateSynchronizer$5;->val$jsonBody:Lorg/json/JSONObject;

    invoke-virtual {v1, v3, v4}, Lcom/onesignal/UserState;->persistStateAfterSync(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 383
    :try_start_1
    sget-object v1, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doCreateOrNewSession:response: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/onesignal/OneSignal;->onesignalLog(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 384
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 386
    .local v1, "jsonResponse":Lorg/json/JSONObject;
    const-string v3, "id"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 387
    const-string v3, "id"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 388
    .local v3, "newUserId":Ljava/lang/String;
    iget-object v4, p0, Lcom/onesignal/UserStateSynchronizer$5;->this$0:Lcom/onesignal/UserStateSynchronizer;

    invoke-virtual {v4, v3}, Lcom/onesignal/UserStateSynchronizer;->updateIdDependents(Ljava/lang/String;)V

    .line 389
    sget-object v4, Lcom/onesignal/OneSignal$LOG_LEVEL;->INFO:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Device registered, UserId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 390
    .end local v3    # "newUserId":Ljava/lang/String;
    goto :goto_0

    .line 392
    :cond_0
    sget-object v3, Lcom/onesignal/OneSignal$LOG_LEVEL;->INFO:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "session sent, UserId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/onesignal/UserStateSynchronizer$5;->val$userId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 394
    :goto_0
    iget-object v3, p0, Lcom/onesignal/UserStateSynchronizer$5;->this$0:Lcom/onesignal/UserStateSynchronizer;

    invoke-virtual {v3}, Lcom/onesignal/UserStateSynchronizer;->getUserStateForModification()Lcom/onesignal/UserState;

    move-result-object v3

    iget-object v3, v3, Lcom/onesignal/UserState;->dependValues:Lorg/json/JSONObject;

    const-string v4, "session"

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 395
    iget-object v2, p0, Lcom/onesignal/UserStateSynchronizer$5;->this$0:Lcom/onesignal/UserStateSynchronizer;

    invoke-virtual {v2}, Lcom/onesignal/UserStateSynchronizer;->getUserStateForModification()Lcom/onesignal/UserState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onesignal/UserState;->persistState()V

    .line 398
    const-string v2, "in_app_messages"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 399
    invoke-static {}, Lcom/onesignal/OneSignal;->getInAppMessageController()Lcom/onesignal/OSInAppMessageController;

    move-result-object v2

    const-string v3, "in_app_messages"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/onesignal/OSInAppMessageController;->receivedInAppMessageJson(Lorg/json/JSONArray;)V

    .line 401
    :cond_1
    iget-object v2, p0, Lcom/onesignal/UserStateSynchronizer$5;->this$0:Lcom/onesignal/UserStateSynchronizer;

    iget-object v3, p0, Lcom/onesignal/UserStateSynchronizer$5;->val$jsonBody:Lorg/json/JSONObject;

    invoke-virtual {v2, v3}, Lcom/onesignal/UserStateSynchronizer;->onSuccessfulSync(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 404
    .end local v1    # "jsonResponse":Lorg/json/JSONObject;
    goto :goto_1

    .line 402
    :catch_0
    move-exception v1

    .line 403
    .local v1, "e":Lorg/json/JSONException;
    :try_start_2
    sget-object v2, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v3, "ERROR parsing on_session or create JSON Response."

    invoke-static {v2, v3, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 405
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_1
    monitor-exit v0

    .line 406
    return-void

    .line 405
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
