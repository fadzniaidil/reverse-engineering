.class final Lcom/onesignal/OneSignal$11;
.super Ljava/lang/Object;
.source "OneSignal.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/OneSignal;->setExternalUserId(Ljava/lang/String;Lcom/onesignal/OneSignal$OSExternalUserIdUpdateCompletionHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$completionCallback:Lcom/onesignal/OneSignal$OSExternalUserIdUpdateCompletionHandler;

.field final synthetic val$externalId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/onesignal/OneSignal$OSExternalUserIdUpdateCompletionHandler;)V
    .locals 0

    .line 1560
    iput-object p1, p0, Lcom/onesignal/OneSignal$11;->val$externalId:Ljava/lang/String;

    iput-object p2, p0, Lcom/onesignal/OneSignal$11;->val$completionCallback:Lcom/onesignal/OneSignal$OSExternalUserIdUpdateCompletionHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1563
    iget-object v0, p0, Lcom/onesignal/OneSignal$11;->val$externalId:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1564
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->WARN:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v1, "External id can\'t be null, set an empty string to remove an external id"

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 1565
    return-void

    .line 1569
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/onesignal/OneSignal$11;->val$completionCallback:Lcom/onesignal/OneSignal$OSExternalUserIdUpdateCompletionHandler;

    invoke-static {v0, v1}, Lcom/onesignal/OneSignalStateSynchronizer;->setExternalUserId(Ljava/lang/String;Lcom/onesignal/OneSignal$OSExternalUserIdUpdateCompletionHandler;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1574
    goto :goto_1

    .line 1570
    :catch_0
    move-exception v0

    .line 1571
    .local v0, "exception":Lorg/json/JSONException;
    iget-object v1, p0, Lcom/onesignal/OneSignal$11;->val$externalId:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "remove"

    goto :goto_0

    :cond_1
    const-string v1, "set"

    .line 1572
    .local v1, "operation":Ljava/lang/String;
    :goto_0
    sget-object v2, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempted to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " external ID but encountered a JSON exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/onesignal/OneSignal;->onesignalLog(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 1573
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 1575
    .end local v0    # "exception":Lorg/json/JSONException;
    .end local v1    # "operation":Ljava/lang/String;
    :goto_1
    return-void
.end method
