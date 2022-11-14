.class public Lcom/squareup/picasso/UrlConnectionDownloader;
.super Ljava/lang/Object;
.source "UrlConnectionDownloader.java"

# interfaces
.implements Lcom/squareup/picasso/Downloader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/picasso/UrlConnectionDownloader$ResponseCacheIcs;
    }
.end annotation


# static fields
.field private static final CACHE_HEADER_BUILDER:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/StringBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private static final FORCE_CACHE:Ljava/lang/String; = "only-if-cached,max-age=2147483647"

.field static final RESPONSE_SOURCE:Ljava/lang/String; = "X-Android-Response-Source"

.field static volatile cache:Ljava/lang/Object;

.field private static final lock:Ljava/lang/Object;


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/squareup/picasso/UrlConnectionDownloader;->lock:Ljava/lang/Object;

    .line 40
    new-instance v0, Lcom/squareup/picasso/UrlConnectionDownloader$1;

    invoke-direct {v0}, Lcom/squareup/picasso/UrlConnectionDownloader$1;-><init>()V

    sput-object v0, Lcom/squareup/picasso/UrlConnectionDownloader;->CACHE_HEADER_BUILDER:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/picasso/UrlConnectionDownloader;->context:Landroid/content/Context;

    .line 51
    return-void
.end method

.method private static installCacheIfNeeded(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 114
    sget-object v0, Lcom/squareup/picasso/UrlConnectionDownloader;->cache:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 116
    :try_start_0
    sget-object v0, Lcom/squareup/picasso/UrlConnectionDownloader;->lock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    :try_start_1
    sget-object v1, Lcom/squareup/picasso/UrlConnectionDownloader;->cache:Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 118
    invoke-static {p0}, Lcom/squareup/picasso/UrlConnectionDownloader$ResponseCacheIcs;->install(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    sput-object v1, Lcom/squareup/picasso/UrlConnectionDownloader;->cache:Ljava/lang/Object;

    .line 120
    :cond_0
    monitor-exit v0

    .line 122
    goto :goto_0

    .line 120
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p0    # "context":Landroid/content/Context;
    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 121
    .restart local p0    # "context":Landroid/content/Context;
    :catch_0
    move-exception v0

    .line 124
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public load(Landroid/net/Uri;I)Lcom/squareup/picasso/Downloader$Response;
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "networkPolicy"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 62
    iget-object v0, p0, Lcom/squareup/picasso/UrlConnectionDownloader;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/squareup/picasso/UrlConnectionDownloader;->installCacheIfNeeded(Landroid/content/Context;)V

    .line 65
    :cond_0
    invoke-virtual {p0, p1}, Lcom/squareup/picasso/UrlConnectionDownloader;->openConnection(Landroid/net/Uri;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 66
    .local v0, "connection":Ljava/net/HttpURLConnection;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 68
    if-eqz p2, :cond_5

    .line 71
    invoke-static {p2}, Lcom/squareup/picasso/NetworkPolicy;->isOfflineOnly(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 72
    const-string v1, "only-if-cached,max-age=2147483647"

    .local v1, "headerValue":Ljava/lang/String;
    goto :goto_0

    .line 74
    .end local v1    # "headerValue":Ljava/lang/String;
    :cond_1
    sget-object v1, Lcom/squareup/picasso/UrlConnectionDownloader;->CACHE_HEADER_BUILDER:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/StringBuilder;

    .line 75
    .local v1, "builder":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 77
    invoke-static {p2}, Lcom/squareup/picasso/NetworkPolicy;->shouldReadFromDiskCache(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 78
    const-string v2, "no-cache"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    :cond_2
    invoke-static {p2}, Lcom/squareup/picasso/NetworkPolicy;->shouldWriteToDiskCache(I)Z

    move-result v2

    if-nez v2, :cond_4

    .line 81
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_3

    .line 82
    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 84
    :cond_3
    const-string v2, "no-store"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 90
    .local v1, "headerValue":Ljava/lang/String;
    :goto_0
    const-string v2, "Cache-Control"

    invoke-virtual {v0, v2, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    .end local v1    # "headerValue":Ljava/lang/String;
    :cond_5
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    .line 94
    .local v1, "responseCode":I
    const/16 v2, 0x12c

    if-ge v1, v2, :cond_6

    .line 100
    const/4 v2, -0x1

    const-string v3, "Content-Length"

    invoke-virtual {v0, v3, v2}, Ljava/net/HttpURLConnection;->getHeaderFieldInt(Ljava/lang/String;I)I

    move-result v2

    int-to-long v2, v2

    .line 101
    .local v2, "contentLength":J
    const-string v4, "X-Android-Response-Source"

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/squareup/picasso/Utils;->parseResponseSourceHeader(Ljava/lang/String;)Z

    move-result v4

    .line 103
    .local v4, "fromCache":Z
    new-instance v5, Lcom/squareup/picasso/Downloader$Response;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v5, v6, v4, v2, v3}, Lcom/squareup/picasso/Downloader$Response;-><init>(Ljava/io/InputStream;ZJ)V

    return-object v5

    .line 95
    .end local v2    # "contentLength":J
    .end local v4    # "fromCache":Z
    :cond_6
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 96
    new-instance v2, Lcom/squareup/picasso/Downloader$ResponseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, p2, v1}, Lcom/squareup/picasso/Downloader$ResponseException;-><init>(Ljava/lang/String;II)V

    throw v2
.end method

.method protected openConnection(Landroid/net/Uri;)Ljava/net/HttpURLConnection;
    .locals 2
    .param p1, "path"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    new-instance v0, Ljava/net/URL;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 55
    .local v0, "connection":Ljava/net/HttpURLConnection;
    const/16 v1, 0x3a98

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 56
    const/16 v1, 0x4e20

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 57
    return-object v0
.end method

.method public shutdown()V
    .locals 2

    .line 107
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    sget-object v0, Lcom/squareup/picasso/UrlConnectionDownloader;->cache:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 108
    sget-object v0, Lcom/squareup/picasso/UrlConnectionDownloader;->cache:Ljava/lang/Object;

    invoke-static {v0}, Lcom/squareup/picasso/UrlConnectionDownloader$ResponseCacheIcs;->close(Ljava/lang/Object;)V

    .line 110
    :cond_0
    return-void
.end method
