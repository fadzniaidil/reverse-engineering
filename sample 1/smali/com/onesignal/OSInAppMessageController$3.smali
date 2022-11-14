.class Lcom/onesignal/OSInAppMessageController$3;
.super Lcom/onesignal/OneSignalRestClient$ResponseHandler;
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

.field final synthetic val$message:Lcom/onesignal/OSInAppMessage;


# direct methods
.method constructor <init>(Lcom/onesignal/OSInAppMessageController;Lcom/onesignal/OSInAppMessage;)V
    .locals 0
    .param p1, "this$0"    # Lcom/onesignal/OSInAppMessageController;

    .line 259
    iput-object p1, p0, Lcom/onesignal/OSInAppMessageController$3;->this$0:Lcom/onesignal/OSInAppMessageController;

    iput-object p2, p0, Lcom/onesignal/OSInAppMessageController$3;->val$message:Lcom/onesignal/OSInAppMessage;

    invoke-direct {p0}, Lcom/onesignal/OneSignalRestClient$ResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method onFailure(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "statusCode"    # I
    .param p2, "response"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    .line 272
    const-string v0, "impression"

    invoke-static {v0, p1, p2}, Lcom/onesignal/OSInAppMessageController;->access$200(Ljava/lang/String;ILjava/lang/String;)V

    .line 274
    iget-object v0, p0, Lcom/onesignal/OSInAppMessageController$3;->this$0:Lcom/onesignal/OSInAppMessageController;

    invoke-static {v0}, Lcom/onesignal/OSInAppMessageController;->access$100(Lcom/onesignal/OSInAppMessageController;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/onesignal/OSInAppMessageController$3;->val$message:Lcom/onesignal/OSInAppMessage;

    iget-object v1, v1, Lcom/onesignal/OSInAppMessage;->messageId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 275
    return-void
.end method

.method onSuccess(Ljava/lang/String;)V
    .locals 3
    .param p1, "response"    # Ljava/lang/String;

    .line 262
    const-string v0, "impression"

    invoke-static {v0, p1}, Lcom/onesignal/OSInAppMessageController;->access$000(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    sget-object v0, Lcom/onesignal/OneSignalPrefs;->PREFS_ONESIGNAL:Ljava/lang/String;

    iget-object v1, p0, Lcom/onesignal/OSInAppMessageController$3;->this$0:Lcom/onesignal/OSInAppMessageController;

    .line 267
    invoke-static {v1}, Lcom/onesignal/OSInAppMessageController;->access$100(Lcom/onesignal/OSInAppMessageController;)Ljava/util/Set;

    move-result-object v1

    .line 263
    const-string v2, "PREFS_OS_IMPRESSIONED_IAMS"

    invoke-static {v0, v2, v1}, Lcom/onesignal/OneSignalPrefs;->saveStringSet(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 268
    return-void
.end method
