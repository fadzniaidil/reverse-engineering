.class Lcom/app/tmyclean/activities/ActivityHistory$1$1;
.super Ljava/lang/Object;
.source "ActivityHistory.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/app/tmyclean/activities/ActivityHistory$1;->onClick(Landroid/view/View;I)V
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

    .line 116
    iput-object p1, p0, Lcom/app/tmyclean/activities/ActivityHistory$1$1;->this$1:Lcom/app/tmyclean/activities/ActivityHistory$1;

    iput p2, p0, Lcom/app/tmyclean/activities/ActivityHistory$1$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 119
    iget-object v0, p0, Lcom/app/tmyclean/activities/ActivityHistory$1$1;->this$1:Lcom/app/tmyclean/activities/ActivityHistory$1;

    iget-object v0, v0, Lcom/app/tmyclean/activities/ActivityHistory$1;->this$0:Lcom/app/tmyclean/activities/ActivityHistory;

    iget v1, p0, Lcom/app/tmyclean/activities/ActivityHistory$1$1;->val$position:I

    invoke-static {v0, v1}, Lcom/app/tmyclean/activities/ActivityHistory;->access$000(Lcom/app/tmyclean/activities/ActivityHistory;I)V

    .line 120
    return-void
.end method
