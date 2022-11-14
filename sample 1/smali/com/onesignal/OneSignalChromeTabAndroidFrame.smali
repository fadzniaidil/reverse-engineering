.class Lcom/onesignal/OneSignalChromeTabAndroidFrame;
.super Lcom/onesignal/OneSignalChromeTab;
.source "OneSignalChromeTabAndroidFrame.java"


# static fields
.field private static opened:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/onesignal/OneSignalChromeTab;-><init>()V

    return-void
.end method

.method static setup(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "appId"    # Ljava/lang/String;
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "adId"    # Ljava/lang/String;

    .line 9
    sget-boolean v0, Lcom/onesignal/OneSignalChromeTabAndroidFrame;->opened:Z

    if-eqz v0, :cond_0

    .line 10
    return-void

    .line 12
    :cond_0
    sget-object v0, Lcom/onesignal/OneSignal;->remoteParams:Lcom/onesignal/OneSignalRemoteParams$Params;

    if-eqz v0, :cond_5

    sget-object v0, Lcom/onesignal/OneSignal;->remoteParams:Lcom/onesignal/OneSignalRemoteParams$Params;

    iget-boolean v0, v0, Lcom/onesignal/OneSignalRemoteParams$Params;->enterprise:Z

    if-eqz v0, :cond_1

    goto :goto_1

    .line 15
    :cond_1
    if-eqz p0, :cond_4

    if-nez p1, :cond_2

    goto :goto_0

    .line 18
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "?app_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&user_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 19
    .local v0, "params":Ljava/lang/String;
    if-eqz p2, :cond_3

    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&ad_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 21
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&cbs_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    const v3, 0x7fffffff

    invoke-virtual {v2, v3}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 23
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://onesignal.com/android_frame.html"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/onesignal/OneSignalChromeTabAndroidFrame;->open(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/onesignal/OneSignalChromeTabAndroidFrame;->opened:Z

    .line 24
    return-void

    .line 16
    .end local v0    # "params":Ljava/lang/String;
    :cond_4
    :goto_0
    return-void

    .line 13
    :cond_5
    :goto_1
    return-void
.end method
