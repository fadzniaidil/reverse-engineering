.class public Lcom/onesignal/SyncJobService;
.super Landroid/app/job/JobService;
.source "SyncJobService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method


# virtual methods
.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 1
    .param p1, "jobParameters"    # Landroid/app/job/JobParameters;

    .line 42
    new-instance v0, Lcom/onesignal/OneSignalSyncServiceUtils$LollipopSyncRunnable;

    invoke-direct {v0, p0, p1}, Lcom/onesignal/OneSignalSyncServiceUtils$LollipopSyncRunnable;-><init>(Landroid/app/job/JobService;Landroid/app/job/JobParameters;)V

    invoke-static {p0, v0}, Lcom/onesignal/OneSignalSyncServiceUtils;->doBackgroundSync(Landroid/content/Context;Lcom/onesignal/OneSignalSyncServiceUtils$SyncRunnable;)V

    .line 46
    const/4 v0, 0x1

    return v0
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 4
    .param p1, "jobParameters"    # Landroid/app/job/JobParameters;

    .line 51
    invoke-static {}, Lcom/onesignal/OneSignalSyncServiceUtils;->stopSyncBgThread()Z

    move-result v0

    .line 52
    .local v0, "reschedule":Z
    sget-object v1, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SyncJobService onStopJob called, system conditions not available reschedule: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 53
    return v0
.end method
