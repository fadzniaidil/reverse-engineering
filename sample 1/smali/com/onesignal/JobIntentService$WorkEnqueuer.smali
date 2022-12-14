.class abstract Lcom/onesignal/JobIntentService$WorkEnqueuer;
.super Ljava/lang/Object;
.source "JobIntentService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onesignal/JobIntentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "WorkEnqueuer"
.end annotation


# instance fields
.field final mComponentName:Landroid/content/ComponentName;

.field mHasJobId:Z

.field mJobId:I


# direct methods
.method constructor <init>(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "cn"    # Landroid/content/ComponentName;

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    iput-object p1, p0, Lcom/onesignal/JobIntentService$WorkEnqueuer;->mComponentName:Landroid/content/ComponentName;

    .line 144
    return-void
.end method


# virtual methods
.method abstract enqueueWork(Landroid/content/Intent;)V
.end method

.method ensureJobId(I)V
    .locals 3
    .param p1, "jobId"    # I

    .line 147
    iget-boolean v0, p0, Lcom/onesignal/JobIntentService$WorkEnqueuer;->mHasJobId:Z

    if-nez v0, :cond_0

    .line 148
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/onesignal/JobIntentService$WorkEnqueuer;->mHasJobId:Z

    .line 149
    iput p1, p0, Lcom/onesignal/JobIntentService$WorkEnqueuer;->mJobId:I

    goto :goto_0

    .line 150
    :cond_0
    iget v0, p0, Lcom/onesignal/JobIntentService$WorkEnqueuer;->mJobId:I

    if-ne v0, p1, :cond_1

    .line 154
    :goto_0
    return-void

    .line 151
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Given job ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is different than previous "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/onesignal/JobIntentService$WorkEnqueuer;->mJobId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public serviceProcessingFinished()V
    .locals 0

    .line 165
    return-void
.end method

.method public serviceProcessingStarted()V
    .locals 0

    .line 162
    return-void
.end method

.method public serviceStartReceived()V
    .locals 0

    .line 159
    return-void
.end method
