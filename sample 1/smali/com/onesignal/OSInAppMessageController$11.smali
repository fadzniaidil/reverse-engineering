.class Lcom/onesignal/OSInAppMessageController$11;
.super Lcom/onesignal/OneSignalRestClient$ResponseHandler;
.source "OSInAppMessageController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/OSInAppMessageController;->displayPreviewMessage(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/onesignal/OSInAppMessageController;


# direct methods
.method constructor <init>(Lcom/onesignal/OSInAppMessageController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/onesignal/OSInAppMessageController;

    .line 713
    iput-object p1, p0, Lcom/onesignal/OSInAppMessageController$11;->this$0:Lcom/onesignal/OSInAppMessageController;

    invoke-direct {p0}, Lcom/onesignal/OneSignalRestClient$ResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method onFailure(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "statusCode"    # I
    .param p2, "response"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    .line 716
    const-string v0, "html"

    invoke-static {v0, p1, p2}, Lcom/onesignal/OSInAppMessageController;->access$200(Ljava/lang/String;ILjava/lang/String;)V

    .line 718
    iget-object v0, p0, Lcom/onesignal/OSInAppMessageController$11;->this$0:Lcom/onesignal/OSInAppMessageController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/onesignal/OSInAppMessageController;->access$1100(Lcom/onesignal/OSInAppMessageController;Lcom/onesignal/OSInAppMessage;)V

    .line 719
    return-void
.end method

.method onSuccess(Ljava/lang/String;)V
    .locals 5
    .param p1, "response"    # Ljava/lang/String;

    .line 724
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 725
    .local v0, "jsonResponse":Lorg/json/JSONObject;
    const-string v1, "html"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 727
    .local v1, "htmlStr":Ljava/lang/String;
    new-instance v2, Lcom/onesignal/OSInAppMessage;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcom/onesignal/OSInAppMessage;-><init>(Z)V

    .line 729
    .local v2, "message":Lcom/onesignal/OSInAppMessage;
    const-string v3, "display_duration"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v3

    .line 730
    .local v3, "displayDuration":D
    invoke-virtual {v2, v3, v4}, Lcom/onesignal/OSInAppMessage;->setDisplayDuration(D)V

    .line 732
    invoke-static {v2, v1}, Lcom/onesignal/WebViewManager;->showHTMLString(Lcom/onesignal/OSInAppMessage;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 735
    .end local v0    # "jsonResponse":Lorg/json/JSONObject;
    .end local v1    # "htmlStr":Ljava/lang/String;
    .end local v2    # "message":Lcom/onesignal/OSInAppMessage;
    .end local v3    # "displayDuration":D
    goto :goto_0

    .line 733
    :catch_0
    move-exception v0

    .line 734
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 736
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_0
    return-void
.end method
