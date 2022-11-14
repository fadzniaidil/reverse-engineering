.class Lcom/onesignal/outcomes/OSOutcomeEventsV2Repository;
.super Lcom/onesignal/outcomes/OSOutcomeEventsRepository;
.source "OSOutcomeEventsV2Repository.java"


# direct methods
.method constructor <init>(Lcom/onesignal/OSLogger;Lcom/onesignal/outcomes/OSOutcomeEventsCache;Lcom/onesignal/outcomes/domain/OutcomeEventsService;)V
    .locals 0
    .param p1, "logger"    # Lcom/onesignal/OSLogger;
    .param p2, "outcomeEventsCache"    # Lcom/onesignal/outcomes/OSOutcomeEventsCache;
    .param p3, "outcomeEventsService"    # Lcom/onesignal/outcomes/domain/OutcomeEventsService;

    .line 14
    invoke-direct {p0, p1, p2, p3}, Lcom/onesignal/outcomes/OSOutcomeEventsRepository;-><init>(Lcom/onesignal/OSLogger;Lcom/onesignal/outcomes/OSOutcomeEventsCache;Lcom/onesignal/outcomes/domain/OutcomeEventsService;)V

    .line 15
    return-void
.end method


# virtual methods
.method public requestMeasureOutcomeEvent(Ljava/lang/String;ILcom/onesignal/outcomes/model/OSOutcomeEventParams;Lcom/onesignal/OneSignalApiResponseHandler;)V
    .locals 3
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "deviceType"    # I
    .param p3, "event"    # Lcom/onesignal/outcomes/model/OSOutcomeEventParams;
    .param p4, "responseHandler"    # Lcom/onesignal/OneSignalApiResponseHandler;

    .line 20
    :try_start_0
    invoke-virtual {p3}, Lcom/onesignal/outcomes/model/OSOutcomeEventParams;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    .line 21
    .local v0, "jsonObject":Lorg/json/JSONObject;
    const-string v1, "app_id"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 22
    const-string v1, "device_type"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 24
    iget-object v1, p0, Lcom/onesignal/outcomes/OSOutcomeEventsV2Repository;->outcomeEventsService:Lcom/onesignal/outcomes/domain/OutcomeEventsService;

    invoke-interface {v1, v0, p4}, Lcom/onesignal/outcomes/domain/OutcomeEventsService;->sendOutcomeEvent(Lorg/json/JSONObject;Lcom/onesignal/OneSignalApiResponseHandler;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    .end local v0    # "jsonObject":Lorg/json/JSONObject;
    goto :goto_0

    .line 25
    :catch_0
    move-exception v0

    .line 26
    .local v0, "e":Lorg/json/JSONException;
    iget-object v1, p0, Lcom/onesignal/outcomes/OSOutcomeEventsV2Repository;->logger:Lcom/onesignal/OSLogger;

    const-string v2, "Generating indirect outcome:JSON Failed."

    invoke-interface {v1, v2, v0}, Lcom/onesignal/OSLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 28
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_0
    return-void
.end method
