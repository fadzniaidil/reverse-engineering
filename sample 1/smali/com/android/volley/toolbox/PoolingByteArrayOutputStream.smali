.class public Lcom/android/volley/toolbox/PoolingByteArrayOutputStream;
.super Ljava/io/ByteArrayOutputStream;
.source "PoolingByteArrayOutputStream.java"


# static fields
.field private static final DEFAULT_SIZE:I = 0x100


# instance fields
.field private final mPool:Lcom/android/volley/toolbox/ByteArrayPool;


# direct methods
.method public constructor <init>(Lcom/android/volley/toolbox/ByteArrayPool;)V
    .locals 1
    .param p1, "pool"    # Lcom/android/volley/toolbox/ByteArrayPool;

    .line 40
    const/16 v0, 0x100

    invoke-direct {p0, p1, v0}, Lcom/android/volley/toolbox/PoolingByteArrayOutputStream;-><init>(Lcom/android/volley/toolbox/ByteArrayPool;I)V

    .line 41
    return-void
.end method

.method public constructor <init>(Lcom/android/volley/toolbox/ByteArrayPool;I)V
    .locals 1
    .param p1, "pool"    # Lcom/android/volley/toolbox/ByteArrayPool;
    .param p2, "size"    # I

    .line 51
    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/android/volley/toolbox/PoolingByteArrayOutputStream;->mPool:Lcom/android/volley/toolbox/ByteArrayPool;

    .line 53
    const/16 v0, 0x100

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/volley/toolbox/ByteArrayPool;->getBuf(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/volley/toolbox/PoolingByteArrayOutputStream;->buf:[B

    .line 54
    return-void
.end method

.method private expand(I)V
    .locals 4
    .param p1, "i"    # I

    .line 72
    iget v0, p0, Lcom/android/volley/toolbox/PoolingByteArrayOutputStream;->count:I

    add-int/2addr v0, p1

    iget-object v1, p0, Lcom/android/volley/toolbox/PoolingByteArrayOutputStream;->buf:[B

    array-length v1, v1

    if-gt v0, v1, :cond_0

    .line 73
    return-void

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/android/volley/toolbox/PoolingByteArrayOutputStream;->mPool:Lcom/android/volley/toolbox/ByteArrayPool;

    iget v1, p0, Lcom/android/volley/toolbox/PoolingByteArrayOutputStream;->count:I

    add-int/2addr v1, p1

    mul-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/volley/toolbox/ByteArrayPool;->getBuf(I)[B

    move-result-object v0

    .line 76
    .local v0, "newbuf":[B
    iget-object v1, p0, Lcom/android/volley/toolbox/PoolingByteArrayOutputStream;->buf:[B

    iget v2, p0, Lcom/android/volley/toolbox/PoolingByteArrayOutputStream;->count:I

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 77
    iget-object v1, p0, Lcom/android/volley/toolbox/PoolingByteArrayOutputStream;->mPool:Lcom/android/volley/toolbox/ByteArrayPool;

    iget-object v2, p0, Lcom/android/volley/toolbox/PoolingByteArrayOutputStream;->buf:[B

    invoke-virtual {v1, v2}, Lcom/android/volley/toolbox/ByteArrayPool;->returnBuf([B)V

    .line 78
    iput-object v0, p0, Lcom/android/volley/toolbox/PoolingByteArrayOutputStream;->buf:[B

    .line 79
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/android/volley/toolbox/PoolingByteArrayOutputStream;->mPool:Lcom/android/volley/toolbox/ByteArrayPool;

    iget-object v1, p0, Lcom/android/volley/toolbox/PoolingByteArrayOutputStream;->buf:[B

    invoke-virtual {v0, v1}, Lcom/android/volley/toolbox/ByteArrayPool;->returnBuf([B)V

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/volley/toolbox/PoolingByteArrayOutputStream;->buf:[B

    .line 60
    invoke-super {p0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 61
    return-void
.end method

.method public finalize()V
    .locals 2

    .line 65
    iget-object v0, p0, Lcom/android/volley/toolbox/PoolingByteArrayOutputStream;->mPool:Lcom/android/volley/toolbox/ByteArrayPool;

    iget-object v1, p0, Lcom/android/volley/toolbox/PoolingByteArrayOutputStream;->buf:[B

    invoke-virtual {v0, v1}, Lcom/android/volley/toolbox/ByteArrayPool;->returnBuf([B)V

    .line 66
    return-void
.end method

.method public declared-synchronized write(I)V
    .locals 1
    .param p1, "oneByte"    # I

    monitor-enter p0

    .line 89
    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/volley/toolbox/PoolingByteArrayOutputStream;->expand(I)V

    .line 90
    invoke-super {p0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    monitor-exit p0

    return-void

    .line 88
    .end local p0    # "this":Lcom/android/volley/toolbox/PoolingByteArrayOutputStream;
    .end local p1    # "oneByte":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized write([BII)V
    .locals 0
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I

    monitor-enter p0

    .line 83
    :try_start_0
    invoke-direct {p0, p3}, Lcom/android/volley/toolbox/PoolingByteArrayOutputStream;->expand(I)V

    .line 84
    invoke-super {p0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    monitor-exit p0

    return-void

    .line 82
    .end local p0    # "this":Lcom/android/volley/toolbox/PoolingByteArrayOutputStream;
    .end local p1    # "buffer":[B
    .end local p2    # "offset":I
    .end local p3    # "len":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
