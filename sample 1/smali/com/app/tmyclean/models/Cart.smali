.class public Lcom/app/tmyclean/models/Cart;
.super Ljava/lang/Object;
.source "Cart.java"


# instance fields
.field private MenuId:Ljava/lang/String;

.field private MenuName:Ljava/lang/String;

.field private MenuPrice:Ljava/lang/String;

.field private MenuQuantity:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "menuId"    # Ljava/lang/String;
    .param p2, "menuName"    # Ljava/lang/String;
    .param p3, "menuQuantity"    # Ljava/lang/String;
    .param p4, "menuPrice"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "menuId",
            "menuName",
            "menuQuantity",
            "menuPrice"
        }
    .end annotation

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/app/tmyclean/models/Cart;->MenuId:Ljava/lang/String;

    .line 12
    iput-object p2, p0, Lcom/app/tmyclean/models/Cart;->MenuName:Ljava/lang/String;

    .line 13
    iput-object p3, p0, Lcom/app/tmyclean/models/Cart;->MenuQuantity:Ljava/lang/String;

    .line 14
    iput-object p4, p0, Lcom/app/tmyclean/models/Cart;->MenuPrice:Ljava/lang/String;

    .line 15
    return-void
.end method


# virtual methods
.method public getMenuId()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/app/tmyclean/models/Cart;->MenuId:Ljava/lang/String;

    return-object v0
.end method

.method public getMenuName()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/app/tmyclean/models/Cart;->MenuName:Ljava/lang/String;

    return-object v0
.end method

.method public getMenuPrice()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/app/tmyclean/models/Cart;->MenuPrice:Ljava/lang/String;

    return-object v0
.end method

.method public getMenuQuantity()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/app/tmyclean/models/Cart;->MenuQuantity:Ljava/lang/String;

    return-object v0
.end method

.method public setMenuId(Ljava/lang/String;)V
    .locals 0
    .param p1, "menuId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "menuId"
        }
    .end annotation

    .line 22
    iput-object p1, p0, Lcom/app/tmyclean/models/Cart;->MenuId:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public setMenuName(Ljava/lang/String;)V
    .locals 0
    .param p1, "menuName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "menuName"
        }
    .end annotation

    .line 30
    iput-object p1, p0, Lcom/app/tmyclean/models/Cart;->MenuName:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public setMenuPrice(Ljava/lang/String;)V
    .locals 0
    .param p1, "menuPrice"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "menuPrice"
        }
    .end annotation

    .line 46
    iput-object p1, p0, Lcom/app/tmyclean/models/Cart;->MenuPrice:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setMenuQuantity(Ljava/lang/String;)V
    .locals 0
    .param p1, "menuQuantity"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "menuQuantity"
        }
    .end annotation

    .line 38
    iput-object p1, p0, Lcom/app/tmyclean/models/Cart;->MenuQuantity:Ljava/lang/String;

    .line 39
    return-void
.end method
