.class Lcom/onesignal/ActivityLifecycleHandler$FocusHandlerThread;
.super Landroid/os/HandlerThread;
.source "ActivityLifecycleHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onesignal/ActivityLifecycleHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FocusHandlerThread"
.end annotation


# instance fields
.field private appFocusRunnable:Lcom/onesignal/ActivityLifecycleHandler$AppFocusRunnable;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 226
    const-string v0, "FocusHandlerThread"

    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 227
    invoke-virtual {p0}, Lcom/onesignal/ActivityLifecycleHandler$FocusHandlerThread;->start()V

    .line 228
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/onesignal/ActivityLifecycleHandler$FocusHandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/onesignal/ActivityLifecycleHandler$FocusHandlerThread;->mHandler:Landroid/os/Handler;

    .line 229
    return-void
.end method


# virtual methods
.method getHandlerLooper()Landroid/os/Looper;
    .locals 1

    .line 232
    iget-object v0, p0, Lcom/onesignal/ActivityLifecycleHandler$FocusHandlerThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method hasBackgrounded()Z
    .locals 1

    .line 254
    iget-object v0, p0, Lcom/onesignal/ActivityLifecycleHandler$FocusHandlerThread;->appFocusRunnable:Lcom/onesignal/ActivityLifecycleHandler$AppFocusRunnable;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/onesignal/ActivityLifecycleHandler$AppFocusRunnable;->access$200(Lcom/onesignal/ActivityLifecycleHandler$AppFocusRunnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method resetBackgroundState()V
    .locals 2

    .line 236
    iget-object v0, p0, Lcom/onesignal/ActivityLifecycleHandler$FocusHandlerThread;->appFocusRunnable:Lcom/onesignal/ActivityLifecycleHandler$AppFocusRunnable;

    if-eqz v0, :cond_0

    .line 237
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/onesignal/ActivityLifecycleHandler$AppFocusRunnable;->access$202(Lcom/onesignal/ActivityLifecycleHandler$AppFocusRunnable;Z)Z

    .line 238
    :cond_0
    return-void
.end method

.method runRunnable(Lcom/onesignal/ActivityLifecycleHandler$AppFocusRunnable;)V
    .locals 3
    .param p1, "runnable"    # Lcom/onesignal/ActivityLifecycleHandler$AppFocusRunnable;

    .line 245
    iget-object v0, p0, Lcom/onesignal/ActivityLifecycleHandler$FocusHandlerThread;->appFocusRunnable:Lcom/onesignal/ActivityLifecycleHandler$AppFocusRunnable;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/onesignal/ActivityLifecycleHandler$AppFocusRunnable;->access$200(Lcom/onesignal/ActivityLifecycleHandler$AppFocusRunnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/onesignal/ActivityLifecycleHandler$FocusHandlerThread;->appFocusRunnable:Lcom/onesignal/ActivityLifecycleHandler$AppFocusRunnable;

    invoke-static {v0}, Lcom/onesignal/ActivityLifecycleHandler$AppFocusRunnable;->access$300(Lcom/onesignal/ActivityLifecycleHandler$AppFocusRunnable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 246
    return-void

    .line 248
    :cond_0
    iput-object p1, p0, Lcom/onesignal/ActivityLifecycleHandler$FocusHandlerThread;->appFocusRunnable:Lcom/onesignal/ActivityLifecycleHandler$AppFocusRunnable;

    .line 249
    iget-object v0, p0, Lcom/onesignal/ActivityLifecycleHandler$FocusHandlerThread;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 250
    iget-object v0, p0, Lcom/onesignal/ActivityLifecycleHandler$FocusHandlerThread;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 251
    return-void
.end method

.method stopScheduledRunnable()V
    .locals 2

    .line 241
    iget-object v0, p0, Lcom/onesignal/ActivityLifecycleHandler$FocusHandlerThread;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 242
    return-void
.end method
