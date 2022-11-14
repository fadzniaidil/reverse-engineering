.class public Lcom/app/tmyclean/models/Category;
.super Ljava/lang/Object;
.source "Category.java"


# instance fields
.field private category_id:Ljava/lang/String;

.field private category_image:Ljava/lang/String;

.field private category_name:Ljava/lang/String;

.field private product_count:Ljava/lang/String;


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

    .line 11
    iget-object v0, p0, Lcom/app/tmyclean/models/Category;->category_id:Ljava/lang/String;

    return-object v0
.end method

.method public getCategory_image()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/app/tmyclean/models/Category;->category_image:Ljava/lang/String;

    return-object v0
.end method

.method public getCategory_name()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/app/tmyclean/models/Category;->category_name:Ljava/lang/String;

    return-object v0
.end method

.method public getProduct_count()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/app/tmyclean/models/Category;->product_count:Ljava/lang/String;

    return-object v0
.end method
