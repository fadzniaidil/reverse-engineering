.class Lcom/onesignal/UserStateSynchronizer$4;
.super Lcom/onesignal/OneSignalRestClient$ResponseHandler;
.source "UserStateSynchronizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/UserStateSynchronizer;->doPutSync(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/onesignal/UserStateSynchronizer;

.field final synthetic val$dependDiff:Lorg/json/JSONObject;

.field final synthetic val$jsonBody:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/onesignal/UserStateSynchronizer;Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "this$0"    # Lcom/onesignal/UserStateSynchronizer;

    .line 316
    iput-object p1, p0, Lcom/onesignal/UserStateSynchronizer$4;->this$0:Lcom/onesignal/UserStateSynchronizer;

    iput-object p2, p0, Lcom/onesignal/UserStateSynchronizer$4;->val$jsonBody:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/onesignal/UserStateSynchronizer$4;->val$dependDiff:Lorg/json/JSONObject;

    invoke-direct {p0}, Lcom/onesignal/OneSignalRestClient$ResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method onFailure(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "statusCode"    # I
    .param p2, "response"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    .line 319
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed PUT sync request with status code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " and response: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 321
    iget-object v0, p0, Lcom/onesignal/UserStateSynchronizer$4;->this$0:Lcom/onesignal/UserStateSynchronizer;

    iget-object v0, v0, Lcom/onesignal/UserStateSynchronizer;->syncLock:Ljava/lang/Object;

    monitor-enter v0

    .line 322
    :try_start_0
    iget-object v1, p0, Lcom/onesignal/UserStateSynchronizer$4;->this$0:Lcom/onesignal/UserStateSynchronizer;

    const-string v2, "No user with this id found"

    invoke-static {v1, p1, p2, v2}, Lcom/onesignal/UserStateSynchronizer;->access$200(Lcom/onesignal/UserStateSynchronizer;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 323
    iget-object v1, p0, Lcom/onesignal/UserStateSynchronizer$4;->this$0:Lcom/onesignal/UserStateSynchronizer;

    invoke-static {v1}, Lcom/onesignal/UserStateSynchronizer;->access$400(Lcom/onesignal/UserStateSynchronizer;)V

    goto :goto_0

    .line 325
    :cond_0
    iget-object v1, p0, Lcom/onesignal/UserStateSynchronizer$4;->this$0:Lcom/onesignal/UserStateSynchronizer;

    invoke-static {v1, p1}, Lcom/onesignal/UserStateSynchronizer;->access$500(Lcom/onesignal/UserStateSynchronizer;I)V

    .line 326
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 328
    iget-object v0, p0, Lcom/onesignal/UserStateSynchronizer$4;->val$jsonBody:Lorg/json/JSONObject;

    const-string v1, "tags"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 329
    iget-object v0, p0, Lcom/onesignal/UserStateSynchronizer$4;->this$0:Lcom/onesignal/UserStateSynchronizer;

    new-instance v1, Lcom/onesignal/OneSignal$SendTagsError;

    invoke-direct {v1, p1, p2}, Lcom/onesignal/OneSignal$SendTagsError;-><init>(ILjava/lang/String;)V

    invoke-static {v0, v1}, Lcom/onesignal/UserStateSynchronizer;->access$600(Lcom/onesignal/UserStateSynchronizer;Lcom/onesignal/OneSignal$SendTagsError;)V

    .line 331
    :cond_1
    iget-object v0, p0, Lcom/onesignal/UserStateSynchronizer$4;->val$jsonBody:Lorg/json/JSONObject;

    const-string v1, "external_user_id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 332
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error setting external user id for push with status code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " and message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->onesignalLog(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 333
    iget-object v0, p0, Lcom/onesignal/UserStateSynchronizer$4;->this$0:Lcom/onesignal/UserStateSynchronizer;

    invoke-static {v0}, Lcom/onesignal/UserStateSynchronizer;->access$700(Lcom/onesignal/UserStateSynchronizer;)V

    .line 335
    :cond_2
    return-void

    .line 326
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method onSuccess(Ljava/lang/String;)V
    .locals 4
    .param p1, "response"    # Ljava/lang/String;

    .line 339
    iget-object v0, p0, Lcom/onesignal/UserStateSynchronizer$4;->this$0:Lcom/onesignal/UserStateSynchronizer;

    iget-object v0, v0, Lcom/onesignal/UserStateSynchronizer;->syncLock:Ljava/lang/Object;

    monitor-enter v0

    .line 340
    :try_start_0
    iget-object v1, p0, Lcom/onesignal/UserStateSynchronizer$4;->this$0:Lcom/onesignal/UserStateSynchronizer;

    iget-object v1, v1, Lcom/onesignal/UserStateSynchronizer;->currentUserState:Lcom/onesignal/UserState;

    iget-object v2, p0, Lcom/onesignal/UserStateSynchronizer$4;->val$dependDiff:Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/onesignal/UserStateSynchronizer$4;->val$jsonBody:Lorg/json/JSONObject;

    invoke-virtual {v1, v2, v3}, Lcom/onesignal/UserState;->persistStateAfterSync(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 341
    iget-object v1, p0, Lcom/onesignal/UserStateSynchronizer$4;->this$0:Lcom/onesignal/UserStateSynchronizer;

    iget-object v2, p0, Lcom/onesignal/UserStateSynchronizer$4;->val$jsonBody:Lorg/json/JSONObject;

    invoke-virtual {v1, v2}, Lcom/onesignal/UserStateSynchronizer;->onSuccessfulSync(Lorg/json/JSONObject;)V

    .line 342
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 344
    iget-object v0, p0, Lcom/onesignal/UserStateSynchronizer$4;->val$jsonBody:Lorg/json/JSONObject;

    const-string v1, "tags"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/onesignal/UserStateSynchronizer$4;->this$0:Lcom/onesignal/UserStateSynchronizer;

    invoke-static {v0}, Lcom/onesignal/UserStateSynchronizer;->access$800(Lcom/onesignal/UserStateSynchronizer;)V

    .line 347
    :cond_0
    iget-object v0, p0, Lcom/onesignal/UserStateSynchronizer$4;->val$jsonBody:Lorg/json/JSONObject;

    const-string v1, "external_user_id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 348
    iget-object v0, p0, Lcom/onesignal/UserStateSynchronizer$4;->this$0:Lcom/onesignal/UserStateSynchronizer;

    invoke-static {v0}, Lcom/onesignal/UserStateSynchronizer;->access$900(Lcom/onesignal/UserStateSynchronizer;)V

    .line 349
    :cond_1
    return-void

    .line 342
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
