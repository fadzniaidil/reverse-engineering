.class Lcom/onesignal/OSInAppMessageDummyController;
.super Lcom/onesignal/OSInAppMessageController;
.source "OSInAppMessageDummyController.java"


# direct methods
.method constructor <init>(Lcom/onesignal/OneSignalDbHelper;)V
    .locals 0
    .param p1, "dbHelper"    # Lcom/onesignal/OneSignalDbHelper;

    .line 21
    invoke-direct {p0, p1}, Lcom/onesignal/OSInAppMessageController;-><init>(Lcom/onesignal/OneSignalDbHelper;)V

    .line 22
    return-void
.end method


# virtual methods
.method addTriggers(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 57
    .local p1, "newTriggers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    return-void
.end method

.method displayPreviewMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "previewUUID"    # Ljava/lang/String;

    .line 51
    return-void
.end method

.method getCurrentDisplayedInAppMessage()Lcom/onesignal/OSInAppMessage;
    .locals 1

    .line 45
    const/4 v0, 0x0

    return-object v0
.end method

.method getTriggerValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 67
    const/4 v0, 0x0

    return-object v0
.end method

.method public initRedisplayData(Lcom/onesignal/OneSignalDbHelper;)V
    .locals 0
    .param p1, "dbHelper"    # Lcom/onesignal/OneSignalDbHelper;

    .line 26
    return-void
.end method

.method initWithCachedInAppMessages()V
    .locals 0

    .line 29
    return-void
.end method

.method isInAppMessageShowing()Z
    .locals 1

    .line 41
    const/4 v0, 0x0

    return v0
.end method

.method public messageTriggerConditionChanged()V
    .locals 0

    .line 54
    return-void
.end method

.method public messageWasDismissed(Lcom/onesignal/OSInAppMessage;)V
    .locals 0
    .param p1, "message"    # Lcom/onesignal/OSInAppMessage;

    .line 48
    return-void
.end method

.method onMessageActionOccurredOnMessage(Lcom/onesignal/OSInAppMessage;Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "message"    # Lcom/onesignal/OSInAppMessage;
    .param p2, "actionJson"    # Lorg/json/JSONObject;

    .line 35
    return-void
.end method

.method onMessageActionOccurredOnPreview(Lcom/onesignal/OSInAppMessage;Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "message"    # Lcom/onesignal/OSInAppMessage;
    .param p2, "actionJson"    # Lorg/json/JSONObject;

    .line 38
    return-void
.end method

.method receivedInAppMessageJson(Lorg/json/JSONArray;)V
    .locals 0
    .param p1, "json"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 32
    return-void
.end method

.method removeTriggersForKeys(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 60
    .local p1, "keys":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    return-void
.end method

.method setInAppMessagingEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 63
    return-void
.end method
