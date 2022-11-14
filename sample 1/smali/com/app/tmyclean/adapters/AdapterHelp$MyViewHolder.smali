.class public Lcom/app/tmyclean/adapters/AdapterHelp$MyViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "AdapterHelp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/app/tmyclean/adapters/AdapterHelp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyViewHolder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/app/tmyclean/adapters/AdapterHelp;

.field public txt_title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/app/tmyclean/adapters/AdapterHelp;Landroid/view/View;)V
    .locals 1
    .param p1, "this$0"    # Lcom/app/tmyclean/adapters/AdapterHelp;
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
    iput-object p1, p0, Lcom/app/tmyclean/adapters/AdapterHelp$MyViewHolder;->this$0:Lcom/app/tmyclean/adapters/AdapterHelp;

    .line 30
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 31
    const v0, 0x7f08013b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/app/tmyclean/adapters/AdapterHelp$MyViewHolder;->txt_title:Landroid/widget/TextView;

    .line 33
    new-instance v0, Lcom/app/tmyclean/adapters/AdapterHelp$MyViewHolder$1;

    invoke-direct {v0, p0, p1}, Lcom/app/tmyclean/adapters/AdapterHelp$MyViewHolder$1;-><init>(Lcom/app/tmyclean/adapters/AdapterHelp$MyViewHolder;Lcom/app/tmyclean/adapters/AdapterHelp;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    return-void
.end method
