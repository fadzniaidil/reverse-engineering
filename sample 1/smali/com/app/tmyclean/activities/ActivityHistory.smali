.class public Lcom/app/tmyclean/activities/ActivityHistory;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "ActivityHistory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/app/tmyclean/activities/ActivityHistory$ClickListener;,
        Lcom/app/tmyclean/activities/ActivityHistory$RecyclerTouchListener;,
        Lcom/app/tmyclean/activities/ActivityHistory$getDataTask;
    }
.end annotation


# static fields
.field public static code:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static date_time:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static id:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static order_list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static order_total:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final CLEAR_ALL_ORDER:I

.field final CLEAR_ONE_ORDER:I

.field FLAG:I

.field ID:I

.field adapterHistory:Lcom/app/tmyclean/adapters/AdapterHistory;

.field arrayItemHistory:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/app/tmyclean/models/History;",
            ">;"
        }
    .end annotation
.end field

.field bottom_sheet:Landroid/view/View;

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

.field lyt_empty_history:Landroid/view/View;

.field lyt_history:Landroid/widget/RelativeLayout;

.field private mBehavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

.field private mBottomSheetDialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

.field recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field view:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/app/tmyclean/activities/ActivityHistory;->id:Ljava/util/ArrayList;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/app/tmyclean/activities/ActivityHistory;->code:Ljava/util/ArrayList;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/app/tmyclean/activities/ActivityHistory;->order_list:Ljava/util/ArrayList;

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/app/tmyclean/activities/ActivityHistory;->order_total:Ljava/util/ArrayList;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/app/tmyclean/activities/ActivityHistory;->date_time:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Lcom/app/tmyclean/activities/ActivityHistory;->CLEAR_ALL_ORDER:I

    .line 55
    const/4 v0, 0x1

    iput v0, p0, Lcom/app/tmyclean/activities/ActivityHistory;->CLEAR_ONE_ORDER:I

    return-void
.end method

.method static synthetic access$000(Lcom/app/tmyclean/activities/ActivityHistory;I)V
    .locals 0
    .param p0, "x0"    # Lcom/app/tmyclean/activities/ActivityHistory;
    .param p1, "x1"    # I

    .line 47
    invoke-direct {p0, p1}, Lcom/app/tmyclean/activities/ActivityHistory;->showBottomSheetDialog(I)V

    return-void
.end method

.method static synthetic access$102(Lcom/app/tmyclean/activities/ActivityHistory;Lcom/google/android/material/bottomsheet/BottomSheetDialog;)Lcom/google/android/material/bottomsheet/BottomSheetDialog;
    .locals 0
    .param p0, "x0"    # Lcom/app/tmyclean/activities/ActivityHistory;
    .param p1, "x1"    # Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    .line 47
    iput-object p1, p0, Lcom/app/tmyclean/activities/ActivityHistory;->mBottomSheetDialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    return-object p1
.end method

.method private showBottomSheetDialog(I)V
    .locals 3
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "position"
        }
    .end annotation

    .line 317
    iget-object v0, p0, Lcom/app/tmyclean/activities/ActivityHistory;->mBehavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    invoke-virtual {v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 318
    iget-object v0, p0, Lcom/app/tmyclean/activities/ActivityHistory;->mBehavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setState(I)V

    .line 321
    :cond_0
    invoke-virtual {p0}, Lcom/app/tmyclean/activities/ActivityHistory;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b003f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 322
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f08010b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sget-object v2, Lcom/app/tmyclean/activities/ActivityHistory;->code:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 323
    const v1, 0x7f08010c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sget-object v2, Lcom/app/tmyclean/activities/ActivityHistory;->date_time:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/app/tmyclean/utilities/Utils;->getFormatedDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 324
    const v1, 0x7f08010d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sget-object v2, Lcom/app/tmyclean/activities/ActivityHistory;->order_list:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 325
    const v1, 0x7f08010e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sget-object v2, Lcom/app/tmyclean/activities/ActivityHistory;->order_total:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 327
    const v1, 0x7f0800a3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    new-instance v2, Lcom/app/tmyclean/activities/ActivityHistory$4;

    invoke-direct {v2, p0, p1}, Lcom/app/tmyclean/activities/ActivityHistory$4;-><init>(Lcom/app/tmyclean/activities/ActivityHistory;I)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 337
    new-instance v1, Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    invoke-direct {v1, p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/app/tmyclean/activities/ActivityHistory;->mBottomSheetDialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    .line 338
    invoke-virtual {v1, v0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->setContentView(Landroid/view/View;)V

    .line 339
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_1

    .line 340
    iget-object v1, p0, Lcom/app/tmyclean/activities/ActivityHistory;->mBottomSheetDialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    invoke-virtual {v1}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x4000000

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 343
    :cond_1
    iget-object v1, p0, Lcom/app/tmyclean/activities/ActivityHistory;->mBottomSheetDialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    invoke-virtual {v1}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->show()V

    .line 344
    iget-object v1, p0, Lcom/app/tmyclean/activities/ActivityHistory;->mBottomSheetDialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    new-instance v2, Lcom/app/tmyclean/activities/ActivityHistory$5;

    invoke-direct {v2, p0}, Lcom/app/tmyclean/activities/ActivityHistory$5;-><init>(Lcom/app/tmyclean/activities/ActivityHistory;)V

    invoke-virtual {v1, v2}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 350
    return-void
.end method


# virtual methods
.method public clearData()V
    .locals 1

    .line 210
    sget-object v0, Lcom/app/tmyclean/activities/ActivityHistory;->id:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 211
    sget-object v0, Lcom/app/tmyclean/activities/ActivityHistory;->code:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 212
    sget-object v0, Lcom/app/tmyclean/activities/ActivityHistory;->order_list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 213
    sget-object v0, Lcom/app/tmyclean/activities/ActivityHistory;->order_total:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 214
    sget-object v0, Lcom/app/tmyclean/activities/ActivityHistory;->date_time:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 215
    return-void
.end method

.method public getDataFromDatabase()V
    .locals 4

    .line 239
    invoke-virtual {p0}, Lcom/app/tmyclean/activities/ActivityHistory;->clearData()V

    .line 240
    iget-object v0, p0, Lcom/app/tmyclean/activities/ActivityHistory;->dbhelper:Lcom/app/tmyclean/utilities/DBHelper;

    invoke-virtual {v0}, Lcom/app/tmyclean/utilities/DBHelper;->getAllDataHistory()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/app/tmyclean/activities/ActivityHistory;->data:Ljava/util/ArrayList;

    .line 242
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/app/tmyclean/activities/ActivityHistory;->data:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 243
    iget-object v1, p0, Lcom/app/tmyclean/activities/ActivityHistory;->data:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 244
    .local v1, "row":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    sget-object v2, Lcom/app/tmyclean/activities/ActivityHistory;->id:Ljava/util/ArrayList;

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

    .line 245
    sget-object v2, Lcom/app/tmyclean/activities/ActivityHistory;->code:Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 246
    sget-object v2, Lcom/app/tmyclean/activities/ActivityHistory;->order_list:Ljava/util/ArrayList;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 247
    sget-object v2, Lcom/app/tmyclean/activities/ActivityHistory;->order_total:Ljava/util/ArrayList;

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 248
    sget-object v2, Lcom/app/tmyclean/activities/ActivityHistory;->date_time:Ljava/util/ArrayList;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 242
    .end local v1    # "row":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 251
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .line 255
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onBackPressed()V

    .line 256
    invoke-virtual {p0}, Lcom/app/tmyclean/activities/ActivityHistory;->finish()V

    .line 257
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

    .line 261
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 262
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

    .line 72
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 73
    const v0, 0x7f0b001f

    invoke-virtual {p0, v0}, Lcom/app/tmyclean/activities/ActivityHistory;->setContentView(I)V

    .line 74
    const v0, 0x1020002

    invoke-virtual {p0, v0}, Lcom/app/tmyclean/activities/ActivityHistory;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/app/tmyclean/activities/ActivityHistory;->view:Landroid/view/View;

    .line 82
    const v0, 0x7f08013e

    invoke-virtual {p0, v0}, Lcom/app/tmyclean/activities/ActivityHistory;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 83
    .local v0, "toolbar":Landroidx/appcompat/widget/Toolbar;
    invoke-virtual {p0, v0}, Lcom/app/tmyclean/activities/ActivityHistory;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 84
    invoke-virtual {p0}, Lcom/app/tmyclean/activities/ActivityHistory;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v1

    .line 85
    .local v1, "actionBar":Landroidx/appcompat/app/ActionBar;
    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 86
    invoke-virtual {p0}, Lcom/app/tmyclean/activities/ActivityHistory;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 87
    invoke-virtual {p0}, Lcom/app/tmyclean/activities/ActivityHistory;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 88
    invoke-virtual {p0}, Lcom/app/tmyclean/activities/ActivityHistory;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v3

    const v4, 0x7f0f009b

    invoke-virtual {v3, v4}, Landroidx/appcompat/app/ActionBar;->setTitle(I)V

    .line 91
    :cond_0
    const v3, 0x7f080049

    invoke-virtual {p0, v3}, Lcom/app/tmyclean/activities/ActivityHistory;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/app/tmyclean/activities/ActivityHistory;->bottom_sheet:Landroid/view/View;

    .line 92
    invoke-static {v3}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->from(Landroid/view/View;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v3

    iput-object v3, p0, Lcom/app/tmyclean/activities/ActivityHistory;->mBehavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 94
    const v3, 0x7f0800ec

    invoke-virtual {p0, v3}, Lcom/app/tmyclean/activities/ActivityHistory;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v3, p0, Lcom/app/tmyclean/activities/ActivityHistory;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 95
    const v3, 0x7f0800b3

    invoke-virtual {p0, v3}, Lcom/app/tmyclean/activities/ActivityHistory;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/app/tmyclean/activities/ActivityHistory;->lyt_empty_history:Landroid/view/View;

    .line 97
    new-instance v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/app/tmyclean/activities/ActivityHistory;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 98
    .local v3, "mLayoutManager":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    iget-object v4, p0, Lcom/app/tmyclean/activities/ActivityHistory;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 99
    iget-object v4, p0, Lcom/app/tmyclean/activities/ActivityHistory;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v5, Lcom/app/tmyclean/utilities/MyDividerItemDecoration;

    invoke-virtual {p0}, Lcom/app/tmyclean/activities/ActivityHistory;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v5, v6, v2, v7}, Lcom/app/tmyclean/utilities/MyDividerItemDecoration;-><init>(Landroid/content/Context;II)V

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 100
    iget-object v2, p0, Lcom/app/tmyclean/activities/ActivityHistory;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v4, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {v4}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v2, v4}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 102
    const v2, 0x7f0800b4

    invoke-virtual {p0, v2}, Lcom/app/tmyclean/activities/ActivityHistory;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/app/tmyclean/activities/ActivityHistory;->lyt_history:Landroid/widget/RelativeLayout;

    .line 104
    new-instance v2, Lcom/app/tmyclean/adapters/AdapterHistory;

    iget-object v4, p0, Lcom/app/tmyclean/activities/ActivityHistory;->arrayItemHistory:Ljava/util/List;

    invoke-direct {v2, p0, v4}, Lcom/app/tmyclean/adapters/AdapterHistory;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v2, p0, Lcom/app/tmyclean/activities/ActivityHistory;->adapterHistory:Lcom/app/tmyclean/adapters/AdapterHistory;

    .line 105
    new-instance v2, Lcom/app/tmyclean/utilities/DBHelper;

    invoke-direct {v2, p0}, Lcom/app/tmyclean/utilities/DBHelper;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/app/tmyclean/activities/ActivityHistory;->dbhelper:Lcom/app/tmyclean/utilities/DBHelper;

    .line 108
    :try_start_0
    invoke-virtual {v2}, Lcom/app/tmyclean/utilities/DBHelper;->openDataBase()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    nop

    .line 113
    iget-object v2, p0, Lcom/app/tmyclean/activities/ActivityHistory;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v4, Lcom/app/tmyclean/activities/ActivityHistory$RecyclerTouchListener;

    invoke-virtual {p0}, Lcom/app/tmyclean/activities/ActivityHistory;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/app/tmyclean/activities/ActivityHistory;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v8, Lcom/app/tmyclean/activities/ActivityHistory$1;

    invoke-direct {v8, p0}, Lcom/app/tmyclean/activities/ActivityHistory$1;-><init>(Lcom/app/tmyclean/activities/ActivityHistory;)V

    invoke-direct {v4, p0, v5, v6, v8}, Lcom/app/tmyclean/activities/ActivityHistory$RecyclerTouchListener;-><init>(Lcom/app/tmyclean/activities/ActivityHistory;Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;Lcom/app/tmyclean/activities/ActivityHistory$ClickListener;)V

    invoke-virtual {v2, v4}, Landroidx/recyclerview/widget/RecyclerView;->addOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;)V

    .line 135
    new-instance v2, Lcom/app/tmyclean/activities/ActivityHistory$getDataTask;

    invoke-direct {v2, p0}, Lcom/app/tmyclean/activities/ActivityHistory$getDataTask;-><init>(Lcom/app/tmyclean/activities/ActivityHistory;)V

    new-array v4, v7, [Ljava/lang/Void;

    invoke-virtual {v2, v4}, Lcom/app/tmyclean/activities/ActivityHistory$getDataTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 137
    return-void

    .line 109
    :catch_0
    move-exception v2

    .line 110
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

    .line 141
    invoke-virtual {p0}, Lcom/app/tmyclean/activities/ActivityHistory;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0c0001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 142
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

    .line 147
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    sparse-switch v0, :sswitch_data_0

    .line 163
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 154
    :sswitch_0
    sget-object v0, Lcom/app/tmyclean/activities/ActivityHistory;->id:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 155
    const/4 v0, 0x0

    const/16 v2, 0x457

    invoke-virtual {p0, v0, v2}, Lcom/app/tmyclean/activities/ActivityHistory;->showClearDialog(II)V

    goto :goto_0

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/app/tmyclean/activities/ActivityHistory;->view:Landroid/view/View;

    const v2, 0x7f0f0075

    const/4 v3, -0x1

    invoke-static {v0, v2, v3}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;II)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    .line 160
    :goto_0
    return v1

    .line 150
    :sswitch_1
    invoke-virtual {p0}, Lcom/app/tmyclean/activities/ActivityHistory;->finish()V

    .line 151
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

    .line 168
    iput p1, p0, Lcom/app/tmyclean/activities/ActivityHistory;->FLAG:I

    .line 169
    iput p2, p0, Lcom/app/tmyclean/activities/ActivityHistory;->ID:I

    .line 170
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 171
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0f004d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 172
    iget v1, p0, Lcom/app/tmyclean/activities/ActivityHistory;->FLAG:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 177
    :pswitch_0
    const v1, 0x7f0f003a

    invoke-virtual {p0, v1}, Lcom/app/tmyclean/activities/ActivityHistory;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 174
    :pswitch_1
    const v1, 0x7f0f0039

    invoke-virtual {p0, v1}, Lcom/app/tmyclean/activities/ActivityHistory;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 175
    nop

    .line 180
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 181
    invoke-virtual {p0}, Lcom/app/tmyclean/activities/ActivityHistory;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0057

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/app/tmyclean/activities/ActivityHistory$2;

    invoke-direct {v2, p0}, Lcom/app/tmyclean/activities/ActivityHistory$2;-><init>(Lcom/app/tmyclean/activities/ActivityHistory;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 198
    invoke-virtual {p0}, Lcom/app/tmyclean/activities/ActivityHistory;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0056

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/app/tmyclean/activities/ActivityHistory$3;

    invoke-direct {v2, p0}, Lcom/app/tmyclean/activities/ActivityHistory$3;-><init>(Lcom/app/tmyclean/activities/ActivityHistory;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 204
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 205
    .local v1, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 207
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
