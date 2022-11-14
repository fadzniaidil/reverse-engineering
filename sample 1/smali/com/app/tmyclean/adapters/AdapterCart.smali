.class public Lcom/app/tmyclean/adapters/AdapterCart;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "AdapterCart.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/app/tmyclean/adapters/AdapterCart$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/app/tmyclean/adapters/AdapterCart$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private arrayCart:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/app/tmyclean/models/Cart;",
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
            "arrayCart"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/app/tmyclean/models/Cart;",
            ">;)V"
        }
    .end annotation

    .line 44
    .local p2, "arrayCart":Ljava/util/List;, "Ljava/util/List<Lcom/app/tmyclean/models/Cart;>;"
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/app/tmyclean/adapters/AdapterCart;->context:Landroid/content/Context;

    .line 46
    iput-object p2, p0, Lcom/app/tmyclean/adapters/AdapterCart;->arrayCart:Ljava/util/List;

    .line 47
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 95
    sget-object v0, Lcom/app/tmyclean/activities/ActivityCart;->product_id:Ljava/util/ArrayList;

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

    .line 22
    check-cast p1, Lcom/app/tmyclean/adapters/AdapterCart$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/app/tmyclean/adapters/AdapterCart;->onBindViewHolder(Lcom/app/tmyclean/adapters/AdapterCart$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/app/tmyclean/adapters/AdapterCart$ViewHolder;I)V
    .locals 8
    .param p1, "holder"    # Lcom/app/tmyclean/adapters/AdapterCart$ViewHolder;
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

    .line 58
    iget-object v0, p1, Lcom/app/tmyclean/adapters/AdapterCart$ViewHolder;->product_name:Landroid/widget/TextView;

    sget-object v1, Lcom/app/tmyclean/activities/ActivityCart;->product_name:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lcom/app/tmyclean/activities/ActivityCart;->sub_total_price:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "%,.2f"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 63
    .local v1, "price":Ljava/lang/String;
    sget-object v4, Lcom/app/tmyclean/activities/ActivityCart;->sub_total_price:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    sget-object v6, Lcom/app/tmyclean/activities/ActivityCart;->product_quantity:Ljava/util/ArrayList;

    invoke-virtual {v6, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    int-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v4, v6

    .line 64
    .local v4, "_single_item":D
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v0, v3

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, "single_item_price":Ljava/lang/String;
    iget-object v2, p1, Lcom/app/tmyclean/adapters/AdapterCart$ViewHolder;->product_quantity:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/app/tmyclean/activities/ActivityCart;->currency_code:Ljava/util/ArrayList;

    invoke-virtual {v7, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " x "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lcom/app/tmyclean/activities/ActivityCart;->product_quantity:Ljava/util/ArrayList;

    invoke-virtual {v7, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    iget-object v2, p1, Lcom/app/tmyclean/adapters/AdapterCart$ViewHolder;->product_price:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/app/tmyclean/activities/ActivityCart;->currency_code:Ljava/util/ArrayList;

    invoke-virtual {v7, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    new-instance v2, Lcom/makeramen/roundedimageview/RoundedTransformationBuilder;

    invoke-direct {v2}, Lcom/makeramen/roundedimageview/RoundedTransformationBuilder;-><init>()V

    .line 79
    const/high16 v6, 0x41000000    # 8.0f

    invoke-virtual {v2, v6}, Lcom/makeramen/roundedimageview/RoundedTransformationBuilder;->cornerRadiusDp(F)Lcom/makeramen/roundedimageview/RoundedTransformationBuilder;

    move-result-object v2

    .line 80
    invoke-virtual {v2, v3}, Lcom/makeramen/roundedimageview/RoundedTransformationBuilder;->oval(Z)Lcom/makeramen/roundedimageview/RoundedTransformationBuilder;

    move-result-object v2

    .line 81
    invoke-virtual {v2}, Lcom/makeramen/roundedimageview/RoundedTransformationBuilder;->build()Lcom/squareup/picasso/Transformation;

    move-result-object v2

    .line 83
    .local v2, "transformation":Lcom/squareup/picasso/Transformation;
    iget-object v3, p0, Lcom/app/tmyclean/adapters/AdapterCart;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "https://yapks.online/maid4u_888a/upload/product/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lcom/app/tmyclean/activities/ActivityCart;->product_image:Ljava/util/ArrayList;

    .line 84
    invoke-virtual {v7, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v3

    .line 85
    const v6, 0x7f070087

    invoke-virtual {v3, v6}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v3

    .line 86
    const/16 v6, 0xfa

    invoke-virtual {v3, v6, v6}, Lcom/squareup/picasso/RequestCreator;->resize(II)Lcom/squareup/picasso/RequestCreator;

    move-result-object v3

    .line 87
    invoke-virtual {v3}, Lcom/squareup/picasso/RequestCreator;->centerCrop()Lcom/squareup/picasso/RequestCreator;

    move-result-object v3

    .line 88
    invoke-virtual {v3, v2}, Lcom/squareup/picasso/RequestCreator;->transform(Lcom/squareup/picasso/Transformation;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v3

    iget-object v6, p1, Lcom/app/tmyclean/adapters/AdapterCart$ViewHolder;->product_image:Landroid/widget/ImageView;

    .line 89
    invoke-virtual {v3, v6}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 91
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

    .line 22
    invoke-virtual {p0, p1, p2}, Lcom/app/tmyclean/adapters/AdapterCart;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/app/tmyclean/adapters/AdapterCart$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/app/tmyclean/adapters/AdapterCart$ViewHolder;
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

    const v1, 0x7f0b0040

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 52
    .local v0, "itemView":Landroid/view/View;
    new-instance v1, Lcom/app/tmyclean/adapters/AdapterCart$ViewHolder;

    invoke-direct {v1, p0, v0}, Lcom/app/tmyclean/adapters/AdapterCart$ViewHolder;-><init>(Lcom/app/tmyclean/adapters/AdapterCart;Landroid/view/View;)V

    return-object v1
.end method
