.class Lcom/app/tmyclean/activities/ActivityProduct$4;
.super Ljava/lang/Object;
.source "ActivityProduct.java"

# interfaces
.implements Landroidx/appcompat/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/app/tmyclean/activities/ActivityProduct;->onCreateOptionsMenu(Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/app/tmyclean/activities/ActivityProduct;


# direct methods
.method constructor <init>(Lcom/app/tmyclean/activities/ActivityProduct;)V
    .locals 0
    .param p1, "this$0"    # Lcom/app/tmyclean/activities/ActivityProduct;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 154
    iput-object p1, p0, Lcom/app/tmyclean/activities/ActivityProduct$4;->this$0:Lcom/app/tmyclean/activities/ActivityProduct;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 1
    .param p1, "query"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "query"
        }
    .end annotation

    .line 165
    iget-object v0, p0, Lcom/app/tmyclean/activities/ActivityProduct$4;->this$0:Lcom/app/tmyclean/activities/ActivityProduct;

    invoke-static {v0}, Lcom/app/tmyclean/activities/ActivityProduct;->access$200(Lcom/app/tmyclean/activities/ActivityProduct;)Lcom/app/tmyclean/adapters/AdapterProduct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/app/tmyclean/adapters/AdapterProduct;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 166
    const/4 v0, 0x0

    return v0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 1
    .param p1, "query"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "query"
        }
    .end annotation

    .line 158
    iget-object v0, p0, Lcom/app/tmyclean/activities/ActivityProduct$4;->this$0:Lcom/app/tmyclean/activities/ActivityProduct;

    invoke-static {v0}, Lcom/app/tmyclean/activities/ActivityProduct;->access$200(Lcom/app/tmyclean/activities/ActivityProduct;)Lcom/app/tmyclean/adapters/AdapterProduct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/app/tmyclean/adapters/AdapterProduct;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 159
    const/4 v0, 0x0

    return v0
.end method
