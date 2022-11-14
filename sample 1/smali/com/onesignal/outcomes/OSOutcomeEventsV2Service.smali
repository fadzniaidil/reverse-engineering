.class Lcom/onesignal/outcomes/OSOutcomeEventsV2Service;
.super Lcom/onesignal/outcomes/OSOutcomeEventsClient;
.source "OSOutcomeEventsV2Service.java"


# direct methods
.method constructor <init>(Lcom/onesignal/OneSignalAPIClient;)V
    .locals 0
    .param p1, "client"    # Lcom/onesignal/OneSignalAPIClient;

    .line 11
    invoke-direct {p0, p1}, Lcom/onesignal/outcomes/OSOutcomeEventsClient;-><init>(Lcom/onesignal/OneSignalAPIClient;)V

    .line 12
    return-void
.end method


# virtual methods
.method public sendOutcomeEvent(Lorg/json/JSONObject;Lcom/onesignal/OneSignalApiResponseHandler;)V
    .locals 2
    .param p1, "object"    # Lorg/json/JSONObject;
    .param p2, "responseHandler"    # Lcom/onesignal/OneSignalApiResponseHandler;

    .line 18
    iget-object v0, p0, Lcom/onesignal/outcomes/OSOutcomeEventsV2Service;->client:Lcom/onesignal/OneSignalAPIClient;

    const-string v1, "outcomes/measure_sources"

    invoke-interface {v0, v1, p1, p2}, Lcom/onesignal/OneSignalAPIClient;->post(Ljava/lang/String;Lorg/json/JSONObject;Lcom/onesignal/OneSignalApiResponseHandler;)V

    .line 19
    return-void
.end method
