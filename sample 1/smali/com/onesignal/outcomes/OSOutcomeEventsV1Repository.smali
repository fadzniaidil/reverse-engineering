.class Lcom/onesignal/outcomes/OSOutcomeEventsV1Repository;
.super Lcom/onesignal/outcomes/OSOutcomeEventsRepository;
.source "OSOutcomeEventsV1Repository.java"


# static fields
.field private static final DIRECT:Ljava/lang/String; = "direct"


# direct methods
.method constructor <init>(Lcom/onesignal/OSLogger;Lcom/onesignal/outcomes/OSOutcomeEventsCache;Lcom/onesignal/outcomes/domain/OutcomeEventsService;)V
    .locals 0
    .param p1, "logger"    # Lcom/onesignal/OSLogger;
    .param p2, "outcomeEventsCache"    # Lcom/onesignal/outcomes/OSOutcomeEventsCache;
    .param p3, "outcomeEventsService"    # Lcom/onesignal/outcomes/domain/OutcomeEventsService;

    .line 17
    invoke-direct {p0, p1, p2, p3}, Lcom/onesignal/outcomes/OSOutcomeEventsRepository;-><init>(Lcom/onesignal/OSLogger;Lcom/onesignal/outcomes/OSOutcomeEventsCache;Lcom/onesignal/outcomes/domain/OutcomeEventsService;)V

    .line 18
    return-void
.end method

.method private requestMeasureDirectOutcomeEvent(Ljava/lang/String;ILcom/onesignal/OutcomeEvent;Lcom/onesignal/OneSignalApiResponseHandler;)V
    .locals 3
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "deviceType"    # I
    .param p3, "event"    # Lcom/onesignal/OutcomeEvent;
    .param p4, "responseHandler"    # Lcom/onesignal/OneSignalApiResponseHandler;

    .line 40
    :try_start_0
    invoke-virtual {p3}, Lcom/onesignal/OutcomeEvent;->toJSONObjectForMeasure()Lorg/json/JSONObject;

    move-result-object v0

    .line 41
    .local v0, "jsonObject":Lorg/json/JSONObject;
    const-string v1, "app_id"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 42
    const-string v1, "device_type"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 43
    const-string v1, "direct"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 45
    iget-object v1, p0, Lcom/onesignal/outcomes/OSOutcomeEventsV1Repository;->outcomeEventsService:Lcom/onesignal/outcomes/domain/OutcomeEventsService;

    invoke-interface {v1, v0, p4}, Lcom/onesignal/outcomes/domain/OutcomeEventsService;->sendOutcomeEvent(Lorg/json/JSONObject;Lcom/onesignal/OneSignalApiResponseHandler;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .end local v0    # "jsonObject":Lorg/json/JSONObject;
    goto :goto_0

    .line 46
    :catch_0
    move-exception v0

    .line 47
    .local v0, "e":Lorg/json/JSONException;
    iget-object v1, p0, Lcom/onesignal/outcomes/OSOutcomeEventsV1Repository;->logger:Lcom/onesignal/OSLogger;

    const-string v2, "Generating direct outcome:JSON Failed."

    invoke-interface {v1, v2, v0}, Lcom/onesignal/OSLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 49
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_0
    return-void
.end method

.method private requestMeasureIndirectOutcomeEvent(Ljava/lang/String;ILcom/onesignal/OutcomeEvent;Lcom/onesignal/OneSignalApiResponseHandler;)V
    .locals 3
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "deviceType"    # I
    .param p3, "event"    # Lcom/onesignal/OutcomeEvent;
    .param p4, "responseHandler"    # Lcom/onesignal/OneSignalApiResponseHandler;

    .line 53
    :try_start_0
    invoke-virtual {p3}, Lcom/onesignal/OutcomeEvent;->toJSONObjectForMeasure()Lorg/json/JSONObject;

    move-result-object v0

    .line 54
    .local v0, "jsonObject":Lorg/json/JSONObject;
    const-string v1, "app_id"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 55
    const-string v1, "device_type"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 56
    const-string v1, "direct"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 58
    iget-object v1, p0, Lcom/onesignal/outcomes/OSOutcomeEventsV1Repository;->outcomeEventsService:Lcom/onesignal/outcomes/domain/OutcomeEventsService;

    invoke-interface {v1, v0, p4}, Lcom/onesignal/outcomes/domain/OutcomeEventsService;->sendOutcomeEvent(Lorg/json/JSONObject;Lcom/onesignal/OneSignalApiResponseHandler;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    .end local v0    # "jsonObject":Lorg/json/JSONObject;
    goto :goto_0

    .line 59
    :catch_0
    move-exception v0

    .line 60
    .local v0, "e":Lorg/json/JSONException;
    iget-object v1, p0, Lcom/onesignal/outcomes/OSOutcomeEventsV1Repository;->logger:Lcom/onesignal/OSLogger;

    const-string v2, "Generating indirect outcome:JSON Failed."

    invoke-interface {v1, v2, v0}, Lcom/onesignal/OSLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 62
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_0
    return-void
.end method

.method private requestMeasureUnattributedOutcomeEvent(Ljava/lang/String;ILcom/onesignal/OutcomeEvent;Lcom/onesignal/OneSignalApiResponseHandler;)V
    .locals 3
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "deviceType"    # I
    .param p3, "event"    # Lcom/onesignal/OutcomeEvent;
    .param p4, "responseHandler"    # Lcom/onesignal/OneSignalApiResponseHandler;

    .line 66
    :try_start_0
    invoke-virtual {p3}, Lcom/onesignal/OutcomeEvent;->toJSONObjectForMeasure()Lorg/json/JSONObject;

    move-result-object v0

    .line 67
    .local v0, "jsonObject":Lorg/json/JSONObject;
    const-string v1, "app_id"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 68
    const-string v1, "device_type"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 70
    iget-object v1, p0, Lcom/onesignal/outcomes/OSOutcomeEventsV1Repository;->outcomeEventsService:Lcom/onesignal/outcomes/domain/OutcomeEventsService;

    invoke-interface {v1, v0, p4}, Lcom/onesignal/outcomes/domain/OutcomeEventsService;->sendOutcomeEvent(Lorg/json/JSONObject;Lcom/onesignal/OneSignalApiResponseHandler;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    .end local v0    # "jsonObject":Lorg/json/JSONObject;
    goto :goto_0

    .line 71
    :catch_0
    move-exception v0

    .line 72
    .local v0, "e":Lorg/json/JSONException;
    iget-object v1, p0, Lcom/onesignal/outcomes/OSOutcomeEventsV1Repository;->logger:Lcom/onesignal/OSLogger;

    const-string v2, "Generating unattributed outcome:JSON Failed."

    invoke-interface {v1, v2, v0}, Lcom/onesignal/OSLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 74
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_0
    return-void
.end method


# virtual methods
.method public requestMeasureOutcomeEvent(Ljava/lang/String;ILcom/onesignal/outcomes/model/OSOutcomeEventParams;Lcom/onesignal/OneSignalApiResponseHandler;)V
    .locals 3
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "deviceType"    # I
    .param p3, "eventParams"    # Lcom/onesignal/outcomes/model/OSOutcomeEventParams;
    .param p4, "responseHandler"    # Lcom/onesignal/OneSignalApiResponseHandler;

    .line 22
    invoke-static {p3}, Lcom/onesignal/OutcomeEvent;->fromOutcomeEventParamsV2toOutcomeEventV1(Lcom/onesignal/outcomes/model/OSOutcomeEventParams;)Lcom/onesignal/OutcomeEvent;

    move-result-object v0

    .line 23
    .local v0, "event":Lcom/onesignal/OutcomeEvent;
    sget-object v1, Lcom/onesignal/outcomes/OSOutcomeEventsV1Repository$1;->$SwitchMap$com$onesignal$influence$model$OSInfluenceType:[I

    invoke-virtual {v0}, Lcom/onesignal/OutcomeEvent;->getSession()Lcom/onesignal/influence/model/OSInfluenceType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onesignal/influence/model/OSInfluenceType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 31
    :pswitch_0
    invoke-direct {p0, p1, p2, v0, p4}, Lcom/onesignal/outcomes/OSOutcomeEventsV1Repository;->requestMeasureUnattributedOutcomeEvent(Ljava/lang/String;ILcom/onesignal/OutcomeEvent;Lcom/onesignal/OneSignalApiResponseHandler;)V

    .line 32
    goto :goto_0

    .line 28
    :pswitch_1
    invoke-direct {p0, p1, p2, v0, p4}, Lcom/onesignal/outcomes/OSOutcomeEventsV1Repository;->requestMeasureIndirectOutcomeEvent(Ljava/lang/String;ILcom/onesignal/OutcomeEvent;Lcom/onesignal/OneSignalApiResponseHandler;)V

    .line 29
    goto :goto_0

    .line 25
    :pswitch_2
    invoke-direct {p0, p1, p2, v0, p4}, Lcom/onesignal/outcomes/OSOutcomeEventsV1Repository;->requestMeasureDirectOutcomeEvent(Ljava/lang/String;ILcom/onesignal/OutcomeEvent;Lcom/onesignal/OneSignalApiResponseHandler;)V

    .line 26
    nop

    .line 36
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
