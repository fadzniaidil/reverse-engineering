.class public Lcom/app/tmyclean/activities/ActivityHistory$getDataTask;
.super Landroid/os/AsyncTask;
.source "ActivityHistory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/app/tmyclean/activities/ActivityHistory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "getDataTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/app/tmyclean/activities/ActivityHistory;


# direct methods
.method public constructor <init>(Lcom/app/tmyclean/activities/ActivityHistory;)V
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

    .line 218
    iput-object p1, p0, Lcom/app/tmyclean/activities/ActivityHistory$getDataTask;->this$0:Lcom/app/tmyclean/activities/ActivityHistory;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "arg0"
        }
    .end annotation

    .line 217
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/app/tmyclean/activities/ActivityHistory$getDataTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .param p1, "arg0"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg0"
        }
    .end annotation

    .line 222
    iget-object v0, p0, Lcom/app/tmyclean/activities/ActivityHistory$getDataTask;->this$0:Lcom/app/tmyclean/activities/ActivityHistory;

    invoke-virtual {v0}, Lcom/app/tmyclean/activities/ActivityHistory;->getDataFromDatabase()V

    .line 223
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "result"
        }
    .end annotation

    .line 217
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/app/tmyclean/activities/ActivityHistory$getDataTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Void;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    .line 228
    sget-object v0, Lcom/app/tmyclean/activities/ActivityHistory;->id:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/app/tmyclean/activities/ActivityHistory$getDataTask;->this$0:Lcom/app/tmyclean/activities/ActivityHistory;

    iget-object v0, v0, Lcom/app/tmyclean/activities/ActivityHistory;->lyt_history:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 230
    iget-object v0, p0, Lcom/app/tmyclean/activities/ActivityHistory$getDataTask;->this$0:Lcom/app/tmyclean/activities/ActivityHistory;

    iget-object v0, v0, Lcom/app/tmyclean/activities/ActivityHistory;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/app/tmyclean/activities/ActivityHistory$getDataTask;->this$0:Lcom/app/tmyclean/activities/ActivityHistory;

    iget-object v1, v1, Lcom/app/tmyclean/activities/ActivityHistory;->adapterHistory:Lcom/app/tmyclean/adapters/AdapterHistory;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto :goto_0

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/app/tmyclean/activities/ActivityHistory$getDataTask;->this$0:Lcom/app/tmyclean/activities/ActivityHistory;

    iget-object v0, v0, Lcom/app/tmyclean/activities/ActivityHistory;->lyt_empty_history:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 234
    :goto_0
    return-void
.end method
