.class public Lcom/onesignal/NotificationRestoreService;
.super Landroid/app/IntentService;
.source "NotificationRestoreService.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    const-string v0, "NotificationRestoreService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 38
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 42
    if-nez p1, :cond_0

    .line 43
    return-void

    .line 45
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 46
    invoke-static {p0}, Lcom/onesignal/OneSignal;->setAppContext(Landroid/content/Context;)V

    .line 48
    invoke-static {p0}, Lcom/onesignal/NotificationRestorer;->restore(Landroid/content/Context;)V

    .line 49
    invoke-static {p1}, Landroidx/legacy/content/WakefulBroadcastReceiver;->completeWakefulIntent(Landroid/content/Intent;)Z

    .line 50
    return-void
.end method
