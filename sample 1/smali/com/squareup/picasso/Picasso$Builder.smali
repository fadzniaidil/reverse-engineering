.class public Lcom/squareup/picasso/Picasso$Builder;
.super Ljava/lang/Object;
.source "Picasso.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/picasso/Picasso;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private cache:Lcom/squareup/picasso/Cache;

.field private final context:Landroid/content/Context;

.field private defaultBitmapConfig:Landroid/graphics/Bitmap$Config;

.field private downloader:Lcom/squareup/picasso/Downloader;

.field private indicatorsEnabled:Z

.field private listener:Lcom/squareup/picasso/Picasso$Listener;

.field private loggingEnabled:Z

.field private requestHandlers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/squareup/picasso/RequestHandler;",
            ">;"
        }
    .end annotation
.end field

.field private service:Ljava/util/concurrent/ExecutorService;

.field private transformer:Lcom/squareup/picasso/Picasso$RequestTransformer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 699
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 700
    if-eqz p1, :cond_0

    .line 703
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/picasso/Picasso$Builder;->context:Landroid/content/Context;

    .line 704
    return-void

    .line 701
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Context must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addRequestHandler(Lcom/squareup/picasso/RequestHandler;)Lcom/squareup/picasso/Picasso$Builder;
    .locals 2
    .param p1, "requestHandler"    # Lcom/squareup/picasso/RequestHandler;

    .line 789
    if-eqz p1, :cond_2

    .line 792
    iget-object v0, p0, Lcom/squareup/picasso/Picasso$Builder;->requestHandlers:Ljava/util/List;

    if-nez v0, :cond_0

    .line 793
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/squareup/picasso/Picasso$Builder;->requestHandlers:Ljava/util/List;

    .line 795
    :cond_0
    iget-object v0, p0, Lcom/squareup/picasso/Picasso$Builder;->requestHandlers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 798
    iget-object v0, p0, Lcom/squareup/picasso/Picasso$Builder;->requestHandlers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 799
    return-object p0

    .line 796
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RequestHandler already registered."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 790
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "RequestHandler must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public build()Lcom/squareup/picasso/Picasso;
    .locals 19

    .line 829
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/squareup/picasso/Picasso$Builder;->context:Landroid/content/Context;

    .line 831
    .local v15, "context":Landroid/content/Context;
    iget-object v1, v0, Lcom/squareup/picasso/Picasso$Builder;->downloader:Lcom/squareup/picasso/Downloader;

    if-nez v1, :cond_0

    .line 832
    invoke-static {v15}, Lcom/squareup/picasso/Utils;->createDefaultDownloader(Landroid/content/Context;)Lcom/squareup/picasso/Downloader;

    move-result-object v1

    iput-object v1, v0, Lcom/squareup/picasso/Picasso$Builder;->downloader:Lcom/squareup/picasso/Downloader;

    .line 834
    :cond_0
    iget-object v1, v0, Lcom/squareup/picasso/Picasso$Builder;->cache:Lcom/squareup/picasso/Cache;

    if-nez v1, :cond_1

    .line 835
    new-instance v1, Lcom/squareup/picasso/LruCache;

    invoke-direct {v1, v15}, Lcom/squareup/picasso/LruCache;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/squareup/picasso/Picasso$Builder;->cache:Lcom/squareup/picasso/Cache;

    .line 837
    :cond_1
    iget-object v1, v0, Lcom/squareup/picasso/Picasso$Builder;->service:Ljava/util/concurrent/ExecutorService;

    if-nez v1, :cond_2

    .line 838
    new-instance v1, Lcom/squareup/picasso/PicassoExecutorService;

    invoke-direct {v1}, Lcom/squareup/picasso/PicassoExecutorService;-><init>()V

    iput-object v1, v0, Lcom/squareup/picasso/Picasso$Builder;->service:Ljava/util/concurrent/ExecutorService;

    .line 840
    :cond_2
    iget-object v1, v0, Lcom/squareup/picasso/Picasso$Builder;->transformer:Lcom/squareup/picasso/Picasso$RequestTransformer;

    if-nez v1, :cond_3

    .line 841
    sget-object v1, Lcom/squareup/picasso/Picasso$RequestTransformer;->IDENTITY:Lcom/squareup/picasso/Picasso$RequestTransformer;

    iput-object v1, v0, Lcom/squareup/picasso/Picasso$Builder;->transformer:Lcom/squareup/picasso/Picasso$RequestTransformer;

    .line 844
    :cond_3
    new-instance v7, Lcom/squareup/picasso/Stats;

    iget-object v1, v0, Lcom/squareup/picasso/Picasso$Builder;->cache:Lcom/squareup/picasso/Cache;

    invoke-direct {v7, v1}, Lcom/squareup/picasso/Stats;-><init>(Lcom/squareup/picasso/Cache;)V

    .line 846
    .local v7, "stats":Lcom/squareup/picasso/Stats;
    new-instance v10, Lcom/squareup/picasso/Dispatcher;

    iget-object v3, v0, Lcom/squareup/picasso/Picasso$Builder;->service:Ljava/util/concurrent/ExecutorService;

    sget-object v4, Lcom/squareup/picasso/Picasso;->HANDLER:Landroid/os/Handler;

    iget-object v5, v0, Lcom/squareup/picasso/Picasso$Builder;->downloader:Lcom/squareup/picasso/Downloader;

    iget-object v6, v0, Lcom/squareup/picasso/Picasso$Builder;->cache:Lcom/squareup/picasso/Cache;

    move-object v1, v10

    move-object v2, v15

    invoke-direct/range {v1 .. v7}, Lcom/squareup/picasso/Dispatcher;-><init>(Landroid/content/Context;Ljava/util/concurrent/ExecutorService;Landroid/os/Handler;Lcom/squareup/picasso/Downloader;Lcom/squareup/picasso/Cache;Lcom/squareup/picasso/Stats;)V

    .line 848
    .local v10, "dispatcher":Lcom/squareup/picasso/Dispatcher;
    new-instance v1, Lcom/squareup/picasso/Picasso;

    iget-object v11, v0, Lcom/squareup/picasso/Picasso$Builder;->cache:Lcom/squareup/picasso/Cache;

    iget-object v12, v0, Lcom/squareup/picasso/Picasso$Builder;->listener:Lcom/squareup/picasso/Picasso$Listener;

    iget-object v13, v0, Lcom/squareup/picasso/Picasso$Builder;->transformer:Lcom/squareup/picasso/Picasso$RequestTransformer;

    iget-object v14, v0, Lcom/squareup/picasso/Picasso$Builder;->requestHandlers:Ljava/util/List;

    iget-object v2, v0, Lcom/squareup/picasso/Picasso$Builder;->defaultBitmapConfig:Landroid/graphics/Bitmap$Config;

    iget-boolean v3, v0, Lcom/squareup/picasso/Picasso$Builder;->indicatorsEnabled:Z

    iget-boolean v4, v0, Lcom/squareup/picasso/Picasso$Builder;->loggingEnabled:Z

    move-object v8, v1

    move-object v9, v15

    move-object v5, v15

    .end local v15    # "context":Landroid/content/Context;
    .local v5, "context":Landroid/content/Context;
    move-object v15, v7

    move-object/from16 v16, v2

    move/from16 v17, v3

    move/from16 v18, v4

    invoke-direct/range {v8 .. v18}, Lcom/squareup/picasso/Picasso;-><init>(Landroid/content/Context;Lcom/squareup/picasso/Dispatcher;Lcom/squareup/picasso/Cache;Lcom/squareup/picasso/Picasso$Listener;Lcom/squareup/picasso/Picasso$RequestTransformer;Ljava/util/List;Lcom/squareup/picasso/Stats;Landroid/graphics/Bitmap$Config;ZZ)V

    return-object v1
.end method

.method public debugging(Z)Lcom/squareup/picasso/Picasso$Builder;
    .locals 1
    .param p1, "debugging"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 807
    invoke-virtual {p0, p1}, Lcom/squareup/picasso/Picasso$Builder;->indicatorsEnabled(Z)Lcom/squareup/picasso/Picasso$Builder;

    move-result-object v0

    return-object v0
.end method

.method public defaultBitmapConfig(Landroid/graphics/Bitmap$Config;)Lcom/squareup/picasso/Picasso$Builder;
    .locals 2
    .param p1, "bitmapConfig"    # Landroid/graphics/Bitmap$Config;

    .line 711
    if-eqz p1, :cond_0

    .line 714
    iput-object p1, p0, Lcom/squareup/picasso/Picasso$Builder;->defaultBitmapConfig:Landroid/graphics/Bitmap$Config;

    .line 715
    return-object p0

    .line 712
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bitmap config must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public downloader(Lcom/squareup/picasso/Downloader;)Lcom/squareup/picasso/Picasso$Builder;
    .locals 2
    .param p1, "downloader"    # Lcom/squareup/picasso/Downloader;

    .line 720
    if-eqz p1, :cond_1

    .line 723
    iget-object v0, p0, Lcom/squareup/picasso/Picasso$Builder;->downloader:Lcom/squareup/picasso/Downloader;

    if-nez v0, :cond_0

    .line 726
    iput-object p1, p0, Lcom/squareup/picasso/Picasso$Builder;->downloader:Lcom/squareup/picasso/Downloader;

    .line 727
    return-object p0

    .line 724
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Downloader already set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 721
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Downloader must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public executor(Ljava/util/concurrent/ExecutorService;)Lcom/squareup/picasso/Picasso$Builder;
    .locals 2
    .param p1, "executorService"    # Ljava/util/concurrent/ExecutorService;

    .line 736
    if-eqz p1, :cond_1

    .line 739
    iget-object v0, p0, Lcom/squareup/picasso/Picasso$Builder;->service:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    .line 742
    iput-object p1, p0, Lcom/squareup/picasso/Picasso$Builder;->service:Ljava/util/concurrent/ExecutorService;

    .line 743
    return-object p0

    .line 740
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Executor service already set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 737
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Executor service must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public indicatorsEnabled(Z)Lcom/squareup/picasso/Picasso$Builder;
    .locals 0
    .param p1, "enabled"    # Z

    .line 812
    iput-boolean p1, p0, Lcom/squareup/picasso/Picasso$Builder;->indicatorsEnabled:Z

    .line 813
    return-object p0
.end method

.method public listener(Lcom/squareup/picasso/Picasso$Listener;)Lcom/squareup/picasso/Picasso$Builder;
    .locals 2
    .param p1, "listener"    # Lcom/squareup/picasso/Picasso$Listener;

    .line 760
    if-eqz p1, :cond_1

    .line 763
    iget-object v0, p0, Lcom/squareup/picasso/Picasso$Builder;->listener:Lcom/squareup/picasso/Picasso$Listener;

    if-nez v0, :cond_0

    .line 766
    iput-object p1, p0, Lcom/squareup/picasso/Picasso$Builder;->listener:Lcom/squareup/picasso/Picasso$Listener;

    .line 767
    return-object p0

    .line 764
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Listener already set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 761
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Listener must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public loggingEnabled(Z)Lcom/squareup/picasso/Picasso$Builder;
    .locals 0
    .param p1, "enabled"    # Z

    .line 823
    iput-boolean p1, p0, Lcom/squareup/picasso/Picasso$Builder;->loggingEnabled:Z

    .line 824
    return-object p0
.end method

.method public memoryCache(Lcom/squareup/picasso/Cache;)Lcom/squareup/picasso/Picasso$Builder;
    .locals 2
    .param p1, "memoryCache"    # Lcom/squareup/picasso/Cache;

    .line 748
    if-eqz p1, :cond_1

    .line 751
    iget-object v0, p0, Lcom/squareup/picasso/Picasso$Builder;->cache:Lcom/squareup/picasso/Cache;

    if-nez v0, :cond_0

    .line 754
    iput-object p1, p0, Lcom/squareup/picasso/Picasso$Builder;->cache:Lcom/squareup/picasso/Cache;

    .line 755
    return-object p0

    .line 752
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Memory cache already set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 749
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Memory cache must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public requestTransformer(Lcom/squareup/picasso/Picasso$RequestTransformer;)Lcom/squareup/picasso/Picasso$Builder;
    .locals 2
    .param p1, "transformer"    # Lcom/squareup/picasso/Picasso$RequestTransformer;

    .line 777
    if-eqz p1, :cond_1

    .line 780
    iget-object v0, p0, Lcom/squareup/picasso/Picasso$Builder;->transformer:Lcom/squareup/picasso/Picasso$RequestTransformer;

    if-nez v0, :cond_0

    .line 783
    iput-object p1, p0, Lcom/squareup/picasso/Picasso$Builder;->transformer:Lcom/squareup/picasso/Picasso$RequestTransformer;

    .line 784
    return-object p0

    .line 781
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Transformer already set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 778
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Transformer must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
