.class Lcom/onesignal/NotificationBundleProcessor;
.super Ljava/lang/Object;
.source "NotificationBundleProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onesignal/NotificationBundleProcessor$ProcessedBundleResult;
    }
.end annotation


# static fields
.field static final DEFAULT_ACTION:Ljava/lang/String; = "__DEFAULT__"

.field private static final IAM_PREVIEW_KEY:Ljava/lang/String; = "os_in_app_message_preview_id"

.field public static final PUSH_ADDITIONAL_DATA_KEY:Ljava/lang/String; = "a"

.field public static final PUSH_MINIFIED_BUTTONS_LIST:Ljava/lang/String; = "o"

.field public static final PUSH_MINIFIED_BUTTON_ICON:Ljava/lang/String; = "p"

.field public static final PUSH_MINIFIED_BUTTON_ID:Ljava/lang/String; = "i"

.field public static final PUSH_MINIFIED_BUTTON_TEXT:Ljava/lang/String; = "n"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static OSNotificationPayloadFrom(Lorg/json/JSONObject;)Lcom/onesignal/OSNotificationPayload;
    .locals 7
    .param p0, "currentJsonPayload"    # Lorg/json/JSONObject;

    .line 312
    new-instance v0, Lcom/onesignal/OSNotificationPayload;

    invoke-direct {v0}, Lcom/onesignal/OSNotificationPayload;-><init>()V

    .line 314
    .local v0, "notification":Lcom/onesignal/OSNotificationPayload;
    :try_start_0
    invoke-static {p0}, Lcom/onesignal/NotificationBundleProcessor;->getCustomJSONObject(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    .line 315
    .local v1, "customJson":Lorg/json/JSONObject;
    const-string v2, "i"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/onesignal/OSNotificationPayload;->notificationID:Ljava/lang/String;

    .line 316
    const-string v2, "ti"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/onesignal/OSNotificationPayload;->templateId:Ljava/lang/String;

    .line 317
    const-string v2, "tn"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/onesignal/OSNotificationPayload;->templateName:Ljava/lang/String;

    .line 318
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/onesignal/OSNotificationPayload;->rawPayload:Ljava/lang/String;

    .line 319
    const-string v2, "a"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    iput-object v2, v0, Lcom/onesignal/OSNotificationPayload;->additionalData:Lorg/json/JSONObject;

    .line 320
    const-string v2, "u"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/onesignal/OSNotificationPayload;->launchURL:Ljava/lang/String;

    .line 322
    const-string v2, "alert"

    invoke-virtual {p0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/onesignal/OSNotificationPayload;->body:Ljava/lang/String;

    .line 323
    const-string v2, "title"

    invoke-virtual {p0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/onesignal/OSNotificationPayload;->title:Ljava/lang/String;

    .line 324
    const-string v2, "sicon"

    invoke-virtual {p0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/onesignal/OSNotificationPayload;->smallIcon:Ljava/lang/String;

    .line 325
    const-string v2, "bicon"

    invoke-virtual {p0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/onesignal/OSNotificationPayload;->bigPicture:Ljava/lang/String;

    .line 326
    const-string v2, "licon"

    invoke-virtual {p0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/onesignal/OSNotificationPayload;->largeIcon:Ljava/lang/String;

    .line 327
    const-string v2, "sound"

    invoke-virtual {p0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/onesignal/OSNotificationPayload;->sound:Ljava/lang/String;

    .line 328
    const-string v2, "grp"

    invoke-virtual {p0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/onesignal/OSNotificationPayload;->groupKey:Ljava/lang/String;

    .line 329
    const-string v2, "grp_msg"

    invoke-virtual {p0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/onesignal/OSNotificationPayload;->groupMessage:Ljava/lang/String;

    .line 330
    const-string v2, "bgac"

    invoke-virtual {p0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/onesignal/OSNotificationPayload;->smallIconAccentColor:Ljava/lang/String;

    .line 331
    const-string v2, "ledc"

    invoke-virtual {p0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/onesignal/OSNotificationPayload;->ledColor:Ljava/lang/String;

    .line 332
    const-string v2, "vis"

    invoke-virtual {p0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 333
    .local v2, "visibility":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 334
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v0, Lcom/onesignal/OSNotificationPayload;->lockScreenVisibility:I

    .line 335
    :cond_0
    const-string v4, "from"

    invoke-virtual {p0, v4, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/onesignal/OSNotificationPayload;->fromProjectNumber:Ljava/lang/String;

    .line 336
    const-string v4, "pri"

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v0, Lcom/onesignal/OSNotificationPayload;->priority:I

    .line 337
    const-string v4, "collapse_key"

    invoke-virtual {p0, v4, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 338
    .local v3, "collapseKey":Ljava/lang/String;
    const-string v4, "do_not_collapse"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 339
    iput-object v3, v0, Lcom/onesignal/OSNotificationPayload;->collapseId:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 342
    :cond_1
    :try_start_1
    invoke-static {v0}, Lcom/onesignal/NotificationBundleProcessor;->setActionButtons(Lcom/onesignal/OSNotificationPayload;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 345
    goto :goto_0

    .line 343
    :catchall_0
    move-exception v4

    .line 344
    .local v4, "t":Ljava/lang/Throwable;
    :try_start_2
    sget-object v5, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v6, "Error assigning OSNotificationPayload.actionButtons values!"

    invoke-static {v5, v6, v4}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 348
    .end local v4    # "t":Ljava/lang/Throwable;
    :goto_0
    :try_start_3
    invoke-static {v0, p0}, Lcom/onesignal/NotificationBundleProcessor;->setBackgroundImageLayout(Lcom/onesignal/OSNotificationPayload;Lorg/json/JSONObject;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 351
    goto :goto_1

    .line 349
    :catchall_1
    move-exception v4

    .line 350
    .restart local v4    # "t":Ljava/lang/Throwable;
    :try_start_4
    sget-object v5, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v6, "Error assigning OSNotificationPayload.backgroundImageLayout values!"

    invoke-static {v5, v6, v4}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    .line 354
    .end local v1    # "customJson":Lorg/json/JSONObject;
    .end local v2    # "visibility":Ljava/lang/String;
    .end local v3    # "collapseKey":Ljava/lang/String;
    .end local v4    # "t":Ljava/lang/Throwable;
    :goto_1
    goto :goto_2

    .line 352
    :catch_0
    move-exception v1

    .line 353
    .local v1, "t":Lorg/json/JSONException;
    sget-object v2, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v3, "Error assigning OSNotificationPayload values!"

    invoke-static {v2, v3, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 356
    .end local v1    # "t":Lorg/json/JSONException;
    :goto_2
    return-object v0
.end method

.method static ProcessFromGCMIntentService(Landroid/content/Context;Lcom/onesignal/BundleCompat;Lcom/onesignal/NotificationExtenderService$OverrideSettings;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bundle"    # Lcom/onesignal/BundleCompat;
    .param p2, "overrideSettings"    # Lcom/onesignal/NotificationExtenderService$OverrideSettings;

    .line 72
    const-string v0, "android_notif_id"

    invoke-static {p0}, Lcom/onesignal/OneSignal;->setAppContext(Landroid/content/Context;)V

    .line 74
    :try_start_0
    const-string v1, "json_payload"

    invoke-interface {p1, v1}, Lcom/onesignal/BundleCompat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 75
    .local v1, "jsonStrPayload":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 76
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "json_payload key is nonexistent from mBundle passed to ProcessFromGCMIntentService: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 77
    return-void

    .line 80
    :cond_0
    new-instance v2, Lcom/onesignal/NotificationGenerationJob;

    invoke-direct {v2, p0}, Lcom/onesignal/NotificationGenerationJob;-><init>(Landroid/content/Context;)V

    .line 81
    .local v2, "notifJob":Lcom/onesignal/NotificationGenerationJob;
    const-string v3, "restoring"

    const/4 v4, 0x0

    invoke-interface {p1, v3, v4}, Lcom/onesignal/BundleCompat;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v2, Lcom/onesignal/NotificationGenerationJob;->restoring:Z

    .line 82
    const-string v3, "timestamp"

    invoke-interface {p1, v3}, Lcom/onesignal/BundleCompat;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v2, Lcom/onesignal/NotificationGenerationJob;->shownTimeStamp:Ljava/lang/Long;

    .line 83
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v3, v2, Lcom/onesignal/NotificationGenerationJob;->jsonPayload:Lorg/json/JSONObject;

    .line 84
    iget-object v3, v2, Lcom/onesignal/NotificationGenerationJob;->jsonPayload:Lorg/json/JSONObject;

    invoke-static {v3}, Lcom/onesignal/NotificationBundleProcessor;->inAppPreviewPushUUID(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    const/4 v4, 0x1

    :cond_1
    iput-boolean v4, v2, Lcom/onesignal/NotificationGenerationJob;->isInAppPreviewPush:Z

    .line 86
    iget-boolean v3, v2, Lcom/onesignal/NotificationGenerationJob;->restoring:Z

    if-nez v3, :cond_2

    iget-boolean v3, v2, Lcom/onesignal/NotificationGenerationJob;->isInAppPreviewPush:Z

    if-nez v3, :cond_2

    iget-object v3, v2, Lcom/onesignal/NotificationGenerationJob;->jsonPayload:Lorg/json/JSONObject;

    .line 88
    invoke-static {p0, v3}, Lcom/onesignal/OneSignal;->notValidOrDuplicated(Landroid/content/Context;Lorg/json/JSONObject;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 89
    return-void

    .line 91
    :cond_2
    invoke-interface {p1, v0}, Lcom/onesignal/BundleCompat;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 92
    if-nez p2, :cond_3

    .line 93
    new-instance v3, Lcom/onesignal/NotificationExtenderService$OverrideSettings;

    invoke-direct {v3}, Lcom/onesignal/NotificationExtenderService$OverrideSettings;-><init>()V

    move-object p2, v3

    .line 94
    :cond_3
    invoke-interface {p1, v0}, Lcom/onesignal/BundleCompat;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p2, Lcom/onesignal/NotificationExtenderService$OverrideSettings;->androidNotificationId:Ljava/lang/Integer;

    .line 97
    :cond_4
    iput-object p2, v2, Lcom/onesignal/NotificationGenerationJob;->overrideSettings:Lcom/onesignal/NotificationExtenderService$OverrideSettings;

    .line 98
    invoke-static {v2}, Lcom/onesignal/NotificationBundleProcessor;->ProcessJobForDisplay(Lcom/onesignal/NotificationGenerationJob;)I

    .line 102
    iget-boolean v0, v2, Lcom/onesignal/NotificationGenerationJob;->restoring:Z

    if-eqz v0, :cond_5

    .line 103
    const/16 v0, 0x64

    invoke-static {v0}, Lcom/onesignal/OSUtils;->sleep(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    .end local v1    # "jsonStrPayload":Ljava/lang/String;
    .end local v2    # "notifJob":Lcom/onesignal/NotificationGenerationJob;
    :cond_5
    goto :goto_0

    .line 104
    :catch_0
    move-exception v0

    .line 105
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 107
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_0
    return-void
.end method

.method static ProcessJobForDisplay(Lcom/onesignal/NotificationGenerationJob;)I
    .locals 5
    .param p0, "notifJob"    # Lcom/onesignal/NotificationGenerationJob;

    .line 110
    invoke-static {}, Lcom/onesignal/OneSignal;->getInAppAlertNotificationEnabled()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/onesignal/OneSignal;->isAppActive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/onesignal/NotificationGenerationJob;->showAsAlert:Z

    .line 111
    invoke-static {p0}, Lcom/onesignal/NotificationBundleProcessor;->processCollapseKey(Lcom/onesignal/NotificationGenerationJob;)V

    .line 113
    invoke-static {p0}, Lcom/onesignal/NotificationBundleProcessor;->shouldDisplayNotif(Lcom/onesignal/NotificationGenerationJob;)Z

    move-result v0

    .line 114
    .local v0, "doDisplay":Z
    if-eqz v0, :cond_1

    .line 115
    invoke-static {p0}, Lcom/onesignal/GenerateNotification;->fromJsonPayload(Lcom/onesignal/NotificationGenerationJob;)V

    .line 117
    :cond_1
    iget-boolean v3, p0, Lcom/onesignal/NotificationGenerationJob;->restoring:Z

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/onesignal/NotificationGenerationJob;->isInAppPreviewPush:Z

    if-nez v3, :cond_2

    .line 118
    invoke-static {p0, v2}, Lcom/onesignal/NotificationBundleProcessor;->processNotification(Lcom/onesignal/NotificationGenerationJob;Z)V

    .line 120
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/onesignal/NotificationGenerationJob;->jsonPayload:Lorg/json/JSONObject;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 121
    .local v2, "jsonObject":Lorg/json/JSONObject;
    const-string v3, "androidNotificationId"

    invoke-virtual {p0}, Lcom/onesignal/NotificationGenerationJob;->getAndroidId()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 122
    invoke-static {v2}, Lcom/onesignal/NotificationBundleProcessor;->newJsonArray(Lorg/json/JSONObject;)Lorg/json/JSONArray;

    move-result-object v3

    iget-boolean v4, p0, Lcom/onesignal/NotificationGenerationJob;->showAsAlert:Z

    invoke-static {v3, v1, v4}, Lcom/onesignal/OneSignal;->handleNotificationReceived(Lorg/json/JSONArray;ZZ)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    goto :goto_1

    .line 123
    :catch_0
    move-exception v1

    .line 124
    .local v1, "t":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 128
    .end local v1    # "t":Lorg/json/JSONException;
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/onesignal/NotificationGenerationJob;->getAndroidId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method static synthetic access$000(Landroid/os/Bundle;)Lorg/json/JSONArray;
    .locals 1
    .param p0, "x0"    # Landroid/os/Bundle;

    .line 58
    invoke-static {p0}, Lcom/onesignal/NotificationBundleProcessor;->bundleAsJsonArray(Landroid/os/Bundle;)Lorg/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method static bundleAsJSONObject(Landroid/os/Bundle;)Lorg/json/JSONObject;
    .locals 8
    .param p0, "bundle"    # Landroid/os/Bundle;

    .line 247
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 248
    .local v0, "json":Lorg/json/JSONObject;
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 250
    .local v1, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 252
    .local v3, "key":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    goto :goto_1

    .line 253
    :catch_0
    move-exception v4

    .line 254
    .local v4, "e":Lorg/json/JSONException;
    sget-object v5, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "bundleAsJSONObject error for key: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 256
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "e":Lorg/json/JSONException;
    :goto_1
    goto :goto_0

    .line 258
    :cond_0
    return-object v0
.end method

.method private static bundleAsJsonArray(Landroid/os/Bundle;)Lorg/json/JSONArray;
    .locals 2
    .param p0, "bundle"    # Landroid/os/Bundle;

    .line 143
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 144
    .local v0, "jsonArray":Lorg/json/JSONArray;
    invoke-static {p0}, Lcom/onesignal/NotificationBundleProcessor;->bundleAsJSONObject(Landroid/os/Bundle;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 145
    return-object v0
.end method

.method static getCustomJSONObject(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 2
    .param p0, "jsonObject"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 522
    new-instance v0, Lorg/json/JSONObject;

    const-string v1, "custom"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static hasRemoteResource(Landroid/os/Bundle;)Z
    .locals 2
    .param p0, "bundle"    # Landroid/os/Bundle;

    .line 526
    const-string v0, "licon"

    invoke-static {p0, v0}, Lcom/onesignal/NotificationBundleProcessor;->isBuildKeyRemote(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 527
    const-string v0, "bicon"

    invoke-static {p0, v0}, Lcom/onesignal/NotificationBundleProcessor;->isBuildKeyRemote(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 528
    const-string v1, "bg_img"

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 526
    :goto_1
    return v0
.end method

.method static inAppPreviewPushUUID(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 5
    .param p0, "payload"    # Lorg/json/JSONObject;

    .line 467
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/onesignal/NotificationBundleProcessor;->getCustomJSONObject(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 470
    .local v1, "osCustom":Lorg/json/JSONObject;
    nop

    .line 472
    const-string v2, "a"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 473
    return-object v0

    .line 475
    :cond_0
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 476
    .local v2, "additionalData":Lorg/json/JSONObject;
    const-string v3, "os_in_app_message_preview_id"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 477
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 478
    :cond_1
    return-object v0

    .line 468
    .end local v1    # "osCustom":Lorg/json/JSONObject;
    .end local v2    # "additionalData":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 469
    .local v1, "e":Lorg/json/JSONException;
    return-object v0
.end method

.method private static isBuildKeyRemote(Landroid/os/Bundle;Ljava/lang/String;)Z
    .locals 2
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "key"    # Ljava/lang/String;

    .line 532
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 533
    .local v0, "value":Ljava/lang/String;
    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method static markRestoredNotificationAsDismissed(Lcom/onesignal/NotificationGenerationJob;)V
    .locals 5
    .param p0, "notifiJob"    # Lcom/onesignal/NotificationGenerationJob;

    .line 232
    invoke-virtual {p0}, Lcom/onesignal/NotificationGenerationJob;->getAndroidIdWithoutCreate()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 233
    return-void

    .line 235
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android_notification_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/onesignal/NotificationGenerationJob;->getAndroidIdWithoutCreate()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 237
    .local v0, "whereStr":Ljava/lang/String;
    iget-object v1, p0, Lcom/onesignal/NotificationGenerationJob;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/onesignal/OneSignalDbHelper;->getInstance(Landroid/content/Context;)Lcom/onesignal/OneSignalDbHelper;

    move-result-object v1

    .line 239
    .local v1, "dbHelper":Lcom/onesignal/OneSignalDbHelper;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 240
    .local v2, "values":Landroid/content/ContentValues;
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "dismissed"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 242
    const/4 v3, 0x0

    const-string v4, "notification"

    invoke-virtual {v1, v4, v2, v0, v3}, Lcom/onesignal/OneSignalDbHelper;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 243
    iget-object v3, p0, Lcom/onesignal/NotificationGenerationJob;->context:Landroid/content/Context;

    invoke-static {v1, v3}, Lcom/onesignal/BadgeCountUpdater;->update(Lcom/onesignal/OneSignalDb;Landroid/content/Context;)V

    .line 244
    return-void
.end method

.method static newJsonArray(Lorg/json/JSONObject;)Lorg/json/JSONArray;
    .locals 1
    .param p0, "jsonObject"    # Lorg/json/JSONObject;

    .line 518
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v0, p0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method static processBundleFromReceiver(Landroid/content/Context;Landroid/os/Bundle;)Lcom/onesignal/NotificationBundleProcessor$ProcessedBundleResult;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 416
    new-instance v0, Lcom/onesignal/NotificationBundleProcessor$ProcessedBundleResult;

    invoke-direct {v0}, Lcom/onesignal/NotificationBundleProcessor$ProcessedBundleResult;-><init>()V

    .line 419
    .local v0, "result":Lcom/onesignal/NotificationBundleProcessor$ProcessedBundleResult;
    invoke-static {p1}, Lcom/onesignal/OSNotificationFormatHelper;->isOneSignalBundle(Landroid/os/Bundle;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 420
    return-object v0

    .line 421
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/onesignal/NotificationBundleProcessor$ProcessedBundleResult;->isOneSignalPayload:Z

    .line 423
    invoke-static {p1}, Lcom/onesignal/NotificationBundleProcessor;->unMinifyButtonsFromBundle(Landroid/os/Bundle;)V

    .line 425
    invoke-static {p1}, Lcom/onesignal/NotificationBundleProcessor;->bundleAsJSONObject(Landroid/os/Bundle;)Lorg/json/JSONObject;

    move-result-object v2

    .line 428
    .local v2, "pushPayloadJson":Lorg/json/JSONObject;
    invoke-static {v2}, Lcom/onesignal/NotificationBundleProcessor;->inAppPreviewPushUUID(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v3

    .line 429
    .local v3, "previewUUID":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 431
    invoke-static {}, Lcom/onesignal/OneSignal;->isAppActive()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 432
    iput-boolean v1, v0, Lcom/onesignal/NotificationBundleProcessor$ProcessedBundleResult;->inAppPreviewShown:Z

    .line 433
    invoke-static {}, Lcom/onesignal/OneSignal;->getInAppMessageController()Lcom/onesignal/OSInAppMessageController;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/onesignal/OSInAppMessageController;->displayPreviewMessage(Ljava/lang/String;)V

    .line 436
    :cond_1
    return-object v0

    .line 439
    :cond_2
    invoke-static {p0, p1, v0}, Lcom/onesignal/NotificationBundleProcessor;->startExtenderService(Landroid/content/Context;Landroid/os/Bundle;Lcom/onesignal/NotificationBundleProcessor$ProcessedBundleResult;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 440
    return-object v0

    .line 443
    :cond_3
    invoke-static {p0, v2}, Lcom/onesignal/OneSignal;->notValidOrDuplicated(Landroid/content/Context;Lorg/json/JSONObject;)Z

    move-result v4

    iput-boolean v4, v0, Lcom/onesignal/NotificationBundleProcessor$ProcessedBundleResult;->isDup:Z

    .line 444
    iget-boolean v4, v0, Lcom/onesignal/NotificationBundleProcessor$ProcessedBundleResult;->isDup:Z

    if-eqz v4, :cond_4

    .line 445
    return-object v0

    .line 447
    :cond_4
    const-string v4, "alert"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 450
    .local v4, "alert":Ljava/lang/String;
    invoke-static {v4}, Lcom/onesignal/NotificationBundleProcessor;->shouldDisplay(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 451
    const/4 v5, -0x1

    invoke-static {p0, p1, v1, v5}, Lcom/onesignal/NotificationBundleProcessor;->saveAndProcessNotification(Landroid/content/Context;Landroid/os/Bundle;ZI)V

    .line 454
    new-instance v1, Ljava/lang/Thread;

    new-instance v5, Lcom/onesignal/NotificationBundleProcessor$1;

    invoke-direct {v5, p1}, Lcom/onesignal/NotificationBundleProcessor$1;-><init>(Landroid/os/Bundle;)V

    const-string v6, "OS_PROC_BUNDLE"

    invoke-direct {v1, v5, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 458
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 461
    :cond_5
    return-object v0
.end method

.method private static processCollapseKey(Lcom/onesignal/NotificationGenerationJob;)V
    .locals 11
    .param p0, "notifJob"    # Lcom/onesignal/NotificationGenerationJob;

    .line 390
    iget-boolean v0, p0, Lcom/onesignal/NotificationGenerationJob;->restoring:Z

    if-eqz v0, :cond_0

    .line 391
    return-void

    .line 392
    :cond_0
    iget-object v0, p0, Lcom/onesignal/NotificationGenerationJob;->jsonPayload:Lorg/json/JSONObject;

    const-string v1, "collapse_key"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/onesignal/NotificationGenerationJob;->jsonPayload:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "do_not_collapse"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 394
    :cond_1
    iget-object v0, p0, Lcom/onesignal/NotificationGenerationJob;->jsonPayload:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 396
    .local v0, "collapse_id":Ljava/lang/String;
    iget-object v1, p0, Lcom/onesignal/NotificationGenerationJob;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/onesignal/OneSignalDbHelper;->getInstance(Landroid/content/Context;)Lcom/onesignal/OneSignalDbHelper;

    move-result-object v1

    .line 397
    .local v1, "dbHelper":Lcom/onesignal/OneSignalDbHelper;
    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v10, "android_notification_id"

    aput-object v10, v4, v3

    new-array v6, v2, [Ljava/lang/String;

    aput-object v0, v6, v3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v3, "notification"

    const-string v5, "collapse_id = ? AND dismissed = 0 AND opened = 0 "

    move-object v2, v1

    invoke-virtual/range {v2 .. v9}, Lcom/onesignal/OneSignalDbHelper;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 406
    .local v2, "cursor":Landroid/database/Cursor;
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 407
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 408
    .local v3, "androidNotificationId":I
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/onesignal/NotificationGenerationJob;->setAndroidIdWithOutOverriding(Ljava/lang/Integer;)V

    .line 411
    .end local v3    # "androidNotificationId":I
    :cond_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 412
    return-void

    .line 393
    .end local v0    # "collapse_id":Ljava/lang/String;
    .end local v1    # "dbHelper":Lcom/onesignal/OneSignalDbHelper;
    .end local v2    # "cursor":Landroid/database/Cursor;
    :cond_3
    :goto_0
    return-void
.end method

.method static processNotification(Lcom/onesignal/NotificationGenerationJob;Z)V
    .locals 2
    .param p0, "notifiJob"    # Lcom/onesignal/NotificationGenerationJob;
    .param p1, "opened"    # Z

    .line 161
    invoke-static {p0, p1}, Lcom/onesignal/NotificationBundleProcessor;->saveNotification(Lcom/onesignal/NotificationGenerationJob;Z)V

    .line 163
    invoke-virtual {p0}, Lcom/onesignal/NotificationGenerationJob;->isNotificationToDisplay()Z

    move-result v0

    if-nez v0, :cond_0

    .line 164
    return-void

    .line 165
    :cond_0
    invoke-virtual {p0}, Lcom/onesignal/NotificationGenerationJob;->getApiNotificationId()Ljava/lang/String;

    move-result-object v0

    .line 166
    .local v0, "notificationId":Ljava/lang/String;
    invoke-static {}, Lcom/onesignal/OneSignal;->getSessionManager()Lcom/onesignal/OSSessionManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/onesignal/OSSessionManager;->onNotificationReceived(Ljava/lang/String;)V

    .line 167
    invoke-static {}, Lcom/onesignal/OSReceiveReceiptController;->getInstance()Lcom/onesignal/OSReceiveReceiptController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/onesignal/OSReceiveReceiptController;->sendReceiveReceipt(Ljava/lang/String;)V

    .line 168
    return-void
.end method

.method private static saveAndProcessNotification(Landroid/content/Context;Landroid/os/Bundle;ZI)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "opened"    # Z
    .param p3, "notificationId"    # I

    .line 149
    new-instance v0, Lcom/onesignal/NotificationGenerationJob;

    invoke-direct {v0, p0}, Lcom/onesignal/NotificationGenerationJob;-><init>(Landroid/content/Context;)V

    .line 150
    .local v0, "notifJob":Lcom/onesignal/NotificationGenerationJob;
    invoke-static {p1}, Lcom/onesignal/NotificationBundleProcessor;->bundleAsJSONObject(Landroid/os/Bundle;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, v0, Lcom/onesignal/NotificationGenerationJob;->jsonPayload:Lorg/json/JSONObject;

    .line 151
    new-instance v1, Lcom/onesignal/NotificationExtenderService$OverrideSettings;

    invoke-direct {v1}, Lcom/onesignal/NotificationExtenderService$OverrideSettings;-><init>()V

    iput-object v1, v0, Lcom/onesignal/NotificationGenerationJob;->overrideSettings:Lcom/onesignal/NotificationExtenderService$OverrideSettings;

    .line 152
    iget-object v1, v0, Lcom/onesignal/NotificationGenerationJob;->overrideSettings:Lcom/onesignal/NotificationExtenderService$OverrideSettings;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/onesignal/NotificationExtenderService$OverrideSettings;->androidNotificationId:Ljava/lang/Integer;

    .line 154
    invoke-static {v0, p2}, Lcom/onesignal/NotificationBundleProcessor;->processNotification(Lcom/onesignal/NotificationGenerationJob;Z)V

    .line 155
    return-void
.end method

.method private static saveNotification(Lcom/onesignal/NotificationGenerationJob;Z)V
    .locals 14
    .param p0, "notifiJob"    # Lcom/onesignal/NotificationGenerationJob;
    .param p1, "opened"    # Z

    .line 177
    const-string v0, "grp"

    const-string v1, "collapse_key"

    iget-object v2, p0, Lcom/onesignal/NotificationGenerationJob;->context:Landroid/content/Context;

    .line 178
    .local v2, "context":Landroid/content/Context;
    iget-object v3, p0, Lcom/onesignal/NotificationGenerationJob;->jsonPayload:Lorg/json/JSONObject;

    .line 181
    .local v3, "jsonPayload":Lorg/json/JSONObject;
    :try_start_0
    iget-object v4, p0, Lcom/onesignal/NotificationGenerationJob;->jsonPayload:Lorg/json/JSONObject;

    invoke-static {v4}, Lcom/onesignal/NotificationBundleProcessor;->getCustomJSONObject(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v4

    .line 183
    .local v4, "customJSON":Lorg/json/JSONObject;
    iget-object v5, p0, Lcom/onesignal/NotificationGenerationJob;->context:Landroid/content/Context;

    invoke-static {v5}, Lcom/onesignal/OneSignalDbHelper;->getInstance(Landroid/content/Context;)Lcom/onesignal/OneSignalDbHelper;

    move-result-object v5

    .line 187
    .local v5, "dbHelper":Lcom/onesignal/OneSignalDbHelper;
    invoke-virtual {p0}, Lcom/onesignal/NotificationGenerationJob;->isNotificationToDisplay()Z

    move-result v6
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v7, 0x0

    const-string v8, "notification"

    const/4 v9, 0x1

    if-eqz v6, :cond_0

    .line 188
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "android_notification_id = "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/onesignal/NotificationGenerationJob;->getAndroidIdWithoutCreate()I

    move-result v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 190
    .local v6, "whereStr":Ljava/lang/String;
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 191
    .local v10, "values":Landroid/content/ContentValues;
    const-string v11, "dismissed"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 193
    invoke-virtual {v5, v8, v10, v6, v7}, Lcom/onesignal/OneSignalDbHelper;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 194
    invoke-static {v5, v2}, Lcom/onesignal/BadgeCountUpdater;->update(Lcom/onesignal/OneSignalDb;Landroid/content/Context;)V

    .line 198
    .end local v6    # "whereStr":Ljava/lang/String;
    .end local v10    # "values":Landroid/content/ContentValues;
    :cond_0
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 199
    .local v6, "values":Landroid/content/ContentValues;
    const-string v10, "notification_id"

    const-string v11, "i"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 201
    const-string v10, "group_id"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v10, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    :cond_1
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "do_not_collapse"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 203
    const-string v0, "collapse_id"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    :cond_2
    const-string v0, "opened"

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v9, 0x0

    :goto_0
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 206
    if-nez p1, :cond_4

    .line 207
    const-string v0, "android_notification_id"

    invoke-virtual {p0}, Lcom/onesignal/NotificationGenerationJob;->getAndroidIdWithoutCreate()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 209
    :cond_4
    invoke-virtual {p0}, Lcom/onesignal/NotificationGenerationJob;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 210
    const-string v0, "title"

    invoke-virtual {p0}, Lcom/onesignal/NotificationGenerationJob;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    :cond_5
    invoke-virtual {p0}, Lcom/onesignal/NotificationGenerationJob;->getBody()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 212
    const-string v0, "message"

    invoke-virtual {p0}, Lcom/onesignal/NotificationGenerationJob;->getBody()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    :cond_6
    const-string v0, "google.sent_time"

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v9

    invoke-virtual {v3, v0, v9, v10}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    const-wide/16 v9, 0x3e8

    div-long/2addr v0, v9

    .line 216
    .local v0, "sentTime":J
    const-string v9, "google.ttl"

    const v10, 0x3f480

    invoke-virtual {v3, v9, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v9

    .line 217
    .local v9, "ttl":I
    int-to-long v10, v9

    add-long/2addr v10, v0

    .line 218
    .local v10, "expireTime":J
    const-string v12, "expire_time"

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v6, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 220
    const-string v12, "full_data"

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    invoke-virtual {v5, v8, v7, v6}, Lcom/onesignal/OneSignalDbHelper;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 224
    if-nez p1, :cond_7

    .line 225
    invoke-static {v5, v2}, Lcom/onesignal/BadgeCountUpdater;->update(Lcom/onesignal/OneSignalDb;Landroid/content/Context;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 228
    .end local v0    # "sentTime":J
    .end local v4    # "customJSON":Lorg/json/JSONObject;
    .end local v5    # "dbHelper":Lcom/onesignal/OneSignalDbHelper;
    .end local v6    # "values":Landroid/content/ContentValues;
    .end local v9    # "ttl":I
    .end local v10    # "expireTime":J
    :cond_7
    goto :goto_1

    .line 226
    :catch_0
    move-exception v0

    .line 227
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 229
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_1
    return-void
.end method

.method private static setActionButtons(Lcom/onesignal/OSNotificationPayload;)V
    .locals 7
    .param p0, "notification"    # Lcom/onesignal/OSNotificationPayload;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 361
    iget-object v0, p0, Lcom/onesignal/OSNotificationPayload;->additionalData:Lorg/json/JSONObject;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/onesignal/OSNotificationPayload;->additionalData:Lorg/json/JSONObject;

    const-string v1, "actionButtons"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 362
    iget-object v0, p0, Lcom/onesignal/OSNotificationPayload;->additionalData:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 363
    .local v0, "jsonActionButtons":Lorg/json/JSONArray;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/onesignal/OSNotificationPayload;->actionButtons:Ljava/util/List;

    .line 365
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 366
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 367
    .local v3, "jsonActionButton":Lorg/json/JSONObject;
    new-instance v4, Lcom/onesignal/OSNotificationPayload$ActionButton;

    invoke-direct {v4}, Lcom/onesignal/OSNotificationPayload$ActionButton;-><init>()V

    .line 368
    .local v4, "actionButton":Lcom/onesignal/OSNotificationPayload$ActionButton;
    const-string v5, "id"

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/onesignal/OSNotificationPayload$ActionButton;->id:Ljava/lang/String;

    .line 369
    const-string v5, "text"

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/onesignal/OSNotificationPayload$ActionButton;->text:Ljava/lang/String;

    .line 370
    const-string v5, "icon"

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/onesignal/OSNotificationPayload$ActionButton;->icon:Ljava/lang/String;

    .line 371
    iget-object v5, p0, Lcom/onesignal/OSNotificationPayload;->actionButtons:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 365
    .end local v3    # "jsonActionButton":Lorg/json/JSONObject;
    .end local v4    # "actionButton":Lcom/onesignal/OSNotificationPayload$ActionButton;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 373
    .end local v2    # "i":I
    :cond_0
    iget-object v2, p0, Lcom/onesignal/OSNotificationPayload;->additionalData:Lorg/json/JSONObject;

    const-string v3, "actionId"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 374
    iget-object v2, p0, Lcom/onesignal/OSNotificationPayload;->additionalData:Lorg/json/JSONObject;

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 376
    .end local v0    # "jsonActionButtons":Lorg/json/JSONArray;
    :cond_1
    return-void
.end method

.method private static setBackgroundImageLayout(Lcom/onesignal/OSNotificationPayload;Lorg/json/JSONObject;)V
    .locals 4
    .param p0, "notification"    # Lcom/onesignal/OSNotificationPayload;
    .param p1, "currentJsonPayload"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 379
    const-string v0, "bg_img"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 380
    .local v0, "jsonStrBgImage":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 381
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 382
    .local v1, "jsonBgImage":Lorg/json/JSONObject;
    new-instance v2, Lcom/onesignal/OSNotificationPayload$BackgroundImageLayout;

    invoke-direct {v2}, Lcom/onesignal/OSNotificationPayload$BackgroundImageLayout;-><init>()V

    iput-object v2, p0, Lcom/onesignal/OSNotificationPayload;->backgroundImageLayout:Lcom/onesignal/OSNotificationPayload$BackgroundImageLayout;

    .line 383
    iget-object v2, p0, Lcom/onesignal/OSNotificationPayload;->backgroundImageLayout:Lcom/onesignal/OSNotificationPayload$BackgroundImageLayout;

    const-string v3, "img"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/onesignal/OSNotificationPayload$BackgroundImageLayout;->image:Ljava/lang/String;

    .line 384
    iget-object v2, p0, Lcom/onesignal/OSNotificationPayload;->backgroundImageLayout:Lcom/onesignal/OSNotificationPayload$BackgroundImageLayout;

    const-string v3, "tc"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/onesignal/OSNotificationPayload$BackgroundImageLayout;->titleTextColor:Ljava/lang/String;

    .line 385
    iget-object v2, p0, Lcom/onesignal/OSNotificationPayload;->backgroundImageLayout:Lcom/onesignal/OSNotificationPayload$BackgroundImageLayout;

    const-string v3, "bc"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/onesignal/OSNotificationPayload$BackgroundImageLayout;->bodyTextColor:Ljava/lang/String;

    .line 387
    .end local v1    # "jsonBgImage":Lorg/json/JSONObject;
    :cond_0
    return-void
.end method

.method static shouldDisplay(Ljava/lang/String;)Z
    .locals 6
    .param p0, "body"    # Ljava/lang/String;

    .line 508
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    const-string v2, ""

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 509
    .local v2, "hasBody":Z
    :goto_0
    invoke-static {}, Lcom/onesignal/OneSignal;->getInAppAlertNotificationEnabled()Z

    move-result v3

    .line 510
    .local v3, "showAsAlert":Z
    invoke-static {}, Lcom/onesignal/OneSignal;->isAppActive()Z

    move-result v4

    .line 511
    .local v4, "isActive":Z
    if-eqz v2, :cond_1

    .line 512
    invoke-static {}, Lcom/onesignal/OneSignal;->getNotificationsWhenActiveEnabled()Z

    move-result v5

    if-nez v5, :cond_2

    if-nez v3, :cond_2

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 511
    :cond_2
    :goto_1
    return v0
.end method

.method private static shouldDisplayNotif(Lcom/onesignal/NotificationGenerationJob;)Z
    .locals 3
    .param p0, "notifJob"    # Lcom/onesignal/NotificationGenerationJob;

    .line 134
    iget-boolean v0, p0, Lcom/onesignal/NotificationGenerationJob;->isInAppPreviewPush:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-gt v0, v2, :cond_0

    .line 135
    return v1

    .line 138
    :cond_0
    invoke-virtual {p0}, Lcom/onesignal/NotificationGenerationJob;->hasExtender()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/onesignal/NotificationGenerationJob;->jsonPayload:Lorg/json/JSONObject;

    .line 139
    const-string v2, "alert"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/onesignal/NotificationBundleProcessor;->shouldDisplay(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    .line 138
    :cond_2
    return v1
.end method

.method private static startExtenderService(Landroid/content/Context;Landroid/os/Bundle;Lcom/onesignal/NotificationBundleProcessor$ProcessedBundleResult;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "result"    # Lcom/onesignal/NotificationBundleProcessor$ProcessedBundleResult;

    .line 483
    invoke-static {p0}, Lcom/onesignal/NotificationExtenderService;->getIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 484
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 485
    return v1

    .line 487
    :cond_0
    invoke-static {p1}, Lcom/onesignal/NotificationBundleProcessor;->bundleAsJSONObject(Landroid/os/Bundle;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "json_payload"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 488
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    const-string v4, "timestamp"

    invoke-virtual {v0, v4, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 490
    const-string v2, "pri"

    const-string v3, "0"

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x9

    const/4 v4, 0x1

    if-le v2, v3, :cond_1

    const/4 v1, 0x1

    .line 492
    .local v1, "isHighPriority":Z
    :cond_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_2

    .line 493
    nop

    .line 495
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    const v3, 0x7b7e1b69

    .line 493
    invoke-static {p0, v2, v3, v0, v1}, Lcom/onesignal/NotificationExtenderService;->enqueueWork(Landroid/content/Context;Landroid/content/ComponentName;ILandroid/content/Intent;Z)V

    goto :goto_0

    .line 501
    :cond_2
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 503
    :goto_0
    iput-boolean v4, p2, Lcom/onesignal/NotificationBundleProcessor$ProcessedBundleResult;->hasExtenderService:Z

    .line 504
    return v4
.end method

.method private static unMinifyButtonsFromBundle(Landroid/os/Bundle;)V
    .locals 14
    .param p0, "gcmBundle"    # Landroid/os/Bundle;

    .line 263
    const-string v0, "n"

    const-string v1, "custom"

    const-string v2, "p"

    const-string v3, "i"

    const-string v4, "a"

    const-string v5, "o"

    invoke-virtual {p0, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 264
    return-void

    .line 267
    :cond_0
    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 270
    .local v6, "customJSON":Lorg/json/JSONObject;
    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 271
    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .local v7, "additionalDataJSON":Lorg/json/JSONObject;
    goto :goto_0

    .line 273
    .end local v7    # "additionalDataJSON":Lorg/json/JSONObject;
    :cond_1
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 275
    .restart local v7    # "additionalDataJSON":Lorg/json/JSONObject;
    :goto_0
    new-instance v8, Lorg/json/JSONArray;

    invoke-virtual {p0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 276
    .local v8, "buttons":Lorg/json/JSONArray;
    invoke-virtual {p0, v5}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 278
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v5, v9, :cond_4

    .line 279
    invoke-virtual {v8, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    .line 281
    .local v9, "button":Lorg/json/JSONObject;
    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 282
    .local v10, "buttonText":Ljava/lang/String;
    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 285
    invoke-virtual {v9, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 286
    invoke-virtual {v9, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 287
    .local v11, "buttonId":Ljava/lang/String;
    invoke-virtual {v9, v3}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_2

    .line 289
    .end local v11    # "buttonId":Ljava/lang/String;
    :cond_2
    move-object v11, v10

    .line 291
    .restart local v11    # "buttonId":Ljava/lang/String;
    :goto_2
    const-string v12, "id"

    invoke-virtual {v9, v12, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 292
    const-string v12, "text"

    invoke-virtual {v9, v12, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 294
    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 295
    const-string v12, "icon"

    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 296
    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 278
    .end local v9    # "button":Lorg/json/JSONObject;
    .end local v10    # "buttonText":Ljava/lang/String;
    .end local v11    # "buttonId":Ljava/lang/String;
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 300
    .end local v5    # "i":I
    :cond_4
    const-string v0, "actionButtons"

    invoke-virtual {v7, v0, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 301
    const-string v0, "actionId"

    const-string v2, "__DEFAULT__"

    invoke-virtual {v7, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 302
    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 303
    invoke-virtual {v6, v4, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 305
    :cond_5
    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 308
    .end local v6    # "customJSON":Lorg/json/JSONObject;
    .end local v7    # "additionalDataJSON":Lorg/json/JSONObject;
    .end local v8    # "buttons":Lorg/json/JSONArray;
    goto :goto_3

    .line 306
    :catch_0
    move-exception v0

    .line 307
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 309
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_3
    return-void
.end method
