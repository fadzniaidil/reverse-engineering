.class public Lcom/onesignal/HmsMessageServiceOneSignal;
.super Lcom/huawei/hms/push/HmsMessageService;
.source "HmsMessageServiceOneSignal.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/huawei/hms/push/HmsMessageService;-><init>()V

    return-void
.end method


# virtual methods
.method public onMessageReceived(Lcom/huawei/hms/push/RemoteMessage;)V
    .locals 0
    .param p1, "message"    # Lcom/huawei/hms/push/RemoteMessage;

    .line 45
    invoke-static {p0, p1}, Lcom/onesignal/OneSignalHmsEventBridge;->onMessageReceived(Landroid/content/Context;Lcom/huawei/hms/push/RemoteMessage;)V

    .line 46
    return-void
.end method

.method public onNewToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "token"    # Ljava/lang/String;

    .line 31
    invoke-static {p0, p1}, Lcom/onesignal/OneSignalHmsEventBridge;->onNewToken(Landroid/content/Context;Ljava/lang/String;)V

    .line 32
    return-void
.end method
