.class Lcom/onesignal/OSInAppMessageController$10;
.super Lcom/onesignal/OneSignalRestClient$ResponseHandler;
.source "OSInAppMessageController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/OSInAppMessageController;->displayMessage(Lcom/onesignal/OSInAppMessage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/onesignal/OSInAppMessageController;

.field final synthetic val$message:Lcom/onesignal/OSInAppMessage;


# direct methods
.method constructor <init>(Lcom/onesignal/OSInAppMessageController;Lcom/onesignal/OSInAppMessage;)V
    .locals 0
    .param p1, "this$0"    # Lcom/onesignal/OSInAppMessageController;

    .line 666
    iput-object p1, p0, Lcom/onesignal/OSInAppMessageController$10;->this$0:Lcom/onesignal/OSInAppMessageController;

    iput-object p2, p0, Lcom/onesignal/OSInAppMessageController$10;->val$message:Lcom/onesignal/OSInAppMessage;

    invoke-direct {p0}, Lcom/onesignal/OneSignalRestClient$ResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method onFailure(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "statusCode"    # I
    .param p2, "response"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    .line 669
    iget-object v0, p0, Lcom/onesignal/OSInAppMessageController$10;->this$0:Lcom/onesignal/OSInAppMessageController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/onesignal/OSInAppMessageController;->access$802(Lcom/onesignal/OSInAppMessageController;Z)Z

    .line 671
    const-string v0, "html"

    invoke-static {v0, p1, p2}, Lcom/onesignal/OSInAppMessageController;->access$200(Ljava/lang/String;ILjava/lang/String;)V

    .line 673
    invoke-static {p1}, Lcom/onesignal/OSUtils;->shouldRetryNetworkRequest(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/onesignal/OSInAppMessageController$10;->this$0:Lcom/onesignal/OSInAppMessageController;

    invoke-static {v0}, Lcom/onesignal/OSInAppMessageController;->access$900(Lcom/onesignal/OSInAppMessageController;)I

    move-result v0

    sget v2, Lcom/onesignal/OSUtils;->MAX_NETWORK_REQUEST_ATTEMPT_COUNT:I

    if-lt v0, v2, :cond_0

    goto :goto_0

    .line 681
    :cond_0
    iget-object v0, p0, Lcom/onesignal/OSInAppMessageController$10;->this$0:Lcom/onesignal/OSInAppMessageController;

    invoke-static {v0}, Lcom/onesignal/OSInAppMessageController;->access$908(Lcom/onesignal/OSInAppMessageController;)I

    .line 685
    iget-object v0, p0, Lcom/onesignal/OSInAppMessageController$10;->this$0:Lcom/onesignal/OSInAppMessageController;

    iget-object v1, p0, Lcom/onesignal/OSInAppMessageController$10;->val$message:Lcom/onesignal/OSInAppMessage;

    invoke-static {v0, v1}, Lcom/onesignal/OSInAppMessageController;->access$1000(Lcom/onesignal/OSInAppMessageController;Lcom/onesignal/OSInAppMessage;)V

    .line 686
    return-void

    .line 675
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/onesignal/OSInAppMessageController$10;->this$0:Lcom/onesignal/OSInAppMessageController;

    invoke-static {v0, v1}, Lcom/onesignal/OSInAppMessageController;->access$902(Lcom/onesignal/OSInAppMessageController;I)I

    .line 676
    iget-object v0, p0, Lcom/onesignal/OSInAppMessageController$10;->this$0:Lcom/onesignal/OSInAppMessageController;

    iget-object v1, p0, Lcom/onesignal/OSInAppMessageController$10;->val$message:Lcom/onesignal/OSInAppMessage;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/onesignal/OSInAppMessageController;->messageWasDismissed(Lcom/onesignal/OSInAppMessage;Z)V

    .line 677
    return-void
.end method

.method onSuccess(Ljava/lang/String;)V
    .locals 6
    .param p1, "response"    # Ljava/lang/String;

    .line 691
    iget-object v0, p0, Lcom/onesignal/OSInAppMessageController$10;->this$0:Lcom/onesignal/OSInAppMessageController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/onesignal/OSInAppMessageController;->access$902(Lcom/onesignal/OSInAppMessageController;I)I

    .line 694
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 695
    .local v0, "jsonResponse":Lorg/json/JSONObject;
    const-string v1, "html"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 697
    .local v1, "htmlStr":Ljava/lang/String;
    const-string v2, "display_duration"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 698
    .local v2, "displayDuration":D
    iget-object v4, p0, Lcom/onesignal/OSInAppMessageController$10;->val$message:Lcom/onesignal/OSInAppMessage;

    invoke-virtual {v4, v2, v3}, Lcom/onesignal/OSInAppMessage;->setDisplayDuration(D)V

    .line 700
    invoke-static {}, Lcom/onesignal/OneSignal;->getSessionManager()Lcom/onesignal/OSSessionManager;

    move-result-object v4

    iget-object v5, p0, Lcom/onesignal/OSInAppMessageController$10;->val$message:Lcom/onesignal/OSInAppMessage;

    iget-object v5, v5, Lcom/onesignal/OSInAppMessage;->messageId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/onesignal/OSSessionManager;->onInAppMessageReceived(Ljava/lang/String;)V

    .line 701
    iget-object v4, p0, Lcom/onesignal/OSInAppMessageController$10;->val$message:Lcom/onesignal/OSInAppMessage;

    invoke-static {v4, v1}, Lcom/onesignal/WebViewManager;->showHTMLString(Lcom/onesignal/OSInAppMessage;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 704
    .end local v0    # "jsonResponse":Lorg/json/JSONObject;
    .end local v1    # "htmlStr":Ljava/lang/String;
    .end local v2    # "displayDuration":D
    goto :goto_0

    .line 702
    :catch_0
    move-exception v0

    .line 703
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 705
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_0
    return-void
.end method
