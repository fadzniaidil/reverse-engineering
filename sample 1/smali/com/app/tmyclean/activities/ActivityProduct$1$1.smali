.class Lcom/app/tmyclean/activities/ActivityProduct$1$1;
.super Ljava/lang/Object;
.source "ActivityProduct.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/app/tmyclean/activities/ActivityProduct$1;->onRefresh()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/app/tmyclean/activities/ActivityProduct$1;


# direct methods
.method constructor <init>(Lcom/app/tmyclean/activities/ActivityProduct$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/app/tmyclean/activities/ActivityProduct$1;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    .line 95
    iput-object p1, p0, Lcom/app/tmyclean/activities/ActivityProduct$1$1;->this$1:Lcom/app/tmyclean/activities/ActivityProduct$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 98
    iget-object v0, p0, Lcom/app/tmyclean/activities/ActivityProduct$1$1;->this$1:Lcom/app/tmyclean/activities/ActivityProduct$1;

    iget-object v0, v0, Lcom/app/tmyclean/activities/ActivityProduct$1;->this$0:Lcom/app/tmyclean/activities/ActivityProduct;

    invoke-static {v0}, Lcom/app/tmyclean/utilities/Utils;->isNetworkAvailable(Landroid/app/Activity;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/app/tmyclean/activities/ActivityProduct$1$1;->this$1:Lcom/app/tmyclean/activities/ActivityProduct$1;

    iget-object v0, v0, Lcom/app/tmyclean/activities/ActivityProduct$1;->this$0:Lcom/app/tmyclean/activities/ActivityProduct;

    iget-object v0, v0, Lcom/app/tmyclean/activities/ActivityProduct;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 100
    iget-object v0, p0, Lcom/app/tmyclean/activities/ActivityProduct$1$1;->this$1:Lcom/app/tmyclean/activities/ActivityProduct$1;

    iget-object v0, v0, Lcom/app/tmyclean/activities/ActivityProduct$1;->this$0:Lcom/app/tmyclean/activities/ActivityProduct;

    invoke-static {v0}, Lcom/app/tmyclean/activities/ActivityProduct;->access$100(Lcom/app/tmyclean/activities/ActivityProduct;)V

    goto :goto_0

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/app/tmyclean/activities/ActivityProduct$1$1;->this$1:Lcom/app/tmyclean/activities/ActivityProduct$1;

    iget-object v0, v0, Lcom/app/tmyclean/activities/ActivityProduct$1;->this$0:Lcom/app/tmyclean/activities/ActivityProduct;

    iget-object v0, v0, Lcom/app/tmyclean/activities/ActivityProduct;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 103
    iget-object v0, p0, Lcom/app/tmyclean/activities/ActivityProduct$1$1;->this$1:Lcom/app/tmyclean/activities/ActivityProduct$1;

    iget-object v0, v0, Lcom/app/tmyclean/activities/ActivityProduct$1;->this$0:Lcom/app/tmyclean/activities/ActivityProduct;

    invoke-virtual {v0}, Lcom/app/tmyclean/activities/ActivityProduct;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/app/tmyclean/activities/ActivityProduct$1$1;->this$1:Lcom/app/tmyclean/activities/ActivityProduct$1;

    iget-object v2, v2, Lcom/app/tmyclean/activities/ActivityProduct$1;->this$0:Lcom/app/tmyclean/activities/ActivityProduct;

    invoke-virtual {v2}, Lcom/app/tmyclean/activities/ActivityProduct;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f007b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 106
    :goto_0
    return-void
.end method
