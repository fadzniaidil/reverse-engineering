.class abstract Lcom/onesignal/JobIntentService;
.super Landroid/app/Service;
.source "JobIntentService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onesignal/JobIntentService$CommandProcessor;,
        Lcom/onesignal/JobIntentService$CompatWorkItem;,
        Lcom/onesignal/JobIntentService$GenericWorkItem;,
        Lcom/onesignal/JobIntentService$JobWorkEnqueuer;,
        Lcom/onesignal/JobIntentService$JobServiceEngineImpl;,
        Lcom/onesignal/JobIntentService$CompatWorkEnqueuer;,
        Lcom/onesignal/JobIntentService$CompatJobEngine;,
        Lcom/onesignal/JobIntentService$WorkEnqueuer;,
        Lcom/onesignal/JobIntentService$ComponentNameWithWakeful;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final TAG:Ljava/lang/String; = "JobIntentService"

.field static final sClassWorkEnqueuer:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/onesignal/JobIntentService$ComponentNameWithWakeful;",
            "Lcom/onesignal/JobIntentService$WorkEnqueuer;",
            ">;"
        }
    .end annotation
.end field

.field static final sLock:Ljava/lang/Object;


# instance fields
.field final mCompatQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/onesignal/JobIntentService$CompatWorkItem;",
            ">;"
        }
    .end annotation
.end field

.field mCompatWorkEnqueuer:Lcom/onesignal/JobIntentService$WorkEnqueuer;

.field mCurProcessor:Lcom/onesignal/JobIntentService$CommandProcessor;

.field mDestroyed:Z

.field mInterruptIfStopped:Z

.field mJobImpl:Lcom/onesignal/JobIntentService$CompatJobEngine;

.field mStopped:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 118
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/onesignal/JobIntentService;->sLock:Ljava/lang/Object;

    .line 130
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/onesignal/JobIntentService;->sClassWorkEnqueuer:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 463
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 112
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/onesignal/JobIntentService;->mInterruptIfStopped:Z

    .line 113
    iput-boolean v0, p0, Lcom/onesignal/JobIntentService;->mStopped:Z

    .line 114
    iput-boolean v0, p0, Lcom/onesignal/JobIntentService;->mDestroyed:Z

    .line 464
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/onesignal/JobIntentService;->mCompatQueue:Ljava/util/ArrayList;

    .line 465
    return-void
.end method

.method public static enqueueWork(Landroid/content/Context;Landroid/content/ComponentName;ILandroid/content/Intent;Z)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "jobId"    # I
    .param p3, "work"    # Landroid/content/Intent;
    .param p4, "useWakefulService"    # Z

    .line 554
    if-eqz p3, :cond_1

    .line 557
    sget-object v0, Lcom/onesignal/JobIntentService;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 558
    const/4 v1, 0x1

    :try_start_0
    invoke-static {p0, p1, v1, p2, p4}, Lcom/onesignal/JobIntentService;->getWorkEnqueuer(Landroid/content/Context;Landroid/content/ComponentName;ZIZ)Lcom/onesignal/JobIntentService$WorkEnqueuer;

    move-result-object v2

    .line 559
    .local v2, "we":Lcom/onesignal/JobIntentService$WorkEnqueuer;
    invoke-virtual {v2, p2}, Lcom/onesignal/JobIntentService$WorkEnqueuer;->ensureJobId(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 566
    :try_start_1
    invoke-virtual {v2, p3}, Lcom/onesignal/JobIntentService$WorkEnqueuer;->enqueueWork(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 574
    goto :goto_0

    .line 567
    :catch_0
    move-exception v3

    .line 568
    .local v3, "e":Ljava/lang/IllegalStateException;
    if-eqz p4, :cond_0

    .line 569
    const/4 v4, 0x0

    :try_start_2
    invoke-static {p0, p1, v1, p2, v4}, Lcom/onesignal/JobIntentService;->getWorkEnqueuer(Landroid/content/Context;Landroid/content/ComponentName;ZIZ)Lcom/onesignal/JobIntentService$WorkEnqueuer;

    move-result-object v1

    .line 570
    .end local v2    # "we":Lcom/onesignal/JobIntentService$WorkEnqueuer;
    .local v1, "we":Lcom/onesignal/JobIntentService$WorkEnqueuer;
    invoke-virtual {v1, p3}, Lcom/onesignal/JobIntentService$WorkEnqueuer;->enqueueWork(Landroid/content/Intent;)V

    .line 575
    .end local v1    # "we":Lcom/onesignal/JobIntentService$WorkEnqueuer;
    .end local v3    # "e":Ljava/lang/IllegalStateException;
    :goto_0
    monitor-exit v0

    .line 576
    return-void

    .line 573
    .restart local v2    # "we":Lcom/onesignal/JobIntentService$WorkEnqueuer;
    .restart local v3    # "e":Ljava/lang/IllegalStateException;
    :cond_0
    nop

    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "component":Landroid/content/ComponentName;
    .end local p2    # "jobId":I
    .end local p3    # "work":Landroid/content/Intent;
    .end local p4    # "useWakefulService":Z
    throw v3

    .line 575
    .end local v2    # "we":Lcom/onesignal/JobIntentService$WorkEnqueuer;
    .end local v3    # "e":Ljava/lang/IllegalStateException;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "component":Landroid/content/ComponentName;
    .restart local p2    # "jobId":I
    .restart local p3    # "work":Landroid/content/Intent;
    .restart local p4    # "useWakefulService":Z
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 555
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "work must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static enqueueWork(Landroid/content/Context;Ljava/lang/Class;ILandroid/content/Intent;Z)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cls"    # Ljava/lang/Class;
    .param p2, "jobId"    # I
    .param p3, "work"    # Landroid/content/Intent;
    .param p4, "useWakefulService"    # Z

    .line 538
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p0, p1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p0, v0, p2, p3, p4}, Lcom/onesignal/JobIntentService;->enqueueWork(Landroid/content/Context;Landroid/content/ComponentName;ILandroid/content/Intent;Z)V

    .line 539
    return-void
.end method

.method static getWorkEnqueuer(Landroid/content/Context;Landroid/content/ComponentName;ZIZ)Lcom/onesignal/JobIntentService$WorkEnqueuer;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cn"    # Landroid/content/ComponentName;
    .param p2, "hasJobId"    # Z
    .param p3, "jobId"    # I
    .param p4, "useWakefulService"    # Z

    .line 580
    new-instance v0, Lcom/onesignal/JobIntentService$ComponentNameWithWakeful;

    invoke-direct {v0, p1, p4}, Lcom/onesignal/JobIntentService$ComponentNameWithWakeful;-><init>(Landroid/content/ComponentName;Z)V

    .line 581
    .local v0, "key":Lcom/onesignal/JobIntentService$ComponentNameWithWakeful;
    sget-object v1, Lcom/onesignal/JobIntentService;->sClassWorkEnqueuer:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onesignal/JobIntentService$WorkEnqueuer;

    .line 582
    .local v2, "we":Lcom/onesignal/JobIntentService$WorkEnqueuer;
    if-nez v2, :cond_2

    .line 583
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    if-lt v3, v4, :cond_1

    if-nez p4, :cond_1

    .line 584
    if-eqz p2, :cond_0

    .line 587
    new-instance v3, Lcom/onesignal/JobIntentService$JobWorkEnqueuer;

    invoke-direct {v3, p0, p1, p3}, Lcom/onesignal/JobIntentService$JobWorkEnqueuer;-><init>(Landroid/content/Context;Landroid/content/ComponentName;I)V

    move-object v2, v3

    goto :goto_0

    .line 585
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "Can\'t be here without a job id"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 590
    :cond_1
    new-instance v3, Lcom/onesignal/JobIntentService$CompatWorkEnqueuer;

    invoke-direct {v3, p0, p1}, Lcom/onesignal/JobIntentService$CompatWorkEnqueuer;-><init>(Landroid/content/Context;Landroid/content/ComponentName;)V

    move-object v2, v3

    .line 591
    :goto_0
    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 593
    :cond_2
    return-object v2
.end method


# virtual methods
.method dequeueWork()Lcom/onesignal/JobIntentService$GenericWorkItem;
    .locals 3

    .line 691
    iget-object v0, p0, Lcom/onesignal/JobIntentService;->mJobImpl:Lcom/onesignal/JobIntentService$CompatJobEngine;

    if-eqz v0, :cond_0

    .line 692
    invoke-interface {v0}, Lcom/onesignal/JobIntentService$CompatJobEngine;->dequeueWork()Lcom/onesignal/JobIntentService$GenericWorkItem;

    move-result-object v0

    .line 693
    .local v0, "jobWork":Lcom/onesignal/JobIntentService$GenericWorkItem;
    if-eqz v0, :cond_0

    .line 694
    return-object v0

    .line 697
    .end local v0    # "jobWork":Lcom/onesignal/JobIntentService$GenericWorkItem;
    :cond_0
    iget-object v0, p0, Lcom/onesignal/JobIntentService;->mCompatQueue:Ljava/util/ArrayList;

    monitor-enter v0

    .line 698
    :try_start_0
    iget-object v1, p0, Lcom/onesignal/JobIntentService;->mCompatQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 699
    iget-object v1, p0, Lcom/onesignal/JobIntentService;->mCompatQueue:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onesignal/JobIntentService$GenericWorkItem;

    monitor-exit v0

    return-object v1

    .line 701
    :cond_1
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    .line 702
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method doStopCurrentWork()Z
    .locals 2

    .line 651
    iget-object v0, p0, Lcom/onesignal/JobIntentService;->mCurProcessor:Lcom/onesignal/JobIntentService$CommandProcessor;

    if-eqz v0, :cond_0

    .line 652
    iget-boolean v1, p0, Lcom/onesignal/JobIntentService;->mInterruptIfStopped:Z

    invoke-virtual {v0, v1}, Lcom/onesignal/JobIntentService$CommandProcessor;->cancel(Z)Z

    .line 654
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/onesignal/JobIntentService;->mStopped:Z

    .line 655
    invoke-virtual {p0}, Lcom/onesignal/JobIntentService;->onStopCurrentWork()Z

    move-result v0

    return v0
.end method

.method ensureProcessorRunningLocked(Z)V
    .locals 3
    .param p1, "reportStarted"    # Z

    .line 659
    iget-object v0, p0, Lcom/onesignal/JobIntentService;->mCurProcessor:Lcom/onesignal/JobIntentService$CommandProcessor;

    if-nez v0, :cond_1

    .line 660
    new-instance v0, Lcom/onesignal/JobIntentService$CommandProcessor;

    invoke-direct {v0, p0}, Lcom/onesignal/JobIntentService$CommandProcessor;-><init>(Lcom/onesignal/JobIntentService;)V

    iput-object v0, p0, Lcom/onesignal/JobIntentService;->mCurProcessor:Lcom/onesignal/JobIntentService$CommandProcessor;

    .line 661
    iget-object v0, p0, Lcom/onesignal/JobIntentService;->mCompatWorkEnqueuer:Lcom/onesignal/JobIntentService$WorkEnqueuer;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 662
    invoke-virtual {v0}, Lcom/onesignal/JobIntentService$WorkEnqueuer;->serviceProcessingStarted()V

    .line 665
    :cond_0
    iget-object v0, p0, Lcom/onesignal/JobIntentService;->mCurProcessor:Lcom/onesignal/JobIntentService$CommandProcessor;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/onesignal/JobIntentService$CommandProcessor;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 667
    :cond_1
    return-void
.end method

.method public isStopped()Z
    .locals 1

    .line 632
    iget-boolean v0, p0, Lcom/onesignal/JobIntentService;->mStopped:Z

    return v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 503
    iget-object v0, p0, Lcom/onesignal/JobIntentService;->mJobImpl:Lcom/onesignal/JobIntentService$CompatJobEngine;

    if-eqz v0, :cond_0

    .line 504
    invoke-interface {v0}, Lcom/onesignal/JobIntentService$CompatJobEngine;->compatGetBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 506
    .local v0, "engine":Landroid/os/IBinder;
    return-object v0

    .line 508
    .end local v0    # "engine":Landroid/os/IBinder;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .line 469
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 472
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 473
    new-instance v0, Lcom/onesignal/JobIntentService$JobServiceEngineImpl;

    invoke-direct {v0, p0}, Lcom/onesignal/JobIntentService$JobServiceEngineImpl;-><init>(Lcom/onesignal/JobIntentService;)V

    iput-object v0, p0, Lcom/onesignal/JobIntentService;->mJobImpl:Lcom/onesignal/JobIntentService$CompatJobEngine;

    .line 474
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/onesignal/JobIntentService;->mCompatWorkEnqueuer:Lcom/onesignal/JobIntentService$WorkEnqueuer;

    .line 477
    :cond_0
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 478
    .local v0, "cn":Landroid/content/ComponentName;
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p0, v0, v2, v2, v1}, Lcom/onesignal/JobIntentService;->getWorkEnqueuer(Landroid/content/Context;Landroid/content/ComponentName;ZIZ)Lcom/onesignal/JobIntentService$WorkEnqueuer;

    move-result-object v1

    iput-object v1, p0, Lcom/onesignal/JobIntentService;->mCompatWorkEnqueuer:Lcom/onesignal/JobIntentService$WorkEnqueuer;

    .line 479
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 514
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 515
    invoke-virtual {p0}, Lcom/onesignal/JobIntentService;->doStopCurrentWork()Z

    .line 516
    iget-object v0, p0, Lcom/onesignal/JobIntentService;->mCompatQueue:Ljava/util/ArrayList;

    monitor-enter v0

    .line 517
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/onesignal/JobIntentService;->mDestroyed:Z

    .line 518
    iget-object v1, p0, Lcom/onesignal/JobIntentService;->mCompatWorkEnqueuer:Lcom/onesignal/JobIntentService$WorkEnqueuer;

    invoke-virtual {v1}, Lcom/onesignal/JobIntentService$WorkEnqueuer;->serviceProcessingFinished()V

    .line 519
    monitor-exit v0

    .line 520
    return-void

    .line 519
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected abstract onHandleWork(Landroid/content/Intent;)V
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .line 487
    iget-object v0, p0, Lcom/onesignal/JobIntentService;->mCompatWorkEnqueuer:Lcom/onesignal/JobIntentService$WorkEnqueuer;

    invoke-virtual {v0}, Lcom/onesignal/JobIntentService$WorkEnqueuer;->serviceStartReceived()V

    .line 489
    iget-object v0, p0, Lcom/onesignal/JobIntentService;->mCompatQueue:Ljava/util/ArrayList;

    monitor-enter v0

    .line 490
    :try_start_0
    iget-object v1, p0, Lcom/onesignal/JobIntentService;->mCompatQueue:Ljava/util/ArrayList;

    new-instance v2, Lcom/onesignal/JobIntentService$CompatWorkItem;

    if-eqz p1, :cond_0

    move-object v3, p1

    goto :goto_0

    :cond_0
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    :goto_0
    invoke-direct {v2, p0, v3, p3}, Lcom/onesignal/JobIntentService$CompatWorkItem;-><init>(Lcom/onesignal/JobIntentService;Landroid/content/Intent;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 492
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/onesignal/JobIntentService;->ensureProcessorRunningLocked(Z)V

    .line 493
    monitor-exit v0

    .line 494
    const/4 v0, 0x3

    return v0

    .line 493
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onStopCurrentWork()Z
    .locals 1

    .line 647
    const/4 v0, 0x1

    return v0
.end method

.method processorFinished()V
    .locals 2

    .line 670
    iget-object v0, p0, Lcom/onesignal/JobIntentService;->mCompatQueue:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 671
    monitor-enter v0

    .line 672
    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/onesignal/JobIntentService;->mCurProcessor:Lcom/onesignal/JobIntentService$CommandProcessor;

    .line 681
    iget-object v1, p0, Lcom/onesignal/JobIntentService;->mCompatQueue:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 682
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/onesignal/JobIntentService;->ensureProcessorRunningLocked(Z)V

    goto :goto_0

    .line 683
    :cond_0
    iget-boolean v1, p0, Lcom/onesignal/JobIntentService;->mDestroyed:Z

    if-nez v1, :cond_1

    .line 684
    iget-object v1, p0, Lcom/onesignal/JobIntentService;->mCompatWorkEnqueuer:Lcom/onesignal/JobIntentService$WorkEnqueuer;

    invoke-virtual {v1}, Lcom/onesignal/JobIntentService$WorkEnqueuer;->serviceProcessingFinished()V

    .line 686
    :cond_1
    :goto_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 688
    :cond_2
    :goto_1
    return-void
.end method

.method public setInterruptIfStopped(Z)V
    .locals 0
    .param p1, "interruptIfStopped"    # Z

    .line 624
    iput-boolean p1, p0, Lcom/onesignal/JobIntentService;->mInterruptIfStopped:Z

    .line 625
    return-void
.end method
