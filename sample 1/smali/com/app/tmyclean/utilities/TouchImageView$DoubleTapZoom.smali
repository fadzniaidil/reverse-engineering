.class Lcom/app/tmyclean/utilities/TouchImageView$DoubleTapZoom;
.super Ljava/lang/Object;
.source "TouchImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/app/tmyclean/utilities/TouchImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DoubleTapZoom"
.end annotation


# static fields
.field private static final ZOOM_TIME:F = 500.0f


# instance fields
.field private bitmapX:F

.field private bitmapY:F

.field private endTouch:Landroid/graphics/PointF;

.field private interpolator:Landroid/view/animation/AccelerateDecelerateInterpolator;

.field private startTime:J

.field private startTouch:Landroid/graphics/PointF;

.field private startZoom:F

.field private stretchImageToSuper:Z

.field private targetZoom:F

.field final synthetic this$0:Lcom/app/tmyclean/utilities/TouchImageView;


# direct methods
.method constructor <init>(Lcom/app/tmyclean/utilities/TouchImageView;FFFZ)V
    .locals 3
    .param p2, "targetZoom"    # F
    .param p3, "focusX"    # F
    .param p4, "focusY"    # F
    .param p5, "stretchImageToSuper"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "this$0",
            "targetZoom",
            "focusX",
            "focusY",
            "stretchImageToSuper"
        }
    .end annotation

    .line 977
    iput-object p1, p0, Lcom/app/tmyclean/utilities/TouchImageView$DoubleTapZoom;->this$0:Lcom/app/tmyclean/utilities/TouchImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 973
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/app/tmyclean/utilities/TouchImageView$DoubleTapZoom;->interpolator:Landroid/view/animation/AccelerateDecelerateInterpolator;

    .line 978
    sget-object v0, Lcom/app/tmyclean/utilities/TouchImageView$State;->ANIMATE_ZOOM:Lcom/app/tmyclean/utilities/TouchImageView$State;

    invoke-static {p1, v0}, Lcom/app/tmyclean/utilities/TouchImageView;->access$1200(Lcom/app/tmyclean/utilities/TouchImageView;Lcom/app/tmyclean/utilities/TouchImageView$State;)V

    .line 979
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/app/tmyclean/utilities/TouchImageView$DoubleTapZoom;->startTime:J

    .line 980
    invoke-static {p1}, Lcom/app/tmyclean/utilities/TouchImageView;->access$700(Lcom/app/tmyclean/utilities/TouchImageView;)F

    move-result v0

    iput v0, p0, Lcom/app/tmyclean/utilities/TouchImageView$DoubleTapZoom;->startZoom:F

    .line 981
    iput p2, p0, Lcom/app/tmyclean/utilities/TouchImageView$DoubleTapZoom;->targetZoom:F

    .line 982
    iput-boolean p5, p0, Lcom/app/tmyclean/utilities/TouchImageView$DoubleTapZoom;->stretchImageToSuper:Z

    .line 983
    const/4 v0, 0x0

    invoke-static {p1, p3, p4, v0}, Lcom/app/tmyclean/utilities/TouchImageView;->access$2300(Lcom/app/tmyclean/utilities/TouchImageView;FFZ)Landroid/graphics/PointF;

    move-result-object v0

    .line 984
    .local v0, "bitmapPoint":Landroid/graphics/PointF;
    iget v1, v0, Landroid/graphics/PointF;->x:F

    iput v1, p0, Lcom/app/tmyclean/utilities/TouchImageView$DoubleTapZoom;->bitmapX:F

    .line 985
    iget v1, v0, Landroid/graphics/PointF;->y:F

    iput v1, p0, Lcom/app/tmyclean/utilities/TouchImageView$DoubleTapZoom;->bitmapY:F

    .line 990
    iget v2, p0, Lcom/app/tmyclean/utilities/TouchImageView$DoubleTapZoom;->bitmapX:F

    invoke-static {p1, v2, v1}, Lcom/app/tmyclean/utilities/TouchImageView;->access$2400(Lcom/app/tmyclean/utilities/TouchImageView;FF)Landroid/graphics/PointF;

    move-result-object v1

    iput-object v1, p0, Lcom/app/tmyclean/utilities/TouchImageView$DoubleTapZoom;->startTouch:Landroid/graphics/PointF;

    .line 991
    new-instance v1, Landroid/graphics/PointF;

    invoke-static {p1}, Lcom/app/tmyclean/utilities/TouchImageView;->access$1300(Lcom/app/tmyclean/utilities/TouchImageView;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-static {p1}, Lcom/app/tmyclean/utilities/TouchImageView;->access$1600(Lcom/app/tmyclean/utilities/TouchImageView;)I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    invoke-direct {v1, v2, p1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v1, p0, Lcom/app/tmyclean/utilities/TouchImageView$DoubleTapZoom;->endTouch:Landroid/graphics/PointF;

    .line 992
    return-void
.end method

.method private calculateDeltaScale(F)D
    .locals 4
    .param p1, "t"    # F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "t"
        }
    .end annotation

    .line 1059
    iget v0, p0, Lcom/app/tmyclean/utilities/TouchImageView$DoubleTapZoom;->startZoom:F

    iget v1, p0, Lcom/app/tmyclean/utilities/TouchImageView$DoubleTapZoom;->targetZoom:F

    sub-float/2addr v1, v0

    mul-float v1, v1, p1

    add-float/2addr v0, v1

    float-to-double v0, v0

    .line 1060
    .local v0, "zoom":D
    iget-object v2, p0, Lcom/app/tmyclean/utilities/TouchImageView$DoubleTapZoom;->this$0:Lcom/app/tmyclean/utilities/TouchImageView;

    invoke-static {v2}, Lcom/app/tmyclean/utilities/TouchImageView;->access$700(Lcom/app/tmyclean/utilities/TouchImageView;)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double v2, v0, v2

    return-wide v2
.end method

.method private interpolate()F
    .locals 4

    .line 1045
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1046
    .local v0, "currTime":J
    iget-wide v2, p0, Lcom/app/tmyclean/utilities/TouchImageView$DoubleTapZoom;->startTime:J

    sub-long v2, v0, v2

    long-to-float v2, v2

    const/high16 v3, 0x43fa0000    # 500.0f

    div-float/2addr v2, v3

    .line 1047
    .local v2, "elapsed":F
    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 1048
    iget-object v3, p0, Lcom/app/tmyclean/utilities/TouchImageView$DoubleTapZoom;->interpolator:Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-virtual {v3, v2}, Landroid/view/animation/AccelerateDecelerateInterpolator;->getInterpolation(F)F

    move-result v3

    return v3
.end method

.method private translateImageToCenterTouchPosition(F)V
    .locals 6
    .param p1, "t"    # F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "t"
        }
    .end annotation

    .line 1033
    iget-object v0, p0, Lcom/app/tmyclean/utilities/TouchImageView$DoubleTapZoom;->startTouch:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lcom/app/tmyclean/utilities/TouchImageView$DoubleTapZoom;->endTouch:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/app/tmyclean/utilities/TouchImageView$DoubleTapZoom;->startTouch:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v2

    mul-float v1, v1, p1

    add-float/2addr v0, v1

    .line 1034
    .local v0, "targetX":F
    iget-object v1, p0, Lcom/app/tmyclean/utilities/TouchImageView$DoubleTapZoom;->startTouch:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget-object v2, p0, Lcom/app/tmyclean/utilities/TouchImageView$DoubleTapZoom;->endTouch:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget-object v3, p0, Lcom/app/tmyclean/utilities/TouchImageView$DoubleTapZoom;->startTouch:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v3

    mul-float v2, v2, p1

    add-float/2addr v1, v2

    .line 1035
    .local v1, "targetY":F
    iget-object v2, p0, Lcom/app/tmyclean/utilities/TouchImageView$DoubleTapZoom;->this$0:Lcom/app/tmyclean/utilities/TouchImageView;

    iget v3, p0, Lcom/app/tmyclean/utilities/TouchImageView$DoubleTapZoom;->bitmapX:F

    iget v4, p0, Lcom/app/tmyclean/utilities/TouchImageView$DoubleTapZoom;->bitmapY:F

    invoke-static {v2, v3, v4}, Lcom/app/tmyclean/utilities/TouchImageView;->access$2400(Lcom/app/tmyclean/utilities/TouchImageView;FF)Landroid/graphics/PointF;

    move-result-object v2

    .line 1036
    .local v2, "curr":Landroid/graphics/PointF;
    iget-object v3, p0, Lcom/app/tmyclean/utilities/TouchImageView$DoubleTapZoom;->this$0:Lcom/app/tmyclean/utilities/TouchImageView;

    invoke-static {v3}, Lcom/app/tmyclean/utilities/TouchImageView;->access$1800(Lcom/app/tmyclean/utilities/TouchImageView;)Landroid/graphics/Matrix;

    move-result-object v3

    iget v4, v2, Landroid/graphics/PointF;->x:F

    sub-float v4, v0, v4

    iget v5, v2, Landroid/graphics/PointF;->y:F

    sub-float v5, v1, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1037
    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 996
    invoke-direct {p0}, Lcom/app/tmyclean/utilities/TouchImageView$DoubleTapZoom;->interpolate()F

    move-result v0

    .line 997
    .local v0, "t":F
    invoke-direct {p0, v0}, Lcom/app/tmyclean/utilities/TouchImageView$DoubleTapZoom;->calculateDeltaScale(F)D

    move-result-wide v7

    .line 998
    .local v7, "deltaScale":D
    iget-object v1, p0, Lcom/app/tmyclean/utilities/TouchImageView$DoubleTapZoom;->this$0:Lcom/app/tmyclean/utilities/TouchImageView;

    iget v4, p0, Lcom/app/tmyclean/utilities/TouchImageView$DoubleTapZoom;->bitmapX:F

    iget v5, p0, Lcom/app/tmyclean/utilities/TouchImageView$DoubleTapZoom;->bitmapY:F

    iget-boolean v6, p0, Lcom/app/tmyclean/utilities/TouchImageView$DoubleTapZoom;->stretchImageToSuper:Z

    move-wide v2, v7

    invoke-static/range {v1 .. v6}, Lcom/app/tmyclean/utilities/TouchImageView;->access$2200(Lcom/app/tmyclean/utilities/TouchImageView;DFFZ)V

    .line 999
    invoke-direct {p0, v0}, Lcom/app/tmyclean/utilities/TouchImageView$DoubleTapZoom;->translateImageToCenterTouchPosition(F)V

    .line 1000
    iget-object v1, p0, Lcom/app/tmyclean/utilities/TouchImageView$DoubleTapZoom;->this$0:Lcom/app/tmyclean/utilities/TouchImageView;

    invoke-static {v1}, Lcom/app/tmyclean/utilities/TouchImageView;->access$2500(Lcom/app/tmyclean/utilities/TouchImageView;)V

    .line 1001
    iget-object v1, p0, Lcom/app/tmyclean/utilities/TouchImageView$DoubleTapZoom;->this$0:Lcom/app/tmyclean/utilities/TouchImageView;

    invoke-static {v1}, Lcom/app/tmyclean/utilities/TouchImageView;->access$1800(Lcom/app/tmyclean/utilities/TouchImageView;)Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/app/tmyclean/utilities/TouchImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 1007
    iget-object v1, p0, Lcom/app/tmyclean/utilities/TouchImageView$DoubleTapZoom;->this$0:Lcom/app/tmyclean/utilities/TouchImageView;

    invoke-static {v1}, Lcom/app/tmyclean/utilities/TouchImageView;->access$2100(Lcom/app/tmyclean/utilities/TouchImageView;)Lcom/app/tmyclean/utilities/TouchImageView$OnTouchImageViewListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1008
    iget-object v1, p0, Lcom/app/tmyclean/utilities/TouchImageView$DoubleTapZoom;->this$0:Lcom/app/tmyclean/utilities/TouchImageView;

    invoke-static {v1}, Lcom/app/tmyclean/utilities/TouchImageView;->access$2100(Lcom/app/tmyclean/utilities/TouchImageView;)Lcom/app/tmyclean/utilities/TouchImageView$OnTouchImageViewListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/app/tmyclean/utilities/TouchImageView$OnTouchImageViewListener;->onMove()V

    .line 1011
    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_1

    .line 1015
    iget-object v1, p0, Lcom/app/tmyclean/utilities/TouchImageView$DoubleTapZoom;->this$0:Lcom/app/tmyclean/utilities/TouchImageView;

    invoke-static {v1, p0}, Lcom/app/tmyclean/utilities/TouchImageView;->access$500(Lcom/app/tmyclean/utilities/TouchImageView;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1021
    :cond_1
    iget-object v1, p0, Lcom/app/tmyclean/utilities/TouchImageView$DoubleTapZoom;->this$0:Lcom/app/tmyclean/utilities/TouchImageView;

    sget-object v2, Lcom/app/tmyclean/utilities/TouchImageView$State;->NONE:Lcom/app/tmyclean/utilities/TouchImageView$State;

    invoke-static {v1, v2}, Lcom/app/tmyclean/utilities/TouchImageView;->access$1200(Lcom/app/tmyclean/utilities/TouchImageView;Lcom/app/tmyclean/utilities/TouchImageView$State;)V

    .line 1023
    :goto_0
    return-void
.end method
