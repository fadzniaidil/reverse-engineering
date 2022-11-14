.class public Lcom/app/tmyclean/adapters/AdapterProduct;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "AdapterProduct.java"

# interfaces
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/app/tmyclean/adapters/AdapterProduct$ContactsAdapterListener;,
        Lcom/app/tmyclean/adapters/AdapterProduct$MyViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/app/tmyclean/adapters/AdapterProduct$MyViewHolder;",
        ">;",
        "Landroid/widget/Filterable;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private listener:Lcom/app/tmyclean/adapters/AdapterProduct$ContactsAdapterListener;

.field private productList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/app/tmyclean/models/Product;",
            ">;"
        }
    .end annotation
.end field

.field private productListFiltered:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/app/tmyclean/models/Product;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/app/tmyclean/adapters/AdapterProduct$ContactsAdapterListener;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "listener"    # Lcom/app/tmyclean/adapters/AdapterProduct$ContactsAdapterListener;
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
            "Lcom/app/tmyclean/models/Product;",
            ">;",
            "Lcom/app/tmyclean/adapters/AdapterProduct$ContactsAdapterListener;",
            ")V"
        }
    .end annotation

    .line 50
    .local p2, "productList":Ljava/util/List;, "Ljava/util/List<Lcom/app/tmyclean/models/Product;>;"
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/app/tmyclean/adapters/AdapterProduct;->context:Landroid/content/Context;

    .line 52
    iput-object p3, p0, Lcom/app/tmyclean/adapters/AdapterProduct;->listener:Lcom/app/tmyclean/adapters/AdapterProduct$ContactsAdapterListener;

    .line 53
    iput-object p2, p0, Lcom/app/tmyclean/adapters/AdapterProduct;->productList:Ljava/util/List;

    .line 54
    iput-object p2, p0, Lcom/app/tmyclean/adapters/AdapterProduct;->productListFiltered:Ljava/util/List;

    .line 55
    return-void
.end method

.method static synthetic access$000(Lcom/app/tmyclean/adapters/AdapterProduct;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/app/tmyclean/adapters/AdapterProduct;

    .line 24
    iget-object v0, p0, Lcom/app/tmyclean/adapters/AdapterProduct;->productListFiltered:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$002(Lcom/app/tmyclean/adapters/AdapterProduct;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/app/tmyclean/adapters/AdapterProduct;
    .param p1, "x1"    # Ljava/util/List;

    .line 24
    iput-object p1, p0, Lcom/app/tmyclean/adapters/AdapterProduct;->productListFiltered:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$100(Lcom/app/tmyclean/adapters/AdapterProduct;)Lcom/app/tmyclean/adapters/AdapterProduct$ContactsAdapterListener;
    .locals 1
    .param p0, "x0"    # Lcom/app/tmyclean/adapters/AdapterProduct;

    .line 24
    iget-object v0, p0, Lcom/app/tmyclean/adapters/AdapterProduct;->listener:Lcom/app/tmyclean/adapters/AdapterProduct$ContactsAdapterListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/app/tmyclean/adapters/AdapterProduct;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/app/tmyclean/adapters/AdapterProduct;

    .line 24
    iget-object v0, p0, Lcom/app/tmyclean/adapters/AdapterProduct;->productList:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .line 99
    new-instance v0, Lcom/app/tmyclean/adapters/AdapterProduct$1;

    invoke-direct {v0, p0}, Lcom/app/tmyclean/adapters/AdapterProduct$1;-><init>(Lcom/app/tmyclean/adapters/AdapterProduct;)V

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/app/tmyclean/adapters/AdapterProduct;->productListFiltered:Ljava/util/List;

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
    check-cast p1, Lcom/app/tmyclean/adapters/AdapterProduct$MyViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/app/tmyclean/adapters/AdapterProduct;->onBindViewHolder(Lcom/app/tmyclean/adapters/AdapterProduct$MyViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/app/tmyclean/adapters/AdapterProduct$MyViewHolder;I)V
    .locals 6
    .param p1, "holder"    # Lcom/app/tmyclean/adapters/AdapterProduct$MyViewHolder;
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
    iget-object v0, p0, Lcom/app/tmyclean/adapters/AdapterProduct;->productListFiltered:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/app/tmyclean/models/Product;

    .line 68
    .local v0, "product":Lcom/app/tmyclean/models/Product;
    iget-object v1, p1, Lcom/app/tmyclean/adapters/AdapterProduct$MyViewHolder;->product_name:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/app/tmyclean/models/Product;->getProduct_name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/app/tmyclean/models/Product;->getProduct_price()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "%,.2f"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 74
    .local v1, "price":Ljava/lang/String;
    iget-object v2, p1, Lcom/app/tmyclean/adapters/AdapterProduct$MyViewHolder;->product_price:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/app/tmyclean/models/Product;->getCurrency_code()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    new-instance v2, Lcom/makeramen/roundedimageview/RoundedTransformationBuilder;

    invoke-direct {v2}, Lcom/makeramen/roundedimageview/RoundedTransformationBuilder;-><init>()V

    .line 78
    const/high16 v4, 0x40c00000    # 6.0f

    invoke-virtual {v2, v4}, Lcom/makeramen/roundedimageview/RoundedTransformationBuilder;->cornerRadiusDp(F)Lcom/makeramen/roundedimageview/RoundedTransformationBuilder;

    move-result-object v2

    .line 79
    invoke-virtual {v2, v3}, Lcom/makeramen/roundedimageview/RoundedTransformationBuilder;->oval(Z)Lcom/makeramen/roundedimageview/RoundedTransformationBuilder;

    move-result-object v2

    .line 80
    invoke-virtual {v2}, Lcom/makeramen/roundedimageview/RoundedTransformationBuilder;->build()Lcom/squareup/picasso/Transformation;

    move-result-object v2

    .line 82
    .local v2, "transformation":Lcom/squareup/picasso/Transformation;
    iget-object v3, p0, Lcom/app/tmyclean/adapters/AdapterProduct;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "https://yapks.online/maid4u_888a/upload/product/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {v0}, Lcom/app/tmyclean/models/Product;->getProduct_image()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v3

    .line 84
    const v4, 0x7f070087

    invoke-virtual {v3, v4}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v3

    .line 85
    const/16 v4, 0xfa

    invoke-virtual {v3, v4, v4}, Lcom/squareup/picasso/RequestCreator;->resize(II)Lcom/squareup/picasso/RequestCreator;

    move-result-object v3

    .line 86
    invoke-virtual {v3}, Lcom/squareup/picasso/RequestCreator;->centerCrop()Lcom/squareup/picasso/RequestCreator;

    move-result-object v3

    .line 87
    invoke-virtual {v3, v2}, Lcom/squareup/picasso/RequestCreator;->transform(Lcom/squareup/picasso/Transformation;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v3

    iget-object v4, p1, Lcom/app/tmyclean/adapters/AdapterProduct$MyViewHolder;->product_image:Landroid/widget/ImageView;

    .line 88
    invoke-virtual {v3, v4}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 90
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
    invoke-virtual {p0, p1, p2}, Lcom/app/tmyclean/adapters/AdapterProduct;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/app/tmyclean/adapters/AdapterProduct$MyViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/app/tmyclean/adapters/AdapterProduct$MyViewHolder;
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
    const v1, 0x7f0b0044

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 62
    .local v0, "itemView":Landroid/view/View;
    new-instance v1, Lcom/app/tmyclean/adapters/AdapterProduct$MyViewHolder;

    invoke-direct {v1, p0, v0}, Lcom/app/tmyclean/adapters/AdapterProduct$MyViewHolder;-><init>(Lcom/app/tmyclean/adapters/AdapterProduct;Landroid/view/View;)V

    return-object v1
.end method
