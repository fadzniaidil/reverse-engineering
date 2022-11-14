.class public Lcom/app/tmyclean/activities/ActivityCart$getDataTask;
.super Landroid/os/AsyncTask;
.source "ActivityCart.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/app/tmyclean/activities/ActivityCart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "getDataTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/app/tmyclean/activities/ActivityCart;


# direct methods
.method public constructor <init>(Lcom/app/tmyclean/activities/ActivityCart;)V
    .locals 0
    .param p1, "this$0"    # Lcom/app/tmyclean/activities/ActivityCart;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 230
    iput-object p1, p0, Lcom/app/tmyclean/activities/ActivityCart$getDataTask;->this$0:Lcom/app/tmyclean/activities/ActivityCart;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "arg0"
        }
    .end annotation

    .line 229
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/app/tmyclean/activities/ActivityCart$getDataTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .param p1, "arg0"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg0"
        }
    .end annotation

    .line 234
    iget-object v0, p0, Lcom/app/tmyclean/activities/ActivityCart$getDataTask;->this$0:Lcom/app/tmyclean/activities/ActivityCart;

    invoke-virtual {v0}, Lcom/app/tmyclean/activities/ActivityCart;->getDataFromDatabase()V

    .line 235
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "result"
        }
    .end annotation

    .line 229
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/app/tmyclean/activities/ActivityCart$getDataTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 8
    .param p1, "result"    # Ljava/lang/Void;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    .line 241
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/app/tmyclean/activities/ActivityCart$getDataTask;->this$0:Lcom/app/tmyclean/activities/ActivityCart;

    iget-wide v2, v2, Lcom/app/tmyclean/activities/ActivityCart;->total_price:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "%,.2f"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 242
    .local v1, "_price":Ljava/lang/String;
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/app/tmyclean/activities/ActivityCart$getDataTask;->this$0:Lcom/app/tmyclean/activities/ActivityCart;

    iget-wide v4, v4, Lcom/app/tmyclean/activities/ActivityCart;->str_tax:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v0, v3

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 244
    .local v0, "_tax":Ljava/lang/String;
    iget-object v2, p0, Lcom/app/tmyclean/activities/ActivityCart$getDataTask;->this$0:Lcom/app/tmyclean/activities/ActivityCart;

    const v4, 0x7f08014b

    invoke-virtual {v2, v4}, Lcom/app/tmyclean/activities/ActivityCart;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 245
    .local v2, "txt_total_price":Landroid/widget/TextView;
    iget-object v4, p0, Lcom/app/tmyclean/activities/ActivityCart$getDataTask;->this$0:Lcom/app/tmyclean/activities/ActivityCart;

    const v5, 0x7f08014a

    invoke-virtual {v4, v5}, Lcom/app/tmyclean/activities/ActivityCart;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 251
    .local v4, "txt_tax":Landroid/widget/TextView;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/app/tmyclean/activities/ActivityCart$getDataTask;->this$0:Lcom/app/tmyclean/activities/ActivityCart;

    invoke-virtual {v6}, Lcom/app/tmyclean/activities/ActivityCart;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0f00ab

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/app/tmyclean/activities/ActivityCart$getDataTask;->this$0:Lcom/app/tmyclean/activities/ActivityCart;

    iget-object v6, v6, Lcom/app/tmyclean/activities/ActivityCart;->str_currency_code:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 252
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/app/tmyclean/activities/ActivityCart$getDataTask;->this$0:Lcom/app/tmyclean/activities/ActivityCart;

    invoke-virtual {v6}, Lcom/app/tmyclean/activities/ActivityCart;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0f00aa

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/app/tmyclean/activities/ActivityCart$getDataTask;->this$0:Lcom/app/tmyclean/activities/ActivityCart;

    iget-wide v6, v6, Lcom/app/tmyclean/activities/ActivityCart;->str_tax:D

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v6, " %"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 255
    sget-object v5, Lcom/app/tmyclean/activities/ActivityCart;->product_id:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 256
    iget-object v5, p0, Lcom/app/tmyclean/activities/ActivityCart$getDataTask;->this$0:Lcom/app/tmyclean/activities/ActivityCart;

    iget-object v5, v5, Lcom/app/tmyclean/activities/ActivityCart;->lyt_order:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 257
    iget-object v3, p0, Lcom/app/tmyclean/activities/ActivityCart$getDataTask;->this$0:Lcom/app/tmyclean/activities/ActivityCart;

    iget-object v3, v3, Lcom/app/tmyclean/activities/ActivityCart;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v5, p0, Lcom/app/tmyclean/activities/ActivityCart$getDataTask;->this$0:Lcom/app/tmyclean/activities/ActivityCart;

    iget-object v5, v5, Lcom/app/tmyclean/activities/ActivityCart;->adapterCart:Lcom/app/tmyclean/adapters/AdapterCart;

    invoke-virtual {v3, v5}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto :goto_0

    .line 259
    :cond_0
    iget-object v5, p0, Lcom/app/tmyclean/activities/ActivityCart$getDataTask;->this$0:Lcom/app/tmyclean/activities/ActivityCart;

    iget-object v5, v5, Lcom/app/tmyclean/activities/ActivityCart;->lyt_empty_cart:Landroid/view/View;

    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    .line 262
    :goto_0
    return-void
.end method
