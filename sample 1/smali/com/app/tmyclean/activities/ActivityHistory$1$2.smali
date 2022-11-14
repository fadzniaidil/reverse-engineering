.class Lcom/app/tmyclean/activities/ActivityHistory$1$2;
.super Ljava/lang/Object;
.source "ActivityHistory.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/app/tmyclean/activities/ActivityHistory$1;->onLongClick(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/app/tmyclean/activities/ActivityHistory$1;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/app/tmyclean/activities/ActivityHistory$1;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/app/tmyclean/activities/ActivityHistory$1;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$position"
        }
    .end annotation

    .line 126
    iput-object p1, p0, Lcom/app/tmyclean/activities/ActivityHistory$1$2;->this$1:Lcom/app/tmyclean/activities/ActivityHistory$1;

    iput p2, p0, Lcom/app/tmyclean/activities/ActivityHistory$1$2;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 129
    iget-object v0, p0, Lcom/app/tmyclean/activities/ActivityHistory$1$2;->this$1:Lcom/app/tmyclean/activities/ActivityHistory$1;

    iget-object v0, v0, Lcom/app/tmyclean/activities/ActivityHistory$1;->this$0:Lcom/app/tmyclean/activities/ActivityHistory;

    sget-object v1, Lcom/app/tmyclean/activities/ActivityHistory;->id:Ljava/util/ArrayList;

    iget v2, p0, Lcom/app/tmyclean/activities/ActivityHistory$1$2;->val$position:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/app/tmyclean/activities/ActivityHistory;->showClearDialog(II)V

    .line 130
    return-void
.end method
