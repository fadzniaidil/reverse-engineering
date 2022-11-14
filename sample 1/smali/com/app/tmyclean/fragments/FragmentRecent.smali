.class public Lcom/app/tmyclean/fragments/FragmentRecent;
.super Landroidx/fragment/app/Fragment;
.source "FragmentRecent.java"

# interfaces
.implements Lcom/app/tmyclean/adapters/AdapterProduct$ContactsAdapterListener;


# instance fields
.field lyt_root:Landroid/widget/LinearLayout;

.field private mAdapter:Lcom/app/tmyclean/adapters/AdapterProduct;

.field private productList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/app/tmyclean/models/Product;",
            ">;"
        }
    .end annotation
.end field

.field private recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private searchView:Landroidx/appcompat/widget/SearchView;

.field swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/app/tmyclean/fragments/FragmentRecent;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    return-void
.end method

.method static synthetic access$000(Lcom/app/tmyclean/fragments/FragmentRecent;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/app/tmyclean/fragments/FragmentRecent;

    .line 46
    iget-object v0, p0, Lcom/app/tmyclean/fragments/FragmentRecent;->productList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/app/tmyclean/fragments/FragmentRecent;)V
    .locals 0
    .param p0, "x0"    # Lcom/app/tmyclean/fragments/FragmentRecent;

    .line 46
    invoke-direct {p0}, Lcom/app/tmyclean/fragments/FragmentRecent;->fetchData()V

    return-void
.end method

.method static synthetic access$200(Lcom/app/tmyclean/fragments/FragmentRecent;)Lcom/app/tmyclean/adapters/AdapterProduct;
    .locals 1
    .param p0, "x0"    # Lcom/app/tmyclean/fragments/FragmentRecent;

    .line 46
    iget-object v0, p0, Lcom/app/tmyclean/fragments/FragmentRecent;->mAdapter:Lcom/app/tmyclean/adapters/AdapterProduct;

    return-object v0
.end method

.method private fetchData()V
    .locals 4

    .line 107
    new-instance v0, Lcom/android/volley/toolbox/JsonArrayRequest;

    new-instance v1, Lcom/app/tmyclean/fragments/FragmentRecent$2;

    invoke-direct {v1, p0}, Lcom/app/tmyclean/fragments/FragmentRecent$2;-><init>(Lcom/app/tmyclean/fragments/FragmentRecent;)V

    new-instance v2, Lcom/app/tmyclean/fragments/FragmentRecent$3;

    invoke-direct {v2, p0}, Lcom/app/tmyclean/fragments/FragmentRecent$3;-><init>(Lcom/app/tmyclean/fragments/FragmentRecent;)V

    const-string v3, "https://yapks.online/maid4u_888a/api/api.php?get_recent"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/volley/toolbox/JsonArrayRequest;-><init>(Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 137
    .local v0, "request":Lcom/android/volley/toolbox/JsonArrayRequest;
    invoke-static {}, Lcom/app/tmyclean/activities/MyApplication;->getInstance()Lcom/app/tmyclean/activities/MyApplication;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/app/tmyclean/activities/MyApplication;->addToRequestQueue(Lcom/android/volley/Request;)V

    .line 138
    return-void
.end method

.method private onRefresh()V
    .locals 2

    .line 85
    iget-object v0, p0, Lcom/app/tmyclean/fragments/FragmentRecent;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    new-instance v1, Lcom/app/tmyclean/fragments/FragmentRecent$1;

    invoke-direct {v1, p0}, Lcom/app/tmyclean/fragments/FragmentRecent$1;-><init>(Lcom/app/tmyclean/fragments/FragmentRecent;)V

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 104
    return-void
.end method


# virtual methods
.method public onContactSelected(Lcom/app/tmyclean/models/Product;)V
    .locals 4
    .param p1, "product"    # Lcom/app/tmyclean/models/Product;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "product"
        }
    .end annotation

    .line 179
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/app/tmyclean/fragments/FragmentRecent;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/app/tmyclean/activities/ActivityProductDetail;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 180
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p1}, Lcom/app/tmyclean/models/Product;->getProduct_id()J

    move-result-wide v1

    const-string v3, "product_id"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 181
    invoke-virtual {p1}, Lcom/app/tmyclean/models/Product;->getProduct_name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "title"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 182
    invoke-virtual {p1}, Lcom/app/tmyclean/models/Product;->getProduct_image()Ljava/lang/String;

    move-result-object v1

    const-string v2, "image"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 183
    invoke-virtual {p1}, Lcom/app/tmyclean/models/Product;->getProduct_price()D

    move-result-wide v1

    const-string v3, "product_price"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    .line 184
    invoke-virtual {p1}, Lcom/app/tmyclean/models/Product;->getProduct_description()Ljava/lang/String;

    move-result-object v1

    const-string v2, "product_description"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 185
    invoke-virtual {p1}, Lcom/app/tmyclean/models/Product;->getProduct_quantity()I

    move-result v1

    const-string v2, "product_quantity"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 186
    invoke-virtual {p1}, Lcom/app/tmyclean/models/Product;->getProduct_status()Ljava/lang/String;

    move-result-object v1

    const-string v2, "product_status"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 187
    invoke-virtual {p1}, Lcom/app/tmyclean/models/Product;->getCurrency_code()Ljava/lang/String;

    move-result-object v1

    const-string v2, "currency_code"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 188
    invoke-virtual {p1}, Lcom/app/tmyclean/models/Product;->getCategory_name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "category_name"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 189
    invoke-virtual {p0, v0}, Lcom/app/tmyclean/fragments/FragmentRecent;->startActivity(Landroid/content/Intent;)V

    .line 190
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "menu",
            "inflater"
        }
    .end annotation

    .line 142
    const v0, 0x7f0c0005

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 144
    invoke-virtual {p0}, Lcom/app/tmyclean/fragments/FragmentRecent;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "search"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    .line 145
    .local v0, "searchManager":Landroid/app/SearchManager;
    const v1, 0x7f0800fd

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/SearchView;

    iput-object v1, p0, Lcom/app/tmyclean/fragments/FragmentRecent;->searchView:Landroidx/appcompat/widget/SearchView;

    .line 146
    invoke-virtual {p0}, Lcom/app/tmyclean/fragments/FragmentRecent;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/SearchManager;->getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/SearchView;->setSearchableInfo(Landroid/app/SearchableInfo;)V

    .line 147
    iget-object v1, p0, Lcom/app/tmyclean/fragments/FragmentRecent;->searchView:Landroidx/appcompat/widget/SearchView;

    const v2, 0x7fffffff

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/SearchView;->setMaxWidth(I)V

    .line 150
    iget-object v1, p0, Lcom/app/tmyclean/fragments/FragmentRecent;->searchView:Landroidx/appcompat/widget/SearchView;

    new-instance v2, Lcom/app/tmyclean/fragments/FragmentRecent$4;

    invoke-direct {v2, p0}, Lcom/app/tmyclean/fragments/FragmentRecent$4;-><init>(Lcom/app/tmyclean/fragments/FragmentRecent;)V

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/SearchView;->setOnQueryTextListener(Landroidx/appcompat/widget/SearchView$OnQueryTextListener;)V

    .line 166
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 167
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "inflater",
            "container",
            "savedInstanceState"
        }
    .end annotation

    .line 57
    const v0, 0x7f0b0039

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 58
    .local v0, "view":Landroid/view/View;
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/app/tmyclean/fragments/FragmentRecent;->setHasOptionsMenu(Z)V

    .line 59
    const v2, 0x7f080125

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    iput-object v2, p0, Lcom/app/tmyclean/fragments/FragmentRecent;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 60
    invoke-virtual {v2, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 62
    const v1, 0x7f0800b8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/app/tmyclean/fragments/FragmentRecent;->lyt_root:Landroid/widget/LinearLayout;

    .line 67
    const v1, 0x7f0800ec

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v1, p0, Lcom/app/tmyclean/fragments/FragmentRecent;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 68
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/app/tmyclean/fragments/FragmentRecent;->productList:Ljava/util/List;

    .line 69
    new-instance v1, Lcom/app/tmyclean/adapters/AdapterProduct;

    invoke-virtual {p0}, Lcom/app/tmyclean/fragments/FragmentRecent;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/app/tmyclean/fragments/FragmentRecent;->productList:Ljava/util/List;

    invoke-direct {v1, v2, v3, p0}, Lcom/app/tmyclean/adapters/AdapterProduct;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/app/tmyclean/adapters/AdapterProduct$ContactsAdapterListener;)V

    iput-object v1, p0, Lcom/app/tmyclean/fragments/FragmentRecent;->mAdapter:Lcom/app/tmyclean/adapters/AdapterProduct;

    .line 71
    new-instance v1, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/app/tmyclean/fragments/FragmentRecent;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 72
    .local v1, "mLayoutManager":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    iget-object v2, p0, Lcom/app/tmyclean/fragments/FragmentRecent;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 73
    new-instance v2, Lcom/app/tmyclean/utilities/ItemOffsetDecoration;

    invoke-virtual {p0}, Lcom/app/tmyclean/fragments/FragmentRecent;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    const v4, 0x7f060094

    invoke-direct {v2, v3, v4}, Lcom/app/tmyclean/utilities/ItemOffsetDecoration;-><init>(Landroid/content/Context;I)V

    .line 74
    .local v2, "itemDecoration":Lcom/app/tmyclean/utilities/ItemOffsetDecoration;
    iget-object v3, p0, Lcom/app/tmyclean/fragments/FragmentRecent;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 75
    iget-object v3, p0, Lcom/app/tmyclean/fragments/FragmentRecent;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v4, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {v4}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 76
    iget-object v3, p0, Lcom/app/tmyclean/fragments/FragmentRecent;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v4, p0, Lcom/app/tmyclean/fragments/FragmentRecent;->mAdapter:Lcom/app/tmyclean/adapters/AdapterProduct;

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 78
    invoke-direct {p0}, Lcom/app/tmyclean/fragments/FragmentRecent;->fetchData()V

    .line 79
    invoke-direct {p0}, Lcom/app/tmyclean/fragments/FragmentRecent;->onRefresh()V

    .line 81
    return-object v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "item"
        }
    .end annotation

    .line 171
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 173
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method
