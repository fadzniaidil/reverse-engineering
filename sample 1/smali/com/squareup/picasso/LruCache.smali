.class public Lcom/squareup/picasso/LruCache;
.super Ljava/lang/Object;
.source "LruCache.java"

# interfaces
.implements Lcom/squareup/picasso/Cache;


# instance fields
.field private evictionCount:I

.field private hitCount:I

.field final map:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final maxSize:I

.field private missCount:I

.field private putCount:I

.field private size:I


# direct methods
.method public constructor <init>(I)V
    .locals 4
    .param p1, "maxSize"    # I

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    if-lez p1, :cond_0

    .line 47
    iput p1, p0, Lcom/squareup/picasso/LruCache;->maxSize:I

    .line 48
    new-instance v0, Ljava/util/LinkedHashMap;

    const/4 v1, 0x0

    const/high16 v2, 0x3f400000    # 0.75f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v0, p0, Lcom/squareup/picasso/LruCache;->map:Ljava/util/LinkedHashMap;

    .line 49
    return-void

    .line 45
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Max size must be positive."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 39
    invoke-static {p1}, Lcom/squareup/picasso/Utils;->calculateMemoryCacheSize(Landroid/content/Context;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/squareup/picasso/LruCache;-><init>(I)V

    .line 40
    return-void
.end method

.method private trimToSize(I)V
    .locals 5
    .param p1, "maxSize"    # I

    const/4 v0, 0x0

    move-object v1, v0

    .line 91
    :goto_0
    monitor-enter p0

    .line 92
    :try_start_0
    iget v2, p0, Lcom/squareup/picasso/LruCache;->size:I

    if-ltz v2, :cond_3

    iget-object v2, p0, Lcom/squareup/picasso/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/squareup/picasso/LruCache;->size:I

    if-nez v2, :cond_3

    .line 97
    :cond_0
    iget v2, p0, Lcom/squareup/picasso/LruCache;->size:I

    if-le v2, p1, :cond_2

    iget-object v2, p0, Lcom/squareup/picasso/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 101
    :cond_1
    iget-object v2, p0, Lcom/squareup/picasso/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 102
    .local v2, "toEvict":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/graphics/Bitmap;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-object v0, v3

    .line 103
    .local v0, "key":Ljava/lang/String;
    :try_start_1
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v1, v3

    .line 104
    .local v1, "value":Landroid/graphics/Bitmap;
    :try_start_2
    iget-object v3, p0, Lcom/squareup/picasso/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v0}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    iget v3, p0, Lcom/squareup/picasso/LruCache;->size:I

    invoke-static {v1}, Lcom/squareup/picasso/Utils;->getBitmapBytes(Landroid/graphics/Bitmap;)I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/squareup/picasso/LruCache;->size:I

    .line 106
    iget v3, p0, Lcom/squareup/picasso/LruCache;->evictionCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/squareup/picasso/LruCache;->evictionCount:I

    .line 107
    .end local v2    # "toEvict":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/graphics/Bitmap;>;"
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 108
    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "value":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 107
    :catchall_0
    move-exception v2

    goto :goto_2

    :catchall_1
    move-exception v2

    .restart local v1    # "value":Landroid/graphics/Bitmap;
    goto :goto_2

    .line 98
    .end local v1    # "value":Landroid/graphics/Bitmap;
    :cond_2
    :goto_1
    :try_start_3
    monitor-exit p0

    .line 109
    return-void

    .line 93
    :cond_3
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".sizeOf() is reporting inconsistent results!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p1    # "maxSize":I
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 107
    .restart local p1    # "maxSize":I
    :catchall_2
    move-exception v2

    .restart local v0    # "key":Ljava/lang/String;
    .restart local v1    # "value":Landroid/graphics/Bitmap;
    :goto_2
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    throw v2

    :catchall_3
    move-exception v2

    goto :goto_2
.end method


# virtual methods
.method public final declared-synchronized clear()V
    .locals 1

    monitor-enter p0

    .line 125
    :try_start_0
    invoke-virtual {p0}, Lcom/squareup/picasso/LruCache;->evictAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    monitor-exit p0

    return-void

    .line 124
    .end local p0    # "this":Lcom/squareup/picasso/LruCache;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized clearKeyUri(Ljava/lang/String;)V
    .locals 9
    .param p1, "uri"    # Ljava/lang/String;

    monitor-enter p0

    .line 129
    const/4 v0, 0x0

    .line 130
    .local v0, "sizeChanged":Z
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 131
    .local v1, "uriLength":I
    iget-object v2, p0, Lcom/squareup/picasso/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/graphics/Bitmap;>;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 132
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 133
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/graphics/Bitmap;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 134
    .local v4, "key":Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Bitmap;

    .line 135
    .local v5, "value":Landroid/graphics/Bitmap;
    const/16 v6, 0xa

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 136
    .local v6, "newlineIndex":I
    if-ne v6, v1, :cond_0

    const/4 v7, 0x0

    invoke-virtual {v4, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 137
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 138
    iget v7, p0, Lcom/squareup/picasso/LruCache;->size:I

    invoke-static {v5}, Lcom/squareup/picasso/Utils;->getBitmapBytes(Landroid/graphics/Bitmap;)I

    move-result v8

    sub-int/2addr v7, v8

    iput v7, p0, Lcom/squareup/picasso/LruCache;->size:I

    .line 139
    const/4 v0, 0x1

    .line 141
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/graphics/Bitmap;>;"
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "value":Landroid/graphics/Bitmap;
    .end local v6    # "newlineIndex":I
    .end local p0    # "this":Lcom/squareup/picasso/LruCache;
    :cond_0
    goto :goto_0

    .line 142
    .end local v2    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/graphics/Bitmap;>;>;"
    :cond_1
    if-eqz v0, :cond_2

    .line 143
    iget v2, p0, Lcom/squareup/picasso/LruCache;->maxSize:I

    invoke-direct {p0, v2}, Lcom/squareup/picasso/LruCache;->trimToSize(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    :cond_2
    monitor-exit p0

    return-void

    .line 128
    .end local v0    # "sizeChanged":Z
    .end local v1    # "uriLength":I
    .end local p1    # "uri":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public final evictAll()V
    .locals 1

    .line 113
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/squareup/picasso/LruCache;->trimToSize(I)V

    .line 114
    return-void
.end method

.method public final declared-synchronized evictionCount()I
    .locals 1

    monitor-enter p0

    .line 164
    :try_start_0
    iget v0, p0, Lcom/squareup/picasso/LruCache;->evictionCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 164
    .end local p0    # "this":Lcom/squareup/picasso/LruCache;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public get(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .line 52
    if-eqz p1, :cond_1

    .line 57
    monitor-enter p0

    .line 58
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/squareup/picasso/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    .local v1, "mapValue":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    .line 60
    :try_start_1
    iget v0, p0, Lcom/squareup/picasso/LruCache;->hitCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/squareup/picasso/LruCache;->hitCount:I

    .line 61
    monitor-exit p0

    return-object v1

    .line 63
    :cond_0
    iget v2, p0, Lcom/squareup/picasso/LruCache;->missCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/squareup/picasso/LruCache;->missCount:I

    .line 64
    monitor-exit p0

    .line 66
    return-object v0

    .line 64
    .end local v1    # "mapValue":Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    .restart local v1    # "mapValue":Landroid/graphics/Bitmap;
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_0

    .line 53
    .end local v1    # "mapValue":Landroid/graphics/Bitmap;
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "key == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public final declared-synchronized hitCount()I
    .locals 1

    monitor-enter p0

    .line 149
    :try_start_0
    iget v0, p0, Lcom/squareup/picasso/LruCache;->hitCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 149
    .end local p0    # "this":Lcom/squareup/picasso/LruCache;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized maxSize()I
    .locals 1

    monitor-enter p0

    .line 121
    :try_start_0
    iget v0, p0, Lcom/squareup/picasso/LruCache;->maxSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 121
    .end local p0    # "this":Lcom/squareup/picasso/LruCache;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized missCount()I
    .locals 1

    monitor-enter p0

    .line 154
    :try_start_0
    iget v0, p0, Lcom/squareup/picasso/LruCache;->missCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 154
    .end local p0    # "this":Lcom/squareup/picasso/LruCache;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized putCount()I
    .locals 1

    monitor-enter p0

    .line 159
    :try_start_0
    iget v0, p0, Lcom/squareup/picasso/LruCache;->putCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 159
    .end local p0    # "this":Lcom/squareup/picasso/LruCache;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public set(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .line 70
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 75
    monitor-enter p0

    .line 76
    const/4 v0, 0x0

    :try_start_0
    iget v1, p0, Lcom/squareup/picasso/LruCache;->putCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/squareup/picasso/LruCache;->putCount:I

    .line 77
    iget v1, p0, Lcom/squareup/picasso/LruCache;->size:I

    invoke-static {p2}, Lcom/squareup/picasso/Utils;->getBitmapBytes(Landroid/graphics/Bitmap;)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/squareup/picasso/LruCache;->size:I

    .line 78
    iget-object v1, p0, Lcom/squareup/picasso/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    .line 79
    .local v0, "previous":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 80
    :try_start_1
    iget v1, p0, Lcom/squareup/picasso/LruCache;->size:I

    invoke-static {v0}, Lcom/squareup/picasso/Utils;->getBitmapBytes(Landroid/graphics/Bitmap;)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/squareup/picasso/LruCache;->size:I

    .line 82
    :cond_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 84
    iget v1, p0, Lcom/squareup/picasso/LruCache;->maxSize:I

    invoke-direct {p0, v1}, Lcom/squareup/picasso/LruCache;->trimToSize(I)V

    .line 85
    return-void

    .line 82
    .end local v0    # "previous":Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v1

    .restart local v0    # "previous":Landroid/graphics/Bitmap;
    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    :catchall_1
    move-exception v1

    goto :goto_0

    .line 71
    .end local v0    # "previous":Landroid/graphics/Bitmap;
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "key == null || bitmap == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public final declared-synchronized size()I
    .locals 1

    monitor-enter p0

    .line 117
    :try_start_0
    iget v0, p0, Lcom/squareup/picasso/LruCache;->size:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 117
    .end local p0    # "this":Lcom/squareup/picasso/LruCache;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
