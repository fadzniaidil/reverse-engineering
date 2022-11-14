.class Lcom/app/tmyclean/utilities/TouchImageView$ScaleListener;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source "TouchImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/app/tmyclean/utilities/TouchImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScaleListener"
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

    .line 892
    iput-object p1, p0, Lcom/app/tmyclean/utilities/TouchImageView$ScaleListener;->this$0:Lcom/app/tmyclean/utilities/TouchImageView;

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/app/tmyclean/utilities/TouchImageView;Lcom/app/tmyclean/utilities/TouchImageView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/app/tmyclean/utilities/TouchImageView;
    .param p2, "x1"    # Lcom/app/tmyclean/utilities/TouchImageView$1;

    .line 892
    invoke-direct {p0, p1}, Lcom/app/tmyclean/utilities/TouchImageView$ScaleListener;-><init>(Lcom/app/tmyclean/utilities/TouchImageView;)V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 6
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "detector"
        }
    .end annotation

    .line 901
    iget-object v0, p0, Lcom/app/tmyclean/utilities/TouchImageView$ScaleListener;->this$0:Lcom/app/tmyclean/utilities/TouchImageView;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v1

    float-to-double v1, v1

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v4

    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, Lcom/app/tmyclean/utilities/TouchImageView;->access$2200(Lcom/app/tmyclean/utilities/TouchImageView;DFFZ)V

    .line 906
    iget-object v0, p0, Lcom/app/tmyclean/utilities/TouchImageView$ScaleListener;->this$0:Lcom/app/tmyclean/utilities/TouchImageView;

    invoke-static {v0}, Lcom/app/tmyclean/utilities/TouchImageView;->access$2100(Lcom/app/tmyclean/utilities/TouchImageView;)Lcom/app/tmyclean/utilities/TouchImageView$OnTouchImageViewListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 907
    iget-object v0, p0, Lcom/app/tmyclean/utilities/TouchImageView$ScaleListener;->this$0:Lcom/app/tmyclean/utilities/TouchImageView;

    invoke-static {v0}, Lcom/app/tmyclean/utilities/TouchImageView;->access$2100(Lcom/app/tmyclean/utilities/TouchImageView;)Lcom/app/tmyclean/utilities/TouchImageView$OnTouchImageViewListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/app/tmyclean/utilities/TouchImageView$OnTouchImageViewListener;->onMove()V

    .line 909
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 2
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "detector"
        }
    .end annotation

    .line 895
    iget-object v0, p0, Lcom/app/tmyclean/utilities/TouchImageView$ScaleListener;->this$0:Lcom/app/tmyclean/utilities/TouchImageView;

    sget-object v1, Lcom/app/tmyclean/utilities/TouchImageView$State;->ZOOM:Lcom/app/tmyclean/utilities/TouchImageView$State;

    invoke-static {v0, v1}, Lcom/app/tmyclean/utilities/TouchImageView;->access$1200(Lcom/app/tmyclean/utilities/TouchImageView;Lcom/app/tmyclean/utilities/TouchImageView$State;)V

    .line 896
    const/4 v0, 0x1

    return v0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 9
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "detector"
        }
    .end annotation

    .line 914
    invoke-super {p0, p1}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;->onScaleEnd(Landroid/view/ScaleGestureDetector;)V

    .line 915
    iget-object v0, p0, Lcom/app/tmyclean/utilities/TouchImageView$ScaleListener;->this$0:Lcom/app/tmyclean/utilities/TouchImageView;

    sget-object v1, Lcom/app/tmyclean/utilities/TouchImageView$State;->NONE:Lcom/app/tmyclean/utilities/TouchImageView$State;

    invoke-static {v0, v1}, Lcom/app/tmyclean/utilities/TouchImageView;->access$1200(Lcom/app/tmyclean/utilities/TouchImageView;Lcom/app/tmyclean/utilities/TouchImageView$State;)V

    .line 916
    const/4 v0, 0x0

    .line 917
    .local v0, "animateToZoomBoundary":Z
    iget-object v1, p0, Lcom/app/tmyclean/utilities/TouchImageView$ScaleListener;->this$0:Lcom/app/tmyclean/utilities/TouchImageView;

    invoke-static {v1}, Lcom/app/tmyclean/utilities/TouchImageView;->access$700(Lcom/app/tmyclean/utilities/TouchImageView;)F

    move-result v1

    .line 918
    .local v1, "targetZoom":F
    iget-object v2, p0, Lcom/app/tmyclean/utilities/TouchImageView$ScaleListener;->this$0:Lcom/app/tmyclean/utilities/TouchImageView;

    invoke-static {v2}, Lcom/app/tmyclean/utilities/TouchImageView;->access$700(Lcom/app/tmyclean/utilities/TouchImageView;)F

    move-result v2

    iget-object v3, p0, Lcom/app/tmyclean/utilities/TouchImageView$ScaleListener;->this$0:Lcom/app/tmyclean/utilities/TouchImageView;

    invoke-static {v3}, Lcom/app/tmyclean/utilities/TouchImageView;->access$900(Lcom/app/tmyclean/utilities/TouchImageView;)F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 919
    iget-object v2, p0, Lcom/app/tmyclean/utilities/TouchImageView$ScaleListener;->this$0:Lcom/app/tmyclean/utilities/TouchImageView;

    invoke-static {v2}, Lcom/app/tmyclean/utilities/TouchImageView;->access$900(Lcom/app/tmyclean/utilities/TouchImageView;)F

    move-result v1

    .line 920
    const/4 v0, 0x1

    move v7, v1

    goto :goto_0

    .line 922
    :cond_0
    iget-object v2, p0, Lcom/app/tmyclean/utilities/TouchImageView$ScaleListener;->this$0:Lcom/app/tmyclean/utilities/TouchImageView;

    invoke-static {v2}, Lcom/app/tmyclean/utilities/TouchImageView;->access$700(Lcom/app/tmyclean/utilities/TouchImageView;)F

    move-result v2

    iget-object v3, p0, Lcom/app/tmyclean/utilities/TouchImageView$ScaleListener;->this$0:Lcom/app/tmyclean/utilities/TouchImageView;

    invoke-static {v3}, Lcom/app/tmyclean/utilities/TouchImageView;->access$800(Lcom/app/tmyclean/utilities/TouchImageView;)F

    move-result v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    .line 923
    iget-object v2, p0, Lcom/app/tmyclean/utilities/TouchImageView$ScaleListener;->this$0:Lcom/app/tmyclean/utilities/TouchImageView;

    invoke-static {v2}, Lcom/app/tmyclean/utilities/TouchImageView;->access$800(Lcom/app/tmyclean/utilities/TouchImageView;)F

    move-result v1

    .line 924
    const/4 v0, 0x1

    move v7, v1

    goto :goto_0

    .line 922
    :cond_1
    move v7, v1

    .line 927
    .end local v1    # "targetZoom":F
    .local v7, "targetZoom":F
    :goto_0
    if-eqz v0, :cond_2

    .line 928
    new-instance v8, Lcom/app/tmyclean/utilities/TouchImageView$DoubleTapZoom;

    iget-object v2, p0, Lcom/app/tmyclean/utilities/TouchImageView$ScaleListener;->this$0:Lcom/app/tmyclean/utilities/TouchImageView;

    invoke-static {v2}, Lcom/app/tmyclean/utilities/TouchImageView;->access$1300(Lcom/app/tmyclean/utilities/TouchImageView;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v4, v1

    iget-object v1, p0, Lcom/app/tmyclean/utilities/TouchImageView$ScaleListener;->this$0:Lcom/app/tmyclean/utilities/TouchImageView;

    invoke-static {v1}, Lcom/app/tmyclean/utilities/TouchImageView;->access$1600(Lcom/app/tmyclean/utilities/TouchImageView;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v5, v1

    const/4 v6, 0x1

    move-object v1, v8

    move v3, v7

    invoke-direct/range {v1 .. v6}, Lcom/app/tmyclean/utilities/TouchImageView$DoubleTapZoom;-><init>(Lcom/app/tmyclean/utilities/TouchImageView;FFFZ)V

    .line 929
    .local v1, "doubleTap":Lcom/app/tmyclean/utilities/TouchImageView$DoubleTapZoom;
    iget-object v2, p0, Lcom/app/tmyclean/utilities/TouchImageView$ScaleListener;->this$0:Lcom/app/tmyclean/utilities/TouchImageView;

    invoke-static {v2, v1}, Lcom/app/tmyclean/utilities/TouchImageView;->access$500(Lcom/app/tmyclean/utilities/TouchImageView;Ljava/lang/Runnable;)V

    .line 931
    .end local v1    # "doubleTap":Lcom/app/tmyclean/utilities/TouchImageView$DoubleTapZoom;
    :cond_2
    return-void
.end method
