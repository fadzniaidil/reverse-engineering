.class Lcom/squareup/picasso/FileRequestHandler;
.super Lcom/squareup/picasso/ContentStreamRequestHandler;
.source "FileRequestHandler.java"


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 34
    invoke-direct {p0, p1}, Lcom/squareup/picasso/ContentStreamRequestHandler;-><init>(Landroid/content/Context;)V

    .line 35
    return-void
.end method

.method static getFileExifRotation(Landroid/net/Uri;)I
    .locals 3
    .param p0, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 46
    new-instance v0, Landroid/media/ExifInterface;

    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 47
    .local v0, "exifInterface":Landroid/media/ExifInterface;
    const-string v1, "Orientation"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v1

    .line 48
    .local v1, "orientation":I
    sparse-switch v1, :sswitch_data_0

    .line 56
    const/4 v2, 0x0

    return v2

    .line 54
    :sswitch_0
    const/16 v2, 0x10e

    return v2

    .line 50
    :sswitch_1
    const/16 v2, 0x5a

    return v2

    .line 52
    :sswitch_2
    const/16 v2, 0xb4

    return v2

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_2
        0x6 -> :sswitch_1
        0x8 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public canHandleRequest(Lcom/squareup/picasso/Request;)Z
    .locals 2
    .param p1, "data"    # Lcom/squareup/picasso/Request;

    .line 38
    iget-object v0, p1, Lcom/squareup/picasso/Request;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public load(Lcom/squareup/picasso/Request;I)Lcom/squareup/picasso/RequestHandler$Result;
    .locals 5
    .param p1, "request"    # Lcom/squareup/picasso/Request;
    .param p2, "networkPolicy"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 42
    new-instance v0, Lcom/squareup/picasso/RequestHandler$Result;

    invoke-virtual {p0, p1}, Lcom/squareup/picasso/FileRequestHandler;->getInputStream(Lcom/squareup/picasso/Request;)Ljava/io/InputStream;

    move-result-object v1

    sget-object v2, Lcom/squareup/picasso/Picasso$LoadedFrom;->DISK:Lcom/squareup/picasso/Picasso$LoadedFrom;

    iget-object v3, p1, Lcom/squareup/picasso/Request;->uri:Landroid/net/Uri;

    invoke-static {v3}, Lcom/squareup/picasso/FileRequestHandler;->getFileExifRotation(Landroid/net/Uri;)I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/squareup/picasso/RequestHandler$Result;-><init>(Landroid/graphics/Bitmap;Ljava/io/InputStream;Lcom/squareup/picasso/Picasso$LoadedFrom;I)V

    return-object v0
.end method
