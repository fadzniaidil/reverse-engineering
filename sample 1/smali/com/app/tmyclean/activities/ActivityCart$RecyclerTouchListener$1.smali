.class Lcom/app/tmyclean/activities/ActivityCart$RecyclerTouchListener$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "ActivityCart.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/app/tmyclean/activities/ActivityCart$RecyclerTouchListener;-><init>(Lcom/app/tmyclean/activities/ActivityCart;Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;Lcom/app/tmyclean/activities/ActivityCart$ClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/app/tmyclean/activities/ActivityCart$RecyclerTouchListener;

.field final synthetic val$clickListener:Lcom/app/tmyclean/activities/ActivityCart$ClickListener;

.field final synthetic val$recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field final synthetic val$this$0:Lcom/app/tmyclean/activities/ActivityCart;


# direct methods
.method constructor <init>(Lcom/app/tmyclean/activities/ActivityCart$RecyclerTouchListener;Lcom/app/tmyclean/activities/ActivityCart;Landroidx/recyclerview/widget/RecyclerView;Lcom/app/tmyclean/activities/ActivityCart$ClickListener;)V
    .locals 0
    .param p1, "this$1"    # Lcom/app/tmyclean/activities/ActivityCart$RecyclerTouchListener;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$1",
            "val$this$0",
            "val$recyclerView",
            "val$clickListener"
        }
    .end annotation

    .line 309
    iput-object p1, p0, Lcom/app/tmyclean/activities/ActivityCart$RecyclerTouchListener$1;->this$1:Lcom/app/tmyclean/activities/ActivityCart$RecyclerTouchListener;

    iput-object p2, p0, Lcom/app/tmyclean/activities/ActivityCart$RecyclerTouchListener$1;->val$this$0:Lcom/app/tmyclean/activities/ActivityCart;

    iput-object p3, p0, Lcom/app/tmyclean/activities/ActivityCart$RecyclerTouchListener$1;->val$recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iput-object p4, p0, Lcom/app/tmyclean/activities/ActivityCart$RecyclerTouchListener$1;->val$clickListener:Lcom/app/tmyclean/activities/ActivityCart$ClickListener;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "e"    # Landroid/view/MotionEvent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "e"
        }
    .end annotation

    .line 317
    iget-object v0, p0, Lcom/app/tmyclean/activities/ActivityCart$RecyclerTouchListener$1;->val$recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object v0

    .line 318
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/app/tmyclean/activities/ActivityCart$RecyclerTouchListener$1;->val$clickListener:Lcom/app/tmyclean/activities/ActivityCart$ClickListener;

    if-eqz v1, :cond_0

    .line 319
    iget-object v2, p0, Lcom/app/tmyclean/activities/ActivityCart$RecyclerTouchListener$1;->val$recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v2

    invoke-interface {v1, v0, v2}, Lcom/app/tmyclean/activities/ActivityCart$ClickListener;->onLongClick(Landroid/view/View;I)V

    .line 321
    :cond_0
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "e"
        }
    .end annotation

    .line 312
    const/4 v0, 0x1

    return v0
.end method
