.class Lcom/app/tmyclean/activities/ActivityHistory$4;
.super Ljava/lang/Object;
.source "ActivityHistory.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/app/tmyclean/activities/ActivityHistory;->showBottomSheetDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/app/tmyclean/activities/ActivityHistory;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/app/tmyclean/activities/ActivityHistory;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/app/tmyclean/activities/ActivityHistory;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$position"
        }
    .end annotation

    .line 327
    iput-object p1, p0, Lcom/app/tmyclean/activities/ActivityHistory$4;->this$0:Lcom/app/tmyclean/activities/ActivityHistory;

    iput p2, p0, Lcom/app/tmyclean/activities/ActivityHistory$4;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 330
    iget-object v0, p0, Lcom/app/tmyclean/activities/ActivityHistory$4;->this$0:Lcom/app/tmyclean/activities/ActivityHistory;

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Lcom/app/tmyclean/activities/ActivityHistory;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 331
    .local v0, "clipboard":Landroid/content/ClipboardManager;
    sget-object v1, Lcom/app/tmyclean/activities/ActivityHistory;->code:Ljava/util/ArrayList;

    iget v2, p0, Lcom/app/tmyclean/activities/ActivityHistory$4;->val$position:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    const-string v2, "Order Id"

    invoke-static {v2, v1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v1

    .line 332
    .local v1, "clip":Landroid/content/ClipData;
    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 333
    iget-object v2, p0, Lcom/app/tmyclean/activities/ActivityHistory$4;->this$0:Lcom/app/tmyclean/activities/ActivityHistory;

    const v3, 0x7f0f0072

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 334
    return-void
.end method
