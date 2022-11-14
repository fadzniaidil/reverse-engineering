.class Lcom/onesignal/OSReceiveReceiptRepository;
.super Ljava/lang/Object;
.source "OSReceiveReceiptRepository.java"


# static fields
.field private static final APP_ID:Ljava/lang/String; = "app_id"

.field private static final PLAYER_ID:Ljava/lang/String; = "player_id"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method sendReceiveReceipt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/onesignal/OneSignalRestClient$ResponseHandler;)V
    .locals 3
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "playerId"    # Ljava/lang/String;
    .param p3, "notificationId"    # Ljava/lang/String;
    .param p4, "responseHandler"    # Lcom/onesignal/OneSignalRestClient$ResponseHandler;

    .line 42
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "app_id"

    .line 43
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "player_id"

    .line 44
    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    .line 46
    .local v0, "jsonBody":Lorg/json/JSONObject;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifications/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/report_received"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0, p4}, Lcom/onesignal/OneSignalRestClient;->put(Ljava/lang/String;Lorg/json/JSONObject;Lcom/onesignal/OneSignalRestClient$ResponseHandler;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .end local v0    # "jsonBody":Lorg/json/JSONObject;
    goto :goto_0

    .line 47
    :catch_0
    move-exception v0

    .line 48
    .local v0, "e":Lorg/json/JSONException;
    sget-object v1, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v2, "Generating direct receive receipt:JSON Failed."

    invoke-static {v1, v2, v0}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 50
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_0
    return-void
.end method
