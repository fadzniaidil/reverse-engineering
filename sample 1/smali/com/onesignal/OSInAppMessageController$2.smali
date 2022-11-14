.class Lcom/onesignal/OSInAppMessageController$2;
.super Lorg/json/JSONObject;
.source "OSInAppMessageController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/OSInAppMessageController;->onMessageWasShown(Lcom/onesignal/OSInAppMessage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/onesignal/OSInAppMessageController;

.field final synthetic val$variantId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/onesignal/OSInAppMessageController;Ljava/lang/String;)V
    .locals 2
    .param p1, "this$0"    # Lcom/onesignal/OSInAppMessageController;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 251
    iput-object p1, p0, Lcom/onesignal/OSInAppMessageController$2;->this$0:Lcom/onesignal/OSInAppMessageController;

    iput-object p2, p0, Lcom/onesignal/OSInAppMessageController$2;->val$variantId:Ljava/lang/String;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    .line 252
    sget-object v0, Lcom/onesignal/OneSignal;->appId:Ljava/lang/String;

    const-string v1, "app_id"

    invoke-virtual {p0, v1, v0}, Lcom/onesignal/OSInAppMessageController$2;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 253
    invoke-static {}, Lcom/onesignal/OneSignal;->getUserId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "player_id"

    invoke-virtual {p0, v1, v0}, Lcom/onesignal/OSInAppMessageController$2;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 254
    const-string v0, "variant_id"

    invoke-virtual {p0, v0, p2}, Lcom/onesignal/OSInAppMessageController$2;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 255
    new-instance p2, Lcom/onesignal/OSUtils;

    invoke-direct {p2}, Lcom/onesignal/OSUtils;-><init>()V

    invoke-virtual {p2}, Lcom/onesignal/OSUtils;->getDeviceType()I

    move-result p2

    const-string v0, "device_type"

    invoke-virtual {p0, v0, p2}, Lcom/onesignal/OSInAppMessageController$2;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 256
    const-string p2, "first_impression"

    const/4 v0, 0x1

    invoke-virtual {p0, p2, v0}, Lcom/onesignal/OSInAppMessageController$2;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 257
    return-void
.end method
