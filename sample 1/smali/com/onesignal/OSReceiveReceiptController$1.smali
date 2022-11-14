.class Lcom/onesignal/OSReceiveReceiptController$1;
.super Lcom/onesignal/OneSignalRestClient$ResponseHandler;
.source "OSReceiveReceiptController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/OSReceiveReceiptController;->sendReceiveReceipt(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/onesignal/OSReceiveReceiptController;

.field final synthetic val$notificationId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/onesignal/OSReceiveReceiptController;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/onesignal/OSReceiveReceiptController;

    .line 56
    iput-object p1, p0, Lcom/onesignal/OSReceiveReceiptController$1;->this$0:Lcom/onesignal/OSReceiveReceiptController;

    iput-object p2, p0, Lcom/onesignal/OSReceiveReceiptController$1;->val$notificationId:Ljava/lang/String;

    invoke-direct {p0}, Lcom/onesignal/OneSignalRestClient$ResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method onFailure(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "statusCode"    # I
    .param p2, "response"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    .line 64
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Receive receipt failed with statusCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " response: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method onSuccess(Ljava/lang/String;)V
    .locals 3
    .param p1, "response"    # Ljava/lang/String;

    .line 59
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Receive receipt sent for notificationID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/onesignal/OSReceiveReceiptController$1;->val$notificationId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 60
    return-void
.end method
