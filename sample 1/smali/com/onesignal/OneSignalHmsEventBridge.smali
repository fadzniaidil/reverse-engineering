.class public Lcom/onesignal/OneSignalHmsEventBridge;
.super Ljava/lang/Object;
.source "OneSignalHmsEventBridge.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onMessageReceived(Landroid/content/Context;Lcom/huawei/hms/push/RemoteMessage;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "message"    # Lcom/huawei/hms/push/RemoteMessage;

    .line 24
    invoke-virtual {p1}, Lcom/huawei/hms/push/RemoteMessage;->getData()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/onesignal/NotificationPayloadProcessorHMS;->processDataMessageReceived(Landroid/content/Context;Ljava/lang/String;)V

    .line 25
    return-void
.end method

.method public static onNewToken(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "token"    # Ljava/lang/String;

    .line 19
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->INFO:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HmsMessageServiceOneSignal.onNewToken - HMS token: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 20
    invoke-static {p1}, Lcom/onesignal/PushRegistratorHMS;->fireCallback(Ljava/lang/String;)V

    .line 21
    return-void
.end method
