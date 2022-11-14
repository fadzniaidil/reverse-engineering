.class public Lcom/onesignal/GcmBroadcastReceiver;
.super Landroidx/legacy/content/WakefulBroadcastReceiver;
.source "GcmBroadcastReceiver.java"


# static fields
.field private static final GCM_RECEIVE_ACTION:Ljava/lang/String; = "com.google.android.c2dm.intent.RECEIVE"

.field private static final GCM_TYPE:Ljava/lang/String; = "gcm"

.field private static final MESSAGE_TYPE_EXTRA_KEY:Ljava/lang/String; = "message_type"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Landroidx/legacy/content/WakefulBroadcastReceiver;-><init>()V

    return-void
.end method

.method private static isGcmMessage(Landroid/content/Intent;)Z
    .locals 3
    .param p0, "intent"    # Landroid/content/Intent;

    .line 53
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.google.android.c2dm.intent.RECEIVE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 54
    const-string v0, "message_type"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, "messageType":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v2, "gcm"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1

    .line 57
    .end local v0    # "messageType":Ljava/lang/String;
    :cond_2
    return v1
.end method

.method private static processOrderBroadcast(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)Lcom/onesignal/NotificationBundleProcessor$ProcessedBundleResult;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .line 120
    invoke-static {p1}, Lcom/onesignal/GcmBroadcastReceiver;->isGcmMessage(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 121
    const/4 v0, 0x0

    return-object v0

    .line 123
    :cond_0
    invoke-static {p0, p2}, Lcom/onesignal/NotificationBundleProcessor;->processBundleFromReceiver(Landroid/content/Context;Landroid/os/Bundle;)Lcom/onesignal/NotificationBundleProcessor$ProcessedBundleResult;

    move-result-object v0

    .line 126
    .local v0, "processedResult":Lcom/onesignal/NotificationBundleProcessor$ProcessedBundleResult;
    invoke-virtual {v0}, Lcom/onesignal/NotificationBundleProcessor$ProcessedBundleResult;->processed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 127
    return-object v0

    .line 129
    :cond_1
    invoke-static {p0, p2}, Lcom/onesignal/GcmBroadcastReceiver;->startGCMService(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 131
    return-object v0
.end method

.method private setAbort()V
    .locals 1

    .line 105
    invoke-virtual {p0}, Lcom/onesignal/GcmBroadcastReceiver;->isOrderedBroadcast()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {p0}, Lcom/onesignal/GcmBroadcastReceiver;->abortBroadcast()V

    .line 115
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/onesignal/GcmBroadcastReceiver;->setResultCode(I)V

    .line 117
    :cond_0
    return-void
.end method

.method private static setCompatBundleForServer(Landroid/os/Bundle;Lcom/onesignal/BundleCompat;)Lcom/onesignal/BundleCompat;
    .locals 4
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "taskExtras"    # Lcom/onesignal/BundleCompat;

    .line 187
    invoke-static {p0}, Lcom/onesignal/NotificationBundleProcessor;->bundleAsJSONObject(Landroid/os/Bundle;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "json_payload"

    invoke-interface {p1, v1, v0}, Lcom/onesignal/BundleCompat;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "timestamp"

    invoke-interface {p1, v1, v0}, Lcom/onesignal/BundleCompat;->putLong(Ljava/lang/String;Ljava/lang/Long;)V

    .line 189
    return-object p1
.end method

.method private setSuccessfulResultCode()V
    .locals 1

    .line 100
    invoke-virtual {p0}, Lcom/onesignal/GcmBroadcastReceiver;->isOrderedBroadcast()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/onesignal/GcmBroadcastReceiver;->setResultCode(I)V

    .line 102
    :cond_0
    return-void
.end method

.method static startGCMService(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 136
    invoke-static {p1}, Lcom/onesignal/NotificationBundleProcessor;->hasRemoteResource(Landroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 137
    invoke-static {}, Lcom/onesignal/BundleCompatFactory;->getInstance()Lcom/onesignal/BundleCompat;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/onesignal/GcmBroadcastReceiver;->setCompatBundleForServer(Landroid/os/Bundle;Lcom/onesignal/BundleCompat;)Lcom/onesignal/BundleCompat;

    move-result-object v0

    .line 138
    .local v0, "taskExtras":Lcom/onesignal/BundleCompat;
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/onesignal/NotificationBundleProcessor;->ProcessFromGCMIntentService(Landroid/content/Context;Lcom/onesignal/BundleCompat;Lcom/onesignal/NotificationExtenderService$OverrideSettings;)V

    .line 139
    return-void

    .line 142
    .end local v0    # "taskExtras":Lcom/onesignal/BundleCompat;
    :cond_0
    const-string v0, "pri"

    const-string v1, "0"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x9

    if-le v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 143
    .local v0, "isHighPriority":Z
    :goto_0
    if-nez v0, :cond_2

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_2

    .line 144
    invoke-static {p0, p1}, Lcom/onesignal/GcmBroadcastReceiver;->startGCMServiceWithJobIntentService(Landroid/content/Context;Landroid/os/Bundle;)V

    goto :goto_1

    .line 147
    :cond_2
    :try_start_0
    invoke-static {p0, p1}, Lcom/onesignal/GcmBroadcastReceiver;->startGCMServiceWithWakefulService(Landroid/content/Context;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    goto :goto_1

    .line 148
    :catch_0
    move-exception v1

    .line 151
    .local v1, "e":Ljava/lang/IllegalStateException;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_3

    .line 152
    invoke-static {p0, p1}, Lcom/onesignal/GcmBroadcastReceiver;->startGCMServiceWithJobIntentService(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 157
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :goto_1
    return-void

    .line 154
    .restart local v1    # "e":Ljava/lang/IllegalStateException;
    :cond_3
    throw v1
.end method

.method private static startGCMServiceWithJobIntentService(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 166
    invoke-static {}, Lcom/onesignal/BundleCompatFactory;->getInstance()Lcom/onesignal/BundleCompat;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/onesignal/GcmBroadcastReceiver;->setCompatBundleForServer(Landroid/os/Bundle;Lcom/onesignal/BundleCompat;)Lcom/onesignal/BundleCompat;

    move-result-object v0

    .line 168
    .local v0, "taskExtras":Lcom/onesignal/BundleCompat;
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/onesignal/GcmIntentJobService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 169
    .local v1, "intent":Landroid/content/Intent;
    invoke-interface {v0}, Lcom/onesignal/BundleCompat;->getBundle()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcelable;

    const-string v3, "Bundle:Parcelable:Extras"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 171
    invoke-static {p0, v1}, Lcom/onesignal/GcmIntentJobService;->enqueueWork(Landroid/content/Context;Landroid/content/Intent;)V

    .line 172
    return-void
.end method

.method private static startGCMServiceWithWakefulService(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 175
    new-instance v0, Landroid/content/ComponentName;

    .line 176
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/onesignal/GcmIntentService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    .local v0, "componentName":Landroid/content/ComponentName;
    new-instance v1, Lcom/onesignal/BundleCompatBundle;

    invoke-direct {v1}, Lcom/onesignal/BundleCompatBundle;-><init>()V

    invoke-static {p1, v1}, Lcom/onesignal/GcmBroadcastReceiver;->setCompatBundleForServer(Landroid/os/Bundle;Lcom/onesignal/BundleCompat;)Lcom/onesignal/BundleCompat;

    move-result-object v1

    .line 179
    .local v1, "taskExtras":Lcom/onesignal/BundleCompat;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 181
    invoke-interface {v1}, Lcom/onesignal/BundleCompat;->getBundle()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->replaceExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v2

    .line 182
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    .line 183
    .local v2, "intentForService":Landroid/content/Intent;
    invoke-static {p0, v2}, Lcom/onesignal/GcmBroadcastReceiver;->startWakefulService(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 184
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 64
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 65
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_5

    const-string v1, "from"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "google.com/iid"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 68
    :cond_0
    invoke-static {p1}, Lcom/onesignal/OneSignal;->setAppContext(Landroid/content/Context;)V

    .line 70
    invoke-static {p1, p2, v0}, Lcom/onesignal/GcmBroadcastReceiver;->processOrderBroadcast(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)Lcom/onesignal/NotificationBundleProcessor$ProcessedBundleResult;

    move-result-object v1

    .line 73
    .local v1, "processedResult":Lcom/onesignal/NotificationBundleProcessor$ProcessedBundleResult;
    if-nez v1, :cond_1

    .line 74
    invoke-direct {p0}, Lcom/onesignal/GcmBroadcastReceiver;->setSuccessfulResultCode()V

    .line 75
    return-void

    .line 81
    :cond_1
    iget-boolean v2, v1, Lcom/onesignal/NotificationBundleProcessor$ProcessedBundleResult;->isDup:Z

    if-nez v2, :cond_4

    iget-boolean v2, v1, Lcom/onesignal/NotificationBundleProcessor$ProcessedBundleResult;->hasExtenderService:Z

    if-eqz v2, :cond_2

    goto :goto_0

    .line 90
    :cond_2
    iget-boolean v2, v1, Lcom/onesignal/NotificationBundleProcessor$ProcessedBundleResult;->isOneSignalPayload:Z

    if-eqz v2, :cond_3

    .line 91
    invoke-static {p1}, Lcom/onesignal/OneSignal;->getFilterOtherGCMReceivers(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 92
    invoke-direct {p0}, Lcom/onesignal/GcmBroadcastReceiver;->setAbort()V

    .line 93
    return-void

    .line 96
    :cond_3
    invoke-direct {p0}, Lcom/onesignal/GcmBroadcastReceiver;->setSuccessfulResultCode()V

    .line 97
    return-void

    .line 83
    :cond_4
    :goto_0
    invoke-direct {p0}, Lcom/onesignal/GcmBroadcastReceiver;->setAbort()V

    .line 84
    return-void

    .line 66
    .end local v1    # "processedResult":Lcom/onesignal/NotificationBundleProcessor$ProcessedBundleResult;
    :cond_5
    :goto_1
    return-void
.end method
