.class public Lcom/app/tmyclean/adapters/AdapterCategory;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "AdapterCategory.java"

# interfaces
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/app/tmyclean/adapters/AdapterCategory$ContactsAdapterListener;,
        Lcom/app/tmyclean/adapters/AdapterCategory$MyViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/app/tmyclean/adapters/AdapterCategory$MyViewHolder;",
        ">;",
        "Landroid/widget/Filterable;"
    }
.end annotation


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

.field private categoryListFiltered:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/app/tmyclean/models/Category;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private listener:Lcom/app/tmyclean/adapters/AdapterCategory$ContactsAdapterListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/app/tmyclean/adapters/AdapterCategory$ContactsAdapterListener;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "listener"    # Lcom/app/tmyclean/adapters/AdapterCategory$ContactsAdapterListener;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "categoryList",
            "listener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/app/tmyclean/models/Category;",
            ">;",
            "Lcom/app/tmyclean/adapters/AdapterCategory$ContactsAdapterListener;",
            ")V"
        }
    .end annotation

    .line 50
    .local p2, "categoryList":Ljava/util/List;, "Ljava/util/List<Lcom/app/tmyclean/models/Category;>;"
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/app/tmyclean/adapters/AdapterCategory;->context:Landroid/content/Context;

    .line 52
    iput-object p3, p0, Lcom/app/tmyclean/adapters/AdapterCategory;->listener:Lcom/app/tmyclean/adapters/AdapterCategory$ContactsAdapterListener;

    .line 53
    iput-object p2, p0, Lcom/app/tmyclean/adapters/AdapterCategory;->categoryList:Ljava/util/List;

    .line 54
    iput-object p2, p0, Lcom/app/tmyclean/adapters/AdapterCategory;->categoryListFiltered:Ljava/util/List;

    .line 55
    return-void
.end method

.method static synthetic access$000(Lcom/app/tmyclean/adapters/AdapterCategory;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/app/tmyclean/adapters/AdapterCategory;

    .line 24
    iget-object v0, p0, Lcom/app/tmyclean/adapters/AdapterCategory;->categoryListFiltered:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$002(Lcom/app/tmyclean/adapters/AdapterCategory;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/app/tmyclean/adapters/AdapterCategory;
    .param p1, "x1"    # Ljava/util/List;

    .line 24
    iput-object p1, p0, Lcom/app/tmyclean/adapters/AdapterCategory;->categoryListFiltered:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$100(Lcom/app/tmyclean/adapters/AdapterCategory;)Lcom/app/tmyclean/adapters/AdapterCategory$ContactsAdapterListener;
    .locals 1
    .param p0, "x0"    # Lcom/app/tmyclean/adapters/AdapterCategory;

    .line 24
    iget-object v0, p0, Lcom/app/tmyclean/adapters/AdapterCategory;->listener:Lcom/app/tmyclean/adapters/AdapterCategory$ContactsAdapterListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/app/tmyclean/adapters/AdapterCategory;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/app/tmyclean/adapters/AdapterCategory;

    .line 24
    iget-object v0, p0, Lcom/app/tmyclean/adapters/AdapterCategory;->categoryList:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .line 93
    new-instance v0, Lcom/app/tmyclean/adapters/AdapterCategory$1;

    invoke-direct {v0, p0}, Lcom/app/tmyclean/adapters/AdapterCategory$1;-><init>(Lcom/app/tmyclean/adapters/AdapterCategory;)V

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/app/tmyclean/adapters/AdapterCategory;->categoryListFiltered:Ljava/util/List;

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

    .line 24
    check-cast p1, Lcom/app/tmyclean/adapters/AdapterCategory$MyViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/app/tmyclean/adapters/AdapterCategory;->onBindViewHolder(Lcom/app/tmyclean/adapters/AdapterCategory$MyViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/app/tmyclean/adapters/AdapterCategory$MyViewHolder;I)V
    .locals 5
    .param p1, "holder"    # Lcom/app/tmyclean/adapters/AdapterCategory$MyViewHolder;
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

    .line 67
    iget-object v0, p0, Lcom/app/tmyclean/adapters/AdapterCategory;->categoryListFiltered:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/app/tmyclean/models/Category;

    .line 68
    .local v0, "category":Lcom/app/tmyclean/models/Category;
    iget-object v1, p1, Lcom/app/tmyclean/adapters/AdapterCategory$MyViewHolder;->category_name:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/app/tmyclean/models/Category;->getCategory_name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    iget-object v1, p1, Lcom/app/tmyclean/adapters/AdapterCategory$MyViewHolder;->product_count:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/app/tmyclean/models/Category;->getProduct_count()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/app/tmyclean/adapters/AdapterCategory;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f00a3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    new-instance v1, Lcom/makeramen/roundedimageview/RoundedTransformationBuilder;

    invoke-direct {v1}, Lcom/makeramen/roundedimageview/RoundedTransformationBuilder;-><init>()V

    .line 72
    const/high16 v2, 0x40c00000    # 6.0f

    invoke-virtual {v1, v2}, Lcom/makeramen/roundedimageview/RoundedTransformationBuilder;->cornerRadiusDp(F)Lcom/makeramen/roundedimageview/RoundedTransformationBuilder;

    move-result-object v1

    .line 73
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/makeramen/roundedimageview/RoundedTransformationBuilder;->oval(Z)Lcom/makeramen/roundedimageview/RoundedTransformationBuilder;

    move-result-object v1

    .line 74
    invoke-virtual {v1}, Lcom/makeramen/roundedimageview/RoundedTransformationBuilder;->build()Lcom/squareup/picasso/Transformation;

    move-result-object v1

    .line 76
    .local v1, "transformation":Lcom/squareup/picasso/Transformation;
    iget-object v2, p0, Lcom/app/tmyclean/adapters/AdapterCategory;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "https://yapks.online/maid4u_888a/upload/category/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {v0}, Lcom/app/tmyclean/models/Category;->getCategory_image()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v2

    .line 78
    const v3, 0x7f070087

    invoke-virtual {v2, v3}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v2

    .line 79
    const/16 v3, 0xfa

    invoke-virtual {v2, v3, v3}, Lcom/squareup/picasso/RequestCreator;->resize(II)Lcom/squareup/picasso/RequestCreator;

    move-result-object v2

    .line 80
    invoke-virtual {v2}, Lcom/squareup/picasso/RequestCreator;->centerCrop()Lcom/squareup/picasso/RequestCreator;

    move-result-object v2

    .line 81
    invoke-virtual {v2, v1}, Lcom/squareup/picasso/RequestCreator;->transform(Lcom/squareup/picasso/Transformation;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v2

    iget-object v3, p1, Lcom/app/tmyclean/adapters/AdapterCategory$MyViewHolder;->category_image:Landroid/widget/ImageView;

    .line 82
    invoke-virtual {v2, v3}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 84
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

    .line 24
    invoke-virtual {p0, p1, p2}, Lcom/app/tmyclean/adapters/AdapterCategory;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/app/tmyclean/adapters/AdapterCategory$MyViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/app/tmyclean/adapters/AdapterCategory$MyViewHolder;
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

    .line 59
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 60
    const v1, 0x7f0b0041

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 62
    .local v0, "itemView":Landroid/view/View;
    new-instance v1, Lcom/app/tmyclean/adapters/AdapterCategory$MyViewHolder;

    invoke-direct {v1, p0, v0}, Lcom/app/tmyclean/adapters/AdapterCategory$MyViewHolder;-><init>(Lcom/app/tmyclean/adapters/AdapterCategory;Landroid/view/View;)V

    return-object v1
.end method
