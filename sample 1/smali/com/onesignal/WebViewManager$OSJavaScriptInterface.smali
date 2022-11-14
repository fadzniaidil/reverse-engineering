.class Lcom/onesignal/WebViewManager$OSJavaScriptInterface;
.super Ljava/lang/Object;
.source "WebViewManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onesignal/WebViewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OSJavaScriptInterface"
.end annotation


# static fields
.field static final EVENT_TYPE_ACTION_TAKEN:Ljava/lang/String; = "action_taken"

.field static final EVENT_TYPE_KEY:Ljava/lang/String; = "type"

.field static final EVENT_TYPE_RENDERING_COMPLETE:Ljava/lang/String; = "rendering_complete"

.field static final GET_PAGE_META_DATA_JS_FUNCTION:Ljava/lang/String; = "getPageMetaData()"

.field static final IAM_DISPLAY_LOCATION_KEY:Ljava/lang/String; = "displayLocation"

.field static final IAM_PAGE_META_DATA_KEY:Ljava/lang/String; = "pageMetaData"

.field static final JS_OBJ_NAME:Ljava/lang/String; = "OSAndroid"


# instance fields
.field final synthetic this$0:Lcom/onesignal/WebViewManager;


# direct methods
.method constructor <init>(Lcom/onesignal/WebViewManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/onesignal/WebViewManager;

    .line 150
    iput-object p1, p0, Lcom/onesignal/WebViewManager$OSJavaScriptInterface;->this$0:Lcom/onesignal/WebViewManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getDisplayLocation(Lorg/json/JSONObject;)Lcom/onesignal/WebViewManager$Position;
    .locals 4
    .param p1, "jsonObject"    # Lorg/json/JSONObject;

    .line 196
    const-string v0, "displayLocation"

    sget-object v1, Lcom/onesignal/WebViewManager$Position;->FULL_SCREEN:Lcom/onesignal/WebViewManager$Position;

    .line 198
    .local v1, "displayLocation":Lcom/onesignal/WebViewManager$Position;
    :try_start_0
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 199
    const-string v2, "FULL_SCREEN"

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/onesignal/WebViewManager$Position;->valueOf(Ljava/lang/String;)Lcom/onesignal/WebViewManager$Position;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    .line 202
    :cond_0
    goto :goto_0

    .line 200
    :catch_0
    move-exception v0

    .line 201
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 203
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_0
    return-object v1
.end method

.method private getPageHeightData(Lorg/json/JSONObject;)I
    .locals 2
    .param p1, "jsonObject"    # Lorg/json/JSONObject;

    .line 189
    :try_start_0
    iget-object v0, p0, Lcom/onesignal/WebViewManager$OSJavaScriptInterface;->this$0:Lcom/onesignal/WebViewManager;

    invoke-static {v0}, Lcom/onesignal/WebViewManager;->access$400(Lcom/onesignal/WebViewManager;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "pageMetaData"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/onesignal/WebViewManager;->access$500(Landroid/app/Activity;Lorg/json/JSONObject;)I

    move-result v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 190
    :catch_0
    move-exception v0

    .line 191
    .local v0, "e":Lorg/json/JSONException;
    const/4 v1, -0x1

    return v1
.end method

.method private handleActionTaken(Lorg/json/JSONObject;)V
    .locals 5
    .param p1, "jsonObject"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 207
    const-string v0, "body"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 208
    .local v0, "body":Lorg/json/JSONObject;
    const-string v1, "id"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 209
    .local v1, "id":Ljava/lang/String;
    iget-object v3, p0, Lcom/onesignal/WebViewManager$OSJavaScriptInterface;->this$0:Lcom/onesignal/WebViewManager;

    invoke-static {v3}, Lcom/onesignal/WebViewManager;->access$600(Lcom/onesignal/WebViewManager;)Lcom/onesignal/OSInAppMessage;

    move-result-object v3

    iget-boolean v3, v3, Lcom/onesignal/OSInAppMessage;->isPreview:Z

    if-eqz v3, :cond_0

    .line 210
    invoke-static {}, Lcom/onesignal/OneSignal;->getInAppMessageController()Lcom/onesignal/OSInAppMessageController;

    move-result-object v3

    iget-object v4, p0, Lcom/onesignal/WebViewManager$OSJavaScriptInterface;->this$0:Lcom/onesignal/WebViewManager;

    invoke-static {v4}, Lcom/onesignal/WebViewManager;->access$600(Lcom/onesignal/WebViewManager;)Lcom/onesignal/OSInAppMessage;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Lcom/onesignal/OSInAppMessageController;->onMessageActionOccurredOnPreview(Lcom/onesignal/OSInAppMessage;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 211
    :cond_0
    if-eqz v1, :cond_1

    .line 212
    invoke-static {}, Lcom/onesignal/OneSignal;->getInAppMessageController()Lcom/onesignal/OSInAppMessageController;

    move-result-object v3

    iget-object v4, p0, Lcom/onesignal/WebViewManager$OSJavaScriptInterface;->this$0:Lcom/onesignal/WebViewManager;

    invoke-static {v4}, Lcom/onesignal/WebViewManager;->access$600(Lcom/onesignal/WebViewManager;)Lcom/onesignal/OSInAppMessage;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Lcom/onesignal/OSInAppMessageController;->onMessageActionOccurredOnMessage(Lcom/onesignal/OSInAppMessage;Lorg/json/JSONObject;)V

    .line 215
    :cond_1
    :goto_0
    const-string v3, "close"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 216
    .local v3, "close":Z
    if-eqz v3, :cond_2

    .line 217
    iget-object v4, p0, Lcom/onesignal/WebViewManager$OSJavaScriptInterface;->this$0:Lcom/onesignal/WebViewManager;

    invoke-virtual {v4, v2}, Lcom/onesignal/WebViewManager;->dismissAndAwaitNextMessage(Lcom/onesignal/WebViewManager$OneSignalGenericCallback;)V

    .line 218
    :cond_2
    return-void
.end method

.method private handleRenderComplete(Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "jsonObject"    # Lorg/json/JSONObject;

    .line 182
    invoke-direct {p0, p1}, Lcom/onesignal/WebViewManager$OSJavaScriptInterface;->getDisplayLocation(Lorg/json/JSONObject;)Lcom/onesignal/WebViewManager$Position;

    move-result-object v0

    .line 183
    .local v0, "displayType":Lcom/onesignal/WebViewManager$Position;
    sget-object v1, Lcom/onesignal/WebViewManager$Position;->FULL_SCREEN:Lcom/onesignal/WebViewManager$Position;

    if-ne v0, v1, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/onesignal/WebViewManager$OSJavaScriptInterface;->getPageHeightData(Lorg/json/JSONObject;)I

    move-result v1

    .line 184
    .local v1, "pageHeight":I
    :goto_0
    iget-object v2, p0, Lcom/onesignal/WebViewManager$OSJavaScriptInterface;->this$0:Lcom/onesignal/WebViewManager;

    invoke-static {v2, v0, v1}, Lcom/onesignal/WebViewManager;->access$300(Lcom/onesignal/WebViewManager;Lcom/onesignal/WebViewManager$Position;I)V

    .line 185
    return-void
.end method


# virtual methods
.method public postMessage(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 165
    :try_start_0
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OSJavaScriptInterface:postMessage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->onesignalLog(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 167
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 168
    .local v0, "jsonObject":Lorg/json/JSONObject;
    const-string v1, "type"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 170
    .local v1, "messageType":Ljava/lang/String;
    const-string v2, "rendering_complete"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 171
    invoke-direct {p0, v0}, Lcom/onesignal/WebViewManager$OSJavaScriptInterface;->handleRenderComplete(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 172
    :cond_0
    const-string v2, "action_taken"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/onesignal/WebViewManager$OSJavaScriptInterface;->this$0:Lcom/onesignal/WebViewManager;

    invoke-static {v2}, Lcom/onesignal/WebViewManager;->access$200(Lcom/onesignal/WebViewManager;)Lcom/onesignal/InAppMessageView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onesignal/InAppMessageView;->isDragging()Z

    move-result v2

    if-nez v2, :cond_1

    .line 174
    invoke-direct {p0, v0}, Lcom/onesignal/WebViewManager$OSJavaScriptInterface;->handleActionTaken(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    .end local v0    # "jsonObject":Lorg/json/JSONObject;
    .end local v1    # "messageType":Ljava/lang/String;
    :cond_1
    :goto_0
    goto :goto_1

    .line 176
    :catch_0
    move-exception v0

    .line 177
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 179
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_1
    return-void
.end method
