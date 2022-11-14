.class Lcom/onesignal/UserStatePush;
.super Lcom/onesignal/UserState;
.source "UserStatePush.java"


# direct methods
.method constructor <init>(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "inPersistKey"    # Ljava/lang/String;
    .param p2, "load"    # Z

    .line 8
    invoke-direct {p0, p1, p2}, Lcom/onesignal/UserState;-><init>(Ljava/lang/String;Z)V

    .line 9
    return-void
.end method

.method private getNotificationTypes()I
    .locals 6

    .line 24
    iget-object v0, p0, Lcom/onesignal/UserStatePush;->dependValues:Lorg/json/JSONObject;

    const-string v1, "subscribableStatus"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 25
    .local v0, "subscribableStatus":I
    const/4 v1, -0x2

    if-ge v0, v1, :cond_0

    .line 26
    return v0

    .line 28
    :cond_0
    iget-object v3, p0, Lcom/onesignal/UserStatePush;->dependValues:Lorg/json/JSONObject;

    const-string v4, "androidPermission"

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 29
    .local v3, "androidPermission":Z
    if-nez v3, :cond_1

    .line 30
    const/4 v1, 0x0

    return v1

    .line 32
    :cond_1
    iget-object v4, p0, Lcom/onesignal/UserStatePush;->dependValues:Lorg/json/JSONObject;

    const-string v5, "userSubscribePref"

    invoke-virtual {v4, v5, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 33
    .local v4, "userSubscribePref":Z
    if-nez v4, :cond_2

    .line 34
    return v1

    .line 36
    :cond_2
    return v2
.end method


# virtual methods
.method protected addDependFields()V
    .locals 3

    .line 19
    :try_start_0
    iget-object v0, p0, Lcom/onesignal/UserStatePush;->syncValues:Lorg/json/JSONObject;

    const-string v1, "notification_types"

    invoke-direct {p0}, Lcom/onesignal/UserStatePush;->getNotificationTypes()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 20
    :catch_0
    move-exception v0

    :goto_0
    nop

    .line 21
    return-void
.end method

.method isSubscribed()Z
    .locals 1

    .line 40
    invoke-direct {p0}, Lcom/onesignal/UserStatePush;->getNotificationTypes()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method newInstance(Ljava/lang/String;)Lcom/onesignal/UserState;
    .locals 2
    .param p1, "persistKey"    # Ljava/lang/String;

    .line 13
    new-instance v0, Lcom/onesignal/UserStatePush;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/onesignal/UserStatePush;-><init>(Ljava/lang/String;Z)V

    return-object v0
.end method
