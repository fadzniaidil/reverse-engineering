.class abstract Lcom/onesignal/OneSignalJobServiceBase;
.super Landroid/app/job/JobService;
.source "OneSignalJobServiceBase.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method


# virtual methods
.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 5
    .param p1, "jobParameters"    # Landroid/app/job/JobParameters;

    .line 15
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v0

    if-nez v0, :cond_0

    .line 16
    const/4 v0, 0x0

    return v0

    .line 18
    :cond_0
    move-object v0, p0

    .line 19
    .local v0, "jobService":Landroid/app/job/JobService;
    move-object v1, p1

    .line 20
    .local v1, "finalJobParameters":Landroid/app/job/JobParameters;
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/onesignal/OneSignalJobServiceBase$1;

    invoke-direct {v3, p0, v0, v1}, Lcom/onesignal/OneSignalJobServiceBase$1;-><init>(Lcom/onesignal/OneSignalJobServiceBase;Landroid/app/job/JobService;Landroid/app/job/JobParameters;)V

    const-string v4, "OS_JOBSERVICE_BASE"

    invoke-direct {v2, v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 25
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 28
    const/4 v2, 0x1

    return v2
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 1
    .param p1, "jobParameters"    # Landroid/app/job/JobParameters;

    .line 33
    const/4 v0, 0x1

    return v0
.end method

.method abstract startProcessing(Landroid/app/job/JobService;Landroid/app/job/JobParameters;)V
.end method
