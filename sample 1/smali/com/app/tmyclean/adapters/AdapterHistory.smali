.class public Lcom/app/tmyclean/adapters/AdapterHistory;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "AdapterHistory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/app/tmyclean/adapters/AdapterHistory$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/app/tmyclean/adapters/AdapterHistory$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private arrayItemCart:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/app/tmyclean/models/History;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "arrayItemCart"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/app/tmyclean/models/History;",
            ">;)V"
        }
    .end annotation

    .line 38
    .local p2, "arrayItemCart":Ljava/util/List;, "Ljava/util/List<Lcom/app/tmyclean/models/History;>;"
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/app/tmyclean/adapters/AdapterHistory;->context:Landroid/content/Context;

    .line 40
    iput-object p2, p0, Lcom/app/tmyclean/adapters/AdapterHistory;->arrayItemCart:Ljava/util/List;

    .line 41
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 59
    sget-object v0, Lcom/app/tmyclean/activities/ActivityHistory;->id:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "holder",
            "position"
        }
    .end annotation

    .line 18
    check-cast p1, Lcom/app/tmyclean/adapters/AdapterHistory$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/app/tmyclean/adapters/AdapterHistory;->onBindViewHolder(Lcom/app/tmyclean/adapters/AdapterHistory$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/app/tmyclean/adapters/AdapterHistory$ViewHolder;I)V
    .locals 2
    .param p1, "holder"    # Lcom/app/tmyclean/adapters/AdapterHistory$ViewHolder;
    .param p2, "position"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "holder",
            "position"
        }
    .end annotation

    .line 51
    iget-object v0, p1, Lcom/app/tmyclean/adapters/AdapterHistory$ViewHolder;->txt_purchase_code:Landroid/widget/TextView;

    sget-object v1, Lcom/app/tmyclean/activities/ActivityHistory;->code:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    iget-object v0, p1, Lcom/app/tmyclean/adapters/AdapterHistory$ViewHolder;->txt_order_date:Landroid/widget/TextView;

    sget-object v1, Lcom/app/tmyclean/activities/ActivityHistory;->date_time:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/app/tmyclean/utilities/Utils;->getFormatedDateSimple(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    iget-object v0, p1, Lcom/app/tmyclean/adapters/AdapterHistory$ViewHolder;->txt_order_total:Landroid/widget/TextView;

    sget-object v1, Lcom/app/tmyclean/activities/ActivityHistory;->order_total:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "parent",
            "viewType"
        }
    .end annotation

    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/app/tmyclean/adapters/AdapterHistory;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/app/tmyclean/adapters/AdapterHistory$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/app/tmyclean/adapters/AdapterHistory$ViewHolder;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "parent",
            "viewType"
        }
    .end annotation

    .line 45
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b0043

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 46
    .local v0, "itemView":Landroid/view/View;
    new-instance v1, Lcom/app/tmyclean/adapters/AdapterHistory$ViewHolder;

    invoke-direct {v1, p0, v0}, Lcom/app/tmyclean/adapters/AdapterHistory$ViewHolder;-><init>(Lcom/app/tmyclean/adapters/AdapterHistory;Landroid/view/View;)V

    return-object v1
.end method
