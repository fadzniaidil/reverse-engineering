.class public Lcom/app/tmyclean/activities/ActivityCart;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "ActivityCart.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/app/tmyclean/activities/ActivityCart$ClickListener;,
        Lcom/app/tmyclean/activities/ActivityCart$RecyclerTouchListener;,
        Lcom/app/tmyclean/activities/ActivityCart$getDataTask;
    }
.end annotation


# static fields
.field public static currency_code:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static product_id:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static product_image:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static product_name:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static product_quantity:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static sub_total_price:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final CLEAR_ALL_ORDER:I

.field final CLEAR_ONE_ORDER:I

.field FLAG:I

.field ID:I

.field adapterCart:Lcom/app/tmyclean/adapters/AdapterCart;

.field arrayCart:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/app/tmyclean/models/Cart;",
            ">;"
        }
    .end annotation
.end field

.field btn_checkout:Landroid/widget/Button;

.field btn_continue:Landroid/widget/Button;

.field data:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field dbhelper:Lcom/app/tmyclean/utilities/DBHelper;

.field lyt_empty_cart:Landroid/view/View;

.field lyt_order:Landroid/widget/RelativeLayout;

.field recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field str_currency_code:Ljava/lang/String;

.field str_tax:D

.field total_price:D

.field view:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/app/tmyclean/activities/ActivityCart;->product_id:Ljava/util/ArrayList;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/app/tmyclean/activities/ActivityCart;->product_name:Ljava/util/ArrayList;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/app/tmyclean/activities/ActivityCart;->product_quantity:Ljava/util/ArrayList;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/app/tmyclean/activities/ActivityCart;->currency_code:Ljava/util/ArrayList;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/app/tmyclean/activities/ActivityCart;->sub_total_price:Ljava/util/ArrayList;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/app/tmyclean/activities/ActivityCart;->product_image:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lcom/app/tmyclean/activities/ActivityCart;->CLEAR_ALL_ORDER:I

    .line 50
    const/4 v0, 0x1

    iput v0, p0, Lcom/app/tmyclean/activities/ActivityCart;->CLEAR_ONE_ORDER:I

    return-void
.end method


# virtual methods
.method public clearData()V
    .locals 1

    .line 221
    sget-object v0, Lcom/app/tmyclean/activities/ActivityCart;->product_id:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 222
    sget-object v0, Lcom/app/tmyclean/activities/ActivityCart;->product_name:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 223
    sget-object v0, Lcom/app/tmyclean/activities/ActivityCart;->product_quantity:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 224
    sget-object v0, Lcom/app/tmyclean/activities/ActivityCart;->sub_total_price:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 225
    sget-object v0, Lcom/app/tmyclean/activities/ActivityCart;->currency_code:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 226
    sget-object v0, Lcom/app/tmyclean/activities/ActivityCart;->product_image:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 227
    return-void
.end method

.method public getDataFromDatabase()V
    .locals 6

    .line 267
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/app/tmyclean/activities/ActivityCart;->total_price:D

    .line 268
    invoke-virtual {p0}, Lcom/app/tmyclean/activities/ActivityCart;->clearData()V

    .line 269
    iget-object v0, p0, Lcom/app/tmyclean/activities/ActivityCart;->dbhelper:Lcom/app/tmyclean/utilities/DBHelper;

    invoke-virtual {v0}, Lcom/app/tmyclean/utilities/DBHelper;->getAllData()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/app/tmyclean/activities/ActivityCart;->data:Ljava/util/ArrayList;

    .line 271
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/app/tmyclean/activities/ActivityCart;->data:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 272
    iget-object v1, p0, Lcom/app/tmyclean/activities/ActivityCart;->data:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 274
    .local v1, "row":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    sget-object v2, Lcom/app/tmyclean/activities/ActivityCart;->product_id:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 275
    sget-object v2, Lcom/app/tmyclean/activities/ActivityCart;->product_name:Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 276
    sget-object v2, Lcom/app/tmyclean/activities/ActivityCart;->product_quantity:Ljava/util/ArrayList;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 277
    sget-object v2, Lcom/app/tmyclean/activities/ActivityCart;->sub_total_price:Ljava/util/ArrayList;

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 279
    iget-wide v2, p0, Lcom/app/tmyclean/activities/ActivityCart;->total_price:D

    sget-object v4, Lcom/app/tmyclean/activities/ActivityCart;->sub_total_price:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    add-double/2addr v2, v4

    iput-wide v2, p0, Lcom/app/tmyclean/activities/ActivityCart;->total_price:D

    .line 281
    sget-object v2, Lcom/app/tmyclean/activities/ActivityCart;->currency_code:Ljava/util/ArrayList;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 282
    sget-object v2, Lcom/app/tmyclean/activities/ActivityCart;->product_image:Ljava/util/ArrayList;

    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 271
    .end local v1    # "row":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 285
    .end local v0    # "i":I
    :cond_0
    iget-wide v0, p0, Lcom/app/tmyclean/activities/ActivityCart;->total_price:D

    iget-wide v2, p0, Lcom/app/tmyclean/activities/ActivityCart;->str_tax:D

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    div-double/2addr v2, v4

    mul-double v2, v2, v0

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/app/tmyclean/activities/ActivityCart;->total_price:D

    .line 287
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .line 291
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onBackPressed()V

    .line 292
    invoke-virtual {p0}, Lcom/app/tmyclean/activities/ActivityCart;->finish()V

    .line 293
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "newConfig"
        }
    .end annotation

    .line 297
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 298
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 68
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 69
    const v0, 0x7f0b001c

    invoke-virtual {p0, v0}, Lcom/app/tmyclean/activities/ActivityCart;->setContentView(I)V

    .line 70
    const v0, 0x1020002

    invoke-virtual {p0, v0}, Lcom/app/tmyclean/activities/ActivityCart;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/app/tmyclean/activities/ActivityCart;->view:Landroid/view/View;

    .line 78
    const v0, 0x7f08013e

    invoke-virtual {p0, v0}, Lcom/app/tmyclean/activities/ActivityCart;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 79
    .local v0, "toolbar":Landroidx/appcompat/widget/Toolbar;
    invoke-virtual {p0, v0}, Lcom/app/tmyclean/activities/ActivityCart;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 80
    invoke-virtual {p0}, Lcom/app/tmyclean/activities/ActivityCart;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v1

    .line 81
    .local v1, "actionBar":Landroidx/appcompat/app/ActionBar;
    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 82
    invoke-virtual {p0}, Lcom/app/tmyclean/activities/ActivityCart;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 83
    invoke-virtual {p0}, Lcom/app/tmyclean/activities/ActivityCart;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 84
    invoke-virtual {p0}, Lcom/app/tmyclean/activities/ActivityCart;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v3

    const v4, 0x7f0f0099

    invoke-virtual {v3, v4}, Landroidx/appcompat/app/ActionBar;->setTitle(I)V

    .line 87
    :cond_0
    invoke-virtual {p0}, Lcom/app/tmyclean/activities/ActivityCart;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 88
    .local v3, "intent":Landroid/content/Intent;
    const-wide/16 v4, 0x0

    const-string v6, "tax"

    invoke-virtual {v3, v6, v4, v5}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v4

    iput-wide v4, p0, Lcom/app/tmyclean/activities/ActivityCart;->str_tax:D

    .line 89
    const-string v4, "currency_code"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/app/tmyclean/activities/ActivityCart;->str_currency_code:Ljava/lang/String;

    .line 91
    const v4, 0x7f0800ec

    invoke-virtual {p0, v4}, Lcom/app/tmyclean/activities/ActivityCart;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v4, p0, Lcom/app/tmyclean/activities/ActivityCart;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 92
    const v4, 0x7f0800b3

    invoke-virtual {p0, v4}, Lcom/app/tmyclean/activities/ActivityCart;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/app/tmyclean/activities/ActivityCart;->lyt_empty_cart:Landroid/view/View;

    .line 93
    const v4, 0x7f080050

    invoke-virtual {p0, v4}, Lcom/app/tmyclean/activities/ActivityCart;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/app/tmyclean/activities/ActivityCart;->btn_checkout:Landroid/widget/Button;

    .line 94
    new-instance v5, Lcom/app/tmyclean/activities/ActivityCart$1;

    invoke-direct {v5, p0}, Lcom/app/tmyclean/activities/ActivityCart$1;-><init>(Lcom/app/tmyclean/activities/ActivityCart;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    const v4, 0x7f080051

    invoke-virtual {p0, v4}, Lcom/app/tmyclean/activities/ActivityCart;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/app/tmyclean/activities/ActivityCart;->btn_continue:Landroid/widget/Button;

    .line 105
    new-instance v5, Lcom/app/tmyclean/activities/ActivityCart$2;

    invoke-direct {v5, p0}, Lcom/app/tmyclean/activities/ActivityCart$2;-><init>(Lcom/app/tmyclean/activities/ActivityCart;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    new-instance v4, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/app/tmyclean/activities/ActivityCart;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 113
    .local v4, "mLayoutManager":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    iget-object v5, p0, Lcom/app/tmyclean/activities/ActivityCart;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v5, v4}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 114
    iget-object v5, p0, Lcom/app/tmyclean/activities/ActivityCart;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v6, Lcom/app/tmyclean/utilities/MyDividerItemDecoration;

    invoke-virtual {p0}, Lcom/app/tmyclean/activities/ActivityCart;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const/16 v8, 0x56

    invoke-direct {v6, v7, v2, v8}, Lcom/app/tmyclean/utilities/MyDividerItemDecoration;-><init>(Landroid/content/Context;II)V

    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 115
    iget-object v2, p0, Lcom/app/tmyclean/activities/ActivityCart;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v5, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {v5}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v2, v5}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 117
    const v2, 0x7f0800b4

    invoke-virtual {p0, v2}, Lcom/app/tmyclean/activities/ActivityCart;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/app/tmyclean/activities/ActivityCart;->lyt_order:Landroid/widget/RelativeLayout;

    .line 119
    new-instance v2, Lcom/app/tmyclean/adapters/AdapterCart;

    iget-object v5, p0, Lcom/app/tmyclean/activities/ActivityCart;->arrayCart:Ljava/util/List;

    invoke-direct {v2, p0, v5}, Lcom/app/tmyclean/adapters/AdapterCart;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v2, p0, Lcom/app/tmyclean/activities/ActivityCart;->adapterCart:Lcom/app/tmyclean/adapters/AdapterCart;

    .line 120
    new-instance v2, Lcom/app/tmyclean/utilities/DBHelper;

    invoke-direct {v2, p0}, Lcom/app/tmyclean/utilities/DBHelper;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/app/tmyclean/activities/ActivityCart;->dbhelper:Lcom/app/tmyclean/utilities/DBHelper;

    .line 123
    :try_start_0
    invoke-virtual {v2}, Lcom/app/tmyclean/utilities/DBHelper;->openDataBase()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    nop

    .line 128
    iget-object v2, p0, Lcom/app/tmyclean/activities/ActivityCart;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v5, Lcom/app/tmyclean/activities/ActivityCart$RecyclerTouchListener;

    invoke-virtual {p0}, Lcom/app/tmyclean/activities/ActivityCart;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/app/tmyclean/activities/ActivityCart;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v8, Lcom/app/tmyclean/activities/ActivityCart$3;

    invoke-direct {v8, p0}, Lcom/app/tmyclean/activities/ActivityCart$3;-><init>(Lcom/app/tmyclean/activities/ActivityCart;)V

    invoke-direct {v5, p0, v6, v7, v8}, Lcom/app/tmyclean/activities/ActivityCart$RecyclerTouchListener;-><init>(Lcom/app/tmyclean/activities/ActivityCart;Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;Lcom/app/tmyclean/activities/ActivityCart$ClickListener;)V

    invoke-virtual {v2, v5}, Landroidx/recyclerview/widget/RecyclerView;->addOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;)V

    .line 147
    new-instance v2, Lcom/app/tmyclean/activities/ActivityCart$getDataTask;

    invoke-direct {v2, p0}, Lcom/app/tmyclean/activities/ActivityCart$getDataTask;-><init>(Lcom/app/tmyclean/activities/ActivityCart;)V

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Void;

    invoke-virtual {v2, v5}, Lcom/app/tmyclean/activities/ActivityCart$getDataTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 149
    return-void

    .line 124
    :catch_0
    move-exception v2

    .line 125
    .local v2, "sqle":Landroid/database/SQLException;
    throw v2
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "menu"
        }
    .end annotation

    .line 153
    invoke-virtual {p0}, Lcom/app/tmyclean/activities/ActivityCart;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0c0001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 154
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "item"
        }
    .end annotation

    .line 159
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    sparse-switch v0, :sswitch_data_0

    .line 174
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 166
    :sswitch_0
    sget-object v0, Lcom/app/tmyclean/activities/ActivityCart;->product_id:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 167
    const/4 v0, 0x0

    const/16 v2, 0x457

    invoke-virtual {p0, v0, v2}, Lcom/app/tmyclean/activities/ActivityCart;->showClearDialog(II)V

    goto :goto_0

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/app/tmyclean/activities/ActivityCart;->view:Landroid/view/View;

    const v2, 0x7f0f0073

    const/4 v3, -0x1

    invoke-static {v0, v2, v3}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;II)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    .line 171
    :goto_0
    return v1

    .line 162
    :sswitch_1
    invoke-virtual {p0}, Lcom/app/tmyclean/activities/ActivityCart;->finish()V

    .line 163
    return v1

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_1
        0x7f080064 -> :sswitch_0
    .end sparse-switch
.end method

.method public showClearDialog(II)V
    .locals 3
    .param p1, "flag"    # I
    .param p2, "id"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "flag",
            "id"
        }
    .end annotation

    .line 179
    iput p1, p0, Lcom/app/tmyclean/activities/ActivityCart;->FLAG:I

    .line 180
    iput p2, p0, Lcom/app/tmyclean/activities/ActivityCart;->ID:I

    .line 181
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 182
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0f004d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 183
    iget v1, p0, Lcom/app/tmyclean/activities/ActivityCart;->FLAG:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 188
    :pswitch_0
    const v1, 0x7f0f003a

    invoke-virtual {p0, v1}, Lcom/app/tmyclean/activities/ActivityCart;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 185
    :pswitch_1
    const v1, 0x7f0f0039

    invoke-virtual {p0, v1}, Lcom/app/tmyclean/activities/ActivityCart;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 186
    nop

    .line 191
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 192
    invoke-virtual {p0}, Lcom/app/tmyclean/activities/ActivityCart;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0057

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/app/tmyclean/activities/ActivityCart$4;

    invoke-direct {v2, p0}, Lcom/app/tmyclean/activities/ActivityCart$4;-><init>(Lcom/app/tmyclean/activities/ActivityCart;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 209
    invoke-virtual {p0}, Lcom/app/tmyclean/activities/ActivityCart;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0056

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/app/tmyclean/activities/ActivityCart$5;

    invoke-direct {v2, p0}, Lcom/app/tmyclean/activities/ActivityCart$5;-><init>(Lcom/app/tmyclean/activities/ActivityCart;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 215
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 216
    .local v1, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 218
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
