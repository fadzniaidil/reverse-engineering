.class public Lcom/app/tmyclean/adapters/AdapterProduct$MyViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "AdapterProduct.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/app/tmyclean/adapters/AdapterProduct;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyViewHolder"
.end annotation


# instance fields
.field public product_image:Landroid/widget/ImageView;

.field public product_name:Landroid/widget/TextView;

.field public product_price:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/app/tmyclean/adapters/AdapterProduct;


# direct methods
.method public constructor <init>(Lcom/app/tmyclean/adapters/AdapterProduct;Landroid/view/View;)V
    .locals 1
    .param p1, "this$0"    # Lcom/app/tmyclean/adapters/AdapterProduct;
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

    .line 35
    iput-object p1, p0, Lcom/app/tmyclean/adapters/AdapterProduct$MyViewHolder;->this$0:Lcom/app/tmyclean/adapters/AdapterProduct;

    .line 36
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 37
    const v0, 0x7f0800e5

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/app/tmyclean/adapters/AdapterProduct$MyViewHolder;->product_name:Landroid/widget/TextView;

    .line 38
    const v0, 0x7f0800e6

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/app/tmyclean/adapters/AdapterProduct$MyViewHolder;->product_price:Landroid/widget/TextView;

    .line 39
    const v0, 0x7f08005a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/app/tmyclean/adapters/AdapterProduct$MyViewHolder;->product_image:Landroid/widget/ImageView;

    .line 41
    new-instance v0, Lcom/app/tmyclean/adapters/AdapterProduct$MyViewHolder$1;

    invoke-direct {v0, p0, p1}, Lcom/app/tmyclean/adapters/AdapterProduct$MyViewHolder$1;-><init>(Lcom/app/tmyclean/adapters/AdapterProduct$MyViewHolder;Lcom/app/tmyclean/adapters/AdapterProduct;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    return-void
.end method
