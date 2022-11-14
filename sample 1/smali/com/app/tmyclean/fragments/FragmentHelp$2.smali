.class Lcom/app/tmyclean/fragments/FragmentHelp$2;
.super Ljava/lang/Object;
.source "FragmentHelp.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/app/tmyclean/fragments/FragmentHelp;->fetchContacts()V
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
.field final synthetic this$0:Lcom/app/tmyclean/fragments/FragmentHelp;


# direct methods
.method constructor <init>(Lcom/app/tmyclean/fragments/FragmentHelp;)V
    .locals 0
    .param p1, "this$0"    # Lcom/app/tmyclean/fragments/FragmentHelp;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 105
    iput-object p1, p0, Lcom/app/tmyclean/fragments/FragmentHelp$2;->this$0:Lcom/app/tmyclean/fragments/FragmentHelp;

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

    .line 105
    check-cast p1, Lorg/json/JSONArray;

    invoke-virtual {p0, p1}, Lcom/app/tmyclean/fragments/FragmentHelp$2;->onResponse(Lorg/json/JSONArray;)V

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

    .line 108
    if-nez p1, :cond_0

    .line 109
    iget-object v0, p0, Lcom/app/tmyclean/fragments/FragmentHelp$2;->this$0:Lcom/app/tmyclean/fragments/FragmentHelp;

    invoke-virtual {v0}, Lcom/app/tmyclean/fragments/FragmentHelp;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/app/tmyclean/fragments/FragmentHelp$2;->this$0:Lcom/app/tmyclean/fragments/FragmentHelp;

    invoke-virtual {v1}, Lcom/app/tmyclean/fragments/FragmentHelp;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f005e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 110
    return-void

    .line 113
    :cond_0
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/app/tmyclean/fragments/FragmentHelp$2$1;

    invoke-direct {v2, p0}, Lcom/app/tmyclean/fragments/FragmentHelp$2$1;-><init>(Lcom/app/tmyclean/fragments/FragmentHelp$2;)V

    .line 114
    invoke-virtual {v2}, Lcom/app/tmyclean/fragments/FragmentHelp$2$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 113
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 117
    .local v0, "items":Ljava/util/List;, "Ljava/util/List<Lcom/app/tmyclean/models/Help;>;"
    iget-object v1, p0, Lcom/app/tmyclean/fragments/FragmentHelp$2;->this$0:Lcom/app/tmyclean/fragments/FragmentHelp;

    invoke-static {v1}, Lcom/app/tmyclean/fragments/FragmentHelp;->access$000(Lcom/app/tmyclean/fragments/FragmentHelp;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 118
    iget-object v1, p0, Lcom/app/tmyclean/fragments/FragmentHelp$2;->this$0:Lcom/app/tmyclean/fragments/FragmentHelp;

    invoke-static {v1}, Lcom/app/tmyclean/fragments/FragmentHelp;->access$000(Lcom/app/tmyclean/fragments/FragmentHelp;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 121
    iget-object v1, p0, Lcom/app/tmyclean/fragments/FragmentHelp$2;->this$0:Lcom/app/tmyclean/fragments/FragmentHelp;

    invoke-static {v1}, Lcom/app/tmyclean/fragments/FragmentHelp;->access$200(Lcom/app/tmyclean/fragments/FragmentHelp;)Lcom/app/tmyclean/adapters/AdapterHelp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/app/tmyclean/adapters/AdapterHelp;->notifyDataSetChanged()V

    .line 122
    return-void
.end method
