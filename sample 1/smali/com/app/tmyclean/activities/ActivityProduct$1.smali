.class Lcom/app/tmyclean/activities/ActivityProduct$1;
.super Ljava/lang/Object;
.source "ActivityProduct.java"

# interfaces
.implements Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/app/tmyclean/activities/ActivityProduct;->onRefresh()V
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

    .line 91
    iput-object p1, p0, Lcom/app/tmyclean/activities/ActivityProduct$1;->this$0:Lcom/app/tmyclean/activities/ActivityProduct;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh()V
    .locals 4

    .line 94
    iget-object v0, p0, Lcom/app/tmyclean/activities/ActivityProduct$1;->this$0:Lcom/app/tmyclean/activities/ActivityProduct;

    invoke-static {v0}, Lcom/app/tmyclean/activities/ActivityProduct;->access$000(Lcom/app/tmyclean/activities/ActivityProduct;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 95
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/app/tmyclean/activities/ActivityProduct$1$1;

    invoke-direct {v1, p0}, Lcom/app/tmyclean/activities/ActivityProduct$1$1;-><init>(Lcom/app/tmyclean/activities/ActivityProduct$1;)V

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 108
    return-void
.end method
