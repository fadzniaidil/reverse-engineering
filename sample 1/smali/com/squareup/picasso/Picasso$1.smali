.class final Lcom/squareup/picasso/Picasso$1;
.super Landroid/os/Handler;
.source "Picasso.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/picasso/Picasso;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Looper;

    .line 109
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 111
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    const/4 v0, 0x0

    .line 138
    .local v0, "batch":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/picasso/Action;>;"
    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown handler message received: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 130
    .end local v0    # "batch":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/picasso/Action;>;"
    :sswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    .line 132
    .restart local v0    # "batch":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/picasso/Action;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "n":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 133
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/squareup/picasso/Action;

    .line 134
    .local v3, "action":Lcom/squareup/picasso/Action;
    iget-object v4, v3, Lcom/squareup/picasso/Action;->picasso:Lcom/squareup/picasso/Picasso;

    invoke-virtual {v4, v3}, Lcom/squareup/picasso/Picasso;->resumeAction(Lcom/squareup/picasso/Action;)V

    .line 132
    .end local v3    # "action":Lcom/squareup/picasso/Action;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 136
    .end local v1    # "i":I
    .end local v2    # "n":I
    :cond_0
    goto :goto_2

    .line 113
    .end local v0    # "batch":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/picasso/Action;>;"
    :sswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    .line 115
    .local v0, "batch":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/picasso/BitmapHunter;>;"
    const/4 v1, 0x0

    .restart local v1    # "i":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .restart local v2    # "n":I
    :goto_1
    if-ge v1, v2, :cond_1

    .line 116
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/squareup/picasso/BitmapHunter;

    .line 117
    .local v3, "hunter":Lcom/squareup/picasso/BitmapHunter;
    iget-object v4, v3, Lcom/squareup/picasso/BitmapHunter;->picasso:Lcom/squareup/picasso/Picasso;

    invoke-virtual {v4, v3}, Lcom/squareup/picasso/Picasso;->complete(Lcom/squareup/picasso/BitmapHunter;)V

    .line 115
    .end local v3    # "hunter":Lcom/squareup/picasso/BitmapHunter;
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 119
    .end local v1    # "i":I
    .end local v2    # "n":I
    :cond_1
    goto :goto_2

    .line 122
    .end local v0    # "batch":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/picasso/BitmapHunter;>;"
    :sswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/squareup/picasso/Action;

    .line 123
    .local v0, "action":Lcom/squareup/picasso/Action;
    invoke-virtual {v0}, Lcom/squareup/picasso/Action;->getPicasso()Lcom/squareup/picasso/Picasso;

    move-result-object v1

    iget-boolean v1, v1, Lcom/squareup/picasso/Picasso;->loggingEnabled:Z

    if-eqz v1, :cond_2

    .line 124
    iget-object v1, v0, Lcom/squareup/picasso/Action;->request:Lcom/squareup/picasso/Request;

    invoke-virtual {v1}, Lcom/squareup/picasso/Request;->logId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Main"

    const-string v3, "canceled"

    const-string v4, "target got garbage collected"

    invoke-static {v2, v3, v1, v4}, Lcom/squareup/picasso/Utils;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    :cond_2
    iget-object v1, v0, Lcom/squareup/picasso/Action;->picasso:Lcom/squareup/picasso/Picasso;

    invoke-virtual {v0}, Lcom/squareup/picasso/Action;->getTarget()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/squareup/picasso/Picasso;->access$000(Lcom/squareup/picasso/Picasso;Ljava/lang/Object;)V

    .line 127
    nop

    .line 140
    .end local v0    # "action":Lcom/squareup/picasso/Action;
    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_2
        0x8 -> :sswitch_1
        0xd -> :sswitch_0
    .end sparse-switch
.end method
