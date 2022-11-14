.class public Lcom/app/tmyclean/adapters/AdapterCart$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "AdapterCart.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/app/tmyclean/adapters/AdapterCart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field product_image:Landroid/widget/ImageView;

.field product_name:Landroid/widget/TextView;

.field product_price:Landroid/widget/TextView;

.field product_quantity:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/app/tmyclean/adapters/AdapterCart;


# direct methods
.method public constructor <init>(Lcom/app/tmyclean/adapters/AdapterCart;Landroid/view/View;)V
    .locals 1
    .param p1, "this$0"    # Lcom/app/tmyclean/adapters/AdapterCart;
    .param p2, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "view"
        }
    .end annotation

    .line 34
    iput-object p1, p0, Lcom/app/tmyclean/adapters/AdapterCart$ViewHolder;->this$0:Lcom/app/tmyclean/adapters/AdapterCart;

    .line 35
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 36
    const v0, 0x7f0800e5

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/app/tmyclean/adapters/AdapterCart$ViewHolder;->product_name:Landroid/widget/TextView;

    .line 37
    const v0, 0x7f0800e7

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/app/tmyclean/adapters/AdapterCart$ViewHolder;->product_quantity:Landroid/widget/TextView;

    .line 38
    const v0, 0x7f0800e6

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/app/tmyclean/adapters/AdapterCart$ViewHolder;->product_price:Landroid/widget/TextView;

    .line 39
    const v0, 0x7f0800e4

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/app/tmyclean/adapters/AdapterCart$ViewHolder;->product_image:Landroid/widget/ImageView;

    .line 40
    return-void
.end method
