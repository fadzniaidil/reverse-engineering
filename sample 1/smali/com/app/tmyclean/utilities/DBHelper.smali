.class public Lcom/app/tmyclean/utilities/DBHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DBHelper.java"


# static fields
.field private static final DB_NAME:Ljava/lang/String; = "ecommerce_db"

.field public static final DB_VERSION:I = 0x1

.field public static db:Landroid/database/sqlite/SQLiteDatabase;


# instance fields
.field private final CART_ID:Ljava/lang/String;

.field private final CODE:Ljava/lang/String;

.field private final CURRENCY_CODE:Ljava/lang/String;

.field private final DATE_TIME:Ljava/lang/String;

.field private DB_PATH:Ljava/lang/String;

.field private final HISTORY_ID:Ljava/lang/String;

.field private final ORDER_LIST:Ljava/lang/String;

.field private final ORDER_TOTAL:Ljava/lang/String;

.field private final PRODUCT_IMAGE:Ljava/lang/String;

.field private final PRODUCT_NAME:Ljava/lang/String;

.field private final QUANTITY:Ljava/lang/String;

.field private final TABLE_CART:Ljava/lang/String;

.field private final TABLE_HISTORY:Ljava/lang/String;

.field private final TOTAL_PRICE:Ljava/lang/String;

.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 42
    const-string v0, "ecommerce_db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 26
    const-string v0, "tbl_cart"

    iput-object v0, p0, Lcom/app/tmyclean/utilities/DBHelper;->TABLE_CART:Ljava/lang/String;

    .line 27
    const-string v0, "id"

    iput-object v0, p0, Lcom/app/tmyclean/utilities/DBHelper;->CART_ID:Ljava/lang/String;

    .line 28
    const-string v1, "product_name"

    iput-object v1, p0, Lcom/app/tmyclean/utilities/DBHelper;->PRODUCT_NAME:Ljava/lang/String;

    .line 29
    const-string v1, "quantity"

    iput-object v1, p0, Lcom/app/tmyclean/utilities/DBHelper;->QUANTITY:Ljava/lang/String;

    .line 30
    const-string v1, "total_price"

    iput-object v1, p0, Lcom/app/tmyclean/utilities/DBHelper;->TOTAL_PRICE:Ljava/lang/String;

    .line 31
    const-string v1, "currency_code"

    iput-object v1, p0, Lcom/app/tmyclean/utilities/DBHelper;->CURRENCY_CODE:Ljava/lang/String;

    .line 32
    const-string v1, "product_image"

    iput-object v1, p0, Lcom/app/tmyclean/utilities/DBHelper;->PRODUCT_IMAGE:Ljava/lang/String;

    .line 34
    const-string v1, "tbl_history"

    iput-object v1, p0, Lcom/app/tmyclean/utilities/DBHelper;->TABLE_HISTORY:Ljava/lang/String;

    .line 35
    iput-object v0, p0, Lcom/app/tmyclean/utilities/DBHelper;->HISTORY_ID:Ljava/lang/String;

    .line 36
    const-string v0, "code"

    iput-object v0, p0, Lcom/app/tmyclean/utilities/DBHelper;->CODE:Ljava/lang/String;

    .line 37
    const-string v0, "order_list"

    iput-object v0, p0, Lcom/app/tmyclean/utilities/DBHelper;->ORDER_LIST:Ljava/lang/String;

    .line 38
    const-string v0, "order_total"

    iput-object v0, p0, Lcom/app/tmyclean/utilities/DBHelper;->ORDER_TOTAL:Ljava/lang/String;

    .line 39
    const-string v0, "date_time"

    iput-object v0, p0, Lcom/app/tmyclean/utilities/DBHelper;->DATE_TIME:Ljava/lang/String;

    .line 43
    iput-object p1, p0, Lcom/app/tmyclean/utilities/DBHelper;->context:Landroid/content/Context;

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data/data/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/databases/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/app/tmyclean/utilities/DBHelper;->DB_PATH:Ljava/lang/String;

    .line 45
    return-void
.end method

.method private checkDataBase()Z
    .locals 3

    .line 63
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/app/tmyclean/utilities/DBHelper;->DB_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "ecommerce_db"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 64
    .local v0, "dbFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    return v1
.end method

.method private copyDataBase()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/app/tmyclean/utilities/DBHelper;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "ecommerce_db"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 70
    .local v0, "myInput":Ljava/io/InputStream;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/app/tmyclean/utilities/DBHelper;->DB_PATH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 71
    .local v1, "outFileName":Ljava/lang/String;
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 72
    .local v2, "myOutput":Ljava/io/OutputStream;
    const/16 v3, 0x400

    new-array v3, v3, [B

    .line 74
    .local v3, "buffer":[B
    :goto_0
    invoke-virtual {v0, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    move v5, v4

    .local v5, "length":I
    if-lez v4, :cond_0

    .line 75
    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 77
    :cond_0
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 78
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 79
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 81
    return-void
.end method


# virtual methods
.method public addData(JLjava/lang/String;IDLjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "id"    # J
    .param p3, "product_name"    # Ljava/lang/String;
    .param p4, "quantity"    # I
    .param p5, "total_price"    # D
    .param p7, "currency_code"    # Ljava/lang/String;
    .param p8, "product_image"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "id",
            "product_name",
            "quantity",
            "total_price",
            "currency_code",
            "product_image"
        }
    .end annotation

    .line 208
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 209
    .local v0, "values":Landroid/content/ContentValues;
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 210
    const-string v1, "product_name"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "quantity"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 212
    invoke-static {p5, p6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "total_price"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 213
    const-string v1, "currency_code"

    invoke-virtual {v0, v1, p7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    const-string v1, "product_image"

    invoke-virtual {v0, v1, p8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    :try_start_0
    sget-object v1, Lcom/app/tmyclean/utilities/DBHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "tbl_cart"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    goto :goto_0

    .line 217
    :catch_0
    move-exception v1

    .line 218
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DB ERROR"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 221
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public addDataHistory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "order_list"    # Ljava/lang/String;
    .param p3, "order_total"    # Ljava/lang/String;
    .param p4, "date_time"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "code",
            "order_list",
            "order_total",
            "date_time"
        }
    .end annotation

    .line 224
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 225
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "code"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    const-string v1, "order_list"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    const-string v1, "order_total"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    const-string v1, "date_time"

    invoke-virtual {v0, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    :try_start_0
    sget-object v1, Lcom/app/tmyclean/utilities/DBHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "tbl_history"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    goto :goto_0

    .line 231
    :catch_0
    move-exception v1

    .line 232
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DB ERROR"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 235
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public close()V
    .locals 1

    .line 90
    sget-object v0, Lcom/app/tmyclean/utilities/DBHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 91
    return-void
.end method

.method public createDataBase()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 48
    invoke-direct {p0}, Lcom/app/tmyclean/utilities/DBHelper;->checkDataBase()Z

    move-result v0

    .line 49
    .local v0, "dbExist":Z
    const/4 v1, 0x0

    .line 50
    .local v1, "db_Read":Landroid/database/sqlite/SQLiteDatabase;
    if-eqz v0, :cond_0

    goto :goto_0

    .line 52
    :cond_0
    invoke-virtual {p0}, Lcom/app/tmyclean/utilities/DBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 53
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 55
    :try_start_0
    invoke-direct {p0}, Lcom/app/tmyclean/utilities/DBHelper;->copyDataBase()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    nop

    .line 60
    :goto_0
    return-void

    .line 56
    :catch_0
    move-exception v2

    .line 57
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/Error;

    const-string v4, "Error copying database"

    invoke-direct {v3, v4}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public deleteAllData()V
    .locals 3

    .line 257
    :try_start_0
    sget-object v0, Lcom/app/tmyclean/utilities/DBHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "tbl_cart"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 261
    goto :goto_0

    .line 258
    :catch_0
    move-exception v0

    .line 259
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DB ERROR"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 262
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public deleteAllDataHistory()V
    .locals 3

    .line 266
    :try_start_0
    sget-object v0, Lcom/app/tmyclean/utilities/DBHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "tbl_history"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 270
    goto :goto_0

    .line 267
    :catch_0
    move-exception v0

    .line 268
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DB ERROR"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 271
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public deleteData(J)V
    .locals 4
    .param p1, "id"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .line 239
    :try_start_0
    sget-object v0, Lcom/app/tmyclean/utilities/DBHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "tbl_cart"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 243
    goto :goto_0

    .line 240
    :catch_0
    move-exception v0

    .line 241
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DB ERROR"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 244
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public deleteDataHistory(J)V
    .locals 4
    .param p1, "id"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .line 248
    :try_start_0
    sget-object v0, Lcom/app/tmyclean/utilities/DBHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "tbl_history"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 252
    goto :goto_0

    .line 249
    :catch_0
    move-exception v0

    .line 250
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DB ERROR"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 253
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public getAllData()Ljava/util/ArrayList;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v0

    .line 105
    .local v1, "dataArrays":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/lang/Object;>;>;"
    const/4 v2, 0x0

    .line 107
    .local v2, "cursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v3, Lcom/app/tmyclean/utilities/DBHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "tbl_cart"

    const/4 v0, 0x6

    new-array v5, v0, [Ljava/lang/String;

    const-string v0, "id"

    const/4 v11, 0x0

    aput-object v0, v5, v11

    const-string v0, "product_name"

    const/4 v12, 0x1

    aput-object v0, v5, v12

    const-string v0, "quantity"

    const/4 v13, 0x2

    aput-object v0, v5, v13

    const-string v0, "total_price"

    const/4 v14, 0x3

    aput-object v0, v5, v14

    const-string v0, "currency_code"

    const/4 v15, 0x4

    aput-object v0, v5, v15

    const-string v0, "product_image"

    const/4 v10, 0x5

    aput-object v0, v5, v10

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v0, 0x0

    move-object v10, v0

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v2, v0

    .line 109
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 110
    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_1

    .line 112
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 113
    .local v0, "dataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    invoke-interface {v2, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    invoke-interface {v2, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    invoke-interface {v2, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    const/4 v3, 0x5

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    nop

    .end local v0    # "dataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 123
    :cond_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    goto :goto_0

    .line 124
    :catch_0
    move-exception v0

    .line 125
    .local v0, "e":Landroid/database/SQLException;
    invoke-virtual {v0}, Landroid/database/SQLException;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "DB Error"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    invoke-virtual {v0}, Landroid/database/SQLException;->printStackTrace()V

    .line 128
    .end local v0    # "e":Landroid/database/SQLException;
    :goto_0
    return-object v1
.end method

.method public getAllDataHistory()Ljava/util/ArrayList;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 132
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 133
    .local v0, "dataArrays":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/lang/Object;>;>;"
    const/4 v1, 0x0

    .line 135
    .local v1, "cursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v2, Lcom/app/tmyclean/utilities/DBHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "tbl_history"

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "id"

    const/4 v10, 0x0

    aput-object v5, v4, v10

    const-string v5, "code"

    const/4 v11, 0x1

    aput-object v5, v4, v11

    const-string v5, "order_list"

    const/4 v12, 0x2

    aput-object v5, v4, v12

    const-string v5, "order_total"

    const/4 v13, 0x3

    aput-object v5, v4, v13

    const-string v5, "date_time"

    const/4 v14, 0x4

    aput-object v5, v4, v14

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "id DESC"

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move-object v1, v2

    .line 137
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 138
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_1

    .line 140
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 141
    .local v2, "dataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    invoke-interface {v1, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    invoke-interface {v1, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    invoke-interface {v1, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    nop

    .end local v2    # "dataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 150
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    goto :goto_0

    .line 151
    :catch_0
    move-exception v2

    .line 152
    .local v2, "e":Landroid/database/SQLException;
    invoke-virtual {v2}, Landroid/database/SQLException;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "DB Error"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    invoke-virtual {v2}, Landroid/database/SQLException;->printStackTrace()V

    .line 155
    .end local v2    # "e":Landroid/database/SQLException;
    :goto_0
    return-object v0
.end method

.method public isDataExist(J)Z
    .locals 10
    .param p1, "id"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .line 159
    const/4 v0, 0x0

    .line 160
    .local v0, "exist":Z
    const/4 v1, 0x0

    .line 162
    .local v1, "cursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v2, Lcom/app/tmyclean/utilities/DBHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "tbl_cart"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "id"

    aput-object v6, v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move-object v1, v2

    .line 163
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 164
    const/4 v0, 0x1

    .line 166
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    goto :goto_0

    .line 167
    :catch_0
    move-exception v2

    .line 168
    .local v2, "e":Landroid/database/SQLException;
    invoke-virtual {v2}, Landroid/database/SQLException;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "DB Error"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    invoke-virtual {v2}, Landroid/database/SQLException;->printStackTrace()V

    .line 171
    .end local v2    # "e":Landroid/database/SQLException;
    :goto_0
    return v0
.end method

.method public isDataHistoryExist(J)Z
    .locals 10
    .param p1, "id"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .line 175
    const/4 v0, 0x0

    .line 176
    .local v0, "exist":Z
    const/4 v1, 0x0

    .line 178
    .local v1, "cursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v2, Lcom/app/tmyclean/utilities/DBHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "tbl_history"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "id"

    aput-object v6, v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move-object v1, v2

    .line 179
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 180
    const/4 v0, 0x1

    .line 182
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    goto :goto_0

    .line 183
    :catch_0
    move-exception v2

    .line 184
    .local v2, "e":Landroid/database/SQLException;
    invoke-virtual {v2}, Landroid/database/SQLException;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "DB Error"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    invoke-virtual {v2}, Landroid/database/SQLException;->printStackTrace()V

    .line 187
    .end local v2    # "e":Landroid/database/SQLException;
    :goto_0
    return v0
.end method

.method public isPreviousDataExist()Z
    .locals 10

    .line 191
    const/4 v0, 0x0

    .line 192
    .local v0, "exist":Z
    const/4 v1, 0x0

    .line 194
    .local v1, "cursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v2, Lcom/app/tmyclean/utilities/DBHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "tbl_cart"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "id"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move-object v1, v2

    .line 195
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 196
    const/4 v0, 0x1

    .line 198
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    goto :goto_0

    .line 199
    :catch_0
    move-exception v2

    .line 200
    .local v2, "e":Landroid/database/SQLException;
    invoke-virtual {v2}, Landroid/database/SQLException;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "DB Error"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    invoke-virtual {v2}, Landroid/database/SQLException;->printStackTrace()V

    .line 204
    .end local v2    # "e":Landroid/database/SQLException;
    :goto_0
    return v0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "db"
        }
    .end annotation

    .line 96
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "db",
            "oldVersion",
            "newVersion"
        }
    .end annotation

    .line 101
    return-void
.end method

.method public openDataBase()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/app/tmyclean/utilities/DBHelper;->DB_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ecommerce_db"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, "myPath":Ljava/lang/String;
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    sput-object v1, Lcom/app/tmyclean/utilities/DBHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 86
    return-void
.end method

.method public updateData(JID)V
    .locals 5
    .param p1, "id"    # J
    .param p3, "quantity"    # I
    .param p4, "total_price"    # D
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "id",
            "quantity",
            "total_price"
        }
    .end annotation

    .line 274
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 275
    .local v0, "values":Landroid/content/ContentValues;
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "quantity"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 276
    invoke-static {p4, p5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "total_price"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 278
    :try_start_0
    sget-object v1, Lcom/app/tmyclean/utilities/DBHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "tbl_cart"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 282
    goto :goto_0

    .line 279
    :catch_0
    move-exception v1

    .line 280
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DB Error"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 283
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
