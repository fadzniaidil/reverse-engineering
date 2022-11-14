.class final Lcom/onesignal/JobIntentService$JobWorkEnqueuer;
.super Lcom/onesignal/JobIntentService$WorkEnqueuer;
.source "JobIntentService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onesignal/JobIntentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "JobWorkEnqueuer"
.end annotation


# instance fields
.field private final mJobInfo:Landroid/app/job/JobInfo;

.field private final mJobScheduler:Landroid/app/job/JobScheduler;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cn"    # Landroid/content/ComponentName;
    .param p3, "jobId"    # I

    .line 379
    invoke-direct {p0, p2}, Lcom/onesignal/JobIntentService$WorkEnqueuer;-><init>(Landroid/content/ComponentName;)V

    .line 380
    invoke-virtual {p0, p3}, Lcom/onesignal/JobIntentService$JobWorkEnqueuer;->ensureJobId(I)V

    .line 381
    new-instance v0, Landroid/app/job/JobInfo$Builder;

    iget-object v1, p0, Lcom/onesignal/JobIntentService$JobWorkEnqueuer;->mComponentName:Landroid/content/ComponentName;

    invoke-direct {v0, p3, v1}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 382
    .local v0, "b":Landroid/app/job/JobInfo$Builder;
    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/job/JobInfo$Builder;->setOverrideDeadline(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/onesignal/JobIntentService$JobWorkEnqueuer;->mJobInfo:Landroid/app/job/JobInfo;

    .line 383
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "jobscheduler"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/job/JobScheduler;

    iput-object v1, p0, Lcom/onesignal/JobIntentService$JobWorkEnqueuer;->mJobScheduler:Landroid/app/job/JobScheduler;

    .line 385
    return-void
.end method


# virtual methods
.method enqueueWork(Landroid/content/Intent;)V
    .locals 3
    .param p1, "work"    # Landroid/content/Intent;

    .line 390
    iget-object v0, p0, Lcom/onesignal/JobIntentService$JobWorkEnqueuer;->mJobScheduler:Landroid/app/job/JobScheduler;

    iget-object v1, p0, Lcom/onesignal/JobIntentService$JobWorkEnqueuer;->mJobInfo:Landroid/app/job/JobInfo;

    new-instance v2, Landroid/app/job/JobWorkItem;

    invoke-direct {v2, p1}, Landroid/app/job/JobWorkItem;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/job/JobScheduler;->enqueue(Landroid/app/job/JobInfo;Landroid/app/job/JobWorkItem;)I

    .line 391
    return-void
.end method
