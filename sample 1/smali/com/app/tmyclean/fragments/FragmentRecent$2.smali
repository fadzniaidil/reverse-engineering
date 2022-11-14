.class Lcom/app/tmyclean/fragments/FragmentRecent$2;
.super Ljava/lang/Object;
.source "FragmentRecent.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/app/tmyclean/fragments/FragmentRecent;->fetchData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener<",
        "Lorg/json/JSONArray;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/app/tmyclean/fragments/FragmentRecent;


# direct methods
.method constructor <init>(Lcom/app/tmyclean/fragments/FragmentRecent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/app/tmyclean/fragments/FragmentRecent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 107
    iput-object p1, p0, Lcom/app/tmyclean/fragments/FragmentRecent$2;->this$0:Lcom/app/tmyclean/fragments/FragmentRecent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "response"
        }
    .end annotation

    .line 107
    check-cast p1, Lorg/json/JSONArray;

    invoke-virtual {p0, p1}, Lcom/app/tmyclean/fragments/FragmentRecent$2;->onResponse(Lorg/json/JSONArray;)V

    return-void
.end method

.method public onResponse(Lorg/json/JSONArray;)V
    .locals 3
    .param p1, "response"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "response"
        }
    .end annotation

    .line 110
    if-nez p1, :cond_0

    .line 111
    iget-object v0, p0, Lcom/app/tmyclean/fragments/FragmentRecent$2;->this$0:Lcom/app/tmyclean/fragments/FragmentRecent;

    invoke-virtual {v0}, Lcom/app/tmyclean/fragments/FragmentRecent;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/app/tmyclean/fragments/FragmentRecent$2;->this$0:Lcom/app/tmyclean/fragments/FragmentRecent;

    invoke-virtual {v1}, Lcom/app/tmyclean/fragments/FragmentRecent;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f005e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 112
    return-void

    .line 115
    :cond_0
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/app/tmyclean/fragments/FragmentRecent$2$1;

    invoke-direct {v2, p0}, Lcom/app/tmyclean/fragments/FragmentRecent$2$1;-><init>(Lcom/app/tmyclean/fragments/FragmentRecent$2;)V

    .line 116
    invoke-virtual {v2}, Lcom/app/tmyclean/fragments/FragmentRecent$2$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 115
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 119
    .local v0, "items":Ljava/util/List;, "Ljava/util/List<Lcom/app/tmyclean/models/Product;>;"
    iget-object v1, p0, Lcom/app/tmyclean/fragments/FragmentRecent$2;->this$0:Lcom/app/tmyclean/fragments/FragmentRecent;

    invoke-static {v1}, Lcom/app/tmyclean/fragments/FragmentRecent;->access$000(Lcom/app/tmyclean/fragments/FragmentRecent;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 120
    iget-object v1, p0, Lcom/app/tmyclean/fragments/FragmentRecent$2;->this$0:Lcom/app/tmyclean/fragments/FragmentRecent;

    invoke-static {v1}, Lcom/app/tmyclean/fragments/FragmentRecent;->access$000(Lcom/app/tmyclean/fragments/FragmentRecent;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 123
    iget-object v1, p0, Lcom/app/tmyclean/fragments/FragmentRecent$2;->this$0:Lcom/app/tmyclean/fragments/FragmentRecent;

    invoke-static {v1}, Lcom/app/tmyclean/fragments/FragmentRecent;->access$200(Lcom/app/tmyclean/fragments/FragmentRecent;)Lcom/app/tmyclean/adapters/AdapterProduct;

    move-result-object v1

    invoke-virtual {v1}, Lcom/app/tmyclean/adapters/AdapterProduct;->notifyDataSetChanged()V

    .line 125
    iget-object v1, p0, Lcom/app/tmyclean/fragments/FragmentRecent$2;->this$0:Lcom/app/tmyclean/fragments/FragmentRecent;

    iget-object v1, v1, Lcom/app/tmyclean/fragments/FragmentRecent;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 126
    return-void
.end method
