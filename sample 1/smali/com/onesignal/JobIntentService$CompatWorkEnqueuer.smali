.class final Lcom/onesignal/JobIntentService$CompatWorkEnqueuer;
.super Lcom/onesignal/JobIntentService$WorkEnqueuer;
.source "JobIntentService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onesignal/JobIntentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CompatWorkEnqueuer"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mLaunchWakeLock:Landroid/os/PowerManager$WakeLock;

.field mLaunchingService:Z

.field private final mRunWakeLock:Landroid/os/PowerManager$WakeLock;

.field mServiceProcessing:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cn"    # Landroid/content/ComponentName;

    .line 187
    invoke-direct {p0, p2}, Lcom/onesignal/JobIntentService$WorkEnqueuer;-><init>(Landroid/content/ComponentName;)V

    .line 188
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/onesignal/JobIntentService$CompatWorkEnqueuer;->mContext:Landroid/content/Context;

    .line 192
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 193
    .local v0, "pm":Landroid/os/PowerManager;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 194
    invoke-virtual {p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":launch"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 193
    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/onesignal/JobIntentService$CompatWorkEnqueuer;->mLaunchWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 195
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 196
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 197
    invoke-virtual {p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":run"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 196
    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/onesignal/JobIntentService$CompatWorkEnqueuer;->mRunWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 198
    invoke-virtual {v1, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 199
    return-void
.end method


# virtual methods
.method enqueueWork(Landroid/content/Intent;)V
    .locals 4
    .param p1, "work"    # Landroid/content/Intent;

    .line 203
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 204
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/onesignal/JobIntentService$CompatWorkEnqueuer;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 206
    iget-object v1, p0, Lcom/onesignal/JobIntentService$CompatWorkEnqueuer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 207
    monitor-enter p0

    .line 208
    :try_start_0
    iget-boolean v1, p0, Lcom/onesignal/JobIntentService$CompatWorkEnqueuer;->mLaunchingService:Z

    if-nez v1, :cond_0

    .line 209
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/onesignal/JobIntentService$CompatWorkEnqueuer;->mLaunchingService:Z

    .line 210
    iget-boolean v1, p0, Lcom/onesignal/JobIntentService$CompatWorkEnqueuer;->mServiceProcessing:Z

    if-nez v1, :cond_0

    .line 216
    iget-object v1, p0, Lcom/onesignal/JobIntentService$CompatWorkEnqueuer;->mLaunchWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v2, 0xea60

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 219
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 221
    :cond_1
    :goto_0
    return-void
.end method

.method public serviceProcessingFinished()V
    .locals 3

    .line 248
    monitor-enter p0

    .line 249
    :try_start_0
    iget-boolean v0, p0, Lcom/onesignal/JobIntentService$CompatWorkEnqueuer;->mServiceProcessing:Z

    if-eqz v0, :cond_1

    .line 252
    iget-boolean v0, p0, Lcom/onesignal/JobIntentService$CompatWorkEnqueuer;->mLaunchingService:Z

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/onesignal/JobIntentService$CompatWorkEnqueuer;->mLaunchWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v1, 0xea60

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 255
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/onesignal/JobIntentService$CompatWorkEnqueuer;->mServiceProcessing:Z

    .line 256
    iget-object v0, p0, Lcom/onesignal/JobIntentService$CompatWorkEnqueuer;->mRunWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 258
    :cond_1
    monitor-exit p0

    .line 259
    return-void

    .line 258
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public serviceProcessingStarted()V
    .locals 3

    .line 234
    monitor-enter p0

    .line 236
    :try_start_0
    iget-boolean v0, p0, Lcom/onesignal/JobIntentService$CompatWorkEnqueuer;->mServiceProcessing:Z

    if-nez v0, :cond_0

    .line 237
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/onesignal/JobIntentService$CompatWorkEnqueuer;->mServiceProcessing:Z

    .line 240
    iget-object v0, p0, Lcom/onesignal/JobIntentService$CompatWorkEnqueuer;->mRunWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v1, 0x927c0

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 241
    iget-object v0, p0, Lcom/onesignal/JobIntentService$CompatWorkEnqueuer;->mLaunchWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 243
    :cond_0
    monitor-exit p0

    .line 244
    return-void

    .line 243
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public serviceStartReceived()V
    .locals 1

    .line 225
    monitor-enter p0

    .line 228
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/onesignal/JobIntentService$CompatWorkEnqueuer;->mLaunchingService:Z

    .line 229
    monitor-exit p0

    .line 230
    return-void

    .line 229
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
