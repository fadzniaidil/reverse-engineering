.class public Lcom/app/tmyclean/adapters/AdapterHelp;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "AdapterHelp.java"

# interfaces
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/app/tmyclean/adapters/AdapterHelp$ContactsAdapterListener;,
        Lcom/app/tmyclean/adapters/AdapterHelp$MyViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/app/tmyclean/adapters/AdapterHelp$MyViewHolder;",
        ">;",
        "Landroid/widget/Filterable;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private listener:Lcom/app/tmyclean/adapters/AdapterHelp$ContactsAdapterListener;

.field private productList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/app/tmyclean/models/Help;",
            ">;"
        }
    .end annotation
.end field

.field private productListFiltered:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/app/tmyclean/models/Help;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/app/tmyclean/adapters/AdapterHelp$ContactsAdapterListener;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "listener"    # Lcom/app/tmyclean/adapters/AdapterHelp$ContactsAdapterListener;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "productList",
            "listener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/app/tmyclean/models/Help;",
            ">;",
            "Lcom/app/tmyclean/adapters/AdapterHelp$ContactsAdapterListener;",
            ")V"
        }
    .end annotation

    .line 42
    .local p2, "productList":Ljava/util/List;, "Ljava/util/List<Lcom/app/tmyclean/models/Help;>;"
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/app/tmyclean/adapters/AdapterHelp;->context:Landroid/content/Context;

    .line 44
    iput-object p3, p0, Lcom/app/tmyclean/adapters/AdapterHelp;->listener:Lcom/app/tmyclean/adapters/AdapterHelp$ContactsAdapterListener;

    .line 45
    iput-object p2, p0, Lcom/app/tmyclean/adapters/AdapterHelp;->productList:Ljava/util/List;

    .line 46
    iput-object p2, p0, Lcom/app/tmyclean/adapters/AdapterHelp;->productListFiltered:Ljava/util/List;

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/app/tmyclean/adapters/AdapterHelp;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/app/tmyclean/adapters/AdapterHelp;

    .line 19
    iget-object v0, p0, Lcom/app/tmyclean/adapters/AdapterHelp;->productListFiltered:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$002(Lcom/app/tmyclean/adapters/AdapterHelp;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/app/tmyclean/adapters/AdapterHelp;
    .param p1, "x1"    # Ljava/util/List;

    .line 19
    iput-object p1, p0, Lcom/app/tmyclean/adapters/AdapterHelp;->productListFiltered:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$100(Lcom/app/tmyclean/adapters/AdapterHelp;)Lcom/app/tmyclean/adapters/AdapterHelp$ContactsAdapterListener;
    .locals 1
    .param p0, "x0"    # Lcom/app/tmyclean/adapters/AdapterHelp;

    .line 19
    iget-object v0, p0, Lcom/app/tmyclean/adapters/AdapterHelp;->listener:Lcom/app/tmyclean/adapters/AdapterHelp$ContactsAdapterListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/app/tmyclean/adapters/AdapterHelp;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/app/tmyclean/adapters/AdapterHelp;

    .line 19
    iget-object v0, p0, Lcom/app/tmyclean/adapters/AdapterHelp;->productList:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .line 70
    new-instance v0, Lcom/app/tmyclean/adapters/AdapterHelp$1;

    invoke-direct {v0, p0}, Lcom/app/tmyclean/adapters/AdapterHelp$1;-><init>(Lcom/app/tmyclean/adapters/AdapterHelp;)V

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/app/tmyclean/adapters/AdapterHelp;->productListFiltered:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1010
        }
        names = {
            "holder",
            "position"
        }
    .end annotation

    .line 19
    check-cast p1, Lcom/app/tmyclean/adapters/AdapterHelp$MyViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/app/tmyclean/adapters/AdapterHelp;->onBindViewHolder(Lcom/app/tmyclean/adapters/AdapterHelp$MyViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/app/tmyclean/adapters/AdapterHelp$MyViewHolder;I)V
    .locals 3
    .param p1, "holder"    # Lcom/app/tmyclean/adapters/AdapterHelp$MyViewHolder;
    .param p2, "position"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10
        }
        names = {
            "holder",
            "position"
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/app/tmyclean/adapters/AdapterHelp;->productListFiltered:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/app/tmyclean/models/Help;

    .line 60
    .local v0, "help":Lcom/app/tmyclean/models/Help;
    iget-object v1, p1, Lcom/app/tmyclean/adapters/AdapterHelp$MyViewHolder;->txt_title:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/app/tmyclean/models/Help;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
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

    .line 19
    invoke-virtual {p0, p1, p2}, Lcom/app/tmyclean/adapters/AdapterHelp;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/app/tmyclean/adapters/AdapterHelp$MyViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/app/tmyclean/adapters/AdapterHelp$MyViewHolder;
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

    .line 51
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 52
    const v1, 0x7f0b0042

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 54
    .local v0, "itemView":Landroid/view/View;
    new-instance v1, Lcom/app/tmyclean/adapters/AdapterHelp$MyViewHolder;

    invoke-direct {v1, p0, v0}, Lcom/app/tmyclean/adapters/AdapterHelp$MyViewHolder;-><init>(Lcom/app/tmyclean/adapters/AdapterHelp;Landroid/view/View;)V

    return-object v1
.end method
