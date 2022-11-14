.class Lcom/onesignal/UserStatePushSynchronizer$1;
.super Lcom/onesignal/OneSignalRestClient$ResponseHandler;
.source "UserStatePushSynchronizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/UserStatePushSynchronizer;->getTags(Z)Lcom/onesignal/UserStateSynchronizer$GetTagsResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/onesignal/UserStatePushSynchronizer;


# direct methods
.method constructor <init>(Lcom/onesignal/UserStatePushSynchronizer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/onesignal/UserStatePushSynchronizer;

    .line 39
    iput-object p1, p0, Lcom/onesignal/UserStatePushSynchronizer$1;->this$0:Lcom/onesignal/UserStatePushSynchronizer;

    invoke-direct {p0}, Lcom/onesignal/OneSignalRestClient$ResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method onSuccess(Ljava/lang/String;)V
    .locals 6
    .param p1, "responseStr"    # Ljava/lang/String;

    .line 42
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/onesignal/UserStatePushSynchronizer;->access$002(Z)Z

    .line 47
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 48
    :cond_0
    const-string p1, "{}"

    .line 51
    :cond_1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 52
    .local v0, "lastGetTagsResponse":Lorg/json/JSONObject;
    const-string v1, "tags"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 53
    iget-object v1, p0, Lcom/onesignal/UserStatePushSynchronizer$1;->this$0:Lcom/onesignal/UserStatePushSynchronizer;

    iget-object v1, v1, Lcom/onesignal/UserStatePushSynchronizer;->syncLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    :try_start_1
    iget-object v2, p0, Lcom/onesignal/UserStatePushSynchronizer$1;->this$0:Lcom/onesignal/UserStatePushSynchronizer;

    iget-object v3, v2, Lcom/onesignal/UserStatePushSynchronizer;->currentUserState:Lcom/onesignal/UserState;

    iget-object v3, v3, Lcom/onesignal/UserState;->syncValues:Lorg/json/JSONObject;

    const-string v4, "tags"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    iget-object v4, p0, Lcom/onesignal/UserStatePushSynchronizer$1;->this$0:Lcom/onesignal/UserStatePushSynchronizer;

    .line 55
    invoke-virtual {v4}, Lcom/onesignal/UserStatePushSynchronizer;->getToSyncUserState()Lcom/onesignal/UserState;

    move-result-object v4

    iget-object v4, v4, Lcom/onesignal/UserState;->syncValues:Lorg/json/JSONObject;

    const-string v5, "tags"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 54
    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5, v5}, Lcom/onesignal/UserStatePushSynchronizer;->generateJsonDiff(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/util/Set;)Lorg/json/JSONObject;

    move-result-object v2

    .line 58
    .local v2, "dependDiff":Lorg/json/JSONObject;
    iget-object v3, p0, Lcom/onesignal/UserStatePushSynchronizer$1;->this$0:Lcom/onesignal/UserStatePushSynchronizer;

    iget-object v3, v3, Lcom/onesignal/UserStatePushSynchronizer;->currentUserState:Lcom/onesignal/UserState;

    iget-object v3, v3, Lcom/onesignal/UserState;->syncValues:Lorg/json/JSONObject;

    const-string v4, "tags"

    const-string v5, "tags"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 59
    iget-object v3, p0, Lcom/onesignal/UserStatePushSynchronizer$1;->this$0:Lcom/onesignal/UserStatePushSynchronizer;

    iget-object v3, v3, Lcom/onesignal/UserStatePushSynchronizer;->currentUserState:Lcom/onesignal/UserState;

    invoke-virtual {v3}, Lcom/onesignal/UserState;->persistState()V

    .line 63
    iget-object v3, p0, Lcom/onesignal/UserStatePushSynchronizer$1;->this$0:Lcom/onesignal/UserStatePushSynchronizer;

    invoke-virtual {v3}, Lcom/onesignal/UserStatePushSynchronizer;->getToSyncUserState()Lcom/onesignal/UserState;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Lcom/onesignal/UserState;->mergeTags(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 64
    iget-object v3, p0, Lcom/onesignal/UserStatePushSynchronizer$1;->this$0:Lcom/onesignal/UserStatePushSynchronizer;

    invoke-virtual {v3}, Lcom/onesignal/UserStatePushSynchronizer;->getToSyncUserState()Lcom/onesignal/UserState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onesignal/UserState;->persistState()V

    .line 65
    .end local v2    # "dependDiff":Lorg/json/JSONObject;
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p1    # "responseStr":Ljava/lang/String;
    :try_start_2
    throw v2
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 69
    .end local v0    # "lastGetTagsResponse":Lorg/json/JSONObject;
    .restart local p1    # "responseStr":Ljava/lang/String;
    :cond_2
    :goto_0
    goto :goto_1

    .line 67
    :catch_0
    move-exception v0

    .line 68
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 70
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_1
    return-void
.end method
