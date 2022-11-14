.class Lcom/app/tmyclean/fragments/FragmentHelp$4;
.super Ljava/lang/Object;
.source "FragmentHelp.java"

# interfaces
.implements Landroidx/appcompat/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/app/tmyclean/fragments/FragmentHelp;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/app/tmyclean/fragments/FragmentHelp;


# direct methods
.method constructor <init>(Lcom/app/tmyclean/fragments/FragmentHelp;)V
    .locals 0
    .param p1, "this$0"    # Lcom/app/tmyclean/fragments/FragmentHelp;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 145
    iput-object p1, p0, Lcom/app/tmyclean/fragments/FragmentHelp$4;->this$0:Lcom/app/tmyclean/fragments/FragmentHelp;

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

    .line 156
    iget-object v0, p0, Lcom/app/tmyclean/fragments/FragmentHelp$4;->this$0:Lcom/app/tmyclean/fragments/FragmentHelp;

    invoke-static {v0}, Lcom/app/tmyclean/fragments/FragmentHelp;->access$200(Lcom/app/tmyclean/fragments/FragmentHelp;)Lcom/app/tmyclean/adapters/AdapterHelp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/app/tmyclean/adapters/AdapterHelp;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 157
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

    .line 149
    iget-object v0, p0, Lcom/app/tmyclean/fragments/FragmentHelp$4;->this$0:Lcom/app/tmyclean/fragments/FragmentHelp;

    invoke-static {v0}, Lcom/app/tmyclean/fragments/FragmentHelp;->access$200(Lcom/app/tmyclean/fragments/FragmentHelp;)Lcom/app/tmyclean/adapters/AdapterHelp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/app/tmyclean/adapters/AdapterHelp;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 150
    const/4 v0, 0x0

    return v0
.end method
