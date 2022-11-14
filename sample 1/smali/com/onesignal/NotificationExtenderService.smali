.class public abstract Lcom/onesignal/NotificationExtenderService;
.super Lcom/onesignal/JobIntentService;
.source "NotificationExtenderService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onesignal/NotificationExtenderService$OverrideSettings;
    }
.end annotation


# static fields
.field static final EXTENDER_SERVICE_JOB_ID:I = 0x7b7e1b69


# instance fields
.field private currentBaseOverrideSettings:Lcom/onesignal/NotificationExtenderService$OverrideSettings;

.field private currentJsonPayload:Lorg/json/JSONObject;

.field private currentlyRestoring:Z

.field private osNotificationDisplayedResult:Lcom/onesignal/OSNotificationDisplayedResult;

.field private restoreTimestamp:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 69
    invoke-direct {p0}, Lcom/onesignal/JobIntentService;-><init>()V

    .line 95
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/onesignal/NotificationExtenderService;->currentBaseOverrideSettings:Lcom/onesignal/NotificationExtenderService$OverrideSettings;

    return-void
.end method

.method private createNotifJobFromCurrent()Lcom/onesignal/NotificationGenerationJob;
    .locals 2

    .line 224
    new-instance v0, Lcom/onesignal/NotificationGenerationJob;

    invoke-direct {v0, p0}, Lcom/onesignal/NotificationGenerationJob;-><init>(Landroid/content/Context;)V

    .line 225
    .local v0, "notifJob":Lcom/onesignal/NotificationGenerationJob;
    iget-boolean v1, p0, Lcom/onesignal/NotificationExtenderService;->currentlyRestoring:Z

    iput-boolean v1, v0, Lcom/onesignal/NotificationGenerationJob;->restoring:Z

    .line 226
    iget-object v1, p0, Lcom/onesignal/NotificationExtenderService;->currentJsonPayload:Lorg/json/JSONObject;

    iput-object v1, v0, Lcom/onesignal/NotificationGenerationJob;->jsonPayload:Lorg/json/JSONObject;

    .line 227
    iget-object v1, p0, Lcom/onesignal/NotificationExtenderService;->restoreTimestamp:Ljava/lang/Long;

    iput-object v1, v0, Lcom/onesignal/NotificationGenerationJob;->shownTimeStamp:Ljava/lang/Long;

    .line 228
    iget-object v1, p0, Lcom/onesignal/NotificationExtenderService;->currentBaseOverrideSettings:Lcom/onesignal/NotificationExtenderService$OverrideSettings;

    iput-object v1, v0, Lcom/onesignal/NotificationGenerationJob;->overrideSettings:Lcom/onesignal/NotificationExtenderService$OverrideSettings;

    .line 230
    return-object v0
.end method

.method static getIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .line 212
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 213
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.onesignal.NotificationExtender"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 214
    .local v1, "intent":Landroid/content/Intent;
    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 215
    .local v2, "resolveInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v3, v4, :cond_0

    .line 216
    const/4 v3, 0x0

    return-object v3

    .line 218
    :cond_0
    new-instance v3, Landroid/content/ComponentName;

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v3, p0, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 220
    return-object v1
.end method

.method private processIntent(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .line 128
    const-string v0, "android_notif_id"

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 132
    .local v1, "bundle":Landroid/os/Bundle;
    if-nez v1, :cond_0

    .line 133
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No extras sent to NotificationExtenderService in its Intent!\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 134
    return-void

    .line 137
    :cond_0
    const-string v2, "json_payload"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 138
    .local v2, "jsonStrPayload":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 139
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "json_payload key is nonexistent from bundle passed to NotificationExtenderService: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 140
    return-void

    .line 144
    :cond_1
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/onesignal/NotificationExtenderService;->currentJsonPayload:Lorg/json/JSONObject;

    .line 145
    const-string v3, "restoring"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/onesignal/NotificationExtenderService;->currentlyRestoring:Z

    .line 146
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 147
    new-instance v3, Lcom/onesignal/NotificationExtenderService$OverrideSettings;

    invoke-direct {v3}, Lcom/onesignal/NotificationExtenderService$OverrideSettings;-><init>()V

    iput-object v3, p0, Lcom/onesignal/NotificationExtenderService;->currentBaseOverrideSettings:Lcom/onesignal/NotificationExtenderService$OverrideSettings;

    .line 148
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v3, Lcom/onesignal/NotificationExtenderService$OverrideSettings;->androidNotificationId:Ljava/lang/Integer;

    .line 151
    :cond_2
    iget-boolean v0, p0, Lcom/onesignal/NotificationExtenderService;->currentlyRestoring:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/onesignal/NotificationExtenderService;->currentJsonPayload:Lorg/json/JSONObject;

    invoke-static {p0, v0}, Lcom/onesignal/OneSignal;->notValidOrDuplicated(Landroid/content/Context;Lorg/json/JSONObject;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 152
    return-void

    .line 154
    :cond_3
    const-string v0, "timestamp"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/onesignal/NotificationExtenderService;->restoreTimestamp:Ljava/lang/Long;

    .line 155
    iget-object v0, p0, Lcom/onesignal/NotificationExtenderService;->currentJsonPayload:Lorg/json/JSONObject;

    iget-boolean v3, p0, Lcom/onesignal/NotificationExtenderService;->currentlyRestoring:Z

    invoke-virtual {p0, v0, v3}, Lcom/onesignal/NotificationExtenderService;->processJsonObject(Lorg/json/JSONObject;Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    goto :goto_0

    .line 156
    :catch_0
    move-exception v0

    .line 157
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 159
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_0
    return-void
.end method


# virtual methods
.method protected final displayNotification(Lcom/onesignal/NotificationExtenderService$OverrideSettings;)Lcom/onesignal/OSNotificationDisplayedResult;
    .locals 3
    .param p1, "overrideSettings"    # Lcom/onesignal/NotificationExtenderService$OverrideSettings;

    .line 101
    iget-object v0, p0, Lcom/onesignal/NotificationExtenderService;->osNotificationDisplayedResult:Lcom/onesignal/OSNotificationDisplayedResult;

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/onesignal/NotificationExtenderService;->currentBaseOverrideSettings:Lcom/onesignal/NotificationExtenderService$OverrideSettings;

    invoke-virtual {p1, v0}, Lcom/onesignal/NotificationExtenderService$OverrideSettings;->override(Lcom/onesignal/NotificationExtenderService$OverrideSettings;)V

    .line 105
    new-instance v0, Lcom/onesignal/OSNotificationDisplayedResult;

    invoke-direct {v0}, Lcom/onesignal/OSNotificationDisplayedResult;-><init>()V

    iput-object v0, p0, Lcom/onesignal/NotificationExtenderService;->osNotificationDisplayedResult:Lcom/onesignal/OSNotificationDisplayedResult;

    .line 107
    invoke-direct {p0}, Lcom/onesignal/NotificationExtenderService;->createNotifJobFromCurrent()Lcom/onesignal/NotificationGenerationJob;

    move-result-object v0

    .line 108
    .local v0, "notifJob":Lcom/onesignal/NotificationGenerationJob;
    iput-object p1, v0, Lcom/onesignal/NotificationGenerationJob;->overrideSettings:Lcom/onesignal/NotificationExtenderService$OverrideSettings;

    .line 110
    iget-object v1, p0, Lcom/onesignal/NotificationExtenderService;->osNotificationDisplayedResult:Lcom/onesignal/OSNotificationDisplayedResult;

    invoke-static {v0}, Lcom/onesignal/NotificationBundleProcessor;->ProcessJobForDisplay(Lcom/onesignal/NotificationGenerationJob;)I

    move-result v2

    iput v2, v1, Lcom/onesignal/OSNotificationDisplayedResult;->androidNotificationId:I

    .line 111
    iget-object v1, p0, Lcom/onesignal/NotificationExtenderService;->osNotificationDisplayedResult:Lcom/onesignal/OSNotificationDisplayedResult;

    return-object v1

    .line 102
    .end local v0    # "notifJob":Lcom/onesignal/NotificationGenerationJob;
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic isStopped()Z
    .locals 1

    .line 69
    invoke-super {p0}, Lcom/onesignal/JobIntentService;->isStopped()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 69
    invoke-super {p0, p1}, Lcom/onesignal/JobIntentService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onCreate()V
    .locals 0

    .line 69
    invoke-super {p0}, Lcom/onesignal/JobIntentService;->onCreate()V

    return-void
.end method

.method public bridge synthetic onDestroy()V
    .locals 0

    .line 69
    invoke-super {p0}, Lcom/onesignal/JobIntentService;->onDestroy()V

    return-void
.end method

.method protected final onHandleWork(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .line 120
    if-nez p1, :cond_0

    .line 121
    return-void

    .line 123
    :cond_0
    invoke-direct {p0, p1}, Lcom/onesignal/NotificationExtenderService;->processIntent(Landroid/content/Intent;)V

    .line 124
    invoke-static {p1}, Lcom/onesignal/GcmBroadcastReceiver;->completeWakefulIntent(Landroid/content/Intent;)Z

    .line 125
    return-void
.end method

.method protected abstract onNotificationProcessing(Lcom/onesignal/OSNotificationReceivedResult;)Z
.end method

.method public bridge synthetic onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    .line 69
    invoke-super {p0, p1, p2, p3}, Lcom/onesignal/JobIntentService;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1
.end method

.method public bridge synthetic onStopCurrentWork()Z
    .locals 1

    .line 69
    invoke-super {p0}, Lcom/onesignal/JobIntentService;->onStopCurrentWork()Z

    move-result v0

    return v0
.end method

.method processJsonObject(Lorg/json/JSONObject;Z)V
    .locals 8
    .param p1, "currentJsonPayload"    # Lorg/json/JSONObject;
    .param p2, "restoring"    # Z

    .line 162
    new-instance v0, Lcom/onesignal/OSNotificationReceivedResult;

    invoke-direct {v0}, Lcom/onesignal/OSNotificationReceivedResult;-><init>()V

    .line 163
    .local v0, "receivedResult":Lcom/onesignal/OSNotificationReceivedResult;
    invoke-static {p1}, Lcom/onesignal/NotificationBundleProcessor;->OSNotificationPayloadFrom(Lorg/json/JSONObject;)Lcom/onesignal/OSNotificationPayload;

    move-result-object v1

    iput-object v1, v0, Lcom/onesignal/OSNotificationReceivedResult;->payload:Lcom/onesignal/OSNotificationPayload;

    .line 164
    iput-boolean p2, v0, Lcom/onesignal/OSNotificationReceivedResult;->restoring:Z

    .line 165
    invoke-static {}, Lcom/onesignal/OneSignal;->isAppActive()Z

    move-result v1

    iput-boolean v1, v0, Lcom/onesignal/OSNotificationReceivedResult;->isAppInFocus:Z

    .line 167
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/onesignal/NotificationExtenderService;->osNotificationDisplayedResult:Lcom/onesignal/OSNotificationDisplayedResult;

    .line 168
    const/4 v1, 0x0

    .line 170
    .local v1, "developerProcessed":Z
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/onesignal/NotificationExtenderService;->onNotificationProcessing(Lcom/onesignal/OSNotificationReceivedResult;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v1, v2

    .line 177
    goto :goto_0

    .line 171
    :catchall_0
    move-exception v2

    .line 173
    .local v2, "t":Ljava/lang/Throwable;
    iget-object v3, p0, Lcom/onesignal/NotificationExtenderService;->osNotificationDisplayedResult:Lcom/onesignal/OSNotificationDisplayedResult;

    if-nez v3, :cond_0

    .line 174
    sget-object v3, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v4, "onNotificationProcessing throw an exception. Displaying normal OneSignal notification."

    invoke-static {v3, v4, v2}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 176
    :cond_0
    sget-object v3, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v4, "onNotificationProcessing throw an exception. Extended notification displayed but custom processing did not finish."

    invoke-static {v3, v4, v2}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 180
    .end local v2    # "t":Ljava/lang/Throwable;
    :goto_0
    iget-object v2, p0, Lcom/onesignal/NotificationExtenderService;->osNotificationDisplayedResult:Lcom/onesignal/OSNotificationDisplayedResult;

    if-nez v2, :cond_5

    .line 183
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    .line 184
    const-string v4, "alert"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/onesignal/NotificationBundleProcessor;->shouldDisplay(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    .line 186
    .local v4, "display":Z
    :goto_1
    if-nez v4, :cond_3

    .line 187
    if-nez p2, :cond_2

    .line 188
    new-instance v5, Lcom/onesignal/NotificationGenerationJob;

    invoke-direct {v5, p0}, Lcom/onesignal/NotificationGenerationJob;-><init>(Landroid/content/Context;)V

    .line 189
    .local v5, "notifJob":Lcom/onesignal/NotificationGenerationJob;
    iput-object p1, v5, Lcom/onesignal/NotificationGenerationJob;->jsonPayload:Lorg/json/JSONObject;

    .line 190
    new-instance v6, Lcom/onesignal/NotificationExtenderService$OverrideSettings;

    invoke-direct {v6}, Lcom/onesignal/NotificationExtenderService$OverrideSettings;-><init>()V

    iput-object v6, v5, Lcom/onesignal/NotificationGenerationJob;->overrideSettings:Lcom/onesignal/NotificationExtenderService$OverrideSettings;

    .line 191
    iget-object v6, v5, Lcom/onesignal/NotificationGenerationJob;->overrideSettings:Lcom/onesignal/NotificationExtenderService$OverrideSettings;

    const/4 v7, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iput-object v7, v6, Lcom/onesignal/NotificationExtenderService$OverrideSettings;->androidNotificationId:Ljava/lang/Integer;

    .line 193
    invoke-static {v5, v2}, Lcom/onesignal/NotificationBundleProcessor;->processNotification(Lcom/onesignal/NotificationGenerationJob;Z)V

    .line 194
    invoke-static {p1}, Lcom/onesignal/NotificationBundleProcessor;->newJsonArray(Lorg/json/JSONObject;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-static {v2, v3, v3}, Lcom/onesignal/OneSignal;->handleNotificationReceived(Lorg/json/JSONArray;ZZ)V

    .line 195
    .end local v5    # "notifJob":Lcom/onesignal/NotificationGenerationJob;
    goto :goto_2

    .line 198
    :cond_2
    iget-object v2, p0, Lcom/onesignal/NotificationExtenderService;->currentBaseOverrideSettings:Lcom/onesignal/NotificationExtenderService$OverrideSettings;

    if-eqz v2, :cond_4

    .line 199
    invoke-direct {p0}, Lcom/onesignal/NotificationExtenderService;->createNotifJobFromCurrent()Lcom/onesignal/NotificationGenerationJob;

    move-result-object v2

    invoke-static {v2}, Lcom/onesignal/NotificationBundleProcessor;->markRestoredNotificationAsDismissed(Lcom/onesignal/NotificationGenerationJob;)V

    goto :goto_2

    .line 202
    :cond_3
    invoke-direct {p0}, Lcom/onesignal/NotificationExtenderService;->createNotifJobFromCurrent()Lcom/onesignal/NotificationGenerationJob;

    move-result-object v2

    invoke-static {v2}, Lcom/onesignal/NotificationBundleProcessor;->ProcessJobForDisplay(Lcom/onesignal/NotificationGenerationJob;)I

    .line 206
    :cond_4
    :goto_2
    if-eqz p2, :cond_5

    .line 207
    const/16 v2, 0x64

    invoke-static {v2}, Lcom/onesignal/OSUtils;->sleep(I)V

    .line 209
    .end local v4    # "display":Z
    :cond_5
    return-void
.end method

.method public bridge synthetic setInterruptIfStopped(Z)V
    .locals 0

    .line 69
    invoke-super {p0, p1}, Lcom/onesignal/JobIntentService;->setInterruptIfStopped(Z)V

    return-void
.end method
