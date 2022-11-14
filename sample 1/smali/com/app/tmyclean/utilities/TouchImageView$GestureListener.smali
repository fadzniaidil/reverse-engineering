.class Lcom/app/tmyclean/utilities/TouchImageView$GestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "TouchImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/app/tmyclean/utilities/TouchImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/app/tmyclean/utilities/TouchImageView;


# direct methods
.method private constructor <init>(Lcom/app/tmyclean/utilities/TouchImageView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 760
    iput-object p1, p0, Lcom/app/tmyclean/utilities/TouchImageView$GestureListener;->this$0:Lcom/app/tmyclean/utilities/TouchImageView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/app/tmyclean/utilities/TouchImageView;Lcom/app/tmyclean/utilities/TouchImageView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/app/tmyclean/utilities/TouchImageView;
    .param p2, "x1"    # Lcom/app/tmyclean/utilities/TouchImageView$1;

    .line 760
    invoke-direct {p0, p1}, Lcom/app/tmyclean/utilities/TouchImageView$GestureListener;-><init>(Lcom/app/tmyclean/utilities/TouchImageView;)V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "e"    # Landroid/view/MotionEvent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "e"
        }
    .end annotation

    .line 791
    const/4 v0, 0x0

    .line 792
    .local v0, "consumed":Z
    iget-object v1, p0, Lcom/app/tmyclean/utilities/TouchImageView$GestureListener;->this$0:Lcom/app/tmyclean/utilities/TouchImageView;

    invoke-static {v1}, Lcom/app/tmyclean/utilities/TouchImageView;->access$300(Lcom/app/tmyclean/utilities/TouchImageView;)Landroid/view/GestureDetector$OnDoubleTapListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 793
    iget-object v1, p0, Lcom/app/tmyclean/utilities/TouchImageView$GestureListener;->this$0:Lcom/app/tmyclean/utilities/TouchImageView;

    invoke-static {v1}, Lcom/app/tmyclean/utilities/TouchImageView;->access$300(Lcom/app/tmyclean/utilities/TouchImageView;)Landroid/view/GestureDetector$OnDoubleTapListener;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onDoubleTap(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 795
    :cond_0
    iget-object v1, p0, Lcom/app/tmyclean/utilities/TouchImageView$GestureListener;->this$0:Lcom/app/tmyclean/utilities/TouchImageView;

    invoke-static {v1}, Lcom/app/tmyclean/utilities/TouchImageView;->access$600(Lcom/app/tmyclean/utilities/TouchImageView;)Lcom/app/tmyclean/utilities/TouchImageView$State;

    move-result-object v1

    sget-object v2, Lcom/app/tmyclean/utilities/TouchImageView$State;->NONE:Lcom/app/tmyclean/utilities/TouchImageView$State;

    if-ne v1, v2, :cond_2

    .line 796
    iget-object v1, p0, Lcom/app/tmyclean/utilities/TouchImageView$GestureListener;->this$0:Lcom/app/tmyclean/utilities/TouchImageView;

    invoke-static {v1}, Lcom/app/tmyclean/utilities/TouchImageView;->access$700(Lcom/app/tmyclean/utilities/TouchImageView;)F

    move-result v1

    iget-object v2, p0, Lcom/app/tmyclean/utilities/TouchImageView$GestureListener;->this$0:Lcom/app/tmyclean/utilities/TouchImageView;

    invoke-static {v2}, Lcom/app/tmyclean/utilities/TouchImageView;->access$800(Lcom/app/tmyclean/utilities/TouchImageView;)F

    move-result v2

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/app/tmyclean/utilities/TouchImageView$GestureListener;->this$0:Lcom/app/tmyclean/utilities/TouchImageView;

    invoke-static {v1}, Lcom/app/tmyclean/utilities/TouchImageView;->access$900(Lcom/app/tmyclean/utilities/TouchImageView;)F

    move-result v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/app/tmyclean/utilities/TouchImageView$GestureListener;->this$0:Lcom/app/tmyclean/utilities/TouchImageView;

    invoke-static {v1}, Lcom/app/tmyclean/utilities/TouchImageView;->access$800(Lcom/app/tmyclean/utilities/TouchImageView;)F

    move-result v1

    :goto_0
    move v4, v1

    .line 797
    .local v4, "targetZoom":F
    new-instance v1, Lcom/app/tmyclean/utilities/TouchImageView$DoubleTapZoom;

    iget-object v3, p0, Lcom/app/tmyclean/utilities/TouchImageView$GestureListener;->this$0:Lcom/app/tmyclean/utilities/TouchImageView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    const/4 v7, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/app/tmyclean/utilities/TouchImageView$DoubleTapZoom;-><init>(Lcom/app/tmyclean/utilities/TouchImageView;FFFZ)V

    .line 798
    .local v1, "doubleTap":Lcom/app/tmyclean/utilities/TouchImageView$DoubleTapZoom;
    iget-object v2, p0, Lcom/app/tmyclean/utilities/TouchImageView$GestureListener;->this$0:Lcom/app/tmyclean/utilities/TouchImageView;

    invoke-static {v2, v1}, Lcom/app/tmyclean/utilities/TouchImageView;->access$500(Lcom/app/tmyclean/utilities/TouchImageView;Ljava/lang/Runnable;)V

    .line 799
    const/4 v0, 0x1

    .line 801
    .end local v1    # "doubleTap":Lcom/app/tmyclean/utilities/TouchImageView$DoubleTapZoom;
    .end local v4    # "targetZoom":F
    :cond_2
    return v0
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
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

    .line 806
    iget-object v0, p0, Lcom/app/tmyclean/utilities/TouchImageView$GestureListener;->this$0:Lcom/app/tmyclean/utilities/TouchImageView;

    invoke-static {v0}, Lcom/app/tmyclean/utilities/TouchImageView;->access$300(Lcom/app/tmyclean/utilities/TouchImageView;)Landroid/view/GestureDetector$OnDoubleTapListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 807
    iget-object v0, p0, Lcom/app/tmyclean/utilities/TouchImageView$GestureListener;->this$0:Lcom/app/tmyclean/utilities/TouchImageView;

    invoke-static {v0}, Lcom/app/tmyclean/utilities/TouchImageView;->access$300(Lcom/app/tmyclean/utilities/TouchImageView;)Landroid/view/GestureDetector$OnDoubleTapListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 809
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 4
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "e1",
            "e2",
            "velocityX",
            "velocityY"
        }
    .end annotation

    .line 777
    iget-object v0, p0, Lcom/app/tmyclean/utilities/TouchImageView$GestureListener;->this$0:Lcom/app/tmyclean/utilities/TouchImageView;

    invoke-static {v0}, Lcom/app/tmyclean/utilities/TouchImageView;->access$400(Lcom/app/tmyclean/utilities/TouchImageView;)Lcom/app/tmyclean/utilities/TouchImageView$Fling;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 782
    iget-object v0, p0, Lcom/app/tmyclean/utilities/TouchImageView$GestureListener;->this$0:Lcom/app/tmyclean/utilities/TouchImageView;

    invoke-static {v0}, Lcom/app/tmyclean/utilities/TouchImageView;->access$400(Lcom/app/tmyclean/utilities/TouchImageView;)Lcom/app/tmyclean/utilities/TouchImageView$Fling;

    move-result-object v0

    invoke-virtual {v0}, Lcom/app/tmyclean/utilities/TouchImageView$Fling;->cancelFling()V

    .line 784
    :cond_0
    iget-object v0, p0, Lcom/app/tmyclean/utilities/TouchImageView$GestureListener;->this$0:Lcom/app/tmyclean/utilities/TouchImageView;

    new-instance v1, Lcom/app/tmyclean/utilities/TouchImageView$Fling;

    float-to-int v2, p3

    float-to-int v3, p4

    invoke-direct {v1, v0, v2, v3}, Lcom/app/tmyclean/utilities/TouchImageView$Fling;-><init>(Lcom/app/tmyclean/utilities/TouchImageView;II)V

    invoke-static {v0, v1}, Lcom/app/tmyclean/utilities/TouchImageView;->access$402(Lcom/app/tmyclean/utilities/TouchImageView;Lcom/app/tmyclean/utilities/TouchImageView$Fling;)Lcom/app/tmyclean/utilities/TouchImageView$Fling;

    .line 785
    iget-object v0, p0, Lcom/app/tmyclean/utilities/TouchImageView$GestureListener;->this$0:Lcom/app/tmyclean/utilities/TouchImageView;

    invoke-static {v0}, Lcom/app/tmyclean/utilities/TouchImageView;->access$400(Lcom/app/tmyclean/utilities/TouchImageView;)Lcom/app/tmyclean/utilities/TouchImageView$Fling;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/app/tmyclean/utilities/TouchImageView;->access$500(Lcom/app/tmyclean/utilities/TouchImageView;Ljava/lang/Runnable;)V

    .line 786
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
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

    .line 772
    iget-object v0, p0, Lcom/app/tmyclean/utilities/TouchImageView$GestureListener;->this$0:Lcom/app/tmyclean/utilities/TouchImageView;

    invoke-virtual {v0}, Lcom/app/tmyclean/utilities/TouchImageView;->performLongClick()Z

    .line 773
    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
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

    .line 764
    iget-object v0, p0, Lcom/app/tmyclean/utilities/TouchImageView$GestureListener;->this$0:Lcom/app/tmyclean/utilities/TouchImageView;

    invoke-static {v0}, Lcom/app/tmyclean/utilities/TouchImageView;->access$300(Lcom/app/tmyclean/utilities/TouchImageView;)Landroid/view/GestureDetector$OnDoubleTapListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 765
    iget-object v0, p0, Lcom/app/tmyclean/utilities/TouchImageView$GestureListener;->this$0:Lcom/app/tmyclean/utilities/TouchImageView;

    invoke-static {v0}, Lcom/app/tmyclean/utilities/TouchImageView;->access$300(Lcom/app/tmyclean/utilities/TouchImageView;)Landroid/view/GestureDetector$OnDoubleTapListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 767
    :cond_0
    iget-object v0, p0, Lcom/app/tmyclean/utilities/TouchImageView$GestureListener;->this$0:Lcom/app/tmyclean/utilities/TouchImageView;

    invoke-virtual {v0}, Lcom/app/tmyclean/utilities/TouchImageView;->performClick()Z

    move-result v0

    return v0
.end method
