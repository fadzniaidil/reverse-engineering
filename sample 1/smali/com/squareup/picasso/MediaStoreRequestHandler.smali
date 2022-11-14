.class Lcom/squareup/picasso/MediaStoreRequestHandler;
.super Lcom/squareup/picasso/ContentStreamRequestHandler;
.source "MediaStoreRequestHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/picasso/MediaStoreRequestHandler$PicassoKind;
    }
.end annotation


# static fields
.field private static final CONTENT_ORIENTATION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 40
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "orientation"

    aput-object v2, v0, v1

    sput-object v0, Lcom/squareup/picasso/MediaStoreRequestHandler;->CONTENT_ORIENTATION:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 45
    invoke-direct {p0, p1}, Lcom/squareup/picasso/ContentStreamRequestHandler;-><init>(Landroid/content/Context;)V

    .line 46
    return-void
.end method

.method static getExifOrientation(Landroid/content/ContentResolver;Landroid/net/Uri;)I
    .locals 8
    .param p0, "contentResolver"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Landroid/net/Uri;

    .line 105
    const/4 v0, 0x0

    .line 107
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v1, 0x0

    :try_start_0
    sget-object v4, Lcom/squareup/picasso/MediaStoreRequestHandler;->CONTENT_ORIENTATION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move-object v0, v2

    .line 108
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 111
    :cond_0
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    if-eqz v0, :cond_1

    .line 117
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    return v1

    .line 109
    :cond_2
    :goto_0
    nop

    .line 116
    if-eqz v0, :cond_3

    .line 117
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    return v1

    .line 116
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_4

    .line 117
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v1

    .line 112
    :catch_0
    move-exception v2

    .line 114
    .local v2, "ignored":Ljava/lang/RuntimeException;
    nop

    .line 116
    if-eqz v0, :cond_5

    .line 117
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_5
    return v1
.end method

.method static getPicassoKind(II)Lcom/squareup/picasso/MediaStoreRequestHandler$PicassoKind;
    .locals 1
    .param p0, "targetWidth"    # I
    .param p1, "targetHeight"    # I

    .line 96
    sget-object v0, Lcom/squareup/picasso/MediaStoreRequestHandler$PicassoKind;->MICRO:Lcom/squareup/picasso/MediaStoreRequestHandler$PicassoKind;

    iget v0, v0, Lcom/squareup/picasso/MediaStoreRequestHandler$PicassoKind;->width:I

    if-gt p0, v0, :cond_0

    sget-object v0, Lcom/squareup/picasso/MediaStoreRequestHandler$PicassoKind;->MICRO:Lcom/squareup/picasso/MediaStoreRequestHandler$PicassoKind;

    iget v0, v0, Lcom/squareup/picasso/MediaStoreRequestHandler$PicassoKind;->height:I

    if-gt p1, v0, :cond_0

    .line 97
    sget-object v0, Lcom/squareup/picasso/MediaStoreRequestHandler$PicassoKind;->MICRO:Lcom/squareup/picasso/MediaStoreRequestHandler$PicassoKind;

    return-object v0

    .line 98
    :cond_0
    sget-object v0, Lcom/squareup/picasso/MediaStoreRequestHandler$PicassoKind;->MINI:Lcom/squareup/picasso/MediaStoreRequestHandler$PicassoKind;

    iget v0, v0, Lcom/squareup/picasso/MediaStoreRequestHandler$PicassoKind;->width:I

    if-gt p0, v0, :cond_1

    sget-object v0, Lcom/squareup/picasso/MediaStoreRequestHandler$PicassoKind;->MINI:Lcom/squareup/picasso/MediaStoreRequestHandler$PicassoKind;

    iget v0, v0, Lcom/squareup/picasso/MediaStoreRequestHandler$PicassoKind;->height:I

    if-gt p1, v0, :cond_1

    .line 99
    sget-object v0, Lcom/squareup/picasso/MediaStoreRequestHandler$PicassoKind;->MINI:Lcom/squareup/picasso/MediaStoreRequestHandler$PicassoKind;

    return-object v0

    .line 101
    :cond_1
    sget-object v0, Lcom/squareup/picasso/MediaStoreRequestHandler$PicassoKind;->FULL:Lcom/squareup/picasso/MediaStoreRequestHandler$PicassoKind;

    return-object v0
.end method


# virtual methods
.method public canHandleRequest(Lcom/squareup/picasso/Request;)Z
    .locals 3
    .param p1, "data"    # Lcom/squareup/picasso/Request;

    .line 49
    iget-object v0, p1, Lcom/squareup/picasso/Request;->uri:Landroid/net/Uri;

    .line 50
    .local v0, "uri":Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "content"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 51
    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    const-string v2, "media"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public load(Lcom/squareup/picasso/Request;I)Lcom/squareup/picasso/RequestHandler$Result;
    .locals 18
    .param p1, "request"    # Lcom/squareup/picasso/Request;
    .param p2, "networkPolicy"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    move-object/from16 v6, p1

    move-object/from16 v7, p0

    iget-object v0, v7, Lcom/squareup/picasso/MediaStoreRequestHandler;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 56
    .local v8, "contentResolver":Landroid/content/ContentResolver;
    iget-object v0, v6, Lcom/squareup/picasso/Request;->uri:Landroid/net/Uri;

    invoke-static {v8, v0}, Lcom/squareup/picasso/MediaStoreRequestHandler;->getExifOrientation(Landroid/content/ContentResolver;Landroid/net/Uri;)I

    move-result v9

    .line 58
    .local v9, "exifOrientation":I
    iget-object v0, v6, Lcom/squareup/picasso/Request;->uri:Landroid/net/Uri;

    invoke-virtual {v8, v0}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v10

    .line 59
    .local v10, "mimeType":Ljava/lang/String;
    const/4 v11, 0x1

    if-eqz v10, :cond_0

    const-string v0, "video/"

    invoke-virtual {v10, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v12, v0

    .line 61
    .local v12, "isVideo":Z
    invoke-virtual/range {p1 .. p1}, Lcom/squareup/picasso/Request;->hasSize()Z

    move-result v0

    const/4 v13, 0x0

    if-eqz v0, :cond_4

    .line 62
    iget v0, v6, Lcom/squareup/picasso/Request;->targetWidth:I

    iget v1, v6, Lcom/squareup/picasso/Request;->targetHeight:I

    invoke-static {v0, v1}, Lcom/squareup/picasso/MediaStoreRequestHandler;->getPicassoKind(II)Lcom/squareup/picasso/MediaStoreRequestHandler$PicassoKind;

    move-result-object v14

    .line 63
    .local v14, "picassoKind":Lcom/squareup/picasso/MediaStoreRequestHandler$PicassoKind;
    if-nez v12, :cond_1

    sget-object v0, Lcom/squareup/picasso/MediaStoreRequestHandler$PicassoKind;->FULL:Lcom/squareup/picasso/MediaStoreRequestHandler$PicassoKind;

    if-ne v14, v0, :cond_1

    .line 64
    new-instance v0, Lcom/squareup/picasso/RequestHandler$Result;

    invoke-virtual/range {p0 .. p1}, Lcom/squareup/picasso/MediaStoreRequestHandler;->getInputStream(Lcom/squareup/picasso/Request;)Ljava/io/InputStream;

    move-result-object v1

    sget-object v2, Lcom/squareup/picasso/Picasso$LoadedFrom;->DISK:Lcom/squareup/picasso/Picasso$LoadedFrom;

    invoke-direct {v0, v13, v1, v2, v9}, Lcom/squareup/picasso/RequestHandler$Result;-><init>(Landroid/graphics/Bitmap;Ljava/io/InputStream;Lcom/squareup/picasso/Picasso$LoadedFrom;I)V

    return-object v0

    .line 67
    :cond_1
    iget-object v0, v6, Lcom/squareup/picasso/Request;->uri:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v4

    .line 69
    .local v4, "id":J
    invoke-static/range {p1 .. p1}, Lcom/squareup/picasso/MediaStoreRequestHandler;->createBitmapOptions(Lcom/squareup/picasso/Request;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v15

    .line 70
    .local v15, "options":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v11, v15, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 72
    iget v0, v6, Lcom/squareup/picasso/Request;->targetWidth:I

    iget v1, v6, Lcom/squareup/picasso/Request;->targetHeight:I

    iget v2, v14, Lcom/squareup/picasso/MediaStoreRequestHandler$PicassoKind;->width:I

    iget v3, v14, Lcom/squareup/picasso/MediaStoreRequestHandler$PicassoKind;->height:I

    move-wide/from16 v16, v4

    .end local v4    # "id":J
    .local v16, "id":J
    move-object v4, v15

    move-object/from16 v5, p1

    invoke-static/range {v0 .. v5}, Lcom/squareup/picasso/MediaStoreRequestHandler;->calculateInSampleSize(IIIILandroid/graphics/BitmapFactory$Options;Lcom/squareup/picasso/Request;)V

    .line 77
    if-eqz v12, :cond_3

    .line 80
    sget-object v0, Lcom/squareup/picasso/MediaStoreRequestHandler$PicassoKind;->FULL:Lcom/squareup/picasso/MediaStoreRequestHandler$PicassoKind;

    if-ne v14, v0, :cond_2

    goto :goto_1

    :cond_2
    iget v11, v14, Lcom/squareup/picasso/MediaStoreRequestHandler$PicassoKind;->androidKind:I

    :goto_1
    move v0, v11

    .line 81
    .local v0, "kind":I
    move-wide/from16 v1, v16

    .end local v16    # "id":J
    .local v1, "id":J
    invoke-static {v8, v1, v2, v0, v15}, Landroid/provider/MediaStore$Video$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 82
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    goto :goto_2

    .line 83
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "id":J
    .restart local v16    # "id":J
    :cond_3
    move-wide/from16 v1, v16

    .end local v16    # "id":J
    .restart local v1    # "id":J
    iget v0, v14, Lcom/squareup/picasso/MediaStoreRequestHandler$PicassoKind;->androidKind:I

    .line 84
    invoke-static {v8, v1, v2, v0, v15}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 87
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    :goto_2
    if-eqz v0, :cond_4

    .line 88
    new-instance v3, Lcom/squareup/picasso/RequestHandler$Result;

    sget-object v4, Lcom/squareup/picasso/Picasso$LoadedFrom;->DISK:Lcom/squareup/picasso/Picasso$LoadedFrom;

    invoke-direct {v3, v0, v13, v4, v9}, Lcom/squareup/picasso/RequestHandler$Result;-><init>(Landroid/graphics/Bitmap;Ljava/io/InputStream;Lcom/squareup/picasso/Picasso$LoadedFrom;I)V

    return-object v3

    .line 92
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "id":J
    .end local v14    # "picassoKind":Lcom/squareup/picasso/MediaStoreRequestHandler$PicassoKind;
    .end local v15    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_4
    new-instance v0, Lcom/squareup/picasso/RequestHandler$Result;

    invoke-virtual/range {p0 .. p1}, Lcom/squareup/picasso/MediaStoreRequestHandler;->getInputStream(Lcom/squareup/picasso/Request;)Ljava/io/InputStream;

    move-result-object v1

    sget-object v2, Lcom/squareup/picasso/Picasso$LoadedFrom;->DISK:Lcom/squareup/picasso/Picasso$LoadedFrom;

    invoke-direct {v0, v13, v1, v2, v9}, Lcom/squareup/picasso/RequestHandler$Result;-><init>(Landroid/graphics/Bitmap;Ljava/io/InputStream;Lcom/squareup/picasso/Picasso$LoadedFrom;I)V

    return-object v0
.end method
