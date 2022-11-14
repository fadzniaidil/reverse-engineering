.class final Lcom/onesignal/OneSignal$13;
.super Lcom/onesignal/OneSignalRestClient$ResponseHandler;
.source "OneSignal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/OneSignal;->postNotification(Lorg/json/JSONObject;Lcom/onesignal/OneSignal$PostNotificationResponseHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$handler:Lcom/onesignal/OneSignal$PostNotificationResponseHandler;


# direct methods
.method constructor <init>(Lcom/onesignal/OneSignal$PostNotificationResponseHandler;)V
    .locals 0

    .line 1759
    iput-object p1, p0, Lcom/onesignal/OneSignal$13;->val$handler:Lcom/onesignal/OneSignal$PostNotificationResponseHandler;

    invoke-direct {p0}, Lcom/onesignal/OneSignalRestClient$ResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method onFailure(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "statusCode"    # I
    .param p2, "response"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    .line 1778
    const-string v0, "create notification failed"

    invoke-static {v0, p1, p3, p2}, Lcom/onesignal/OneSignal;->logHttpError(Ljava/lang/String;ILjava/lang/Throwable;Ljava/lang/String;)V

    .line 1779
    iget-object v0, p0, Lcom/onesignal/OneSignal$13;->val$handler:Lcom/onesignal/OneSignal$PostNotificationResponseHandler;

    if-eqz v0, :cond_1

    .line 1781
    if-nez p1, :cond_0

    .line 1782
    :try_start_0
    const-string v1, "{\"error\": \"HTTP no response error\"}"

    move-object p2, v1

    goto :goto_0

    .line 1785
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 1784
    :cond_0
    :goto_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/onesignal/OneSignal$PostNotificationResponseHandler;->onFailure(Lorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1791
    goto :goto_2

    .line 1787
    .local v0, "t":Ljava/lang/Throwable;
    :goto_1
    :try_start_1
    iget-object v1, p0, Lcom/onesignal/OneSignal$13;->val$handler:Lcom/onesignal/OneSignal$PostNotificationResponseHandler;

    new-instance v2, Lorg/json/JSONObject;

    const-string v3, "{\"error\": \"Unknown response!\"}"

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/onesignal/OneSignal$PostNotificationResponseHandler;->onFailure(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1790
    goto :goto_2

    .line 1788
    :catch_0
    move-exception v1

    .line 1789
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 1793
    .end local v0    # "t":Ljava/lang/Throwable;
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_1
    :goto_2
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 3
    .param p1, "response"    # Ljava/lang/String;

    .line 1762
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HTTP create notification success: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    move-object v2, p1

    goto :goto_0

    :cond_0
    const-string v2, "null"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 1763
    iget-object v0, p0, Lcom/onesignal/OneSignal$13;->val$handler:Lcom/onesignal/OneSignal$PostNotificationResponseHandler;

    if-eqz v0, :cond_2

    .line 1765
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1766
    .local v0, "jsonObject":Lorg/json/JSONObject;
    const-string v1, "errors"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1767
    iget-object v1, p0, Lcom/onesignal/OneSignal$13;->val$handler:Lcom/onesignal/OneSignal$PostNotificationResponseHandler;

    invoke-interface {v1, v0}, Lcom/onesignal/OneSignal$PostNotificationResponseHandler;->onFailure(Lorg/json/JSONObject;)V

    goto :goto_1

    .line 1769
    :cond_1
    iget-object v1, p0, Lcom/onesignal/OneSignal$13;->val$handler:Lcom/onesignal/OneSignal$PostNotificationResponseHandler;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/onesignal/OneSignal$PostNotificationResponseHandler;->onSuccess(Lorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1772
    .end local v0    # "jsonObject":Lorg/json/JSONObject;
    :goto_1
    goto :goto_2

    .line 1770
    :catchall_0
    move-exception v0

    .line 1771
    .local v0, "t":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1774
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_2
    :goto_2
    return-void
.end method
