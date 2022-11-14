.class Lcom/app/tmyclean/adapters/AdapterProduct$MyViewHolder$1;
.super Ljava/lang/Object;
.source "AdapterProduct.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/app/tmyclean/adapters/AdapterProduct$MyViewHolder;-><init>(Lcom/app/tmyclean/adapters/AdapterProduct;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/app/tmyclean/adapters/AdapterProduct$MyViewHolder;

.field final synthetic val$this$0:Lcom/app/tmyclean/adapters/AdapterProduct;


# direct methods
.method constructor <init>(Lcom/app/tmyclean/adapters/AdapterProduct$MyViewHolder;Lcom/app/tmyclean/adapters/AdapterProduct;)V
    .locals 0
    .param p1, "this$1"    # Lcom/app/tmyclean/adapters/AdapterProduct$MyViewHolder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$this$0"
        }
    .end annotation

    .line 41
    iput-object p1, p0, Lcom/app/tmyclean/adapters/AdapterProduct$MyViewHolder$1;->this$1:Lcom/app/tmyclean/adapters/AdapterProduct$MyViewHolder;

    iput-object p2, p0, Lcom/app/tmyclean/adapters/AdapterProduct$MyViewHolder$1;->val$this$0:Lcom/app/tmyclean/adapters/AdapterProduct;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/app/tmyclean/adapters/AdapterProduct$MyViewHolder$1;->this$1:Lcom/app/tmyclean/adapters/AdapterProduct$MyViewHolder;

    iget-object v0, v0, Lcom/app/tmyclean/adapters/AdapterProduct$MyViewHolder;->this$0:Lcom/app/tmyclean/adapters/AdapterProduct;

    invoke-static {v0}, Lcom/app/tmyclean/adapters/AdapterProduct;->access$100(Lcom/app/tmyclean/adapters/AdapterProduct;)Lcom/app/tmyclean/adapters/AdapterProduct$ContactsAdapterListener;

    move-result-object v0

    iget-object v1, p0, Lcom/app/tmyclean/adapters/AdapterProduct$MyViewHolder$1;->this$1:Lcom/app/tmyclean/adapters/AdapterProduct$MyViewHolder;

    iget-object v1, v1, Lcom/app/tmyclean/adapters/AdapterProduct$MyViewHolder;->this$0:Lcom/app/tmyclean/adapters/AdapterProduct;

    invoke-static {v1}, Lcom/app/tmyclean/adapters/AdapterProduct;->access$000(Lcom/app/tmyclean/adapters/AdapterProduct;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/app/tmyclean/adapters/AdapterProduct$MyViewHolder$1;->this$1:Lcom/app/tmyclean/adapters/AdapterProduct$MyViewHolder;

    invoke-virtual {v2}, Lcom/app/tmyclean/adapters/AdapterProduct$MyViewHolder;->getAdapterPosition()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/app/tmyclean/models/Product;

    invoke-interface {v0, v1}, Lcom/app/tmyclean/adapters/AdapterProduct$ContactsAdapterListener;->onContactSelected(Lcom/app/tmyclean/models/Product;)V

    .line 45
    return-void
.end method
