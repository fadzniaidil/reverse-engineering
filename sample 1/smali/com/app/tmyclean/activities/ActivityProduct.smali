.class public Lcom/app/tmyclean/activities/ActivityProduct;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "ActivityProduct.java"

# interfaces
.implements Lcom/app/tmyclean/adapters/AdapterProduct$ContactsAdapterListener;


# instance fields
.field private category_id:Ljava/lang/String;

.field private category_name:Ljava/lang/String;

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

    .line 42
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/app/tmyclean/activities/ActivityProduct;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    return-void
.end method

.method static synthetic access$000(Lcom/app/tmyclean/activities/ActivityProduct;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/app/tmyclean/activities/ActivityProduct;

    .line 42
    iget-object v0, p0, Lcom/app/tmyclean/activities/ActivityProduct;->productList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/app/tmyclean/activities/ActivityProduct;)V
    .locals 0
    .param p0, "x0"    # Lcom/app/tmyclean/activities/ActivityProduct;

    .line 42
    invoke-direct {p0}, Lcom/app/tmyclean/activities/ActivityProduct;->fetchData()V

    return-void
.end method

.method static synthetic access$200(Lcom/app/tmyclean/activities/ActivityProduct;)Lcom/app/tmyclean/adapters/AdapterProduct;
    .locals 1
    .param p0, "x0"    # Lcom/app/tmyclean/activities/ActivityProduct;

    .line 42
    iget-object v0, p0, Lcom/app/tmyclean/activities/ActivityProduct;->mAdapter:Lcom/app/tmyclean/adapters/AdapterProduct;

    return-object v0
.end method

.method private fetchData()V
    .locals 4

    .line 113
    new-instance v0, Lcom/android/volley/toolbox/JsonArrayRequest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://yapks.online/maid4u_888a/api/api.php?category_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/app/tmyclean/activities/ActivityProduct;->category_id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/app/tmyclean/activities/ActivityProduct$2;

    invoke-direct {v2, p0}, Lcom/app/tmyclean/activities/ActivityProduct$2;-><init>(Lcom/app/tmyclean/activities/ActivityProduct;)V

    new-instance v3, Lcom/app/tmyclean/activities/ActivityProduct$3;

    invoke-direct {v3, p0}, Lcom/app/tmyclean/activities/ActivityProduct$3;-><init>(Lcom/app/tmyclean/activities/ActivityProduct;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/android/volley/toolbox/JsonArrayRequest;-><init>(Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 140
    .local v0, "request":Lcom/android/volley/toolbox/JsonArrayRequest;
    invoke-static {}, Lcom/app/tmyclean/activities/MyApplication;->getInstance()Lcom/app/tmyclean/activities/MyApplication;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/app/tmyclean/activities/MyApplication;->addToRequestQueue(Lcom/android/volley/Request;)V

    .line 141
    return-void
.end method

.method private onRefresh()V
    .locals 2

    .line 91
    iget-object v0, p0, Lcom/app/tmyclean/activities/ActivityProduct;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    new-instance v1, Lcom/app/tmyclean/activities/ActivityProduct$1;

    invoke-direct {v1, p0}, Lcom/app/tmyclean/activities/ActivityProduct$1;-><init>(Lcom/app/tmyclean/activities/ActivityProduct;)V

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 110
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

    .line 188
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/app/tmyclean/activities/ActivityProduct;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/app/tmyclean/activities/ActivityProductDetail;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 189
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p1}, Lcom/app/tmyclean/models/Product;->getProduct_id()J

    move-result-wide v1

    const-string v3, "product_id"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 190
    invoke-virtual {p1}, Lcom/app/tmyclean/models/Product;->getProduct_name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "title"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 191
    invoke-virtual {p1}, Lcom/app/tmyclean/models/Product;->getProduct_image()Ljava/lang/String;

    move-result-object v1

    const-string v2, "image"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 192
    invoke-virtual {p1}, Lcom/app/tmyclean/models/Product;->getProduct_price()D

    move-result-wide v1

    const-string v3, "product_price"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    .line 193
    invoke-virtual {p1}, Lcom/app/tmyclean/models/Product;->getProduct_description()Ljava/lang/String;

    move-result-object v1

    const-string v2, "product_description"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 194
    invoke-virtual {p1}, Lcom/app/tmyclean/models/Product;->getProduct_quantity()I

    move-result v1

    const-string v2, "product_quantity"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 195
    invoke-virtual {p1}, Lcom/app/tmyclean/models/Product;->getProduct_status()Ljava/lang/String;

    move-result-object v1

    const-string v2, "product_status"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 196
    invoke-virtual {p1}, Lcom/app/tmyclean/models/Product;->getCurrency_code()Ljava/lang/String;

    move-result-object v1

    const-string v2, "currency_code"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 197
    invoke-virtual {p1}, Lcom/app/tmyclean/models/Product;->getCategory_name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "category_name"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 198
    invoke-virtual {p0, v0}, Lcom/app/tmyclean/activities/ActivityProduct;->startActivity(Landroid/content/Intent;)V

    .line 199
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 53
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    const v0, 0x7f0b0024

    invoke-virtual {p0, v0}, Lcom/app/tmyclean/activities/ActivityProduct;->setContentView(I)V

    .line 62
    const v0, 0x7f08013e

    invoke-virtual {p0, v0}, Lcom/app/tmyclean/activities/ActivityProduct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 63
    .local v0, "toolbar":Landroidx/appcompat/widget/Toolbar;
    invoke-virtual {p0, v0}, Lcom/app/tmyclean/activities/ActivityProduct;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 65
    invoke-virtual {p0}, Lcom/app/tmyclean/activities/ActivityProduct;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 66
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "category_id"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/app/tmyclean/activities/ActivityProduct;->category_id:Ljava/lang/String;

    .line 67
    const-string v2, "category_name"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/app/tmyclean/activities/ActivityProduct;->category_name:Ljava/lang/String;

    .line 70
    invoke-virtual {p0}, Lcom/app/tmyclean/activities/ActivityProduct;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 71
    invoke-virtual {p0}, Lcom/app/tmyclean/activities/ActivityProduct;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v2

    iget-object v3, p0, Lcom/app/tmyclean/activities/ActivityProduct;->category_name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 73
    const v2, 0x7f080125

    invoke-virtual {p0, v2}, Lcom/app/tmyclean/activities/ActivityProduct;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    iput-object v2, p0, Lcom/app/tmyclean/activities/ActivityProduct;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 74
    const v2, 0x7f0800ec

    invoke-virtual {p0, v2}, Lcom/app/tmyclean/activities/ActivityProduct;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v2, p0, Lcom/app/tmyclean/activities/ActivityProduct;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 75
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/app/tmyclean/activities/ActivityProduct;->productList:Ljava/util/List;

    .line 76
    new-instance v3, Lcom/app/tmyclean/adapters/AdapterProduct;

    invoke-direct {v3, p0, v2, p0}, Lcom/app/tmyclean/adapters/AdapterProduct;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/app/tmyclean/adapters/AdapterProduct$ContactsAdapterListener;)V

    iput-object v3, p0, Lcom/app/tmyclean/activities/ActivityProduct;->mAdapter:Lcom/app/tmyclean/adapters/AdapterProduct;

    .line 78
    new-instance v2, Landroidx/recyclerview/widget/GridLayoutManager;

    const/4 v3, 0x2

    invoke-direct {v2, p0, v3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 79
    .local v2, "mLayoutManager":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    iget-object v3, p0, Lcom/app/tmyclean/activities/ActivityProduct;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 80
    new-instance v3, Lcom/app/tmyclean/utilities/ItemOffsetDecoration;

    const v4, 0x7f060094

    invoke-direct {v3, p0, v4}, Lcom/app/tmyclean/utilities/ItemOffsetDecoration;-><init>(Landroid/content/Context;I)V

    .line 81
    .local v3, "itemDecoration":Lcom/app/tmyclean/utilities/ItemOffsetDecoration;
    iget-object v4, p0, Lcom/app/tmyclean/activities/ActivityProduct;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4, v3}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 82
    iget-object v4, p0, Lcom/app/tmyclean/activities/ActivityProduct;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v5, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {v5}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 83
    iget-object v4, p0, Lcom/app/tmyclean/activities/ActivityProduct;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v5, p0, Lcom/app/tmyclean/activities/ActivityProduct;->mAdapter:Lcom/app/tmyclean/adapters/AdapterProduct;

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 85
    invoke-direct {p0}, Lcom/app/tmyclean/activities/ActivityProduct;->fetchData()V

    .line 86
    invoke-direct {p0}, Lcom/app/tmyclean/activities/ActivityProduct;->onRefresh()V

    .line 88
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "menu"
        }
    .end annotation

    .line 145
    invoke-virtual {p0}, Lcom/app/tmyclean/activities/ActivityProduct;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0c0005

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 148
    const-string v0, "search"

    invoke-virtual {p0, v0}, Lcom/app/tmyclean/activities/ActivityProduct;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    .line 149
    .local v0, "searchManager":Landroid/app/SearchManager;
    const v1, 0x7f0800fd

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/SearchView;

    iput-object v1, p0, Lcom/app/tmyclean/activities/ActivityProduct;->searchView:Landroidx/appcompat/widget/SearchView;

    .line 150
    invoke-virtual {p0}, Lcom/app/tmyclean/activities/ActivityProduct;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/SearchManager;->getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/SearchView;->setSearchableInfo(Landroid/app/SearchableInfo;)V

    .line 151
    iget-object v1, p0, Lcom/app/tmyclean/activities/ActivityProduct;->searchView:Landroidx/appcompat/widget/SearchView;

    const v2, 0x7fffffff

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/SearchView;->setMaxWidth(I)V

    .line 154
    iget-object v1, p0, Lcom/app/tmyclean/activities/ActivityProduct;->searchView:Landroidx/appcompat/widget/SearchView;

    new-instance v2, Lcom/app/tmyclean/activities/ActivityProduct$4;

    invoke-direct {v2, p0}, Lcom/app/tmyclean/activities/ActivityProduct$4;-><init>(Lcom/app/tmyclean/activities/ActivityProduct;)V

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/SearchView;->setOnQueryTextListener(Landroidx/appcompat/widget/SearchView$OnQueryTextListener;)V

    .line 169
    const/4 v1, 0x1

    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "menuItem"    # Landroid/view/MenuItem;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "menuItem"
        }
    .end annotation

    .line 174
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 181
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 177
    :pswitch_0
    invoke-virtual {p0}, Lcom/app/tmyclean/activities/ActivityProduct;->onBackPressed()V

    .line 178
    nop

    .line 183
    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
