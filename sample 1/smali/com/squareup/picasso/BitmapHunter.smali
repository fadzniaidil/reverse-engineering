.class Lcom/squareup/picasso/BitmapHunter;
.super Ljava/lang/Object;
.source "BitmapHunter.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final DECODE_LOCK:Ljava/lang/Object;

.field private static final ERRORING_HANDLER:Lcom/squareup/picasso/RequestHandler;

.field private static final NAME_BUILDER:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/StringBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private static final SEQUENCE_GENERATOR:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field action:Lcom/squareup/picasso/Action;

.field actions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/squareup/picasso/Action;",
            ">;"
        }
    .end annotation
.end field

.field final cache:Lcom/squareup/picasso/Cache;

.field final data:Lcom/squareup/picasso/Request;

.field final dispatcher:Lcom/squareup/picasso/Dispatcher;

.field exception:Ljava/lang/Exception;

.field exifRotation:I

.field future:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field final key:Ljava/lang/String;

.field loadedFrom:Lcom/squareup/picasso/Picasso$LoadedFrom;

.field final memoryPolicy:I

.field networkPolicy:I

.field final picasso:Lcom/squareup/picasso/Picasso;

.field priority:Lcom/squareup/picasso/Picasso$Priority;

.field final requestHandler:Lcom/squareup/picasso/RequestHandler;

.field result:Landroid/graphics/Bitmap;

.field retryCount:I

.field final sequence:I

.field final stats:Lcom/squareup/picasso/Stats;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/squareup/picasso/BitmapHunter;->DECODE_LOCK:Ljava/lang/Object;

    .line 52
    new-instance v0, Lcom/squareup/picasso/BitmapHunter$1;

    invoke-direct {v0}, Lcom/squareup/picasso/BitmapHunter$1;-><init>()V

    sput-object v0, Lcom/squareup/picasso/BitmapHunter;->NAME_BUILDER:Ljava/lang/ThreadLocal;

    .line 58
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/squareup/picasso/BitmapHunter;->SEQUENCE_GENERATOR:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 60
    new-instance v0, Lcom/squareup/picasso/BitmapHunter$2;

    invoke-direct {v0}, Lcom/squareup/picasso/BitmapHunter$2;-><init>()V

    sput-object v0, Lcom/squareup/picasso/BitmapHunter;->ERRORING_HANDLER:Lcom/squareup/picasso/RequestHandler;

    return-void
.end method

.method constructor <init>(Lcom/squareup/picasso/Picasso;Lcom/squareup/picasso/Dispatcher;Lcom/squareup/picasso/Cache;Lcom/squareup/picasso/Stats;Lcom/squareup/picasso/Action;Lcom/squareup/picasso/RequestHandler;)V
    .locals 1
    .param p1, "picasso"    # Lcom/squareup/picasso/Picasso;
    .param p2, "dispatcher"    # Lcom/squareup/picasso/Dispatcher;
    .param p3, "cache"    # Lcom/squareup/picasso/Cache;
    .param p4, "stats"    # Lcom/squareup/picasso/Stats;
    .param p5, "action"    # Lcom/squareup/picasso/Action;
    .param p6, "requestHandler"    # Lcom/squareup/picasso/RequestHandler;

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    sget-object v0, Lcom/squareup/picasso/BitmapHunter;->SEQUENCE_GENERATOR:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    iput v0, p0, Lcom/squareup/picasso/BitmapHunter;->sequence:I

    .line 94
    iput-object p1, p0, Lcom/squareup/picasso/BitmapHunter;->picasso:Lcom/squareup/picasso/Picasso;

    .line 95
    iput-object p2, p0, Lcom/squareup/picasso/BitmapHunter;->dispatcher:Lcom/squareup/picasso/Dispatcher;

    .line 96
    iput-object p3, p0, Lcom/squareup/picasso/BitmapHunter;->cache:Lcom/squareup/picasso/Cache;

    .line 97
    iput-object p4, p0, Lcom/squareup/picasso/BitmapHunter;->stats:Lcom/squareup/picasso/Stats;

    .line 98
    iput-object p5, p0, Lcom/squareup/picasso/BitmapHunter;->action:Lcom/squareup/picasso/Action;

    .line 99
    invoke-virtual {p5}, Lcom/squareup/picasso/Action;->getKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->key:Ljava/lang/String;

    .line 100
    invoke-virtual {p5}, Lcom/squareup/picasso/Action;->getRequest()Lcom/squareup/picasso/Request;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->data:Lcom/squareup/picasso/Request;

    .line 101
    invoke-virtual {p5}, Lcom/squareup/picasso/Action;->getPriority()Lcom/squareup/picasso/Picasso$Priority;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->priority:Lcom/squareup/picasso/Picasso$Priority;

    .line 102
    invoke-virtual {p5}, Lcom/squareup/picasso/Action;->getMemoryPolicy()I

    move-result v0

    iput v0, p0, Lcom/squareup/picasso/BitmapHunter;->memoryPolicy:I

    .line 103
    invoke-virtual {p5}, Lcom/squareup/picasso/Action;->getNetworkPolicy()I

    move-result v0

    iput v0, p0, Lcom/squareup/picasso/BitmapHunter;->networkPolicy:I

    .line 104
    iput-object p6, p0, Lcom/squareup/picasso/BitmapHunter;->requestHandler:Lcom/squareup/picasso/RequestHandler;

    .line 105
    invoke-virtual {p6}, Lcom/squareup/picasso/RequestHandler;->getRetryCount()I

    move-result v0

    iput v0, p0, Lcom/squareup/picasso/BitmapHunter;->retryCount:I

    .line 106
    return-void
.end method

.method static applyCustomTransformations(Ljava/util/List;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 9
    .param p1, "result"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/squareup/picasso/Transformation;",
            ">;",
            "Landroid/graphics/Bitmap;",
            ")",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    .line 425
    .local p0, "transformations":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/picasso/Transformation;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "count":I
    :goto_0
    if-ge v0, v1, :cond_4

    .line 426
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/squareup/picasso/Transformation;

    .line 429
    .local v2, "transformation":Lcom/squareup/picasso/Transformation;
    const/4 v3, 0x0

    :try_start_0
    invoke-interface {v2, p1}, Lcom/squareup/picasso/Transformation;->transform(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 438
    .local v4, "newResult":Landroid/graphics/Bitmap;
    nop

    .line 440
    if-nez v4, :cond_1

    .line 441
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 442
    const-string v6, "Transformation "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    invoke-interface {v2}, Lcom/squareup/picasso/Transformation;->key()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    const-string v6, " returned null after "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 445
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 446
    const-string v6, " previous transformation(s).\n\nTransformation list:\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 447
    .local v5, "builder":Ljava/lang/StringBuilder;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/squareup/picasso/Transformation;

    .line 448
    .local v7, "t":Lcom/squareup/picasso/Transformation;
    invoke-interface {v7}, Lcom/squareup/picasso/Transformation;->key()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v8, 0xa

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 449
    .end local v7    # "t":Lcom/squareup/picasso/Transformation;
    goto :goto_1

    .line 450
    :cond_0
    sget-object v6, Lcom/squareup/picasso/Picasso;->HANDLER:Landroid/os/Handler;

    new-instance v7, Lcom/squareup/picasso/BitmapHunter$4;

    invoke-direct {v7, v5}, Lcom/squareup/picasso/BitmapHunter$4;-><init>(Ljava/lang/StringBuilder;)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 455
    return-object v3

    .line 458
    .end local v5    # "builder":Ljava/lang/StringBuilder;
    :cond_1
    if-ne v4, p1, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 459
    sget-object v5, Lcom/squareup/picasso/Picasso;->HANDLER:Landroid/os/Handler;

    new-instance v6, Lcom/squareup/picasso/BitmapHunter$5;

    invoke-direct {v6, v2}, Lcom/squareup/picasso/BitmapHunter$5;-><init>(Lcom/squareup/picasso/Transformation;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 466
    return-object v3

    .line 470
    :cond_2
    if-eq v4, p1, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-nez v5, :cond_3

    .line 471
    sget-object v5, Lcom/squareup/picasso/Picasso;->HANDLER:Landroid/os/Handler;

    new-instance v6, Lcom/squareup/picasso/BitmapHunter$6;

    invoke-direct {v6, v2}, Lcom/squareup/picasso/BitmapHunter$6;-><init>(Lcom/squareup/picasso/Transformation;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 478
    return-object v3

    .line 481
    :cond_3
    move-object p1, v4

    .line 425
    .end local v2    # "transformation":Lcom/squareup/picasso/Transformation;
    .end local v4    # "newResult":Landroid/graphics/Bitmap;
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 430
    .restart local v2    # "transformation":Lcom/squareup/picasso/Transformation;
    :catch_0
    move-exception v4

    .line 431
    .local v4, "e":Ljava/lang/RuntimeException;
    sget-object v5, Lcom/squareup/picasso/Picasso;->HANDLER:Landroid/os/Handler;

    new-instance v6, Lcom/squareup/picasso/BitmapHunter$3;

    invoke-direct {v6, v2, v4}, Lcom/squareup/picasso/BitmapHunter$3;-><init>(Lcom/squareup/picasso/Transformation;Ljava/lang/RuntimeException;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 437
    return-object v3

    .line 483
    .end local v0    # "i":I
    .end local v1    # "count":I
    .end local v2    # "transformation":Lcom/squareup/picasso/Transformation;
    .end local v4    # "e":Ljava/lang/RuntimeException;
    :cond_4
    return-object p1
.end method

.method private computeNewPriority()Lcom/squareup/picasso/Picasso$Priority;
    .locals 8

    .line 306
    sget-object v0, Lcom/squareup/picasso/Picasso$Priority;->LOW:Lcom/squareup/picasso/Picasso$Priority;

    .line 308
    .local v0, "newPriority":Lcom/squareup/picasso/Picasso$Priority;
    iget-object v1, p0, Lcom/squareup/picasso/BitmapHunter;->actions:Ljava/util/List;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 309
    .local v1, "hasMultiple":Z
    :goto_0
    iget-object v4, p0, Lcom/squareup/picasso/BitmapHunter;->action:Lcom/squareup/picasso/Action;

    if-nez v4, :cond_1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v2, 0x1

    .line 312
    .local v2, "hasAny":Z
    :cond_2
    if-nez v2, :cond_3

    .line 313
    return-object v0

    .line 316
    :cond_3
    if-eqz v4, :cond_4

    .line 317
    invoke-virtual {v4}, Lcom/squareup/picasso/Action;->getPriority()Lcom/squareup/picasso/Picasso$Priority;

    move-result-object v0

    .line 320
    :cond_4
    if-eqz v1, :cond_6

    .line 322
    const/4 v3, 0x0

    .local v3, "i":I
    iget-object v4, p0, Lcom/squareup/picasso/BitmapHunter;->actions:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    .local v4, "n":I
    :goto_1
    if-ge v3, v4, :cond_6

    .line 323
    iget-object v5, p0, Lcom/squareup/picasso/BitmapHunter;->actions:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/squareup/picasso/Action;

    invoke-virtual {v5}, Lcom/squareup/picasso/Action;->getPriority()Lcom/squareup/picasso/Picasso$Priority;

    move-result-object v5

    .line 324
    .local v5, "actionPriority":Lcom/squareup/picasso/Picasso$Priority;
    invoke-virtual {v5}, Lcom/squareup/picasso/Picasso$Priority;->ordinal()I

    move-result v6

    invoke-virtual {v0}, Lcom/squareup/picasso/Picasso$Priority;->ordinal()I

    move-result v7

    if-le v6, v7, :cond_5

    .line 325
    move-object v0, v5

    .line 322
    .end local v5    # "actionPriority":Lcom/squareup/picasso/Picasso$Priority;
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 330
    .end local v3    # "i":I
    .end local v4    # "n":I
    :cond_6
    return-object v0
.end method

.method static decodeStream(Ljava/io/InputStream;Lcom/squareup/picasso/Request;)Landroid/graphics/Bitmap;
    .locals 10
    .param p0, "stream"    # Ljava/io/InputStream;
    .param p1, "request"    # Lcom/squareup/picasso/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 114
    new-instance v0, Lcom/squareup/picasso/MarkableInputStream;

    invoke-direct {v0, p0}, Lcom/squareup/picasso/MarkableInputStream;-><init>(Ljava/io/InputStream;)V

    .line 115
    .local v0, "markStream":Lcom/squareup/picasso/MarkableInputStream;
    move-object p0, v0

    .line 117
    const/high16 v1, 0x10000

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/MarkableInputStream;->savePosition(I)J

    move-result-wide v1

    .line 119
    .local v1, "mark":J
    invoke-static {p1}, Lcom/squareup/picasso/RequestHandler;->createBitmapOptions(Lcom/squareup/picasso/Request;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v3

    .line 120
    .local v3, "options":Landroid/graphics/BitmapFactory$Options;
    invoke-static {v3}, Lcom/squareup/picasso/RequestHandler;->requiresInSampleSize(Landroid/graphics/BitmapFactory$Options;)Z

    move-result v4

    .line 122
    .local v4, "calculateSize":Z
    invoke-static {p0}, Lcom/squareup/picasso/Utils;->isWebPFile(Ljava/io/InputStream;)Z

    move-result v5

    .line 123
    .local v5, "isWebPFile":Z
    invoke-virtual {v0, v1, v2}, Lcom/squareup/picasso/MarkableInputStream;->reset(J)V

    .line 126
    if-eqz v5, :cond_1

    .line 127
    invoke-static {p0}, Lcom/squareup/picasso/Utils;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object v6

    .line 128
    .local v6, "bytes":[B
    const/4 v7, 0x0

    if-eqz v4, :cond_0

    .line 129
    array-length v8, v6

    invoke-static {v6, v7, v8, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 130
    iget v8, p1, Lcom/squareup/picasso/Request;->targetWidth:I

    iget v9, p1, Lcom/squareup/picasso/Request;->targetHeight:I

    invoke-static {v8, v9, v3, p1}, Lcom/squareup/picasso/RequestHandler;->calculateInSampleSize(IILandroid/graphics/BitmapFactory$Options;Lcom/squareup/picasso/Request;)V

    .line 133
    :cond_0
    array-length v8, v6

    invoke-static {v6, v7, v8, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v7

    return-object v7

    .line 135
    .end local v6    # "bytes":[B
    :cond_1
    const/4 v6, 0x0

    if-eqz v4, :cond_2

    .line 136
    invoke-static {p0, v6, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 137
    iget v7, p1, Lcom/squareup/picasso/Request;->targetWidth:I

    iget v8, p1, Lcom/squareup/picasso/Request;->targetHeight:I

    invoke-static {v7, v8, v3, p1}, Lcom/squareup/picasso/RequestHandler;->calculateInSampleSize(IILandroid/graphics/BitmapFactory$Options;Lcom/squareup/picasso/Request;)V

    .line 140
    invoke-virtual {v0, v1, v2}, Lcom/squareup/picasso/MarkableInputStream;->reset(J)V

    .line 142
    :cond_2
    invoke-static {p0, v6, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 143
    .local v6, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v6, :cond_3

    .line 147
    return-object v6

    .line 145
    :cond_3
    new-instance v7, Ljava/io/IOException;

    const-string v8, "Failed to decode stream."

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method static forRequest(Lcom/squareup/picasso/Picasso;Lcom/squareup/picasso/Dispatcher;Lcom/squareup/picasso/Cache;Lcom/squareup/picasso/Stats;Lcom/squareup/picasso/Action;)Lcom/squareup/picasso/BitmapHunter;
    .locals 13
    .param p0, "picasso"    # Lcom/squareup/picasso/Picasso;
    .param p1, "dispatcher"    # Lcom/squareup/picasso/Dispatcher;
    .param p2, "cache"    # Lcom/squareup/picasso/Cache;
    .param p3, "stats"    # Lcom/squareup/picasso/Stats;
    .param p4, "action"    # Lcom/squareup/picasso/Action;

    .line 409
    invoke-virtual/range {p4 .. p4}, Lcom/squareup/picasso/Action;->getRequest()Lcom/squareup/picasso/Request;

    move-result-object v0

    .line 410
    .local v0, "request":Lcom/squareup/picasso/Request;
    invoke-virtual {p0}, Lcom/squareup/picasso/Picasso;->getRequestHandlers()Ljava/util/List;

    move-result-object v1

    .line 414
    .local v1, "requestHandlers":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/picasso/RequestHandler;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    .local v3, "count":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 415
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/squareup/picasso/RequestHandler;

    .line 416
    .local v4, "requestHandler":Lcom/squareup/picasso/RequestHandler;
    invoke-virtual {v4, v0}, Lcom/squareup/picasso/RequestHandler;->canHandleRequest(Lcom/squareup/picasso/Request;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 417
    new-instance v12, Lcom/squareup/picasso/BitmapHunter;

    move-object v5, v12

    move-object v6, p0

    move-object v7, p1

    move-object v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object v11, v4

    invoke-direct/range {v5 .. v11}, Lcom/squareup/picasso/BitmapHunter;-><init>(Lcom/squareup/picasso/Picasso;Lcom/squareup/picasso/Dispatcher;Lcom/squareup/picasso/Cache;Lcom/squareup/picasso/Stats;Lcom/squareup/picasso/Action;Lcom/squareup/picasso/RequestHandler;)V

    return-object v12

    .line 414
    .end local v4    # "requestHandler":Lcom/squareup/picasso/RequestHandler;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 421
    .end local v2    # "i":I
    .end local v3    # "count":I
    :cond_1
    new-instance v2, Lcom/squareup/picasso/BitmapHunter;

    sget-object v10, Lcom/squareup/picasso/BitmapHunter;->ERRORING_HANDLER:Lcom/squareup/picasso/RequestHandler;

    move-object v4, v2

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    invoke-direct/range {v4 .. v10}, Lcom/squareup/picasso/BitmapHunter;-><init>(Lcom/squareup/picasso/Picasso;Lcom/squareup/picasso/Dispatcher;Lcom/squareup/picasso/Cache;Lcom/squareup/picasso/Stats;Lcom/squareup/picasso/Action;Lcom/squareup/picasso/RequestHandler;)V

    return-object v2
.end method

.method private static shouldResize(ZIIII)Z
    .locals 1
    .param p0, "onlyScaleDown"    # Z
    .param p1, "inWidth"    # I
    .param p2, "inHeight"    # I
    .param p3, "targetWidth"    # I
    .param p4, "targetHeight"    # I

    .line 569
    if-eqz p0, :cond_1

    if-gt p1, p3, :cond_1

    if-le p2, p4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method static transformResult(Lcom/squareup/picasso/Request;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 19
    .param p0, "data"    # Lcom/squareup/picasso/Request;
    .param p1, "result"    # Landroid/graphics/Bitmap;
    .param p2, "exifRotation"    # I

    .line 487
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 488
    .local v2, "inWidth":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 489
    .local v3, "inHeight":I
    iget-boolean v4, v0, Lcom/squareup/picasso/Request;->onlyScaleDown:Z

    .line 491
    .local v4, "onlyScaleDown":Z
    const/4 v5, 0x0

    .line 492
    .local v5, "drawX":I
    const/4 v6, 0x0

    .line 493
    .local v6, "drawY":I
    move v7, v2

    .line 494
    .local v7, "drawWidth":I
    move v8, v3

    .line 496
    .local v8, "drawHeight":I
    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    .line 498
    .local v9, "matrix":Landroid/graphics/Matrix;
    invoke-virtual/range {p0 .. p0}, Lcom/squareup/picasso/Request;->needsMatrixTransform()Z

    move-result v10

    if-eqz v10, :cond_c

    .line 499
    iget v10, v0, Lcom/squareup/picasso/Request;->targetWidth:I

    .line 500
    .local v10, "targetWidth":I
    iget v11, v0, Lcom/squareup/picasso/Request;->targetHeight:I

    .line 502
    .local v11, "targetHeight":I
    iget v12, v0, Lcom/squareup/picasso/Request;->rotationDegrees:F

    .line 503
    .local v12, "targetRotation":F
    const/4 v13, 0x0

    cmpl-float v13, v12, v13

    if-eqz v13, :cond_1

    .line 504
    iget-boolean v13, v0, Lcom/squareup/picasso/Request;->hasRotationPivot:Z

    if-eqz v13, :cond_0

    .line 505
    iget v13, v0, Lcom/squareup/picasso/Request;->rotationPivotX:F

    iget v14, v0, Lcom/squareup/picasso/Request;->rotationPivotY:F

    invoke-virtual {v9, v12, v13, v14}, Landroid/graphics/Matrix;->setRotate(FFF)V

    goto :goto_0

    .line 507
    :cond_0
    invoke-virtual {v9, v12}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 511
    :cond_1
    :goto_0
    iget-boolean v13, v0, Lcom/squareup/picasso/Request;->centerCrop:Z

    if-eqz v13, :cond_4

    .line 512
    int-to-float v13, v10

    int-to-float v14, v2

    div-float/2addr v13, v14

    .line 513
    .local v13, "widthRatio":F
    int-to-float v14, v11

    int-to-float v15, v3

    div-float/2addr v14, v15

    .line 515
    .local v14, "heightRatio":F
    cmpl-float v15, v13, v14

    if-lez v15, :cond_2

    .line 516
    int-to-float v15, v3

    div-float v16, v14, v13

    mul-float v15, v15, v16

    move/from16 v16, v5

    move/from16 v17, v6

    .end local v5    # "drawX":I
    .end local v6    # "drawY":I
    .local v16, "drawX":I
    .local v17, "drawY":I
    float-to-double v5, v15

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    .line 517
    .local v5, "newSize":I
    sub-int v6, v3, v5

    div-int/lit8 v6, v6, 0x2

    .line 518
    .end local v17    # "drawY":I
    .restart local v6    # "drawY":I
    move v8, v5

    .line 519
    move v15, v13

    .line 520
    .local v15, "scaleX":F
    move/from16 v18, v5

    .end local v5    # "newSize":I
    .local v18, "newSize":I
    int-to-float v5, v11

    move/from16 v17, v6

    .end local v6    # "drawY":I
    .restart local v17    # "drawY":I
    int-to-float v6, v8

    div-float/2addr v5, v6

    .line 521
    .end local v18    # "newSize":I
    .local v5, "scaleY":F
    move/from16 v6, v17

    goto :goto_1

    .line 522
    .end local v15    # "scaleX":F
    .end local v16    # "drawX":I
    .end local v17    # "drawY":I
    .local v5, "drawX":I
    .restart local v6    # "drawY":I
    :cond_2
    move/from16 v16, v5

    move/from16 v17, v6

    .end local v5    # "drawX":I
    .end local v6    # "drawY":I
    .restart local v16    # "drawX":I
    .restart local v17    # "drawY":I
    int-to-float v5, v2

    div-float v6, v13, v14

    mul-float v5, v5, v6

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    .line 523
    .local v5, "newSize":I
    sub-int v6, v2, v5

    div-int/lit8 v6, v6, 0x2

    .line 524
    .end local v16    # "drawX":I
    .local v6, "drawX":I
    move v7, v5

    .line 525
    int-to-float v15, v10

    move/from16 v18, v5

    .end local v5    # "newSize":I
    .restart local v18    # "newSize":I
    int-to-float v5, v7

    div-float/2addr v15, v5

    .line 526
    .restart local v15    # "scaleX":F
    move v5, v14

    move/from16 v16, v6

    move/from16 v6, v17

    .line 528
    .end local v17    # "drawY":I
    .end local v18    # "newSize":I
    .local v5, "scaleY":F
    .local v6, "drawY":I
    .restart local v16    # "drawX":I
    :goto_1
    invoke-static {v4, v2, v3, v10, v11}, Lcom/squareup/picasso/BitmapHunter;->shouldResize(ZIIII)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 529
    invoke-virtual {v9, v15, v5}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 531
    .end local v5    # "scaleY":F
    .end local v13    # "widthRatio":F
    .end local v14    # "heightRatio":F
    .end local v15    # "scaleX":F
    :cond_3
    move/from16 v5, v16

    goto :goto_8

    .end local v16    # "drawX":I
    .local v5, "drawX":I
    :cond_4
    move/from16 v16, v5

    move/from16 v17, v6

    .end local v5    # "drawX":I
    .end local v6    # "drawY":I
    .restart local v16    # "drawX":I
    .restart local v17    # "drawY":I
    iget-boolean v5, v0, Lcom/squareup/picasso/Request;->centerInside:Z

    if-eqz v5, :cond_6

    .line 532
    int-to-float v5, v10

    int-to-float v6, v2

    div-float/2addr v5, v6

    .line 533
    .local v5, "widthRatio":F
    int-to-float v6, v11

    int-to-float v13, v3

    div-float/2addr v6, v13

    .line 534
    .local v6, "heightRatio":F
    cmpg-float v13, v5, v6

    if-gez v13, :cond_5

    move v13, v5

    goto :goto_2

    :cond_5
    move v13, v6

    .line 535
    .local v13, "scale":F
    :goto_2
    invoke-static {v4, v2, v3, v10, v11}, Lcom/squareup/picasso/BitmapHunter;->shouldResize(ZIIII)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 536
    invoke-virtual {v9, v13, v13}, Landroid/graphics/Matrix;->preScale(FF)Z

    goto :goto_3

    .line 538
    .end local v5    # "widthRatio":F
    .end local v6    # "heightRatio":F
    .end local v13    # "scale":F
    :cond_6
    if-nez v10, :cond_8

    if-eqz v11, :cond_7

    goto :goto_4

    :cond_7
    :goto_3
    goto :goto_7

    :cond_8
    :goto_4
    if-ne v10, v2, :cond_9

    if-eq v11, v3, :cond_7

    .line 543
    :cond_9
    if-eqz v10, :cond_a

    int-to-float v5, v10

    int-to-float v6, v2

    goto :goto_5

    :cond_a
    int-to-float v5, v11

    int-to-float v6, v3

    :goto_5
    div-float/2addr v5, v6

    .line 545
    .local v5, "sx":F
    if-eqz v11, :cond_b

    int-to-float v6, v11

    int-to-float v13, v3

    goto :goto_6

    :cond_b
    int-to-float v6, v10

    int-to-float v13, v2

    :goto_6
    div-float/2addr v6, v13

    .line 547
    .local v6, "sy":F
    invoke-static {v4, v2, v3, v10, v11}, Lcom/squareup/picasso/BitmapHunter;->shouldResize(ZIIII)Z

    move-result v13

    if-eqz v13, :cond_d

    .line 548
    invoke-virtual {v9, v5, v6}, Landroid/graphics/Matrix;->preScale(FF)Z

    goto :goto_7

    .line 498
    .end local v10    # "targetWidth":I
    .end local v11    # "targetHeight":I
    .end local v12    # "targetRotation":F
    .end local v16    # "drawX":I
    .end local v17    # "drawY":I
    .local v5, "drawX":I
    .local v6, "drawY":I
    :cond_c
    move/from16 v16, v5

    move/from16 v17, v6

    .line 553
    .end local v5    # "drawX":I
    .end local v6    # "drawY":I
    .restart local v16    # "drawX":I
    .restart local v17    # "drawY":I
    :cond_d
    :goto_7
    move/from16 v5, v16

    move/from16 v6, v17

    .end local v16    # "drawX":I
    .end local v17    # "drawY":I
    .restart local v5    # "drawX":I
    .restart local v6    # "drawY":I
    :goto_8
    if-eqz v1, :cond_e

    .line 554
    int-to-float v10, v1

    invoke-virtual {v9, v10}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 557
    :cond_e
    const/16 v16, 0x1

    .line 558
    move-object/from16 v10, p1

    move v11, v5

    move v12, v6

    move v13, v7

    move v14, v8

    move-object v15, v9

    invoke-static/range {v10 .. v16}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 559
    .local v10, "newResult":Landroid/graphics/Bitmap;
    move-object/from16 v11, p1

    if-eq v10, v11, :cond_f

    .line 560
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 561
    move-object v11, v10

    .line 564
    .end local p1    # "result":Landroid/graphics/Bitmap;
    .local v11, "result":Landroid/graphics/Bitmap;
    :cond_f
    return-object v11
.end method

.method static updateThreadName(Lcom/squareup/picasso/Request;)V
    .locals 5
    .param p0, "data"    # Lcom/squareup/picasso/Request;

    .line 398
    invoke-virtual {p0}, Lcom/squareup/picasso/Request;->getName()Ljava/lang/String;

    move-result-object v0

    .line 400
    .local v0, "name":Ljava/lang/String;
    sget-object v1, Lcom/squareup/picasso/BitmapHunter;->NAME_BUILDER:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/StringBuilder;

    .line 401
    .local v1, "builder":Ljava/lang/StringBuilder;
    const-string v2, "Picasso-"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->ensureCapacity(I)V

    .line 402
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3, v0}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 405
    return-void
.end method


# virtual methods
.method attach(Lcom/squareup/picasso/Action;)V
    .locals 7
    .param p1, "action"    # Lcom/squareup/picasso/Action;

    .line 254
    iget-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->picasso:Lcom/squareup/picasso/Picasso;

    iget-boolean v0, v0, Lcom/squareup/picasso/Picasso;->loggingEnabled:Z

    .line 255
    .local v0, "loggingEnabled":Z
    iget-object v1, p1, Lcom/squareup/picasso/Action;->request:Lcom/squareup/picasso/Request;

    .line 257
    .local v1, "request":Lcom/squareup/picasso/Request;
    iget-object v2, p0, Lcom/squareup/picasso/BitmapHunter;->action:Lcom/squareup/picasso/Action;

    const-string v3, "to "

    const-string v4, "joined"

    const-string v5, "Hunter"

    if-nez v2, :cond_3

    .line 258
    iput-object p1, p0, Lcom/squareup/picasso/BitmapHunter;->action:Lcom/squareup/picasso/Action;

    .line 259
    if-eqz v0, :cond_2

    .line 260
    iget-object v2, p0, Lcom/squareup/picasso/BitmapHunter;->actions:Ljava/util/List;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 263
    :cond_0
    invoke-virtual {v1}, Lcom/squareup/picasso/Request;->logId()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v3}, Lcom/squareup/picasso/Utils;->getLogIdsForHunter(Lcom/squareup/picasso/BitmapHunter;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v4, v2, v3}, Lcom/squareup/picasso/Utils;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 261
    :cond_1
    :goto_0
    invoke-virtual {v1}, Lcom/squareup/picasso/Request;->logId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "to empty hunter"

    invoke-static {v5, v4, v2, v3}, Lcom/squareup/picasso/Utils;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    :cond_2
    :goto_1
    return-void

    .line 269
    :cond_3
    iget-object v2, p0, Lcom/squareup/picasso/BitmapHunter;->actions:Ljava/util/List;

    if-nez v2, :cond_4

    .line 270
    new-instance v2, Ljava/util/ArrayList;

    const/4 v6, 0x3

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/squareup/picasso/BitmapHunter;->actions:Ljava/util/List;

    .line 273
    :cond_4
    iget-object v2, p0, Lcom/squareup/picasso/BitmapHunter;->actions:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 275
    if-eqz v0, :cond_5

    .line 276
    invoke-virtual {v1}, Lcom/squareup/picasso/Request;->logId()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v3}, Lcom/squareup/picasso/Utils;->getLogIdsForHunter(Lcom/squareup/picasso/BitmapHunter;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v4, v2, v3}, Lcom/squareup/picasso/Utils;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    :cond_5
    invoke-virtual {p1}, Lcom/squareup/picasso/Action;->getPriority()Lcom/squareup/picasso/Picasso$Priority;

    move-result-object v2

    .line 280
    .local v2, "actionPriority":Lcom/squareup/picasso/Picasso$Priority;
    invoke-virtual {v2}, Lcom/squareup/picasso/Picasso$Priority;->ordinal()I

    move-result v3

    iget-object v4, p0, Lcom/squareup/picasso/BitmapHunter;->priority:Lcom/squareup/picasso/Picasso$Priority;

    invoke-virtual {v4}, Lcom/squareup/picasso/Picasso$Priority;->ordinal()I

    move-result v4

    if-le v3, v4, :cond_6

    .line 281
    iput-object v2, p0, Lcom/squareup/picasso/BitmapHunter;->priority:Lcom/squareup/picasso/Picasso$Priority;

    .line 283
    :cond_6
    return-void
.end method

.method cancel()Z
    .locals 2

    .line 334
    iget-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->action:Lcom/squareup/picasso/Action;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->actions:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 335
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->future:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_1

    .line 337
    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    nop

    :goto_0
    return v1
.end method

.method detach(Lcom/squareup/picasso/Action;)V
    .locals 5
    .param p1, "action"    # Lcom/squareup/picasso/Action;

    .line 286
    const/4 v0, 0x0

    .line 287
    .local v0, "detached":Z
    iget-object v1, p0, Lcom/squareup/picasso/BitmapHunter;->action:Lcom/squareup/picasso/Action;

    if-ne v1, p1, :cond_0

    .line 288
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/squareup/picasso/BitmapHunter;->action:Lcom/squareup/picasso/Action;

    .line 289
    const/4 v0, 0x1

    goto :goto_0

    .line 290
    :cond_0
    iget-object v1, p0, Lcom/squareup/picasso/BitmapHunter;->actions:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 291
    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 296
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/squareup/picasso/Action;->getPriority()Lcom/squareup/picasso/Picasso$Priority;

    move-result-object v1

    iget-object v2, p0, Lcom/squareup/picasso/BitmapHunter;->priority:Lcom/squareup/picasso/Picasso$Priority;

    if-ne v1, v2, :cond_2

    .line 297
    invoke-direct {p0}, Lcom/squareup/picasso/BitmapHunter;->computeNewPriority()Lcom/squareup/picasso/Picasso$Priority;

    move-result-object v1

    iput-object v1, p0, Lcom/squareup/picasso/BitmapHunter;->priority:Lcom/squareup/picasso/Picasso$Priority;

    .line 300
    :cond_2
    iget-object v1, p0, Lcom/squareup/picasso/BitmapHunter;->picasso:Lcom/squareup/picasso/Picasso;

    iget-boolean v1, v1, Lcom/squareup/picasso/Picasso;->loggingEnabled:Z

    if-eqz v1, :cond_3

    .line 301
    iget-object v1, p1, Lcom/squareup/picasso/Action;->request:Lcom/squareup/picasso/Request;

    invoke-virtual {v1}, Lcom/squareup/picasso/Request;->logId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "from "

    invoke-static {p0, v2}, Lcom/squareup/picasso/Utils;->getLogIdsForHunter(Lcom/squareup/picasso/BitmapHunter;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Hunter"

    const-string v4, "removed"

    invoke-static {v3, v4, v1, v2}, Lcom/squareup/picasso/Utils;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    :cond_3
    return-void
.end method

.method getAction()Lcom/squareup/picasso/Action;
    .locals 1

    .line 374
    iget-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->action:Lcom/squareup/picasso/Action;

    return-object v0
.end method

.method getActions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/squareup/picasso/Action;",
            ">;"
        }
    .end annotation

    .line 382
    iget-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->actions:Ljava/util/List;

    return-object v0
.end method

.method getData()Lcom/squareup/picasso/Request;
    .locals 1

    .line 370
    iget-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->data:Lcom/squareup/picasso/Request;

    return-object v0
.end method

.method getException()Ljava/lang/Exception;
    .locals 1

    .line 386
    iget-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->exception:Ljava/lang/Exception;

    return-object v0
.end method

.method getKey()Ljava/lang/String;
    .locals 1

    .line 362
    iget-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->key:Ljava/lang/String;

    return-object v0
.end method

.method getLoadedFrom()Lcom/squareup/picasso/Picasso$LoadedFrom;
    .locals 1

    .line 390
    iget-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->loadedFrom:Lcom/squareup/picasso/Picasso$LoadedFrom;

    return-object v0
.end method

.method getMemoryPolicy()I
    .locals 1

    .line 366
    iget v0, p0, Lcom/squareup/picasso/BitmapHunter;->memoryPolicy:I

    return v0
.end method

.method getPicasso()Lcom/squareup/picasso/Picasso;
    .locals 1

    .line 378
    iget-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->picasso:Lcom/squareup/picasso/Picasso;

    return-object v0
.end method

.method getPriority()Lcom/squareup/picasso/Picasso$Priority;
    .locals 1

    .line 394
    iget-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->priority:Lcom/squareup/picasso/Picasso$Priority;

    return-object v0
.end method

.method getResult()Landroid/graphics/Bitmap;
    .locals 1

    .line 358
    iget-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->result:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method hunt()Landroid/graphics/Bitmap;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 191
    const/4 v0, 0x0

    .line 193
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget v1, p0, Lcom/squareup/picasso/BitmapHunter;->memoryPolicy:I

    invoke-static {v1}, Lcom/squareup/picasso/MemoryPolicy;->shouldReadFromMemoryCache(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 194
    iget-object v1, p0, Lcom/squareup/picasso/BitmapHunter;->cache:Lcom/squareup/picasso/Cache;

    iget-object v2, p0, Lcom/squareup/picasso/BitmapHunter;->key:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/squareup/picasso/Cache;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 195
    if-eqz v0, :cond_1

    .line 196
    iget-object v1, p0, Lcom/squareup/picasso/BitmapHunter;->stats:Lcom/squareup/picasso/Stats;

    invoke-virtual {v1}, Lcom/squareup/picasso/Stats;->dispatchCacheHit()V

    .line 197
    sget-object v1, Lcom/squareup/picasso/Picasso$LoadedFrom;->MEMORY:Lcom/squareup/picasso/Picasso$LoadedFrom;

    iput-object v1, p0, Lcom/squareup/picasso/BitmapHunter;->loadedFrom:Lcom/squareup/picasso/Picasso$LoadedFrom;

    .line 198
    iget-object v1, p0, Lcom/squareup/picasso/BitmapHunter;->picasso:Lcom/squareup/picasso/Picasso;

    iget-boolean v1, v1, Lcom/squareup/picasso/Picasso;->loggingEnabled:Z

    if-eqz v1, :cond_0

    .line 199
    const-string v1, "Hunter"

    const-string v2, "decoded"

    iget-object v3, p0, Lcom/squareup/picasso/BitmapHunter;->data:Lcom/squareup/picasso/Request;

    invoke-virtual {v3}, Lcom/squareup/picasso/Request;->logId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "from cache"

    invoke-static {v1, v2, v3, v4}, Lcom/squareup/picasso/Utils;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    :cond_0
    return-object v0

    .line 205
    :cond_1
    iget-object v1, p0, Lcom/squareup/picasso/BitmapHunter;->data:Lcom/squareup/picasso/Request;

    iget v2, p0, Lcom/squareup/picasso/BitmapHunter;->retryCount:I

    if-nez v2, :cond_2

    sget-object v2, Lcom/squareup/picasso/NetworkPolicy;->OFFLINE:Lcom/squareup/picasso/NetworkPolicy;

    iget v2, v2, Lcom/squareup/picasso/NetworkPolicy;->index:I

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/squareup/picasso/BitmapHunter;->networkPolicy:I

    :goto_0
    iput v2, v1, Lcom/squareup/picasso/Request;->networkPolicy:I

    .line 206
    iget-object v1, p0, Lcom/squareup/picasso/BitmapHunter;->requestHandler:Lcom/squareup/picasso/RequestHandler;

    iget-object v2, p0, Lcom/squareup/picasso/BitmapHunter;->data:Lcom/squareup/picasso/Request;

    iget v3, p0, Lcom/squareup/picasso/BitmapHunter;->networkPolicy:I

    invoke-virtual {v1, v2, v3}, Lcom/squareup/picasso/RequestHandler;->load(Lcom/squareup/picasso/Request;I)Lcom/squareup/picasso/RequestHandler$Result;

    move-result-object v1

    .line 207
    .local v1, "result":Lcom/squareup/picasso/RequestHandler$Result;
    if-eqz v1, :cond_3

    .line 208
    invoke-virtual {v1}, Lcom/squareup/picasso/RequestHandler$Result;->getLoadedFrom()Lcom/squareup/picasso/Picasso$LoadedFrom;

    move-result-object v2

    iput-object v2, p0, Lcom/squareup/picasso/BitmapHunter;->loadedFrom:Lcom/squareup/picasso/Picasso$LoadedFrom;

    .line 209
    invoke-virtual {v1}, Lcom/squareup/picasso/RequestHandler$Result;->getExifOrientation()I

    move-result v2

    iput v2, p0, Lcom/squareup/picasso/BitmapHunter;->exifRotation:I

    .line 211
    invoke-virtual {v1}, Lcom/squareup/picasso/RequestHandler$Result;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 214
    if-nez v0, :cond_3

    .line 215
    invoke-virtual {v1}, Lcom/squareup/picasso/RequestHandler$Result;->getStream()Ljava/io/InputStream;

    move-result-object v2

    .line 217
    .local v2, "is":Ljava/io/InputStream;
    :try_start_0
    iget-object v3, p0, Lcom/squareup/picasso/BitmapHunter;->data:Lcom/squareup/picasso/Request;

    invoke-static {v2, v3}, Lcom/squareup/picasso/BitmapHunter;->decodeStream(Ljava/io/InputStream;Lcom/squareup/picasso/Request;)Landroid/graphics/Bitmap;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v3

    .line 219
    invoke-static {v2}, Lcom/squareup/picasso/Utils;->closeQuietly(Ljava/io/InputStream;)V

    .line 220
    goto :goto_1

    .line 219
    :catchall_0
    move-exception v3

    invoke-static {v2}, Lcom/squareup/picasso/Utils;->closeQuietly(Ljava/io/InputStream;)V

    throw v3

    .line 224
    .end local v2    # "is":Ljava/io/InputStream;
    :cond_3
    :goto_1
    if-eqz v0, :cond_9

    .line 225
    iget-object v2, p0, Lcom/squareup/picasso/BitmapHunter;->picasso:Lcom/squareup/picasso/Picasso;

    iget-boolean v2, v2, Lcom/squareup/picasso/Picasso;->loggingEnabled:Z

    if-eqz v2, :cond_4

    .line 226
    const-string v2, "Hunter"

    const-string v3, "decoded"

    iget-object v4, p0, Lcom/squareup/picasso/BitmapHunter;->data:Lcom/squareup/picasso/Request;

    invoke-virtual {v4}, Lcom/squareup/picasso/Request;->logId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/squareup/picasso/Utils;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    :cond_4
    iget-object v2, p0, Lcom/squareup/picasso/BitmapHunter;->stats:Lcom/squareup/picasso/Stats;

    invoke-virtual {v2, v0}, Lcom/squareup/picasso/Stats;->dispatchBitmapDecoded(Landroid/graphics/Bitmap;)V

    .line 229
    iget-object v2, p0, Lcom/squareup/picasso/BitmapHunter;->data:Lcom/squareup/picasso/Request;

    invoke-virtual {v2}, Lcom/squareup/picasso/Request;->needsTransformation()Z

    move-result v2

    if-nez v2, :cond_5

    iget v2, p0, Lcom/squareup/picasso/BitmapHunter;->exifRotation:I

    if-eqz v2, :cond_9

    .line 230
    :cond_5
    sget-object v2, Lcom/squareup/picasso/BitmapHunter;->DECODE_LOCK:Ljava/lang/Object;

    monitor-enter v2

    .line 231
    :try_start_1
    iget-object v3, p0, Lcom/squareup/picasso/BitmapHunter;->data:Lcom/squareup/picasso/Request;

    invoke-virtual {v3}, Lcom/squareup/picasso/Request;->needsMatrixTransform()Z

    move-result v3

    if-nez v3, :cond_6

    iget v3, p0, Lcom/squareup/picasso/BitmapHunter;->exifRotation:I

    if-eqz v3, :cond_7

    .line 232
    :cond_6
    iget-object v3, p0, Lcom/squareup/picasso/BitmapHunter;->data:Lcom/squareup/picasso/Request;

    iget v4, p0, Lcom/squareup/picasso/BitmapHunter;->exifRotation:I

    invoke-static {v3, v0, v4}, Lcom/squareup/picasso/BitmapHunter;->transformResult(Lcom/squareup/picasso/Request;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object v0, v3

    .line 233
    iget-object v3, p0, Lcom/squareup/picasso/BitmapHunter;->picasso:Lcom/squareup/picasso/Picasso;

    iget-boolean v3, v3, Lcom/squareup/picasso/Picasso;->loggingEnabled:Z

    if-eqz v3, :cond_7

    .line 234
    const-string v3, "Hunter"

    const-string v4, "transformed"

    iget-object v5, p0, Lcom/squareup/picasso/BitmapHunter;->data:Lcom/squareup/picasso/Request;

    invoke-virtual {v5}, Lcom/squareup/picasso/Request;->logId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/squareup/picasso/Utils;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    :cond_7
    iget-object v3, p0, Lcom/squareup/picasso/BitmapHunter;->data:Lcom/squareup/picasso/Request;

    invoke-virtual {v3}, Lcom/squareup/picasso/Request;->hasCustomTransformations()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 238
    iget-object v3, p0, Lcom/squareup/picasso/BitmapHunter;->data:Lcom/squareup/picasso/Request;

    iget-object v3, v3, Lcom/squareup/picasso/Request;->transformations:Ljava/util/List;

    invoke-static {v3, v0}, Lcom/squareup/picasso/BitmapHunter;->applyCustomTransformations(Ljava/util/List;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object v0, v3

    .line 239
    iget-object v3, p0, Lcom/squareup/picasso/BitmapHunter;->picasso:Lcom/squareup/picasso/Picasso;

    iget-boolean v3, v3, Lcom/squareup/picasso/Picasso;->loggingEnabled:Z

    if-eqz v3, :cond_8

    .line 240
    const-string v3, "Hunter"

    const-string v4, "transformed"

    iget-object v5, p0, Lcom/squareup/picasso/BitmapHunter;->data:Lcom/squareup/picasso/Request;

    invoke-virtual {v5}, Lcom/squareup/picasso/Request;->logId()Ljava/lang/String;

    move-result-object v5

    const-string v6, "from custom transformations"

    invoke-static {v3, v4, v5, v6}, Lcom/squareup/picasso/Utils;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    :cond_8
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 244
    if-eqz v0, :cond_9

    .line 245
    iget-object v2, p0, Lcom/squareup/picasso/BitmapHunter;->stats:Lcom/squareup/picasso/Stats;

    invoke-virtual {v2, v0}, Lcom/squareup/picasso/Stats;->dispatchBitmapTransformed(Landroid/graphics/Bitmap;)V

    goto :goto_2

    .line 243
    :catchall_1
    move-exception v3

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3

    .line 250
    :cond_9
    :goto_2
    return-object v0
.end method

.method isCancelled()Z
    .locals 1

    .line 341
    iget-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->future:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public run()V
    .locals 5

    .line 153
    const-string v0, "Picasso-Idle"

    :try_start_0
    iget-object v1, p0, Lcom/squareup/picasso/BitmapHunter;->data:Lcom/squareup/picasso/Request;

    invoke-static {v1}, Lcom/squareup/picasso/BitmapHunter;->updateThreadName(Lcom/squareup/picasso/Request;)V

    .line 155
    iget-object v1, p0, Lcom/squareup/picasso/BitmapHunter;->picasso:Lcom/squareup/picasso/Picasso;

    iget-boolean v1, v1, Lcom/squareup/picasso/Picasso;->loggingEnabled:Z

    if-eqz v1, :cond_0

    .line 156
    const-string v1, "Hunter"

    const-string v2, "executing"

    invoke-static {p0}, Lcom/squareup/picasso/Utils;->getLogIdsForHunter(Lcom/squareup/picasso/BitmapHunter;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/squareup/picasso/Utils;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    :cond_0
    invoke-virtual {p0}, Lcom/squareup/picasso/BitmapHunter;->hunt()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/squareup/picasso/BitmapHunter;->result:Landroid/graphics/Bitmap;

    .line 161
    if-nez v1, :cond_1

    .line 162
    iget-object v1, p0, Lcom/squareup/picasso/BitmapHunter;->dispatcher:Lcom/squareup/picasso/Dispatcher;

    invoke-virtual {v1, p0}, Lcom/squareup/picasso/Dispatcher;->dispatchFailed(Lcom/squareup/picasso/BitmapHunter;)V

    goto :goto_0

    .line 164
    :cond_1
    iget-object v1, p0, Lcom/squareup/picasso/BitmapHunter;->dispatcher:Lcom/squareup/picasso/Dispatcher;

    invoke-virtual {v1, p0}, Lcom/squareup/picasso/Dispatcher;->dispatchComplete(Lcom/squareup/picasso/BitmapHunter;)V
    :try_end_0
    .catch Lcom/squareup/picasso/Downloader$ResponseException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/squareup/picasso/NetworkRequestHandler$ContentLengthException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 186
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 182
    :catch_0
    move-exception v1

    .line 183
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    iput-object v1, p0, Lcom/squareup/picasso/BitmapHunter;->exception:Ljava/lang/Exception;

    .line 184
    iget-object v2, p0, Lcom/squareup/picasso/BitmapHunter;->dispatcher:Lcom/squareup/picasso/Dispatcher;

    invoke-virtual {v2, p0}, Lcom/squareup/picasso/Dispatcher;->dispatchFailed(Lcom/squareup/picasso/BitmapHunter;)V

    .end local v1    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 177
    :catch_1
    move-exception v1

    .line 178
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 179
    .local v2, "writer":Ljava/io/StringWriter;
    iget-object v3, p0, Lcom/squareup/picasso/BitmapHunter;->stats:Lcom/squareup/picasso/Stats;

    invoke-virtual {v3}, Lcom/squareup/picasso/Stats;->createSnapshot()Lcom/squareup/picasso/StatsSnapshot;

    move-result-object v3

    new-instance v4, Ljava/io/PrintWriter;

    invoke-direct {v4, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v3, v4}, Lcom/squareup/picasso/StatsSnapshot;->dump(Ljava/io/PrintWriter;)V

    .line 180
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object v3, p0, Lcom/squareup/picasso/BitmapHunter;->exception:Ljava/lang/Exception;

    .line 181
    iget-object v3, p0, Lcom/squareup/picasso/BitmapHunter;->dispatcher:Lcom/squareup/picasso/Dispatcher;

    invoke-virtual {v3, p0}, Lcom/squareup/picasso/Dispatcher;->dispatchFailed(Lcom/squareup/picasso/BitmapHunter;)V

    .end local v1    # "e":Ljava/lang/OutOfMemoryError;
    .end local v2    # "writer":Ljava/io/StringWriter;
    goto :goto_0

    .line 174
    :catch_2
    move-exception v1

    .line 175
    .local v1, "e":Ljava/io/IOException;
    iput-object v1, p0, Lcom/squareup/picasso/BitmapHunter;->exception:Ljava/lang/Exception;

    .line 176
    iget-object v2, p0, Lcom/squareup/picasso/BitmapHunter;->dispatcher:Lcom/squareup/picasso/Dispatcher;

    invoke-virtual {v2, p0}, Lcom/squareup/picasso/Dispatcher;->dispatchRetry(Lcom/squareup/picasso/BitmapHunter;)V

    .end local v1    # "e":Ljava/io/IOException;
    goto :goto_0

    .line 171
    :catch_3
    move-exception v1

    .line 172
    .local v1, "e":Lcom/squareup/picasso/NetworkRequestHandler$ContentLengthException;
    iput-object v1, p0, Lcom/squareup/picasso/BitmapHunter;->exception:Ljava/lang/Exception;

    .line 173
    iget-object v2, p0, Lcom/squareup/picasso/BitmapHunter;->dispatcher:Lcom/squareup/picasso/Dispatcher;

    invoke-virtual {v2, p0}, Lcom/squareup/picasso/Dispatcher;->dispatchRetry(Lcom/squareup/picasso/BitmapHunter;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 186
    .end local v1    # "e":Lcom/squareup/picasso/NetworkRequestHandler$ContentLengthException;
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 187
    goto :goto_1

    .line 166
    :catch_4
    move-exception v1

    .line 167
    .local v1, "e":Lcom/squareup/picasso/Downloader$ResponseException;
    :try_start_2
    iget-boolean v2, v1, Lcom/squareup/picasso/Downloader$ResponseException;->localCacheOnly:Z

    if-eqz v2, :cond_2

    iget v2, v1, Lcom/squareup/picasso/Downloader$ResponseException;->responseCode:I

    const/16 v3, 0x1f8

    if-eq v2, v3, :cond_3

    .line 168
    :cond_2
    iput-object v1, p0, Lcom/squareup/picasso/BitmapHunter;->exception:Ljava/lang/Exception;

    .line 170
    :cond_3
    iget-object v2, p0, Lcom/squareup/picasso/BitmapHunter;->dispatcher:Lcom/squareup/picasso/Dispatcher;

    invoke-virtual {v2, p0}, Lcom/squareup/picasso/Dispatcher;->dispatchFailed(Lcom/squareup/picasso/BitmapHunter;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v1    # "e":Lcom/squareup/picasso/Downloader$ResponseException;
    goto :goto_0

    .line 188
    :goto_1
    return-void

    .line 186
    :goto_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw v1

    :goto_4
    goto :goto_3
.end method

.method shouldRetry(ZLandroid/net/NetworkInfo;)Z
    .locals 4
    .param p1, "airplaneMode"    # Z
    .param p2, "info"    # Landroid/net/NetworkInfo;

    .line 345
    iget v0, p0, Lcom/squareup/picasso/BitmapHunter;->retryCount:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 346
    .local v3, "hasRetries":Z
    :goto_0
    if-nez v3, :cond_1

    .line 347
    return v2

    .line 349
    :cond_1
    sub-int/2addr v0, v1

    iput v0, p0, Lcom/squareup/picasso/BitmapHunter;->retryCount:I

    .line 350
    iget-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->requestHandler:Lcom/squareup/picasso/RequestHandler;

    invoke-virtual {v0, p1, p2}, Lcom/squareup/picasso/RequestHandler;->shouldRetry(ZLandroid/net/NetworkInfo;)Z

    move-result v0

    return v0
.end method

.method supportsReplay()Z
    .locals 1

    .line 354
    iget-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->requestHandler:Lcom/squareup/picasso/RequestHandler;

    invoke-virtual {v0}, Lcom/squareup/picasso/RequestHandler;->supportsReplay()Z

    move-result v0

    return v0
.end method
