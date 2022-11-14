.class Lcom/app/tmyclean/fragments/FragmentCategory$4;
.super Ljava/lang/Object;
.source "FragmentCategory.java"

# interfaces
.implements Landroidx/appcompat/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/app/tmyclean/fragments/FragmentCategory;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/app/tmyclean/fragments/FragmentCategory;


# direct methods
.method constructor <init>(Lcom/app/tmyclean/fragments/FragmentCategory;)V
    .locals 0
    .param p1, "this$0"    # Lcom/app/tmyclean/fragments/FragmentCategory;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 147
    iput-object p1, p0, Lcom/app/tmyclean/fragments/FragmentCategory$4;->this$0:Lcom/app/tmyclean/fragments/FragmentCategory;

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

    .line 158
    iget-object v0, p0, Lcom/app/tmyclean/fragments/FragmentCategory$4;->this$0:Lcom/app/tmyclean/fragments/FragmentCategory;

    invoke-static {v0}, Lcom/app/tmyclean/fragments/FragmentCategory;->access$200(Lcom/app/tmyclean/fragments/FragmentCategory;)Lcom/app/tmyclean/adapters/AdapterCategory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/app/tmyclean/adapters/AdapterCategory;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 159
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

    .line 151
    iget-object v0, p0, Lcom/app/tmyclean/fragments/FragmentCategory$4;->this$0:Lcom/app/tmyclean/fragments/FragmentCategory;

    invoke-static {v0}, Lcom/app/tmyclean/fragments/FragmentCategory;->access$200(Lcom/app/tmyclean/fragments/FragmentCategory;)Lcom/app/tmyclean/adapters/AdapterCategory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/app/tmyclean/adapters/AdapterCategory;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 152
    const/4 v0, 0x0

    return v0
.end method
