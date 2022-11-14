.class Lcom/app/tmyclean/activities/ActivityHistory$2;
.super Ljava/lang/Object;
.source "ActivityHistory.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/app/tmyclean/activities/ActivityHistory;->showClearDialog(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/app/tmyclean/activities/ActivityHistory;


# direct methods
.method constructor <init>(Lcom/app/tmyclean/activities/ActivityHistory;)V
    .locals 0
    .param p1, "this$0"    # Lcom/app/tmyclean/activities/ActivityHistory;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 181
    iput-object p1, p0, Lcom/app/tmyclean/activities/ActivityHistory$2;->this$0:Lcom/app/tmyclean/activities/ActivityHistory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dialog",
            "which"
        }
    .end annotation

    .line 183
    iget-object v0, p0, Lcom/app/tmyclean/activities/ActivityHistory$2;->this$0:Lcom/app/tmyclean/activities/ActivityHistory;

    iget v0, v0, Lcom/app/tmyclean/activities/ActivityHistory;->FLAG:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 190
    :pswitch_0
    iget-object v0, p0, Lcom/app/tmyclean/activities/ActivityHistory$2;->this$0:Lcom/app/tmyclean/activities/ActivityHistory;

    iget-object v0, v0, Lcom/app/tmyclean/activities/ActivityHistory;->dbhelper:Lcom/app/tmyclean/utilities/DBHelper;

    iget-object v2, p0, Lcom/app/tmyclean/activities/ActivityHistory$2;->this$0:Lcom/app/tmyclean/activities/ActivityHistory;

    iget v2, v2, Lcom/app/tmyclean/activities/ActivityHistory;->ID:I

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Lcom/app/tmyclean/utilities/DBHelper;->deleteDataHistory(J)V

    .line 191
    iget-object v0, p0, Lcom/app/tmyclean/activities/ActivityHistory$2;->this$0:Lcom/app/tmyclean/activities/ActivityHistory;

    invoke-virtual {v0}, Lcom/app/tmyclean/activities/ActivityHistory;->clearData()V

    .line 192
    new-instance v0, Lcom/app/tmyclean/activities/ActivityHistory$getDataTask;

    iget-object v2, p0, Lcom/app/tmyclean/activities/ActivityHistory$2;->this$0:Lcom/app/tmyclean/activities/ActivityHistory;

    invoke-direct {v0, v2}, Lcom/app/tmyclean/activities/ActivityHistory$getDataTask;-><init>(Lcom/app/tmyclean/activities/ActivityHistory;)V

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/app/tmyclean/activities/ActivityHistory$getDataTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 185
    :pswitch_1
    iget-object v0, p0, Lcom/app/tmyclean/activities/ActivityHistory$2;->this$0:Lcom/app/tmyclean/activities/ActivityHistory;

    iget-object v0, v0, Lcom/app/tmyclean/activities/ActivityHistory;->dbhelper:Lcom/app/tmyclean/utilities/DBHelper;

    invoke-virtual {v0}, Lcom/app/tmyclean/utilities/DBHelper;->deleteAllDataHistory()V

    .line 186
    iget-object v0, p0, Lcom/app/tmyclean/activities/ActivityHistory$2;->this$0:Lcom/app/tmyclean/activities/ActivityHistory;

    invoke-virtual {v0}, Lcom/app/tmyclean/activities/ActivityHistory;->clearData()V

    .line 187
    new-instance v0, Lcom/app/tmyclean/activities/ActivityHistory$getDataTask;

    iget-object v2, p0, Lcom/app/tmyclean/activities/ActivityHistory$2;->this$0:Lcom/app/tmyclean/activities/ActivityHistory;

    invoke-direct {v0, v2}, Lcom/app/tmyclean/activities/ActivityHistory$getDataTask;-><init>(Lcom/app/tmyclean/activities/ActivityHistory;)V

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/app/tmyclean/activities/ActivityHistory$getDataTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 188
    nop

    .line 195
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
