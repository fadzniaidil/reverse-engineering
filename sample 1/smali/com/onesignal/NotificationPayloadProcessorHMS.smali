.class Lcom/onesignal/NotificationPayloadProcessorHMS;
.super Ljava/lang/Object;
.source "NotificationPayloadProcessorHMS.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static covertHMSOpenIntentToJson(Landroid/content/Intent;)Lorg/json/JSONObject;
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;

    .line 35
    invoke-static {p0}, Lcom/onesignal/OSNotificationFormatHelper;->isOneSignalIntent(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 36
    const/4 v0, 0x0

    return-object v0

    .line 38
    :cond_0
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 39
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-static {v0}, Lcom/onesignal/NotificationBundleProcessor;->bundleAsJSONObject(Landroid/os/Bundle;)Lorg/json/JSONObject;

    move-result-object v1

    .line 40
    .local v1, "jsonData":Lorg/json/JSONObject;
    invoke-static {v1}, Lcom/onesignal/NotificationPayloadProcessorHMS;->reformatButtonClickAction(Lorg/json/JSONObject;)V

    .line 42
    return-object v1
.end method

.method static handleHMSNotificationOpenIntent(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "intent"    # Landroid/content/Intent;

    .line 19
    invoke-static {p0}, Lcom/onesignal/OneSignal;->setAppContext(Landroid/content/Context;)V

    .line 20
    if-nez p1, :cond_0

    .line 21
    return-void

    .line 23
    :cond_0
    invoke-static {p1}, Lcom/onesignal/NotificationPayloadProcessorHMS;->covertHMSOpenIntentToJson(Landroid/content/Intent;)Lorg/json/JSONObject;

    move-result-object v0

    .line 24
    .local v0, "jsonData":Lorg/json/JSONObject;
    if-nez v0, :cond_1

    .line 25
    return-void

    .line 27
    :cond_1
    invoke-static {p0, v0}, Lcom/onesignal/NotificationPayloadProcessorHMS;->handleProcessJsonOpenData(Landroid/app/Activity;Lorg/json/JSONObject;)V

    .line 28
    return-void
.end method

.method private static handleProcessJsonOpenData(Landroid/app/Activity;Lorg/json/JSONObject;)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "jsonData"    # Lorg/json/JSONObject;

    .line 65
    invoke-static {p0, p1}, Lcom/onesignal/NotificationOpenedProcessor;->handleIAMPreviewOpen(Landroid/content/Context;Lorg/json/JSONObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    return-void

    .line 68
    :cond_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 70
    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v1, 0x0

    .line 72
    invoke-static {p1}, Lcom/onesignal/OSNotificationFormatHelper;->getOSNotificationIdFromJson(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    .line 68
    invoke-static {p0, v0, v1, v2}, Lcom/onesignal/OneSignal;->handleNotificationOpen(Landroid/content/Context;Lorg/json/JSONArray;ZLjava/lang/String;)V

    .line 74
    return-void
.end method

.method public static processDataMessageReceived(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "data"    # Ljava/lang/String;

    .line 77
    invoke-static {p0}, Lcom/onesignal/OneSignal;->setAppContext(Landroid/content/Context;)V

    .line 78
    if-nez p1, :cond_0

    .line 79
    return-void

    .line 81
    :cond_0
    invoke-static {p1}, Lcom/onesignal/OSUtils;->jsonStringToBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 82
    .local v0, "bundle":Landroid/os/Bundle;
    if-nez v0, :cond_1

    .line 83
    return-void

    .line 85
    :cond_1
    invoke-static {p0, v0}, Lcom/onesignal/NotificationBundleProcessor;->processBundleFromReceiver(Landroid/content/Context;Landroid/os/Bundle;)Lcom/onesignal/NotificationBundleProcessor$ProcessedBundleResult;

    move-result-object v1

    .line 88
    .local v1, "processedResult":Lcom/onesignal/NotificationBundleProcessor$ProcessedBundleResult;
    invoke-virtual {v1}, Lcom/onesignal/NotificationBundleProcessor$ProcessedBundleResult;->processed()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 89
    return-void

    .line 92
    :cond_2
    invoke-static {p0, v0}, Lcom/onesignal/GcmBroadcastReceiver;->startGCMService(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 93
    return-void
.end method

.method private static reformatButtonClickAction(Lorg/json/JSONObject;)V
    .locals 3
    .param p0, "jsonData"    # Lorg/json/JSONObject;

    .line 53
    const-string v0, "actionId"

    :try_start_0
    invoke-static {p0}, Lcom/onesignal/NotificationBundleProcessor;->getCustomJSONObject(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    .line 54
    .local v1, "custom":Lorg/json/JSONObject;
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 55
    .local v2, "actionId":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 56
    return-void

    .line 58
    :cond_0
    invoke-virtual {p0, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    nop

    .end local v1    # "custom":Lorg/json/JSONObject;
    .end local v2    # "actionId":Ljava/lang/String;
    goto :goto_0

    .line 59
    :catch_0
    move-exception v0

    .line 60
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 62
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_0
    return-void
.end method
