.class Lcom/app/tmyclean/activities/ActivityHistory$RecyclerTouchListener;
.super Ljava/lang/Object;
.source "ActivityHistory.java"

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/app/tmyclean/activities/ActivityHistory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RecyclerTouchListener"
.end annotation


# instance fields
.field private clickListener:Lcom/app/tmyclean/activities/ActivityHistory$ClickListener;

.field private gestureDetector:Landroid/view/GestureDetector;

.field final synthetic this$0:Lcom/app/tmyclean/activities/ActivityHistory;


# direct methods
.method public constructor <init>(Lcom/app/tmyclean/activities/ActivityHistory;Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;Lcom/app/tmyclean/activities/ActivityHistory$ClickListener;)V
    .locals 2
    .param p1, "this$0"    # Lcom/app/tmyclean/activities/ActivityHistory;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "recyclerView"    # Landroidx/recyclerview/widget/RecyclerView;
    .param p4, "clickListener"    # Lcom/app/tmyclean/activities/ActivityHistory$ClickListener;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x10,
            0x10
        }
        names = {
            "this$0",
            "context",
            "recyclerView",
            "clickListener"
        }
    .end annotation

    .line 269
    iput-object p1, p0, Lcom/app/tmyclean/activities/ActivityHistory$RecyclerTouchListener;->this$0:Lcom/app/tmyclean/activities/ActivityHistory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 271
    iput-object p4, p0, Lcom/app/tmyclean/activities/ActivityHistory$RecyclerTouchListener;->clickListener:Lcom/app/tmyclean/activities/ActivityHistory$ClickListener;

    .line 273
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/app/tmyclean/activities/ActivityHistory$RecyclerTouchListener$1;

    invoke-direct {v1, p0, p1, p3, p4}, Lcom/app/tmyclean/activities/ActivityHistory$RecyclerTouchListener$1;-><init>(Lcom/app/tmyclean/activities/ActivityHistory$RecyclerTouchListener;Lcom/app/tmyclean/activities/ActivityHistory;Landroidx/recyclerview/widget/RecyclerView;Lcom/app/tmyclean/activities/ActivityHistory$ClickListener;)V

    invoke-direct {v0, p2, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/app/tmyclean/activities/ActivityHistory$RecyclerTouchListener;->gestureDetector:Landroid/view/GestureDetector;

    .line 287
    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "rv"    # Landroidx/recyclerview/widget/RecyclerView;
    .param p2, "e"    # Landroid/view/MotionEvent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "rv",
            "e"
        }
    .end annotation

    .line 291
    iget-object v0, p0, Lcom/app/tmyclean/activities/ActivityHistory$RecyclerTouchListener;->this$0:Lcom/app/tmyclean/activities/ActivityHistory;

    iget-object v0, v0, Lcom/app/tmyclean/activities/ActivityHistory;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object v0

    .line 292
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/app/tmyclean/activities/ActivityHistory$RecyclerTouchListener;->clickListener:Lcom/app/tmyclean/activities/ActivityHistory$ClickListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/app/tmyclean/activities/ActivityHistory$RecyclerTouchListener;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 293
    iget-object v1, p0, Lcom/app/tmyclean/activities/ActivityHistory$RecyclerTouchListener;->clickListener:Lcom/app/tmyclean/activities/ActivityHistory$ClickListener;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v2

    invoke-interface {v1, v0, v2}, Lcom/app/tmyclean/activities/ActivityHistory$ClickListener;->onClick(Landroid/view/View;I)V

    .line 296
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public onRequestDisallowInterceptTouchEvent(Z)V
    .locals 0
    .param p1, "disallowIntercept"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "disallowIntercept"
        }
    .end annotation

    .line 307
    return-void
.end method

.method public onTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "rv"    # Landroidx/recyclerview/widget/RecyclerView;
    .param p2, "e"    # Landroid/view/MotionEvent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "rv",
            "e"
        }
    .end annotation

    .line 302
    return-void
.end method
