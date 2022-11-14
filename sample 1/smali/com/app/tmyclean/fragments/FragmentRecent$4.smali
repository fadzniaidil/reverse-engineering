.class Lcom/app/tmyclean/fragments/FragmentRecent$4;
.super Ljava/lang/Object;
.source "FragmentRecent.java"

# interfaces
.implements Landroidx/appcompat/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/app/tmyclean/fragments/FragmentRecent;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/app/tmyclean/fragments/FragmentRecent;


# direct methods
.method constructor <init>(Lcom/app/tmyclean/fragments/FragmentRecent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/app/tmyclean/fragments/FragmentRecent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 150
    iput-object p1, p0, Lcom/app/tmyclean/fragments/FragmentRecent$4;->this$0:Lcom/app/tmyclean/fragments/FragmentRecent;

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

    .line 161
    iget-object v0, p0, Lcom/app/tmyclean/fragments/FragmentRecent$4;->this$0:Lcom/app/tmyclean/fragments/FragmentRecent;

    invoke-static {v0}, Lcom/app/tmyclean/fragments/FragmentRecent;->access$200(Lcom/app/tmyclean/fragments/FragmentRecent;)Lcom/app/tmyclean/adapters/AdapterProduct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/app/tmyclean/adapters/AdapterProduct;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 162
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

    .line 154
    iget-object v0, p0, Lcom/app/tmyclean/fragments/FragmentRecent$4;->this$0:Lcom/app/tmyclean/fragments/FragmentRecent;

    invoke-static {v0}, Lcom/app/tmyclean/fragments/FragmentRecent;->access$200(Lcom/app/tmyclean/fragments/FragmentRecent;)Lcom/app/tmyclean/adapters/AdapterProduct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/app/tmyclean/adapters/AdapterProduct;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 155
    const/4 v0, 0x0

    return v0
.end method
