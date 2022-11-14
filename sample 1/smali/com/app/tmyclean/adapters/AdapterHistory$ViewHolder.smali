.class public Lcom/app/tmyclean/adapters/AdapterHistory$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "AdapterHistory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/app/tmyclean/adapters/AdapterHistory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/app/tmyclean/adapters/AdapterHistory;

.field txt_order_date:Landroid/widget/TextView;

.field txt_order_total:Landroid/widget/TextView;

.field txt_purchase_code:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/app/tmyclean/adapters/AdapterHistory;Landroid/view/View;)V
    .locals 1
    .param p1, "this$0"    # Lcom/app/tmyclean/adapters/AdapterHistory;
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

    .line 29
    iput-object p1, p0, Lcom/app/tmyclean/adapters/AdapterHistory$ViewHolder;->this$0:Lcom/app/tmyclean/adapters/AdapterHistory;

    .line 30
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 31
    const v0, 0x7f080149

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/app/tmyclean/adapters/AdapterHistory$ViewHolder;->txt_purchase_code:Landroid/widget/TextView;

    .line 32
    const v0, 0x7f080147

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/app/tmyclean/adapters/AdapterHistory$ViewHolder;->txt_order_date:Landroid/widget/TextView;

    .line 33
    const v0, 0x7f080148

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/app/tmyclean/adapters/AdapterHistory$ViewHolder;->txt_order_total:Landroid/widget/TextView;

    .line 34
    return-void
.end method
