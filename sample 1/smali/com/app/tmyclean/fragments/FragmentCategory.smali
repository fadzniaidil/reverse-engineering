.class public Lcom/app/tmyclean/fragments/FragmentCategory;
.super Landroidx/fragment/app/Fragment;
.source "FragmentCategory.java"

# interfaces
.implements Lcom/app/tmyclean/adapters/AdapterCategory$ContactsAdapterListener;


# instance fields
.field private categoryList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/app/tmyclean/models/Category;",
            ">;"
        }
    .end annotation
.end field

.field lyt_root:Landroid/widget/LinearLayout;

.field private mAdapter:Lcom/app/tmyclean/adapters/AdapterCategory;

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

    iput-object v0, p0, Lcom/app/tmyclean/fragments/FragmentCategory;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    return-void
.end method

.method static synthetic access$000(Lcom/app/tmyclean/fragments/FragmentCategory;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/app/tmyclean/fragments/FragmentCategory;

    .line 46
    iget-object v0, p0, Lcom/app/tmyclean/fragments/FragmentCategory;->categoryList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/app/tmyclean/fragments/FragmentCategory;)V
    .locals 0
    .param p0, "x0"    # Lcom/app/tmyclean/fragments/FragmentCategory;

    .line 46
    invoke-direct {p0}, Lcom/app/tmyclean/fragments/FragmentCategory;->fetchContacts()V

    return-void
.end method

.method static synthetic access$200(Lcom/app/tmyclean/fragments/FragmentCategory;)Lcom/app/tmyclean/adapters/AdapterCategory;
    .locals 1
    .param p0, "x0"    # Lcom/app/tmyclean/fragments/FragmentCategory;

    .line 46
    iget-object v0, p0, Lcom/app/tmyclean/fragments/FragmentCategory;->mAdapter:Lcom/app/tmyclean/adapters/AdapterCategory;

    return-object v0
.end method

.method private fetchContacts()V
    .locals 4

    .line 105
    new-instance v0, Lcom/android/volley/toolbox/JsonArrayRequest;

    new-instance v1, Lcom/app/tmyclean/fragments/FragmentCategory$2;

    invoke-direct {v1, p0}, Lcom/app/tmyclean/fragments/FragmentCategory$2;-><init>(Lcom/app/tmyclean/fragments/FragmentCategory;)V

    new-instance v2, Lcom/app/tmyclean/fragments/FragmentCategory$3;

    invoke-direct {v2, p0}, Lcom/app/tmyclean/fragments/FragmentCategory$3;-><init>(Lcom/app/tmyclean/fragments/FragmentCategory;)V

    const-string v3, "https://yapks.online/maid4u_888a/api/api.php?get_category"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/volley/toolbox/JsonArrayRequest;-><init>(Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 132
    .local v0, "request":Lcom/android/volley/toolbox/JsonArrayRequest;
    invoke-static {}, Lcom/app/tmyclean/activities/MyApplication;->getInstance()Lcom/app/tmyclean/activities/MyApplication;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/app/tmyclean/activities/MyApplication;->addToRequestQueue(Lcom/android/volley/Request;)V

    .line 133
    return-void
.end method

.method private onRefresh()V
    .locals 2

    .line 83
    iget-object v0, p0, Lcom/app/tmyclean/fragments/FragmentCategory;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    new-instance v1, Lcom/app/tmyclean/fragments/FragmentCategory$1;

    invoke-direct {v1, p0}, Lcom/app/tmyclean/fragments/FragmentCategory$1;-><init>(Lcom/app/tmyclean/fragments/FragmentCategory;)V

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 102
    return-void
.end method


# virtual methods
.method public onContactSelected(Lcom/app/tmyclean/models/Category;)V
    .locals 3
    .param p1, "category"    # Lcom/app/tmyclean/models/Category;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "category"
        }
    .end annotation

    .line 169
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/app/tmyclean/fragments/FragmentCategory;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/app/tmyclean/activities/ActivityProduct;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 170
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p1}, Lcom/app/tmyclean/models/Category;->getCategory_id()Ljava/lang/String;

    move-result-object v1

    const-string v2, "category_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 171
    invoke-virtual {p1}, Lcom/app/tmyclean/models/Category;->getCategory_name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "category_name"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 172
    invoke-virtual {p0, v0}, Lcom/app/tmyclean/fragments/FragmentCategory;->startActivity(Landroid/content/Intent;)V

    .line 173
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

    .line 137
    const v0, 0x7f0c0005

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 139
    invoke-virtual {p0}, Lcom/app/tmyclean/fragments/FragmentCategory;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "search"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    .line 140
    .local v0, "searchManager":Landroid/app/SearchManager;
    const v1, 0x7f0800fd

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 141
    invoke-interface {v1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/SearchView;

    iput-object v1, p0, Lcom/app/tmyclean/fragments/FragmentCategory;->searchView:Landroidx/appcompat/widget/SearchView;

    .line 142
    nop

    .line 143
    invoke-virtual {p0}, Lcom/app/tmyclean/fragments/FragmentCategory;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/SearchManager;->getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;

    move-result-object v2

    .line 142
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/SearchView;->setSearchableInfo(Landroid/app/SearchableInfo;)V

    .line 144
    iget-object v1, p0, Lcom/app/tmyclean/fragments/FragmentCategory;->searchView:Landroidx/appcompat/widget/SearchView;

    const v2, 0x7fffffff

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/SearchView;->setMaxWidth(I)V

    .line 147
    iget-object v1, p0, Lcom/app/tmyclean/fragments/FragmentCategory;->searchView:Landroidx/appcompat/widget/SearchView;

    new-instance v2, Lcom/app/tmyclean/fragments/FragmentCategory$4;

    invoke-direct {v2, p0}, Lcom/app/tmyclean/fragments/FragmentCategory$4;-><init>(Lcom/app/tmyclean/fragments/FragmentCategory;)V

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/SearchView;->setOnQueryTextListener(Landroidx/appcompat/widget/SearchView$OnQueryTextListener;)V

    .line 163
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 164
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
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

    invoke-virtual {p0, v1}, Lcom/app/tmyclean/fragments/FragmentCategory;->setHasOptionsMenu(Z)V

    .line 59
    const v2, 0x7f080125

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    iput-object v2, p0, Lcom/app/tmyclean/fragments/FragmentCategory;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 61
    const v2, 0x7f0800b8

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/app/tmyclean/fragments/FragmentCategory;->lyt_root:Landroid/widget/LinearLayout;

    .line 66
    const v2, 0x7f0800ec

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v2, p0, Lcom/app/tmyclean/fragments/FragmentCategory;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 67
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/app/tmyclean/fragments/FragmentCategory;->categoryList:Ljava/util/List;

    .line 68
    new-instance v2, Lcom/app/tmyclean/adapters/AdapterCategory;

    invoke-virtual {p0}, Lcom/app/tmyclean/fragments/FragmentCategory;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/app/tmyclean/fragments/FragmentCategory;->categoryList:Ljava/util/List;

    invoke-direct {v2, v3, v4, p0}, Lcom/app/tmyclean/adapters/AdapterCategory;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/app/tmyclean/adapters/AdapterCategory$ContactsAdapterListener;)V

    iput-object v2, p0, Lcom/app/tmyclean/fragments/FragmentCategory;->mAdapter:Lcom/app/tmyclean/adapters/AdapterCategory;

    .line 70
    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/app/tmyclean/fragments/FragmentCategory;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 71
    .local v2, "mLayoutManager":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    iget-object v3, p0, Lcom/app/tmyclean/fragments/FragmentCategory;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 72
    iget-object v3, p0, Lcom/app/tmyclean/fragments/FragmentCategory;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v4, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {v4}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 73
    iget-object v3, p0, Lcom/app/tmyclean/fragments/FragmentCategory;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v4, Lcom/app/tmyclean/utilities/MyDividerItemDecoration;

    invoke-virtual {p0}, Lcom/app/tmyclean/fragments/FragmentCategory;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    const/16 v6, 0x4a

    invoke-direct {v4, v5, v1, v6}, Lcom/app/tmyclean/utilities/MyDividerItemDecoration;-><init>(Landroid/content/Context;II)V

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 74
    iget-object v1, p0, Lcom/app/tmyclean/fragments/FragmentCategory;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v3, p0, Lcom/app/tmyclean/fragments/FragmentCategory;->mAdapter:Lcom/app/tmyclean/adapters/AdapterCategory;

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 76
    invoke-direct {p0}, Lcom/app/tmyclean/fragments/FragmentCategory;->fetchContacts()V

    .line 77
    invoke-direct {p0}, Lcom/app/tmyclean/fragments/FragmentCategory;->onRefresh()V

    .line 79
    return-object v0
.end method
