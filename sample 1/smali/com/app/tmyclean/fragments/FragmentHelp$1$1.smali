.class Lcom/app/tmyclean/fragments/FragmentHelp$1$1;
.super Ljava/lang/Object;
.source "FragmentHelp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/app/tmyclean/fragments/FragmentHelp$1;->onRefresh()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/app/tmyclean/fragments/FragmentHelp$1;


# direct methods
.method constructor <init>(Lcom/app/tmyclean/fragments/FragmentHelp$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/app/tmyclean/fragments/FragmentHelp$1;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    .line 87
    iput-object p1, p0, Lcom/app/tmyclean/fragments/FragmentHelp$1$1;->this$1:Lcom/app/tmyclean/fragments/FragmentHelp$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 90
    iget-object v0, p0, Lcom/app/tmyclean/fragments/FragmentHelp$1$1;->this$1:Lcom/app/tmyclean/fragments/FragmentHelp$1;

    iget-object v0, v0, Lcom/app/tmyclean/fragments/FragmentHelp$1;->this$0:Lcom/app/tmyclean/fragments/FragmentHelp;

    invoke-virtual {v0}, Lcom/app/tmyclean/fragments/FragmentHelp;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/app/tmyclean/utilities/Utils;->isNetworkAvailable(Landroid/app/Activity;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/app/tmyclean/fragments/FragmentHelp$1$1;->this$1:Lcom/app/tmyclean/fragments/FragmentHelp$1;

    iget-object v0, v0, Lcom/app/tmyclean/fragments/FragmentHelp$1;->this$0:Lcom/app/tmyclean/fragments/FragmentHelp;

    iget-object v0, v0, Lcom/app/tmyclean/fragments/FragmentHelp;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 92
    iget-object v0, p0, Lcom/app/tmyclean/fragments/FragmentHelp$1$1;->this$1:Lcom/app/tmyclean/fragments/FragmentHelp$1;

    iget-object v0, v0, Lcom/app/tmyclean/fragments/FragmentHelp$1;->this$0:Lcom/app/tmyclean/fragments/FragmentHelp;

    invoke-static {v0}, Lcom/app/tmyclean/fragments/FragmentHelp;->access$100(Lcom/app/tmyclean/fragments/FragmentHelp;)V

    goto :goto_0

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/app/tmyclean/fragments/FragmentHelp$1$1;->this$1:Lcom/app/tmyclean/fragments/FragmentHelp$1;

    iget-object v0, v0, Lcom/app/tmyclean/fragments/FragmentHelp$1;->this$0:Lcom/app/tmyclean/fragments/FragmentHelp;

    iget-object v0, v0, Lcom/app/tmyclean/fragments/FragmentHelp;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 95
    iget-object v0, p0, Lcom/app/tmyclean/fragments/FragmentHelp$1$1;->this$1:Lcom/app/tmyclean/fragments/FragmentHelp$1;

    iget-object v0, v0, Lcom/app/tmyclean/fragments/FragmentHelp$1;->this$0:Lcom/app/tmyclean/fragments/FragmentHelp;

    invoke-virtual {v0}, Lcom/app/tmyclean/fragments/FragmentHelp;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v2, p0, Lcom/app/tmyclean/fragments/FragmentHelp$1$1;->this$1:Lcom/app/tmyclean/fragments/FragmentHelp$1;

    iget-object v2, v2, Lcom/app/tmyclean/fragments/FragmentHelp$1;->this$0:Lcom/app/tmyclean/fragments/FragmentHelp;

    invoke-virtual {v2}, Lcom/app/tmyclean/fragments/FragmentHelp;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f007b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 98
    :goto_0
    return-void
.end method
