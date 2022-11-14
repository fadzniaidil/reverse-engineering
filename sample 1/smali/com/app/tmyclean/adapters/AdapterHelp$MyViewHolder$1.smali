.class Lcom/app/tmyclean/adapters/AdapterHelp$MyViewHolder$1;
.super Ljava/lang/Object;
.source "AdapterHelp.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/app/tmyclean/adapters/AdapterHelp$MyViewHolder;-><init>(Lcom/app/tmyclean/adapters/AdapterHelp;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/app/tmyclean/adapters/AdapterHelp$MyViewHolder;

.field final synthetic val$this$0:Lcom/app/tmyclean/adapters/AdapterHelp;


# direct methods
.method constructor <init>(Lcom/app/tmyclean/adapters/AdapterHelp$MyViewHolder;Lcom/app/tmyclean/adapters/AdapterHelp;)V
    .locals 0
    .param p1, "this$1"    # Lcom/app/tmyclean/adapters/AdapterHelp$MyViewHolder;
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

    .line 33
    iput-object p1, p0, Lcom/app/tmyclean/adapters/AdapterHelp$MyViewHolder$1;->this$1:Lcom/app/tmyclean/adapters/AdapterHelp$MyViewHolder;

    iput-object p2, p0, Lcom/app/tmyclean/adapters/AdapterHelp$MyViewHolder$1;->val$this$0:Lcom/app/tmyclean/adapters/AdapterHelp;

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

    .line 36
    iget-object v0, p0, Lcom/app/tmyclean/adapters/AdapterHelp$MyViewHolder$1;->this$1:Lcom/app/tmyclean/adapters/AdapterHelp$MyViewHolder;

    iget-object v0, v0, Lcom/app/tmyclean/adapters/AdapterHelp$MyViewHolder;->this$0:Lcom/app/tmyclean/adapters/AdapterHelp;

    invoke-static {v0}, Lcom/app/tmyclean/adapters/AdapterHelp;->access$100(Lcom/app/tmyclean/adapters/AdapterHelp;)Lcom/app/tmyclean/adapters/AdapterHelp$ContactsAdapterListener;

    move-result-object v0

    iget-object v1, p0, Lcom/app/tmyclean/adapters/AdapterHelp$MyViewHolder$1;->this$1:Lcom/app/tmyclean/adapters/AdapterHelp$MyViewHolder;

    iget-object v1, v1, Lcom/app/tmyclean/adapters/AdapterHelp$MyViewHolder;->this$0:Lcom/app/tmyclean/adapters/AdapterHelp;

    invoke-static {v1}, Lcom/app/tmyclean/adapters/AdapterHelp;->access$000(Lcom/app/tmyclean/adapters/AdapterHelp;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/app/tmyclean/adapters/AdapterHelp$MyViewHolder$1;->this$1:Lcom/app/tmyclean/adapters/AdapterHelp$MyViewHolder;

    invoke-virtual {v2}, Lcom/app/tmyclean/adapters/AdapterHelp$MyViewHolder;->getAdapterPosition()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/app/tmyclean/models/Help;

    invoke-interface {v0, v1}, Lcom/app/tmyclean/adapters/AdapterHelp$ContactsAdapterListener;->onContactSelected(Lcom/app/tmyclean/models/Help;)V

    .line 37
    return-void
.end method
