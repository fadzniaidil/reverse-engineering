.class Lcom/onesignal/OSOutcomeEventsController$3;
.super Ljava/lang/Object;
.source "OSOutcomeEventsController.java"

# interfaces
.implements Lcom/onesignal/OneSignalApiResponseHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/OSOutcomeEventsController;->sendAndCreateOutcomeEvent(Ljava/lang/String;FLjava/util/List;Lcom/onesignal/OneSignal$OutcomeCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/onesignal/OSOutcomeEventsController;

.field final synthetic val$callback:Lcom/onesignal/OneSignal$OutcomeCallback;

.field final synthetic val$eventParams:Lcom/onesignal/outcomes/model/OSOutcomeEventParams;

.field final synthetic val$name:Ljava/lang/String;

.field final synthetic val$timestampSeconds:J


# direct methods
.method constructor <init>(Lcom/onesignal/OSOutcomeEventsController;Lcom/onesignal/outcomes/model/OSOutcomeEventParams;Lcom/onesignal/OneSignal$OutcomeCallback;JLjava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/onesignal/OSOutcomeEventsController;

    .line 221
    iput-object p1, p0, Lcom/onesignal/OSOutcomeEventsController$3;->this$0:Lcom/onesignal/OSOutcomeEventsController;

    iput-object p2, p0, Lcom/onesignal/OSOutcomeEventsController$3;->val$eventParams:Lcom/onesignal/outcomes/model/OSOutcomeEventParams;

    iput-object p3, p0, Lcom/onesignal/OSOutcomeEventsController$3;->val$callback:Lcom/onesignal/OneSignal$OutcomeCallback;

    iput-wide p4, p0, Lcom/onesignal/OSOutcomeEventsController$3;->val$timestampSeconds:J

    iput-object p6, p0, Lcom/onesignal/OSOutcomeEventsController$3;->val$name:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "statusCode"    # I
    .param p2, "response"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    .line 233
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/onesignal/OSOutcomeEventsController$3$1;

    invoke-direct {v1, p0}, Lcom/onesignal/OSOutcomeEventsController$3$1;-><init>(Lcom/onesignal/OSOutcomeEventsController$3;)V

    const-string v2, "OS_SAVE_OUTCOMES"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 241
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 243
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->WARN:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending outcome with name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/onesignal/OSOutcomeEventsController$3;->val$name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " failed with status code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " and response: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\nOutcome event was cached and will be reattempted on app cold start"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->onesignalLog(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 248
    iget-object v0, p0, Lcom/onesignal/OSOutcomeEventsController$3;->val$callback:Lcom/onesignal/OneSignal$OutcomeCallback;

    if-eqz v0, :cond_0

    .line 249
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/onesignal/OneSignal$OutcomeCallback;->onSuccess(Lcom/onesignal/OutcomeEvent;)V

    .line 250
    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 2
    .param p1, "response"    # Ljava/lang/String;

    .line 224
    iget-object v0, p0, Lcom/onesignal/OSOutcomeEventsController$3;->this$0:Lcom/onesignal/OSOutcomeEventsController;

    iget-object v1, p0, Lcom/onesignal/OSOutcomeEventsController$3;->val$eventParams:Lcom/onesignal/outcomes/model/OSOutcomeEventParams;

    invoke-static {v0, v1}, Lcom/onesignal/OSOutcomeEventsController;->access$200(Lcom/onesignal/OSOutcomeEventsController;Lcom/onesignal/outcomes/model/OSOutcomeEventParams;)V

    .line 227
    iget-object v0, p0, Lcom/onesignal/OSOutcomeEventsController$3;->val$callback:Lcom/onesignal/OneSignal$OutcomeCallback;

    if-eqz v0, :cond_0

    .line 228
    iget-object v1, p0, Lcom/onesignal/OSOutcomeEventsController$3;->val$eventParams:Lcom/onesignal/outcomes/model/OSOutcomeEventParams;

    invoke-static {v1}, Lcom/onesignal/OutcomeEvent;->fromOutcomeEventParamsV2toOutcomeEventV1(Lcom/onesignal/outcomes/model/OSOutcomeEventParams;)Lcom/onesignal/OutcomeEvent;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/onesignal/OneSignal$OutcomeCallback;->onSuccess(Lcom/onesignal/OutcomeEvent;)V

    .line 229
    :cond_0
    return-void
.end method
