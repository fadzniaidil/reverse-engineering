.class final Lcom/onesignal/OneSignalStateSynchronizer$1;
.super Ljava/lang/Object;
.source "OneSignalStateSynchronizer.java"

# interfaces
.implements Lcom/onesignal/OneSignal$OSInternalExternalUserIdUpdateCompletionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/OneSignalStateSynchronizer;->setExternalUserId(Ljava/lang/String;Lcom/onesignal/OneSignal$OSExternalUserIdUpdateCompletionHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$completionHandler:Lcom/onesignal/OneSignal$OSExternalUserIdUpdateCompletionHandler;

.field final synthetic val$responses:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lorg/json/JSONObject;Lcom/onesignal/OneSignal$OSExternalUserIdUpdateCompletionHandler;)V
    .locals 0

    .line 205
    iput-object p1, p0, Lcom/onesignal/OneSignalStateSynchronizer$1;->val$responses:Lorg/json/JSONObject;

    iput-object p2, p0, Lcom/onesignal/OneSignalStateSynchronizer$1;->val$completionHandler:Lcom/onesignal/OneSignal$OSExternalUserIdUpdateCompletionHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "channel"    # Ljava/lang/String;
    .param p2, "success"    # Z

    .line 208
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->VERBOSE:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Completed request to update external user id for channel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " and success: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->onesignalLog(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 212
    :try_start_0
    iget-object v0, p0, Lcom/onesignal/OneSignalStateSynchronizer$1;->val$responses:Lorg/json/JSONObject;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "success"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    goto :goto_0

    .line 213
    :catch_0
    move-exception v0

    .line 214
    .local v0, "e":Lorg/json/JSONException;
    sget-object v1, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error while adding the success status of external id for channel: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/onesignal/OneSignal;->onesignalLog(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 215
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 218
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_0
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->access$000()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onesignal/UserStateSynchronizer;

    .line 219
    .local v1, "userStateSynchronizer":Lcom/onesignal/UserStateSynchronizer;
    invoke-virtual {v1}, Lcom/onesignal/UserStateSynchronizer;->hasQueuedHandlers()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 220
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->VERBOSE:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "External user id handlers are still being processed for channel: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/onesignal/UserStateSynchronizer;->getChannelString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " , wait until finished before proceeding"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/onesignal/OneSignal;->onesignalLog(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 221
    return-void

    .line 223
    .end local v1    # "userStateSynchronizer":Lcom/onesignal/UserStateSynchronizer;
    :cond_0
    goto :goto_1

    .line 226
    :cond_1
    new-instance v0, Lcom/onesignal/OneSignalStateSynchronizer$1$1;

    invoke-direct {v0, p0}, Lcom/onesignal/OneSignalStateSynchronizer$1$1;-><init>(Lcom/onesignal/OneSignalStateSynchronizer$1;)V

    invoke-static {v0}, Lcom/onesignal/OSUtils;->runOnMainUIThread(Ljava/lang/Runnable;)V

    .line 233
    return-void
.end method
