.class Lcom/onesignal/OneSignalRestClientWrapper$6;
.super Lcom/onesignal/OneSignalRestClient$ResponseHandler;
.source "OneSignalRestClientWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/OneSignalRestClientWrapper;->postSync(Ljava/lang/String;Lorg/json/JSONObject;Lcom/onesignal/OneSignalApiResponseHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/onesignal/OneSignalRestClientWrapper;

.field final synthetic val$responseHandler:Lcom/onesignal/OneSignalApiResponseHandler;


# direct methods
.method constructor <init>(Lcom/onesignal/OneSignalRestClientWrapper;Lcom/onesignal/OneSignalApiResponseHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/onesignal/OneSignalRestClientWrapper;

    .line 86
    iput-object p1, p0, Lcom/onesignal/OneSignalRestClientWrapper$6;->this$0:Lcom/onesignal/OneSignalRestClientWrapper;

    iput-object p2, p0, Lcom/onesignal/OneSignalRestClientWrapper$6;->val$responseHandler:Lcom/onesignal/OneSignalApiResponseHandler;

    invoke-direct {p0}, Lcom/onesignal/OneSignalRestClient$ResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "statusCode"    # I
    .param p2, "response"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    .line 94
    iget-object v0, p0, Lcom/onesignal/OneSignalRestClientWrapper$6;->val$responseHandler:Lcom/onesignal/OneSignalApiResponseHandler;

    invoke-interface {v0, p1, p2, p3}, Lcom/onesignal/OneSignalApiResponseHandler;->onFailure(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 95
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 1
    .param p1, "response"    # Ljava/lang/String;

    .line 89
    iget-object v0, p0, Lcom/onesignal/OneSignalRestClientWrapper$6;->val$responseHandler:Lcom/onesignal/OneSignalApiResponseHandler;

    invoke-interface {v0, p1}, Lcom/onesignal/OneSignalApiResponseHandler;->onSuccess(Ljava/lang/String;)V

    .line 90
    return-void
.end method