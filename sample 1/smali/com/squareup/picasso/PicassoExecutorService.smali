.class Lcom/squareup/picasso/PicassoExecutorService;
.super Ljava/util/concurrent/ThreadPoolExecutor;
.source "PicassoExecutorService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/picasso/PicassoExecutorService$PicassoFutureTask;
    }
.end annotation


# static fields
.field private static final DEFAULT_THREAD_COUNT:I = 0x3


# direct methods
.method constructor <init>()V
    .locals 8

    .line 38
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    new-instance v7, Lcom/squareup/picasso/Utils$PicassoThreadFactory;

    invoke-direct {v7}, Lcom/squareup/picasso/Utils$PicassoThreadFactory;-><init>()V

    const/4 v1, 0x3

    const/4 v2, 0x3

    const-wide/16 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 40
    return-void
.end method

.method private setThreadCount(I)V
    .locals 0
    .param p1, "threadCount"    # I

    .line 81
    invoke-virtual {p0, p1}, Lcom/squareup/picasso/PicassoExecutorService;->setCorePoolSize(I)V

    .line 82
    invoke-virtual {p0, p1}, Lcom/squareup/picasso/PicassoExecutorService;->setMaximumPoolSize(I)V

    .line 83
    return-void
.end method


# virtual methods
.method adjustThreadCount(Landroid/net/NetworkInfo;)V
    .locals 2
    .param p1, "info"    # Landroid/net/NetworkInfo;

    .line 43
    const/4 v0, 0x3

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 47
    :cond_0
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 76
    invoke-direct {p0, v0}, Lcom/squareup/picasso/PicassoExecutorService;->setThreadCount(I)V

    goto :goto_0

    .line 51
    :sswitch_0
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/squareup/picasso/PicassoExecutorService;->setThreadCount(I)V

    .line 52
    goto :goto_0

    .line 54
    :sswitch_1
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 72
    :pswitch_0
    invoke-direct {p0, v0}, Lcom/squareup/picasso/PicassoExecutorService;->setThreadCount(I)V

    .line 74
    goto :goto_0

    .line 58
    :pswitch_1
    invoke-direct {p0, v0}, Lcom/squareup/picasso/PicassoExecutorService;->setThreadCount(I)V

    .line 59
    goto :goto_0

    .line 65
    :pswitch_2
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/squareup/picasso/PicassoExecutorService;->setThreadCount(I)V

    .line 66
    goto :goto_0

    .line 69
    :pswitch_3
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/squareup/picasso/PicassoExecutorService;->setThreadCount(I)V

    .line 70
    nop

    .line 78
    :goto_0
    return-void

    .line 44
    :cond_1
    :goto_1
    invoke-direct {p0, v0}, Lcom/squareup/picasso/PicassoExecutorService;->setThreadCount(I)V

    .line 45
    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_0
        0x6 -> :sswitch_0
        0x9 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "task"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    .line 87
    new-instance v0, Lcom/squareup/picasso/PicassoExecutorService$PicassoFutureTask;

    move-object v1, p1

    check-cast v1, Lcom/squareup/picasso/BitmapHunter;

    invoke-direct {v0, v1}, Lcom/squareup/picasso/PicassoExecutorService$PicassoFutureTask;-><init>(Lcom/squareup/picasso/BitmapHunter;)V

    .line 88
    .local v0, "ftask":Lcom/squareup/picasso/PicassoExecutorService$PicassoFutureTask;
    invoke-virtual {p0, v0}, Lcom/squareup/picasso/PicassoExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 89
    return-object v0
.end method
