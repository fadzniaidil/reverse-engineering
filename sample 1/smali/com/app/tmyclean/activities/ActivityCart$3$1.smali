.class Lcom/app/tmyclean/activities/ActivityCart$3$1;
.super Ljava/lang/Object;
.source "ActivityCart.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/app/tmyclean/activities/ActivityCart$3;->onClick(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/app/tmyclean/activities/ActivityCart$3;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/app/tmyclean/activities/ActivityCart$3;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/app/tmyclean/activities/ActivityCart$3;
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

    .line 132
    iput-object p1, p0, Lcom/app/tmyclean/activities/ActivityCart$3$1;->this$1:Lcom/app/tmyclean/activities/ActivityCart$3;

    iput p2, p0, Lcom/app/tmyclean/activities/ActivityCart$3$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 135
    iget-object v0, p0, Lcom/app/tmyclean/activities/ActivityCart$3$1;->this$1:Lcom/app/tmyclean/activities/ActivityCart$3;

    iget-object v0, v0, Lcom/app/tmyclean/activities/ActivityCart$3;->this$0:Lcom/app/tmyclean/activities/ActivityCart;

    sget-object v1, Lcom/app/tmyclean/activities/ActivityCart;->product_id:Ljava/util/ArrayList;

    iget v2, p0, Lcom/app/tmyclean/activities/ActivityCart$3$1;->val$position:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/app/tmyclean/activities/ActivityCart;->showClearDialog(II)V

    .line 136
    return-void
.end method
