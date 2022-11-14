.class Lcom/app/tmyclean/activities/ActivityCart$4;
.super Ljava/lang/Object;
.source "ActivityCart.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/app/tmyclean/activities/ActivityCart;->showClearDialog(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/app/tmyclean/activities/ActivityCart;


# direct methods
.method constructor <init>(Lcom/app/tmyclean/activities/ActivityCart;)V
    .locals 0
    .param p1, "this$0"    # Lcom/app/tmyclean/activities/ActivityCart;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 192
    iput-object p1, p0, Lcom/app/tmyclean/activities/ActivityCart$4;->this$0:Lcom/app/tmyclean/activities/ActivityCart;

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

    .line 194
    iget-object v0, p0, Lcom/app/tmyclean/activities/ActivityCart$4;->this$0:Lcom/app/tmyclean/activities/ActivityCart;

    iget v0, v0, Lcom/app/tmyclean/activities/ActivityCart;->FLAG:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 201
    :pswitch_0
    iget-object v0, p0, Lcom/app/tmyclean/activities/ActivityCart$4;->this$0:Lcom/app/tmyclean/activities/ActivityCart;

    iget-object v0, v0, Lcom/app/tmyclean/activities/ActivityCart;->dbhelper:Lcom/app/tmyclean/utilities/DBHelper;

    iget-object v2, p0, Lcom/app/tmyclean/activities/ActivityCart$4;->this$0:Lcom/app/tmyclean/activities/ActivityCart;

    iget v2, v2, Lcom/app/tmyclean/activities/ActivityCart;->ID:I

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Lcom/app/tmyclean/utilities/DBHelper;->deleteData(J)V

    .line 202
    iget-object v0, p0, Lcom/app/tmyclean/activities/ActivityCart$4;->this$0:Lcom/app/tmyclean/activities/ActivityCart;

    invoke-virtual {v0}, Lcom/app/tmyclean/activities/ActivityCart;->clearData()V

    .line 203
    new-instance v0, Lcom/app/tmyclean/activities/ActivityCart$getDataTask;

    iget-object v2, p0, Lcom/app/tmyclean/activities/ActivityCart$4;->this$0:Lcom/app/tmyclean/activities/ActivityCart;

    invoke-direct {v0, v2}, Lcom/app/tmyclean/activities/ActivityCart$getDataTask;-><init>(Lcom/app/tmyclean/activities/ActivityCart;)V

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/app/tmyclean/activities/ActivityCart$getDataTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 196
    :pswitch_1
    iget-object v0, p0, Lcom/app/tmyclean/activities/ActivityCart$4;->this$0:Lcom/app/tmyclean/activities/ActivityCart;

    iget-object v0, v0, Lcom/app/tmyclean/activities/ActivityCart;->dbhelper:Lcom/app/tmyclean/utilities/DBHelper;

    invoke-virtual {v0}, Lcom/app/tmyclean/utilities/DBHelper;->deleteAllData()V

    .line 197
    iget-object v0, p0, Lcom/app/tmyclean/activities/ActivityCart$4;->this$0:Lcom/app/tmyclean/activities/ActivityCart;

    invoke-virtual {v0}, Lcom/app/tmyclean/activities/ActivityCart;->clearData()V

    .line 198
    new-instance v0, Lcom/app/tmyclean/activities/ActivityCart$getDataTask;

    iget-object v2, p0, Lcom/app/tmyclean/activities/ActivityCart$4;->this$0:Lcom/app/tmyclean/activities/ActivityCart;

    invoke-direct {v0, v2}, Lcom/app/tmyclean/activities/ActivityCart$getDataTask;-><init>(Lcom/app/tmyclean/activities/ActivityCart;)V

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/app/tmyclean/activities/ActivityCart$getDataTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 199
    nop

    .line 206
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
