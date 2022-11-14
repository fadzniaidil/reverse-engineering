.class final Lcom/onesignal/OneSignalRemoteParams$1;
.super Lcom/onesignal/OneSignalRestClient$ResponseHandler;
.source "OneSignalRemoteParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/OneSignalRemoteParams;->makeAndroidParamsRequest(Lcom/onesignal/OneSignalRemoteParams$CallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callBack:Lcom/onesignal/OneSignalRemoteParams$CallBack;


# direct methods
.method constructor <init>(Lcom/onesignal/OneSignalRemoteParams$CallBack;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/onesignal/OneSignalRemoteParams$1;->val$callBack:Lcom/onesignal/OneSignalRemoteParams$CallBack;

    invoke-direct {p0}, Lcom/onesignal/OneSignalRestClient$ResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method onFailure(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "statusCode"    # I
    .param p2, "response"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    .line 119
    const/16 v0, 0x193

    if-ne p1, v0, :cond_0

    .line 120
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->FATAL:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v1, "403 error getting OneSignal params, omitting further retries!"

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 121
    return-void

    .line 124
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/onesignal/OneSignalRemoteParams$1$1;

    invoke-direct {v1, p0}, Lcom/onesignal/OneSignalRemoteParams$1$1;-><init>(Lcom/onesignal/OneSignalRemoteParams$1;)V

    const-string v2, "OS_PARAMS_REQUEST"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 135
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 136
    return-void
.end method

.method onSuccess(Ljava/lang/String;)V
    .locals 1
    .param p1, "response"    # Ljava/lang/String;

    .line 140
    iget-object v0, p0, Lcom/onesignal/OneSignalRemoteParams$1;->val$callBack:Lcom/onesignal/OneSignalRemoteParams$CallBack;

    invoke-static {p1, v0}, Lcom/onesignal/OneSignalRemoteParams;->access$100(Ljava/lang/String;Lcom/onesignal/OneSignalRemoteParams$CallBack;)V

    .line 141
    return-void
.end method
