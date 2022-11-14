.class public Lcom/app/tmyclean/models/Product;
.super Ljava/lang/Object;
.source "Product.java"


# instance fields
.field private category_id:Ljava/lang/String;

.field private category_name:Ljava/lang/String;

.field private currency_code:Ljava/lang/String;

.field private product_description:Ljava/lang/String;

.field private product_id:J

.field private product_image:Ljava/lang/String;

.field private product_name:Ljava/lang/String;

.field private product_price:D

.field private product_quantity:I

.field private product_status:Ljava/lang/String;

.field private tax:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCategory_id()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/app/tmyclean/models/Product;->category_id:Ljava/lang/String;

    return-object v0
.end method

.method public getCategory_name()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/app/tmyclean/models/Product;->category_name:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrency_code()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/app/tmyclean/models/Product;->currency_code:Ljava/lang/String;

    return-object v0
.end method

.method public getProduct_description()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/app/tmyclean/models/Product;->product_description:Ljava/lang/String;

    return-object v0
.end method

.method public getProduct_id()J
    .locals 2

    .line 18
    iget-wide v0, p0, Lcom/app/tmyclean/models/Product;->product_id:J

    return-wide v0
.end method

.method public getProduct_image()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/app/tmyclean/models/Product;->product_image:Ljava/lang/String;

    return-object v0
.end method

.method public getProduct_name()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/app/tmyclean/models/Product;->product_name:Ljava/lang/String;

    return-object v0
.end method

.method public getProduct_price()D
    .locals 2

    .line 34
    iget-wide v0, p0, Lcom/app/tmyclean/models/Product;->product_price:D

    return-wide v0
.end method

.method public getProduct_quantity()I
    .locals 1

    .line 58
    iget v0, p0, Lcom/app/tmyclean/models/Product;->product_quantity:I

    return v0
.end method

.method public getProduct_status()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/app/tmyclean/models/Product;->product_status:Ljava/lang/String;

    return-object v0
.end method

.method public getTax()D
    .locals 2

    .line 54
    iget-wide v0, p0, Lcom/app/tmyclean/models/Product;->tax:D

    return-wide v0
.end method
