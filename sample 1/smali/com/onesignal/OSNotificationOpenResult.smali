.class public Lcom/onesignal/OSNotificationOpenResult;
.super Ljava/lang/Object;
.source "OSNotificationOpenResult.java"


# instance fields
.field public action:Lcom/onesignal/OSNotificationAction;

.field public notification:Lcom/onesignal/OSNotification;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public stringify()Ljava/lang/String;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 49
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 51
    .local v0, "mainObj":Lorg/json/JSONObject;
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 52
    .local v1, "ac":Lorg/json/JSONObject;
    const-string v2, "actionID"

    iget-object v3, p0, Lcom/onesignal/OSNotificationOpenResult;->action:Lcom/onesignal/OSNotificationAction;

    iget-object v3, v3, Lcom/onesignal/OSNotificationAction;->actionID:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 53
    const-string v2, "type"

    iget-object v3, p0, Lcom/onesignal/OSNotificationOpenResult;->action:Lcom/onesignal/OSNotificationAction;

    iget-object v3, v3, Lcom/onesignal/OSNotificationAction;->type:Lcom/onesignal/OSNotificationAction$ActionType;

    invoke-virtual {v3}, Lcom/onesignal/OSNotificationAction$ActionType;->ordinal()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 55
    const-string v2, "action"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 57
    new-instance v2, Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/onesignal/OSNotificationOpenResult;->notification:Lcom/onesignal/OSNotification;

    invoke-virtual {v3}, Lcom/onesignal/OSNotification;->stringify()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 58
    .local v2, "notifObject":Lorg/json/JSONObject;
    const-string v3, "notification"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    nop

    .end local v1    # "ac":Lorg/json/JSONObject;
    .end local v2    # "notifObject":Lorg/json/JSONObject;
    goto :goto_0

    :catch_0
    move-exception v1

    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 62
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toJSONObject()Lorg/json/JSONObject;
    .locals 4

    .line 66
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 68
    .local v0, "mainObj":Lorg/json/JSONObject;
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 69
    .local v1, "jsonObjAction":Lorg/json/JSONObject;
    const-string v2, "actionID"

    iget-object v3, p0, Lcom/onesignal/OSNotificationOpenResult;->action:Lcom/onesignal/OSNotificationAction;

    iget-object v3, v3, Lcom/onesignal/OSNotificationAction;->actionID:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 70
    const-string v2, "type"

    iget-object v3, p0, Lcom/onesignal/OSNotificationOpenResult;->action:Lcom/onesignal/OSNotificationAction;

    iget-object v3, v3, Lcom/onesignal/OSNotificationAction;->type:Lcom/onesignal/OSNotificationAction$ActionType;

    invoke-virtual {v3}, Lcom/onesignal/OSNotificationAction$ActionType;->ordinal()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 72
    const-string v2, "action"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 73
    const-string v2, "notification"

    iget-object v3, p0, Lcom/onesignal/OSNotificationOpenResult;->notification:Lcom/onesignal/OSNotification;

    invoke-virtual {v3}, Lcom/onesignal/OSNotification;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    nop

    .end local v1    # "jsonObjAction":Lorg/json/JSONObject;
    goto :goto_0

    .line 75
    :catch_0
    move-exception v1

    .line 76
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 79
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_0
    return-object v0
.end method
