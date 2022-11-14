.class Lcom/app/tmyclean/adapters/AdapterHelp$1;
.super Landroid/widget/Filter;
.source "AdapterHelp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/app/tmyclean/adapters/AdapterHelp;->getFilter()Landroid/widget/Filter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/app/tmyclean/adapters/AdapterHelp;


# direct methods
.method constructor <init>(Lcom/app/tmyclean/adapters/AdapterHelp;)V
    .locals 0
    .param p1, "this$0"    # Lcom/app/tmyclean/adapters/AdapterHelp;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 70
    iput-object p1, p0, Lcom/app/tmyclean/adapters/AdapterHelp$1;->this$0:Lcom/app/tmyclean/adapters/AdapterHelp;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 6
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "charSequence"
        }
    .end annotation

    .line 73
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, "charString":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 75
    iget-object v1, p0, Lcom/app/tmyclean/adapters/AdapterHelp$1;->this$0:Lcom/app/tmyclean/adapters/AdapterHelp;

    invoke-static {v1}, Lcom/app/tmyclean/adapters/AdapterHelp;->access$200(Lcom/app/tmyclean/adapters/AdapterHelp;)Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/app/tmyclean/adapters/AdapterHelp;->access$002(Lcom/app/tmyclean/adapters/AdapterHelp;Ljava/util/List;)Ljava/util/List;

    goto :goto_1

    .line 77
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 78
    .local v1, "filteredList":Ljava/util/List;, "Ljava/util/List<Lcom/app/tmyclean/models/Help;>;"
    iget-object v2, p0, Lcom/app/tmyclean/adapters/AdapterHelp$1;->this$0:Lcom/app/tmyclean/adapters/AdapterHelp;

    invoke-static {v2}, Lcom/app/tmyclean/adapters/AdapterHelp;->access$200(Lcom/app/tmyclean/adapters/AdapterHelp;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/app/tmyclean/models/Help;

    .line 79
    .local v3, "row":Lcom/app/tmyclean/models/Help;
    invoke-virtual {v3}, Lcom/app/tmyclean/models/Help;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 80
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    .end local v3    # "row":Lcom/app/tmyclean/models/Help;
    :cond_1
    goto :goto_0

    .line 83
    :cond_2
    iget-object v2, p0, Lcom/app/tmyclean/adapters/AdapterHelp$1;->this$0:Lcom/app/tmyclean/adapters/AdapterHelp;

    invoke-static {v2, v1}, Lcom/app/tmyclean/adapters/AdapterHelp;->access$002(Lcom/app/tmyclean/adapters/AdapterHelp;Ljava/util/List;)Ljava/util/List;

    .line 86
    .end local v1    # "filteredList":Ljava/util/List;, "Ljava/util/List<Lcom/app/tmyclean/models/Help;>;"
    :goto_1
    new-instance v1, Landroid/widget/Filter$FilterResults;

    invoke-direct {v1}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 87
    .local v1, "filterResults":Landroid/widget/Filter$FilterResults;
    iget-object v2, p0, Lcom/app/tmyclean/adapters/AdapterHelp$1;->this$0:Lcom/app/tmyclean/adapters/AdapterHelp;

    invoke-static {v2}, Lcom/app/tmyclean/adapters/AdapterHelp;->access$000(Lcom/app/tmyclean/adapters/AdapterHelp;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 88
    return-object v1
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 2
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "filterResults"    # Landroid/widget/Filter$FilterResults;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "charSequence",
            "filterResults"
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lcom/app/tmyclean/adapters/AdapterHelp$1;->this$0:Lcom/app/tmyclean/adapters/AdapterHelp;

    iget-object v1, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/app/tmyclean/adapters/AdapterHelp;->access$002(Lcom/app/tmyclean/adapters/AdapterHelp;Ljava/util/List;)Ljava/util/List;

    .line 94
    iget-object v0, p0, Lcom/app/tmyclean/adapters/AdapterHelp$1;->this$0:Lcom/app/tmyclean/adapters/AdapterHelp;

    invoke-virtual {v0}, Lcom/app/tmyclean/adapters/AdapterHelp;->notifyDataSetChanged()V

    .line 95
    return-void
.end method
