.class Lcom/squareup/picasso/DeferredRequestCreator;
.super Ljava/lang/Object;
.source "DeferredRequestCreator.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field callback:Lcom/squareup/picasso/Callback;

.field final creator:Lcom/squareup/picasso/RequestCreator;

.field final target:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/squareup/picasso/RequestCreator;Landroid/widget/ImageView;)V
    .locals 1
    .param p1, "creator"    # Lcom/squareup/picasso/RequestCreator;
    .param p2, "target"    # Landroid/widget/ImageView;

    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/squareup/picasso/DeferredRequestCreator;-><init>(Lcom/squareup/picasso/RequestCreator;Landroid/widget/ImageView;Lcom/squareup/picasso/Callback;)V

    .line 31
    return-void
.end method

.method constructor <init>(Lcom/squareup/picasso/RequestCreator;Landroid/widget/ImageView;Lcom/squareup/picasso/Callback;)V
    .locals 1
    .param p1, "creator"    # Lcom/squareup/picasso/RequestCreator;
    .param p2, "target"    # Landroid/widget/ImageView;
    .param p3, "callback"    # Lcom/squareup/picasso/Callback;

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/squareup/picasso/DeferredRequestCreator;->creator:Lcom/squareup/picasso/RequestCreator;

    .line 35
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/squareup/picasso/DeferredRequestCreator;->target:Ljava/lang/ref/WeakReference;

    .line 36
    iput-object p3, p0, Lcom/squareup/picasso/DeferredRequestCreator;->callback:Lcom/squareup/picasso/Callback;

    .line 37
    invoke-virtual {p2}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 38
    return-void
.end method


# virtual methods
.method cancel()V
    .locals 3

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/squareup/picasso/DeferredRequestCreator;->callback:Lcom/squareup/picasso/Callback;

    .line 65
    iget-object v0, p0, Lcom/squareup/picasso/DeferredRequestCreator;->target:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 66
    .local v0, "target":Landroid/widget/ImageView;
    if-nez v0, :cond_0

    .line 67
    return-void

    .line 69
    :cond_0
    invoke-virtual {v0}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 70
    .local v1, "vto":Landroid/view/ViewTreeObserver;
    invoke-virtual {v1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v2

    if-nez v2, :cond_1

    .line 71
    return-void

    .line 73
    :cond_1
    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 74
    return-void
.end method

.method public onPreDraw()Z
    .locals 7

    .line 41
    iget-object v0, p0, Lcom/squareup/picasso/DeferredRequestCreator;->target:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 42
    .local v0, "target":Landroid/widget/ImageView;
    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 43
    return v1

    .line 45
    :cond_0
    invoke-virtual {v0}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    .line 46
    .local v2, "vto":Landroid/view/ViewTreeObserver;
    invoke-virtual {v2}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v3

    if-nez v3, :cond_1

    .line 47
    return v1

    .line 50
    :cond_1
    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    .line 51
    .local v3, "width":I
    invoke-virtual {v0}, Landroid/widget/ImageView;->getHeight()I

    move-result v4

    .line 53
    .local v4, "height":I
    if-lez v3, :cond_3

    if-gtz v4, :cond_2

    goto :goto_0

    .line 57
    :cond_2
    invoke-virtual {v2, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 59
    iget-object v5, p0, Lcom/squareup/picasso/DeferredRequestCreator;->creator:Lcom/squareup/picasso/RequestCreator;

    invoke-virtual {v5}, Lcom/squareup/picasso/RequestCreator;->unfit()Lcom/squareup/picasso/RequestCreator;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Lcom/squareup/picasso/RequestCreator;->resize(II)Lcom/squareup/picasso/RequestCreator;

    move-result-object v5

    iget-object v6, p0, Lcom/squareup/picasso/DeferredRequestCreator;->callback:Lcom/squareup/picasso/Callback;

    invoke-virtual {v5, v0, v6}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;Lcom/squareup/picasso/Callback;)V

    .line 60
    return v1

    .line 54
    :cond_3
    :goto_0
    return v1
.end method
