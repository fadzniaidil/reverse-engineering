.class Lcom/app/tmyclean/fragments/FragmentCategory$1;
.super Ljava/lang/Object;
.source "FragmentCategory.java"

# interfaces
.implements Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/app/tmyclean/fragments/FragmentCategory;->onRefresh()V
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

    .line 83
    iput-object p1, p0, Lcom/app/tmyclean/fragments/FragmentCategory$1;->this$0:Lcom/app/tmyclean/fragments/FragmentCategory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh()V
    .locals 4

    .line 86
    iget-object v0, p0, Lcom/app/tmyclean/fragments/FragmentCategory$1;->this$0:Lcom/app/tmyclean/fragments/FragmentCategory;

    invoke-static {v0}, Lcom/app/tmyclean/fragments/FragmentCategory;->access$000(Lcom/app/tmyclean/fragments/FragmentCategory;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 87
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/app/tmyclean/fragments/FragmentCategory$1$1;

    invoke-direct {v1, p0}, Lcom/app/tmyclean/fragments/FragmentCategory$1$1;-><init>(Lcom/app/tmyclean/fragments/FragmentCategory$1;)V

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 100
    return-void
.end method
