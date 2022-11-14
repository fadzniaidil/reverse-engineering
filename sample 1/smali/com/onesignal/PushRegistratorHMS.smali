.class Lcom/onesignal/PushRegistratorHMS;
.super Ljava/lang/Object;
.source "PushRegistratorHMS.java"

# interfaces
.implements Lcom/onesignal/PushRegistrator;


# static fields
.field static final HMS_CLIENT_APP_ID:Ljava/lang/String; = "client/app_id"

.field private static final NEW_TOKEN_TIMEOUT_MS:I = 0x7530

.field private static callbackSuccessful:Z

.field private static registeredHandler:Lcom/onesignal/PushRegistrator$RegisteredHandler;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/onesignal/PushRegistratorHMS;Landroid/content/Context;Lcom/onesignal/PushRegistrator$RegisteredHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/onesignal/PushRegistratorHMS;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Lcom/onesignal/PushRegistrator$RegisteredHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/hms/common/ApiException;
        }
    .end annotation

    .line 16
    invoke-direct {p0, p1, p2}, Lcom/onesignal/PushRegistratorHMS;->getHMSTokenTask(Landroid/content/Context;Lcom/onesignal/PushRegistrator$RegisteredHandler;)V

    return-void
.end method

.method private static doTimeOutWait()V
    .locals 2

    .line 78
    const-wide/16 v0, 0x7530

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    goto :goto_0

    .line 79
    :catch_0
    move-exception v0

    .line 81
    :goto_0
    return-void
.end method

.method static fireCallback(Ljava/lang/String;)V
    .locals 2
    .param p0, "token"    # Ljava/lang/String;

    .line 26
    sget-object v0, Lcom/onesignal/PushRegistratorHMS;->registeredHandler:Lcom/onesignal/PushRegistrator$RegisteredHandler;

    if-nez v0, :cond_0

    .line 27
    return-void

    .line 28
    :cond_0
    const/4 v1, 0x1

    sput-boolean v1, Lcom/onesignal/PushRegistratorHMS;->callbackSuccessful:Z

    .line 29
    invoke-interface {v0, p0, v1}, Lcom/onesignal/PushRegistrator$RegisteredHandler;->complete(Ljava/lang/String;I)V

    .line 30
    return-void
.end method

.method private declared-synchronized getHMSTokenTask(Landroid/content/Context;Lcom/onesignal/PushRegistrator$RegisteredHandler;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/onesignal/PushRegistrator$RegisteredHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/hms/common/ApiException;
        }
    .end annotation

    monitor-enter p0

    .line 58
    :try_start_0
    invoke-static {}, Lcom/onesignal/OSUtils;->hasAllHMSLibrariesForPushKit()Z

    move-result v0

    if-nez v0, :cond_0

    .line 59
    const/4 v0, 0x0

    const/16 v1, -0x1c

    invoke-interface {p2, v0, v1}, Lcom/onesignal/PushRegistrator$RegisteredHandler;->complete(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    monitor-exit p0

    return-void

    .line 63
    .end local p0    # "this":Lcom/onesignal/PushRegistratorHMS;
    :cond_0
    :try_start_1
    invoke-static {p1}, Lcom/huawei/agconnect/config/AGConnectServicesConfig;->fromContext(Landroid/content/Context;)Lcom/huawei/agconnect/config/AGConnectServicesConfig;

    move-result-object v0

    const-string v1, "client/app_id"

    invoke-virtual {v0, v1}, Lcom/huawei/agconnect/config/AGConnectServicesConfig;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, "appId":Ljava/lang/String;
    invoke-static {p1}, Lcom/huawei/hms/aaid/HmsInstanceId;->getInstance(Landroid/content/Context;)Lcom/huawei/hms/aaid/HmsInstanceId;

    move-result-object v1

    .line 66
    .local v1, "hmsInstanceId":Lcom/huawei/hms/aaid/HmsInstanceId;
    const-string v2, "HCM"

    invoke-virtual {v1, v0, v2}, Lcom/huawei/hms/aaid/HmsInstanceId;->getToken(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 68
    .local v2, "pushToken":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 69
    sget-object v3, Lcom/onesignal/OneSignal$LOG_LEVEL;->INFO:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Device registered for HMS, push token = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 70
    const/4 v3, 0x1

    invoke-interface {p2, v2, v3}, Lcom/onesignal/PushRegistrator$RegisteredHandler;->complete(Ljava/lang/String;I)V

    goto :goto_0

    .line 73
    :cond_1
    invoke-virtual {p0, p2}, Lcom/onesignal/PushRegistratorHMS;->waitForOnNewPushTokenEvent(Lcom/onesignal/PushRegistrator$RegisteredHandler;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 74
    :goto_0
    monitor-exit p0

    return-void

    .line 57
    .end local v0    # "appId":Ljava/lang/String;
    .end local v1    # "hmsInstanceId":Lcom/huawei/hms/aaid/HmsInstanceId;
    .end local v2    # "pushToken":Ljava/lang/String;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "callback":Lcom/onesignal/PushRegistrator$RegisteredHandler;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public registerForPush(Landroid/content/Context;Ljava/lang/String;Lcom/onesignal/PushRegistrator$RegisteredHandler;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "senderId"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/onesignal/PushRegistrator$RegisteredHandler;

    .line 34
    sput-object p3, Lcom/onesignal/PushRegistratorHMS;->registeredHandler:Lcom/onesignal/PushRegistrator$RegisteredHandler;

    .line 35
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/onesignal/PushRegistratorHMS$1;

    invoke-direct {v1, p0, p1, p3}, Lcom/onesignal/PushRegistratorHMS$1;-><init>(Lcom/onesignal/PushRegistratorHMS;Landroid/content/Context;Lcom/onesignal/PushRegistrator$RegisteredHandler;)V

    const-string v2, "OS_HMS_GET_TOKEN"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 52
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 53
    return-void
.end method

.method waitForOnNewPushTokenEvent(Lcom/onesignal/PushRegistrator$RegisteredHandler;)V
    .locals 2
    .param p1, "callback"    # Lcom/onesignal/PushRegistrator$RegisteredHandler;

    .line 86
    invoke-static {}, Lcom/onesignal/PushRegistratorHMS;->doTimeOutWait()V

    .line 87
    sget-boolean v0, Lcom/onesignal/PushRegistratorHMS;->callbackSuccessful:Z

    if-nez v0, :cond_0

    .line 88
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v1, "HmsMessageServiceOneSignal.onNewToken timed out."

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 89
    const/4 v0, 0x0

    const/16 v1, -0x19

    invoke-interface {p1, v0, v1}, Lcom/onesignal/PushRegistrator$RegisteredHandler;->complete(Ljava/lang/String;I)V

    .line 91
    :cond_0
    return-void
.end method
