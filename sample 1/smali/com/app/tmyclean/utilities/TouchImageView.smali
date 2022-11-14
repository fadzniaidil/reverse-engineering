.class public Lcom/app/tmyclean/utilities/TouchImageView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "TouchImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/app/tmyclean/utilities/TouchImageView$ZoomVariables;,
        Lcom/app/tmyclean/utilities/TouchImageView$CompatScroller;,
        Lcom/app/tmyclean/utilities/TouchImageView$Fling;,
        Lcom/app/tmyclean/utilities/TouchImageView$DoubleTapZoom;,
        Lcom/app/tmyclean/utilities/TouchImageView$ScaleListener;,
        Lcom/app/tmyclean/utilities/TouchImageView$PrivateOnTouchListener;,
        Lcom/app/tmyclean/utilities/TouchImageView$OnTouchImageViewListener;,
        Lcom/app/tmyclean/utilities/TouchImageView$GestureListener;,
        Lcom/app/tmyclean/utilities/TouchImageView$State;
    }
.end annotation


# static fields
.field private static final DEBUG:Ljava/lang/String; = "DEBUG"

.field private static final SUPER_MAX_MULTIPLIER:F = 1.25f

.field private static final SUPER_MIN_MULTIPLIER:F = 0.75f


# instance fields
.field private context:Landroid/content/Context;

.field private delayedZoomVariables:Lcom/app/tmyclean/utilities/TouchImageView$ZoomVariables;

.field private doubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

.field private fling:Lcom/app/tmyclean/utilities/TouchImageView$Fling;

.field private imageRenderedAtLeastOnce:Z

.field private m:[F

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mScaleDetector:Landroid/view/ScaleGestureDetector;

.field private mScaleType:Landroid/widget/ImageView$ScaleType;

.field private matchViewHeight:F

.field private matchViewWidth:F

.field private matrix:Landroid/graphics/Matrix;

.field private maxScale:F

.field private minScale:F

.field private normalizedScale:F

.field private onDrawReady:Z

.field private prevMatchViewHeight:F

.field private prevMatchViewWidth:F

.field private prevMatrix:Landroid/graphics/Matrix;

.field private prevViewHeight:I

.field private prevViewWidth:I

.field private state:Lcom/app/tmyclean/utilities/TouchImageView$State;

.field private superMaxScale:F

.field private superMinScale:F

.field private touchImageViewListener:Lcom/app/tmyclean/utilities/TouchImageView$OnTouchImageViewListener;

.field private userTouchListener:Landroid/view/View$OnTouchListener;

.field private viewHeight:I

.field private viewWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 103
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    .line 98
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/app/tmyclean/utilities/TouchImageView;->doubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    .line 99
    iput-object v0, p0, Lcom/app/tmyclean/utilities/TouchImageView;->userTouchListener:Landroid/view/View$OnTouchListener;

    .line 100
    iput-object v0, p0, Lcom/app/tmyclean/utilities/TouchImageView;->touchImageViewListener:Lcom/app/tmyclean/utilities/TouchImageView$OnTouchImageViewListener;

    .line 104
    invoke-direct {p0, p1}, Lcom/app/tmyclean/utilities/TouchImageView;->sharedConstructing(Landroid/content/Context;)V

    .line 105
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    .line 108
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 98
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/app/tmyclean/utilities/TouchImageView;->doubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    .line 99
    iput-object v0, p0, Lcom/app/tmyclean/utilities/TouchImageView;->userTouchListener:Landroid/view/View$OnTouchListener;

    .line 100
    iput-object v0, p0, Lcom/app/tmyclean/utilities/TouchImageView;->touchImageViewListener:Lcom/app/tmyclean/utilities/TouchImageView$OnTouchImageViewListener;

    .line 109
    invoke-direct {p0, p1}, Lcom/app/tmyclean/utilities/TouchImageView;->sharedConstructing(Landroid/content/Context;)V

    .line 110
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs",
            "defStyle"
        }
    .end annotation

    .line 113
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 98
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/app/tmyclean/utilities/TouchImageView;->doubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    .line 99
    iput-object v0, p0, Lcom/app/tmyclean/utilities/TouchImageView;->userTouchListener:Landroid/view/View$OnTouchListener;

    .line 100
    iput-object v0, p0, Lcom/app/tmyclean/utilities/TouchImageView;->touchImageViewListener:Lcom/app/tmyclean/utilities/TouchImageView$OnTouchImageViewListener;

    .line 114
    invoke-direct {p0, p1}, Lcom/app/tmyclean/utilities/TouchImageView;->sharedConstructing(Landroid/content/Context;)V

    .line 115
    return-void
.end method

.method static synthetic access$1000(Lcom/app/tmyclean/utilities/TouchImageView;)Landroid/view/ScaleGestureDetector;
    .locals 1
    .param p0, "x0"    # Lcom/app/tmyclean/utilities/TouchImageView;

    .line 41
    iget-object v0, p0, Lcom/app/tmyclean/utilities/TouchImageView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/app/tmyclean/utilities/TouchImageView;)Landroid/view/GestureDetector;
    .locals 1
    .param p0, "x0"    # Lcom/app/tmyclean/utilities/TouchImageView;

    .line 41
    iget-object v0, p0, Lcom/app/tmyclean/utilities/TouchImageView;->mGestureDetector:Landroid/view/GestureDetector;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/app/tmyclean/utilities/TouchImageView;Lcom/app/tmyclean/utilities/TouchImageView$State;)V
    .locals 0
    .param p0, "x0"    # Lcom/app/tmyclean/utilities/TouchImageView;
    .param p1, "x1"    # Lcom/app/tmyclean/utilities/TouchImageView$State;

    .line 41
    invoke-direct {p0, p1}, Lcom/app/tmyclean/utilities/TouchImageView;->setState(Lcom/app/tmyclean/utilities/TouchImageView$State;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/app/tmyclean/utilities/TouchImageView;)I
    .locals 1
    .param p0, "x0"    # Lcom/app/tmyclean/utilities/TouchImageView;

    .line 41
    iget v0, p0, Lcom/app/tmyclean/utilities/TouchImageView;->viewWidth:I

    return v0
.end method

.method static synthetic access$1400(Lcom/app/tmyclean/utilities/TouchImageView;)F
    .locals 1
    .param p0, "x0"    # Lcom/app/tmyclean/utilities/TouchImageView;

    .line 41
    invoke-direct {p0}, Lcom/app/tmyclean/utilities/TouchImageView;->getImageWidth()F

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/app/tmyclean/utilities/TouchImageView;FFF)F
    .locals 1
    .param p0, "x0"    # Lcom/app/tmyclean/utilities/TouchImageView;
    .param p1, "x1"    # F
    .param p2, "x2"    # F
    .param p3, "x3"    # F

    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcom/app/tmyclean/utilities/TouchImageView;->getFixDragTrans(FFF)F

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/app/tmyclean/utilities/TouchImageView;)I
    .locals 1
    .param p0, "x0"    # Lcom/app/tmyclean/utilities/TouchImageView;

    .line 41
    iget v0, p0, Lcom/app/tmyclean/utilities/TouchImageView;->viewHeight:I

    return v0
.end method

.method static synthetic access$1700(Lcom/app/tmyclean/utilities/TouchImageView;)F
    .locals 1
    .param p0, "x0"    # Lcom/app/tmyclean/utilities/TouchImageView;

    .line 41
    invoke-direct {p0}, Lcom/app/tmyclean/utilities/TouchImageView;->getImageHeight()F

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/app/tmyclean/utilities/TouchImageView;)Landroid/graphics/Matrix;
    .locals 1
    .param p0, "x0"    # Lcom/app/tmyclean/utilities/TouchImageView;

    .line 41
    iget-object v0, p0, Lcom/app/tmyclean/utilities/TouchImageView;->matrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/app/tmyclean/utilities/TouchImageView;)V
    .locals 0
    .param p0, "x0"    # Lcom/app/tmyclean/utilities/TouchImageView;

    .line 41
    invoke-direct {p0}, Lcom/app/tmyclean/utilities/TouchImageView;->fixTrans()V

    return-void
.end method

.method static synthetic access$2000(Lcom/app/tmyclean/utilities/TouchImageView;)Landroid/view/View$OnTouchListener;
    .locals 1
    .param p0, "x0"    # Lcom/app/tmyclean/utilities/TouchImageView;

    .line 41
    iget-object v0, p0, Lcom/app/tmyclean/utilities/TouchImageView;->userTouchListener:Landroid/view/View$OnTouchListener;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/app/tmyclean/utilities/TouchImageView;)Lcom/app/tmyclean/utilities/TouchImageView$OnTouchImageViewListener;
    .locals 1
    .param p0, "x0"    # Lcom/app/tmyclean/utilities/TouchImageView;

    .line 41
    iget-object v0, p0, Lcom/app/tmyclean/utilities/TouchImageView;->touchImageViewListener:Lcom/app/tmyclean/utilities/TouchImageView$OnTouchImageViewListener;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/app/tmyclean/utilities/TouchImageView;DFFZ)V
    .locals 0
    .param p0, "x0"    # Lcom/app/tmyclean/utilities/TouchImageView;
    .param p1, "x1"    # D
    .param p3, "x2"    # F
    .param p4, "x3"    # F
    .param p5, "x4"    # Z

    .line 41
    invoke-direct/range {p0 .. p5}, Lcom/app/tmyclean/utilities/TouchImageView;->scaleImage(DFFZ)V

    return-void
.end method

.method static synthetic access$2300(Lcom/app/tmyclean/utilities/TouchImageView;FFZ)Landroid/graphics/PointF;
    .locals 1
    .param p0, "x0"    # Lcom/app/tmyclean/utilities/TouchImageView;
    .param p1, "x1"    # F
    .param p2, "x2"    # F
    .param p3, "x3"    # Z

    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcom/app/tmyclean/utilities/TouchImageView;->transformCoordTouchToBitmap(FFZ)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2400(Lcom/app/tmyclean/utilities/TouchImageView;FF)Landroid/graphics/PointF;
    .locals 1
    .param p0, "x0"    # Lcom/app/tmyclean/utilities/TouchImageView;
    .param p1, "x1"    # F
    .param p2, "x2"    # F

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/app/tmyclean/utilities/TouchImageView;->transformCoordBitmapToTouch(FF)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2500(Lcom/app/tmyclean/utilities/TouchImageView;)V
    .locals 0
    .param p0, "x0"    # Lcom/app/tmyclean/utilities/TouchImageView;

    .line 41
    invoke-direct {p0}, Lcom/app/tmyclean/utilities/TouchImageView;->fixScaleTrans()V

    return-void
.end method

.method static synthetic access$2600(Lcom/app/tmyclean/utilities/TouchImageView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/app/tmyclean/utilities/TouchImageView;

    .line 41
    iget-object v0, p0, Lcom/app/tmyclean/utilities/TouchImageView;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/app/tmyclean/utilities/TouchImageView;)[F
    .locals 1
    .param p0, "x0"    # Lcom/app/tmyclean/utilities/TouchImageView;

    .line 41
    iget-object v0, p0, Lcom/app/tmyclean/utilities/TouchImageView;->m:[F

    return-object v0
.end method

.method static synthetic access$300(Lcom/app/tmyclean/utilities/TouchImageView;)Landroid/view/GestureDetector$OnDoubleTapListener;
    .locals 1
    .param p0, "x0"    # Lcom/app/tmyclean/utilities/TouchImageView;

    .line 41
    iget-object v0, p0, Lcom/app/tmyclean/utilities/TouchImageView;->doubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/app/tmyclean/utilities/TouchImageView;)Lcom/app/tmyclean/utilities/TouchImageView$Fling;
    .locals 1
    .param p0, "x0"    # Lcom/app/tmyclean/utilities/TouchImageView;

    .line 41
    iget-object v0, p0, Lcom/app/tmyclean/utilities/TouchImageView;->fling:Lcom/app/tmyclean/utilities/TouchImageView$Fling;

    return-object v0
.end method

.method static synthetic access$402(Lcom/app/tmyclean/utilities/TouchImageView;Lcom/app/tmyclean/utilities/TouchImageView$Fling;)Lcom/app/tmyclean/utilities/TouchImageView$Fling;
    .locals 0
    .param p0, "x0"    # Lcom/app/tmyclean/utilities/TouchImageView;
    .param p1, "x1"    # Lcom/app/tmyclean/utilities/TouchImageView$Fling;

    .line 41
    iput-object p1, p0, Lcom/app/tmyclean/utilities/TouchImageView;->fling:Lcom/app/tmyclean/utilities/TouchImageView$Fling;

    return-object p1
.end method

.method static synthetic access$500(Lcom/app/tmyclean/utilities/TouchImageView;Ljava/lang/Runnable;)V
    .locals 0
    .param p0, "x0"    # Lcom/app/tmyclean/utilities/TouchImageView;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .line 41
    invoke-direct {p0, p1}, Lcom/app/tmyclean/utilities/TouchImageView;->compatPostOnAnimation(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$600(Lcom/app/tmyclean/utilities/TouchImageView;)Lcom/app/tmyclean/utilities/TouchImageView$State;
    .locals 1
    .param p0, "x0"    # Lcom/app/tmyclean/utilities/TouchImageView;

    .line 41
    iget-object v0, p0, Lcom/app/tmyclean/utilities/TouchImageView;->state:Lcom/app/tmyclean/utilities/TouchImageView$State;

    return-object v0
.end method

.method static synthetic access$700(Lcom/app/tmyclean/utilities/TouchImageView;)F
    .locals 1
    .param p0, "x0"    # Lcom/app/tmyclean/utilities/TouchImageView;

    .line 41
    iget v0, p0, Lcom/app/tmyclean/utilities/TouchImageView;->normalizedScale:F

    return v0
.end method

.method static synthetic access$800(Lcom/app/tmyclean/utilities/TouchImageView;)F
    .locals 1
    .param p0, "x0"    # Lcom/app/tmyclean/utilities/TouchImageView;

    .line 41
    iget v0, p0, Lcom/app/tmyclean/utilities/TouchImageView;->minScale:F

    return v0
.end method

.method static synthetic access$900(Lcom/app/tmyclean/utilities/TouchImageView;)F
    .locals 1
    .param p0, "x0"    # Lcom/app/tmyclean/utilities/TouchImageView;

    .line 41
    iget v0, p0, Lcom/app/tmyclean/utilities/TouchImageView;->maxScale:F

    return v0
.end method

.method private compatPostOnAnimation(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "runnable"
        }
    .end annotation

    .line 1260
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 1261
    invoke-virtual {p0, p1}, Lcom/app/tmyclean/utilities/TouchImageView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1264
    :cond_0
    const-wide/16 v0, 0x10

    invoke-virtual {p0, p1, v0, v1}, Lcom/app/tmyclean/utilities/TouchImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1266
    :goto_0
    return-void
.end method

.method private fitImageToView()V
    .locals 22

    .line 559
    move-object/from16 v8, p0

    invoke-virtual/range {p0 .. p0}, Lcom/app/tmyclean/utilities/TouchImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 560
    .local v9, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v9, :cond_6

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 563
    :cond_0
    iget-object v0, v8, Lcom/app/tmyclean/utilities/TouchImageView;->matrix:Landroid/graphics/Matrix;

    if-eqz v0, :cond_5

    iget-object v0, v8, Lcom/app/tmyclean/utilities/TouchImageView;->prevMatrix:Landroid/graphics/Matrix;

    if-nez v0, :cond_1

    goto/16 :goto_2

    .line 567
    :cond_1
    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v10

    .line 568
    .local v10, "drawableWidth":I
    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v11

    .line 573
    .local v11, "drawableHeight":I
    iget v0, v8, Lcom/app/tmyclean/utilities/TouchImageView;->viewWidth:I

    int-to-float v0, v0

    int-to-float v1, v10

    div-float/2addr v0, v1

    .line 574
    .local v0, "scaleX":F
    iget v1, v8, Lcom/app/tmyclean/utilities/TouchImageView;->viewHeight:I

    int-to-float v1, v1

    int-to-float v2, v11

    div-float/2addr v1, v2

    .line 576
    .local v1, "scaleY":F
    sget-object v2, Lcom/app/tmyclean/utilities/TouchImageView$1;->$SwitchMap$android$widget$ImageView$ScaleType:[I

    iget-object v3, v8, Lcom/app/tmyclean/utilities/TouchImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    packed-switch v2, :pswitch_data_0

    .line 599
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string v3, "TouchImageView does not support FIT_START or FIT_END"

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 593
    :pswitch_0
    move v12, v0

    move v13, v1

    goto :goto_0

    .line 586
    :pswitch_1
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    move v1, v2

    move v0, v2

    .line 589
    :pswitch_2
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v2

    move v1, v2

    move v0, v2

    .line 590
    move v12, v0

    move v13, v1

    goto :goto_0

    .line 582
    :pswitch_3
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v2

    move v1, v2

    move v0, v2

    .line 583
    move v12, v0

    move v13, v1

    goto :goto_0

    .line 578
    :pswitch_4
    move v1, v3

    move v0, v3

    .line 579
    move v12, v0

    move v13, v1

    .line 606
    .end local v0    # "scaleX":F
    .end local v1    # "scaleY":F
    .local v12, "scaleX":F
    .local v13, "scaleY":F
    :goto_0
    iget v0, v8, Lcom/app/tmyclean/utilities/TouchImageView;->viewWidth:I

    int-to-float v1, v0

    int-to-float v2, v10

    mul-float v2, v2, v12

    sub-float v14, v1, v2

    .line 607
    .local v14, "redundantXSpace":F
    iget v1, v8, Lcom/app/tmyclean/utilities/TouchImageView;->viewHeight:I

    int-to-float v2, v1

    int-to-float v4, v11

    mul-float v4, v4, v13

    sub-float v15, v2, v4

    .line 608
    .local v15, "redundantYSpace":F
    int-to-float v0, v0

    sub-float/2addr v0, v14

    iput v0, v8, Lcom/app/tmyclean/utilities/TouchImageView;->matchViewWidth:F

    .line 609
    int-to-float v0, v1

    sub-float/2addr v0, v15

    iput v0, v8, Lcom/app/tmyclean/utilities/TouchImageView;->matchViewHeight:F

    .line 610
    invoke-virtual/range {p0 .. p0}, Lcom/app/tmyclean/utilities/TouchImageView;->isZoomed()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, v8, Lcom/app/tmyclean/utilities/TouchImageView;->imageRenderedAtLeastOnce:Z

    if-nez v0, :cond_2

    .line 614
    iget-object v0, v8, Lcom/app/tmyclean/utilities/TouchImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v12, v13}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 615
    iget-object v0, v8, Lcom/app/tmyclean/utilities/TouchImageView;->matrix:Landroid/graphics/Matrix;

    const/high16 v1, 0x40000000    # 2.0f

    div-float v2, v14, v1

    div-float v1, v15, v1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 616
    iput v3, v8, Lcom/app/tmyclean/utilities/TouchImageView;->normalizedScale:F

    goto :goto_1

    .line 624
    :cond_2
    iget v0, v8, Lcom/app/tmyclean/utilities/TouchImageView;->prevMatchViewWidth:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_3

    iget v0, v8, Lcom/app/tmyclean/utilities/TouchImageView;->prevMatchViewHeight:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_4

    .line 625
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/app/tmyclean/utilities/TouchImageView;->savePreviousImageValues()V

    .line 628
    :cond_4
    iget-object v0, v8, Lcom/app/tmyclean/utilities/TouchImageView;->prevMatrix:Landroid/graphics/Matrix;

    iget-object v1, v8, Lcom/app/tmyclean/utilities/TouchImageView;->m:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 633
    iget-object v0, v8, Lcom/app/tmyclean/utilities/TouchImageView;->m:[F

    const/4 v1, 0x0

    iget v2, v8, Lcom/app/tmyclean/utilities/TouchImageView;->matchViewWidth:F

    int-to-float v3, v10

    div-float/2addr v2, v3

    iget v3, v8, Lcom/app/tmyclean/utilities/TouchImageView;->normalizedScale:F

    mul-float v2, v2, v3

    aput v2, v0, v1

    .line 634
    const/4 v1, 0x4

    iget v2, v8, Lcom/app/tmyclean/utilities/TouchImageView;->matchViewHeight:F

    int-to-float v4, v11

    div-float/2addr v2, v4

    mul-float v2, v2, v3

    aput v2, v0, v1

    .line 639
    const/4 v1, 0x2

    aget v16, v0, v1

    .line 640
    .local v16, "transX":F
    const/4 v1, 0x5

    aget v17, v0, v1

    .line 645
    .local v17, "transY":F
    iget v0, v8, Lcom/app/tmyclean/utilities/TouchImageView;->prevMatchViewWidth:F

    mul-float v18, v0, v3

    .line 646
    .local v18, "prevActualWidth":F
    invoke-direct/range {p0 .. p0}, Lcom/app/tmyclean/utilities/TouchImageView;->getImageWidth()F

    move-result v19

    .line 647
    .local v19, "actualWidth":F
    const/4 v1, 0x2

    iget v5, v8, Lcom/app/tmyclean/utilities/TouchImageView;->prevViewWidth:I

    iget v6, v8, Lcom/app/tmyclean/utilities/TouchImageView;->viewWidth:I

    move-object/from16 v0, p0

    move/from16 v2, v16

    move/from16 v3, v18

    move/from16 v4, v19

    move v7, v10

    invoke-direct/range {v0 .. v7}, Lcom/app/tmyclean/utilities/TouchImageView;->translateMatrixAfterRotate(IFFFIII)V

    .line 652
    iget v0, v8, Lcom/app/tmyclean/utilities/TouchImageView;->prevMatchViewHeight:F

    iget v1, v8, Lcom/app/tmyclean/utilities/TouchImageView;->normalizedScale:F

    mul-float v20, v0, v1

    .line 653
    .local v20, "prevActualHeight":F
    invoke-direct/range {p0 .. p0}, Lcom/app/tmyclean/utilities/TouchImageView;->getImageHeight()F

    move-result v21

    .line 654
    .local v21, "actualHeight":F
    const/4 v1, 0x5

    iget v5, v8, Lcom/app/tmyclean/utilities/TouchImageView;->prevViewHeight:I

    iget v6, v8, Lcom/app/tmyclean/utilities/TouchImageView;->viewHeight:I

    move-object/from16 v0, p0

    move/from16 v2, v17

    move/from16 v3, v20

    move/from16 v4, v21

    move v7, v11

    invoke-direct/range {v0 .. v7}, Lcom/app/tmyclean/utilities/TouchImageView;->translateMatrixAfterRotate(IFFFIII)V

    .line 659
    iget-object v0, v8, Lcom/app/tmyclean/utilities/TouchImageView;->matrix:Landroid/graphics/Matrix;

    iget-object v1, v8, Lcom/app/tmyclean/utilities/TouchImageView;->m:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setValues([F)V

    .line 661
    .end local v16    # "transX":F
    .end local v17    # "transY":F
    .end local v18    # "prevActualWidth":F
    .end local v19    # "actualWidth":F
    .end local v20    # "prevActualHeight":F
    .end local v21    # "actualHeight":F
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/app/tmyclean/utilities/TouchImageView;->fixTrans()V

    .line 662
    iget-object v0, v8, Lcom/app/tmyclean/utilities/TouchImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v8, v0}, Lcom/app/tmyclean/utilities/TouchImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 663
    return-void

    .line 564
    .end local v10    # "drawableWidth":I
    .end local v11    # "drawableHeight":I
    .end local v12    # "scaleX":F
    .end local v13    # "scaleY":F
    .end local v14    # "redundantXSpace":F
    .end local v15    # "redundantYSpace":F
    :cond_5
    :goto_2
    return-void

    .line 561
    :cond_6
    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private fixScaleTrans()V
    .locals 5

    .line 479
    invoke-direct {p0}, Lcom/app/tmyclean/utilities/TouchImageView;->fixTrans()V

    .line 480
    iget-object v0, p0, Lcom/app/tmyclean/utilities/TouchImageView;->matrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/app/tmyclean/utilities/TouchImageView;->m:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 481
    invoke-direct {p0}, Lcom/app/tmyclean/utilities/TouchImageView;->getImageWidth()F

    move-result v0

    iget v1, p0, Lcom/app/tmyclean/utilities/TouchImageView;->viewWidth:I

    int-to-float v2, v1

    const/high16 v3, 0x40000000    # 2.0f

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    .line 482
    iget-object v0, p0, Lcom/app/tmyclean/utilities/TouchImageView;->m:[F

    const/4 v2, 0x2

    int-to-float v1, v1

    invoke-direct {p0}, Lcom/app/tmyclean/utilities/TouchImageView;->getImageWidth()F

    move-result v4

    sub-float/2addr v1, v4

    div-float/2addr v1, v3

    aput v1, v0, v2

    .line 485
    :cond_0
    invoke-direct {p0}, Lcom/app/tmyclean/utilities/TouchImageView;->getImageHeight()F

    move-result v0

    iget v1, p0, Lcom/app/tmyclean/utilities/TouchImageView;->viewHeight:I

    int-to-float v2, v1

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    .line 486
    iget-object v0, p0, Lcom/app/tmyclean/utilities/TouchImageView;->m:[F

    const/4 v2, 0x5

    int-to-float v1, v1

    invoke-direct {p0}, Lcom/app/tmyclean/utilities/TouchImageView;->getImageHeight()F

    move-result v4

    sub-float/2addr v1, v4

    div-float/2addr v1, v3

    aput v1, v0, v2

    .line 488
    :cond_1
    iget-object v0, p0, Lcom/app/tmyclean/utilities/TouchImageView;->matrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/app/tmyclean/utilities/TouchImageView;->m:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setValues([F)V

    .line 489
    return-void
.end method

.method private fixTrans()V
    .locals 6

    .line 459
    iget-object v0, p0, Lcom/app/tmyclean/utilities/TouchImageView;->matrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/app/tmyclean/utilities/TouchImageView;->m:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 460
    iget-object v0, p0, Lcom/app/tmyclean/utilities/TouchImageView;->m:[F

    const/4 v1, 0x2

    aget v1, v0, v1

    .line 461
    .local v1, "transX":F
    const/4 v2, 0x5

    aget v0, v0, v2

    .line 463
    .local v0, "transY":F
    iget v2, p0, Lcom/app/tmyclean/utilities/TouchImageView;->viewWidth:I

    int-to-float v2, v2

    invoke-direct {p0}, Lcom/app/tmyclean/utilities/TouchImageView;->getImageWidth()F

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Lcom/app/tmyclean/utilities/TouchImageView;->getFixTrans(FFF)F

    move-result v2

    .line 464
    .local v2, "fixTransX":F
    iget v3, p0, Lcom/app/tmyclean/utilities/TouchImageView;->viewHeight:I

    int-to-float v3, v3

    invoke-direct {p0}, Lcom/app/tmyclean/utilities/TouchImageView;->getImageHeight()F

    move-result v4

    invoke-direct {p0, v0, v3, v4}, Lcom/app/tmyclean/utilities/TouchImageView;->getFixTrans(FFF)F

    move-result v3

    .line 466
    .local v3, "fixTransY":F
    const/4 v4, 0x0

    cmpl-float v5, v2, v4

    if-nez v5, :cond_0

    cmpl-float v4, v3, v4

    if-eqz v4, :cond_1

    .line 467
    :cond_0
    iget-object v4, p0, Lcom/app/tmyclean/utilities/TouchImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 469
    :cond_1
    return-void
.end method

.method private getFixDragTrans(FFF)F
    .locals 1
    .param p1, "delta"    # F
    .param p2, "viewSize"    # F
    .param p3, "contentSize"    # F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "delta",
            "viewSize",
            "contentSize"
        }
    .end annotation

    .line 511
    cmpg-float v0, p3, p2

    if-gtz v0, :cond_0

    .line 512
    const/4 v0, 0x0

    return v0

    .line 514
    :cond_0
    return p1
.end method

.method private getFixTrans(FFF)F
    .locals 3
    .param p1, "trans"    # F
    .param p2, "viewSize"    # F
    .param p3, "contentSize"    # F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "trans",
            "viewSize",
            "contentSize"
        }
    .end annotation

    .line 494
    cmpg-float v0, p3, p2

    if-gtz v0, :cond_0

    .line 495
    const/4 v0, 0x0

    .line 496
    .local v0, "minTrans":F
    sub-float v1, p2, p3

    .local v1, "maxTrans":F
    goto :goto_0

    .line 499
    .end local v0    # "minTrans":F
    .end local v1    # "maxTrans":F
    :cond_0
    sub-float v0, p2, p3

    .line 500
    .restart local v0    # "minTrans":F
    const/4 v1, 0x0

    .line 503
    .restart local v1    # "maxTrans":F
    :goto_0
    cmpg-float v2, p1, v0

    if-gez v2, :cond_1

    .line 504
    neg-float v2, p1

    add-float/2addr v2, v0

    return v2

    .line 505
    :cond_1
    cmpl-float v2, p1, v1

    if-lez v2, :cond_2

    .line 506
    neg-float v2, p1

    add-float/2addr v2, v1

    return v2

    .line 507
    :cond_2
    const/4 v2, 0x0

    return v2
.end method

.method private getImageHeight()F
    .locals 2

    .line 522
    iget v0, p0, Lcom/app/tmyclean/utilities/TouchImageView;->matchViewHeight:F

    iget v1, p0, Lcom/app/tmyclean/utilities/TouchImageView;->normalizedScale:F

    mul-float v0, v0, v1

    return v0
.end method

.method private getImageWidth()F
    .locals 2

    .line 518
    iget v0, p0, Lcom/app/tmyclean/utilities/TouchImageView;->matchViewWidth:F

    iget v1, p0, Lcom/app/tmyclean/utilities/TouchImageView;->normalizedScale:F

    mul-float v0, v0, v1

    return v0
.end method

.method private printMatrixInfo()V
    .locals 3

    .line 1283
    const/16 v0, 0x9

    new-array v0, v0, [F

    .line 1284
    .local v0, "n":[F
    iget-object v1, p0, Lcom/app/tmyclean/utilities/TouchImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 1285
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Scale: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    aget v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " TransX: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x2

    aget v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " TransY: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x5

    aget v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DEBUG"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1286
    return-void
.end method

.method private savePreviousImageValues()V
    .locals 2

    .line 237
    iget-object v0, p0, Lcom/app/tmyclean/utilities/TouchImageView;->matrix:Landroid/graphics/Matrix;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/app/tmyclean/utilities/TouchImageView;->viewHeight:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/app/tmyclean/utilities/TouchImageView;->viewWidth:I

    if-eqz v1, :cond_0

    .line 238
    iget-object v1, p0, Lcom/app/tmyclean/utilities/TouchImageView;->m:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 239
    iget-object v0, p0, Lcom/app/tmyclean/utilities/TouchImageView;->prevMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/app/tmyclean/utilities/TouchImageView;->m:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setValues([F)V

    .line 240
    iget v0, p0, Lcom/app/tmyclean/utilities/TouchImageView;->matchViewHeight:F

    iput v0, p0, Lcom/app/tmyclean/utilities/TouchImageView;->prevMatchViewHeight:F

    .line 241
    iget v0, p0, Lcom/app/tmyclean/utilities/TouchImageView;->matchViewWidth:F

    iput v0, p0, Lcom/app/tmyclean/utilities/TouchImageView;->prevMatchViewWidth:F

    .line 242
    iget v0, p0, Lcom/app/tmyclean/utilities/TouchImageView;->viewHeight:I

    iput v0, p0, Lcom/app/tmyclean/utilities/TouchImageView;->prevViewHeight:I

    .line 243
    iget v0, p0, Lcom/app/tmyclean/utilities/TouchImageView;->viewWidth:I

    iput v0, p0, Lcom/app/tmyclean/utilities/TouchImageView;->prevViewWidth:I

    .line 245
    :cond_0
    return-void
.end method

.method private scaleImage(DFFZ)V
    .locals 6
    .param p1, "deltaScale"    # D
    .param p3, "focusX"    # F
    .param p4, "focusY"    # F
    .param p5, "stretchImageToSuper"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "deltaScale",
            "focusX",
            "focusY",
            "stretchImageToSuper"
        }
    .end annotation

    .line 937
    if-eqz p5, :cond_0

    .line 938
    iget v0, p0, Lcom/app/tmyclean/utilities/TouchImageView;->superMinScale:F

    .line 939
    .local v0, "lowerScale":F
    iget v1, p0, Lcom/app/tmyclean/utilities/TouchImageView;->superMaxScale:F

    .local v1, "upperScale":F
    goto :goto_0

    .line 942
    .end local v0    # "lowerScale":F
    .end local v1    # "upperScale":F
    :cond_0
    iget v0, p0, Lcom/app/tmyclean/utilities/TouchImageView;->minScale:F

    .line 943
    .restart local v0    # "lowerScale":F
    iget v1, p0, Lcom/app/tmyclean/utilities/TouchImageView;->maxScale:F

    .line 946
    .restart local v1    # "upperScale":F
    :goto_0
    iget v2, p0, Lcom/app/tmyclean/utilities/TouchImageView;->normalizedScale:F

    .line 947
    .local v2, "origScale":F
    iget v3, p0, Lcom/app/tmyclean/utilities/TouchImageView;->normalizedScale:F

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, p1

    double-to-float v3, v3

    iput v3, p0, Lcom/app/tmyclean/utilities/TouchImageView;->normalizedScale:F

    .line 948
    cmpl-float v4, v3, v1

    if-lez v4, :cond_1

    .line 949
    iput v1, p0, Lcom/app/tmyclean/utilities/TouchImageView;->normalizedScale:F

    .line 950
    div-float v3, v1, v2

    float-to-double p1, v3

    goto :goto_1

    .line 951
    :cond_1
    cmpg-float v3, v3, v0

    if-gez v3, :cond_2

    .line 952
    iput v0, p0, Lcom/app/tmyclean/utilities/TouchImageView;->normalizedScale:F

    .line 953
    div-float v3, v0, v2

    float-to-double p1, v3

    .line 956
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/app/tmyclean/utilities/TouchImageView;->matrix:Landroid/graphics/Matrix;

    double-to-float v4, p1

    double-to-float v5, p1

    invoke-virtual {v3, v4, v5, p3, p4}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 957
    invoke-direct {p0}, Lcom/app/tmyclean/utilities/TouchImageView;->fixScaleTrans()V

    .line 958
    return-void
.end method

.method private setState(Lcom/app/tmyclean/utilities/TouchImageView$State;)V
    .locals 0
    .param p1, "state"    # Lcom/app/tmyclean/utilities/TouchImageView$State;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 732
    iput-object p1, p0, Lcom/app/tmyclean/utilities/TouchImageView;->state:Lcom/app/tmyclean/utilities/TouchImageView$State;

    .line 733
    return-void
.end method

.method private setViewSize(III)I
    .locals 1
    .param p1, "mode"    # I
    .param p2, "size"    # I
    .param p3, "drawableWidth"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "mode",
            "size",
            "drawableWidth"
        }
    .end annotation

    .line 675
    sparse-switch p1, :sswitch_data_0

    .line 689
    move v0, p2

    .local v0, "viewSize":I
    goto :goto_0

    .line 677
    .end local v0    # "viewSize":I
    :sswitch_0
    move v0, p2

    .line 678
    .restart local v0    # "viewSize":I
    goto :goto_0

    .line 685
    .end local v0    # "viewSize":I
    :sswitch_1
    move v0, p3

    .line 686
    .restart local v0    # "viewSize":I
    goto :goto_0

    .line 681
    .end local v0    # "viewSize":I
    :sswitch_2
    invoke-static {p3, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 682
    .restart local v0    # "viewSize":I
    nop

    .line 692
    :goto_0
    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_2
        0x0 -> :sswitch_1
        0x40000000 -> :sswitch_0
    .end sparse-switch
.end method

.method private sharedConstructing(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 118
    const/4 v0, 0x1

    invoke-super {p0, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setClickable(Z)V

    .line 119
    iput-object p1, p0, Lcom/app/tmyclean/utilities/TouchImageView;->context:Landroid/content/Context;

    .line 120
    new-instance v0, Landroid/view/ScaleGestureDetector;

    new-instance v1, Lcom/app/tmyclean/utilities/TouchImageView$ScaleListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/app/tmyclean/utilities/TouchImageView$ScaleListener;-><init>(Lcom/app/tmyclean/utilities/TouchImageView;Lcom/app/tmyclean/utilities/TouchImageView$1;)V

    invoke-direct {v0, p1, v1}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/app/tmyclean/utilities/TouchImageView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    .line 121
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/app/tmyclean/utilities/TouchImageView$GestureListener;

    invoke-direct {v1, p0, v2}, Lcom/app/tmyclean/utilities/TouchImageView$GestureListener;-><init>(Lcom/app/tmyclean/utilities/TouchImageView;Lcom/app/tmyclean/utilities/TouchImageView$1;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/app/tmyclean/utilities/TouchImageView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 122
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/app/tmyclean/utilities/TouchImageView;->matrix:Landroid/graphics/Matrix;

    .line 123
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/app/tmyclean/utilities/TouchImageView;->prevMatrix:Landroid/graphics/Matrix;

    .line 124
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/app/tmyclean/utilities/TouchImageView;->m:[F

    .line 125
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/app/tmyclean/utilities/TouchImageView;->normalizedScale:F

    .line 126
    iget-object v1, p0, Lcom/app/tmyclean/utilities/TouchImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    if-nez v1, :cond_0

    .line 127
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    iput-object v1, p0, Lcom/app/tmyclean/utilities/TouchImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    .line 129
    :cond_0
    iput v0, p0, Lcom/app/tmyclean/utilities/TouchImageView;->minScale:F

    .line 130
    const/high16 v1, 0x40400000    # 3.0f

    iput v1, p0, Lcom/app/tmyclean/utilities/TouchImageView;->maxScale:F

    .line 131
    const/high16 v3, 0x3f400000    # 0.75f

    mul-float v0, v0, v3

    iput v0, p0, Lcom/app/tmyclean/utilities/TouchImageView;->superMinScale:F

    .line 132
    const/high16 v0, 0x3fa00000    # 1.25f

    mul-float v1, v1, v0

    iput v1, p0, Lcom/app/tmyclean/utilities/TouchImageView;->superMaxScale:F

    .line 133
    iget-object v0, p0, Lcom/app/tmyclean/utilities/TouchImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lcom/app/tmyclean/utilities/TouchImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 134
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/app/tmyclean/utilities/TouchImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 135
    sget-object v0, Lcom/app/tmyclean/utilities/TouchImageView$State;->NONE:Lcom/app/tmyclean/utilities/TouchImageView$State;

    invoke-direct {p0, v0}, Lcom/app/tmyclean/utilities/TouchImageView;->setState(Lcom/app/tmyclean/utilities/TouchImageView$State;)V

    .line 136
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/app/tmyclean/utilities/TouchImageView;->onDrawReady:Z

    .line 137
    new-instance v0, Lcom/app/tmyclean/utilities/TouchImageView$PrivateOnTouchListener;

    invoke-direct {v0, p0, v2}, Lcom/app/tmyclean/utilities/TouchImageView$PrivateOnTouchListener;-><init>(Lcom/app/tmyclean/utilities/TouchImageView;Lcom/app/tmyclean/utilities/TouchImageView$1;)V

    invoke-super {p0, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 138
    return-void
.end method

.method private transformCoordBitmapToTouch(FF)Landroid/graphics/PointF;
    .locals 7
    .param p1, "bx"    # F
    .param p2, "by"    # F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "bx",
            "by"
        }
    .end annotation

    .line 1100
    iget-object v0, p0, Lcom/app/tmyclean/utilities/TouchImageView;->matrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/app/tmyclean/utilities/TouchImageView;->m:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 1101
    invoke-virtual {p0}, Lcom/app/tmyclean/utilities/TouchImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    .line 1102
    .local v0, "origW":F
    invoke-virtual {p0}, Lcom/app/tmyclean/utilities/TouchImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    int-to-float v1, v1

    .line 1103
    .local v1, "origH":F
    div-float v2, p1, v0

    .line 1104
    .local v2, "px":F
    div-float v3, p2, v1

    .line 1105
    .local v3, "py":F
    iget-object v4, p0, Lcom/app/tmyclean/utilities/TouchImageView;->m:[F

    const/4 v5, 0x2

    aget v4, v4, v5

    invoke-direct {p0}, Lcom/app/tmyclean/utilities/TouchImageView;->getImageWidth()F

    move-result v5

    mul-float v5, v5, v2

    add-float/2addr v4, v5

    .line 1106
    .local v4, "finalX":F
    iget-object v5, p0, Lcom/app/tmyclean/utilities/TouchImageView;->m:[F

    const/4 v6, 0x5

    aget v5, v5, v6

    invoke-direct {p0}, Lcom/app/tmyclean/utilities/TouchImageView;->getImageHeight()F

    move-result v6

    mul-float v6, v6, v3

    add-float/2addr v5, v6

    .line 1107
    .local v5, "finalY":F
    new-instance v6, Landroid/graphics/PointF;

    invoke-direct {v6, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v6
.end method

.method private transformCoordTouchToBitmap(FFZ)Landroid/graphics/PointF;
    .locals 8
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "clipToBitmap"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "clipToBitmap"
        }
    .end annotation

    .line 1075
    iget-object v0, p0, Lcom/app/tmyclean/utilities/TouchImageView;->matrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/app/tmyclean/utilities/TouchImageView;->m:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 1076
    invoke-virtual {p0}, Lcom/app/tmyclean/utilities/TouchImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    .line 1077
    .local v0, "origW":F
    invoke-virtual {p0}, Lcom/app/tmyclean/utilities/TouchImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    int-to-float v1, v1

    .line 1078
    .local v1, "origH":F
    iget-object v2, p0, Lcom/app/tmyclean/utilities/TouchImageView;->m:[F

    const/4 v3, 0x2

    aget v3, v2, v3

    .line 1079
    .local v3, "transX":F
    const/4 v4, 0x5

    aget v2, v2, v4

    .line 1080
    .local v2, "transY":F
    sub-float v4, p1, v3

    mul-float v4, v4, v0

    invoke-direct {p0}, Lcom/app/tmyclean/utilities/TouchImageView;->getImageWidth()F

    move-result v5

    div-float/2addr v4, v5

    .line 1081
    .local v4, "finalX":F
    sub-float v5, p2, v2

    mul-float v5, v5, v1

    invoke-direct {p0}, Lcom/app/tmyclean/utilities/TouchImageView;->getImageHeight()F

    move-result v6

    div-float/2addr v5, v6

    .line 1083
    .local v5, "finalY":F
    if-eqz p3, :cond_0

    .line 1084
    const/4 v6, 0x0

    invoke-static {v4, v6}, Ljava/lang/Math;->max(FF)F

    move-result v7

    invoke-static {v7, v0}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 1085
    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v6

    invoke-static {v6, v1}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 1088
    :cond_0
    new-instance v6, Landroid/graphics/PointF;

    invoke-direct {v6, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v6
.end method

.method private translateMatrixAfterRotate(IFFFIII)V
    .locals 5
    .param p1, "axis"    # I
    .param p2, "trans"    # F
    .param p3, "prevImageSize"    # F
    .param p4, "imageSize"    # F
    .param p5, "prevViewSize"    # I
    .param p6, "viewSize"    # I
    .param p7, "drawableSize"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "axis",
            "trans",
            "prevImageSize",
            "imageSize",
            "prevViewSize",
            "viewSize",
            "drawableSize"
        }
    .end annotation

    .line 708
    int-to-float v0, p6

    const/high16 v1, 0x3f000000    # 0.5f

    cmpg-float v0, p4, v0

    if-gez v0, :cond_0

    .line 712
    iget-object v0, p0, Lcom/app/tmyclean/utilities/TouchImageView;->m:[F

    int-to-float v2, p6

    int-to-float v3, p7

    const/4 v4, 0x0

    aget v4, v0, v4

    mul-float v3, v3, v4

    sub-float/2addr v2, v3

    mul-float v2, v2, v1

    aput v2, v0, p1

    goto :goto_0

    .line 714
    :cond_0
    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_1

    .line 718
    iget-object v0, p0, Lcom/app/tmyclean/utilities/TouchImageView;->m:[F

    int-to-float v2, p6

    sub-float v2, p4, v2

    mul-float v2, v2, v1

    neg-float v1, v2

    aput v1, v0, p1

    goto :goto_0

    .line 726
    :cond_1
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    int-to-float v2, p5

    mul-float v2, v2, v1

    add-float/2addr v0, v2

    div-float/2addr v0, p3

    .line 727
    .local v0, "percentage":F
    iget-object v2, p0, Lcom/app/tmyclean/utilities/TouchImageView;->m:[F

    mul-float v3, v0, p4

    int-to-float v4, p6

    mul-float v4, v4, v1

    sub-float/2addr v3, v4

    neg-float v1, v3

    aput v1, v2, p1

    .line 729
    .end local v0    # "percentage":F
    :goto_0
    return-void
.end method


# virtual methods
.method public canScrollHorizontally(I)Z
    .locals 4
    .param p1, "direction"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "direction"
        }
    .end annotation

    .line 741
    iget-object v0, p0, Lcom/app/tmyclean/utilities/TouchImageView;->matrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/app/tmyclean/utilities/TouchImageView;->m:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 742
    iget-object v0, p0, Lcom/app/tmyclean/utilities/TouchImageView;->m:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    .line 744
    .local v0, "x":F
    invoke-direct {p0}, Lcom/app/tmyclean/utilities/TouchImageView;->getImageWidth()F

    move-result v1

    iget v2, p0, Lcom/app/tmyclean/utilities/TouchImageView;->viewWidth:I

    int-to-float v2, v2

    const/4 v3, 0x0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 745
    return v3

    .line 747
    :cond_0
    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_1

    if-gez p1, :cond_1

    .line 748
    return v3

    .line 750
    :cond_1
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lcom/app/tmyclean/utilities/TouchImageView;->viewWidth:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    invoke-direct {p0}, Lcom/app/tmyclean/utilities/TouchImageView;->getImageWidth()F

    move-result v2

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_2

    if-gtz p1, :cond_3

    :cond_2
    const/4 v3, 0x1

    :cond_3
    return v3
.end method

.method public canScrollHorizontallyFroyo(I)Z
    .locals 1
    .param p1, "direction"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "direction"
        }
    .end annotation

    .line 736
    invoke-virtual {p0, p1}, Lcom/app/tmyclean/utilities/TouchImageView;->canScrollHorizontally(I)Z

    move-result v0

    return v0
.end method

.method public getCurrentZoom()F
    .locals 1

    .line 333
    iget v0, p0, Lcom/app/tmyclean/utilities/TouchImageView;->normalizedScale:F

    return v0
.end method

.method public getMaxZoom()F
    .locals 1

    .line 304
    iget v0, p0, Lcom/app/tmyclean/utilities/TouchImageView;->maxScale:F

    return v0
.end method

.method public getMinZoom()F
    .locals 1

    .line 323
    iget v0, p0, Lcom/app/tmyclean/utilities/TouchImageView;->minScale:F

    return v0
.end method

.method public getScaleType()Landroid/widget/ImageView$ScaleType;
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/app/tmyclean/utilities/TouchImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    return-object v0
.end method

.method public getScrollPosition()Landroid/graphics/PointF;
    .locals 6

    .line 430
    invoke-virtual {p0}, Lcom/app/tmyclean/utilities/TouchImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 431
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    .line 432
    const/4 v1, 0x0

    return-object v1

    .line 434
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 435
    .local v1, "drawableWidth":I
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 437
    .local v2, "drawableHeight":I
    iget v3, p0, Lcom/app/tmyclean/utilities/TouchImageView;->viewWidth:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget v4, p0, Lcom/app/tmyclean/utilities/TouchImageView;->viewHeight:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    const/4 v5, 0x1

    invoke-direct {p0, v3, v4, v5}, Lcom/app/tmyclean/utilities/TouchImageView;->transformCoordTouchToBitmap(FFZ)Landroid/graphics/PointF;

    move-result-object v3

    .line 438
    .local v3, "point":Landroid/graphics/PointF;
    iget v4, v3, Landroid/graphics/PointF;->x:F

    int-to-float v5, v1

    div-float/2addr v4, v5

    iput v4, v3, Landroid/graphics/PointF;->x:F

    .line 439
    iget v4, v3, Landroid/graphics/PointF;->y:F

    int-to-float v5, v2

    div-float/2addr v4, v5

    iput v4, v3, Landroid/graphics/PointF;->y:F

    .line 440
    return-object v3
.end method

.method public getZoomedRect()Landroid/graphics/RectF;
    .locals 9

    .line 221
    iget-object v0, p0, Lcom/app/tmyclean/utilities/TouchImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    if-eq v0, v1, :cond_0

    .line 224
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v0, v1}, Lcom/app/tmyclean/utilities/TouchImageView;->transformCoordTouchToBitmap(FFZ)Landroid/graphics/PointF;

    move-result-object v0

    .line 225
    .local v0, "topLeft":Landroid/graphics/PointF;
    iget v2, p0, Lcom/app/tmyclean/utilities/TouchImageView;->viewWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcom/app/tmyclean/utilities/TouchImageView;->viewHeight:I

    int-to-float v3, v3

    invoke-direct {p0, v2, v3, v1}, Lcom/app/tmyclean/utilities/TouchImageView;->transformCoordTouchToBitmap(FFZ)Landroid/graphics/PointF;

    move-result-object v1

    .line 227
    .local v1, "bottomRight":Landroid/graphics/PointF;
    invoke-virtual {p0}, Lcom/app/tmyclean/utilities/TouchImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    .line 228
    .local v2, "w":F
    invoke-virtual {p0}, Lcom/app/tmyclean/utilities/TouchImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    int-to-float v3, v3

    .line 229
    .local v3, "h":F
    new-instance v4, Landroid/graphics/RectF;

    iget v5, v0, Landroid/graphics/PointF;->x:F

    div-float/2addr v5, v2

    iget v6, v0, Landroid/graphics/PointF;->y:F

    div-float/2addr v6, v3

    iget v7, v1, Landroid/graphics/PointF;->x:F

    div-float/2addr v7, v2

    iget v8, v1, Landroid/graphics/PointF;->y:F

    div-float/2addr v8, v3

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v4

    .line 222
    .end local v0    # "topLeft":Landroid/graphics/PointF;
    .end local v1    # "bottomRight":Landroid/graphics/PointF;
    .end local v2    # "w":F
    .end local v3    # "h":F
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getZoomedRect() not supported with FIT_XY"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isZoomed()Z
    .locals 2

    .line 212
    iget v0, p0, Lcom/app/tmyclean/utilities/TouchImageView;->normalizedScale:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newConfig"
        }
    .end annotation

    .line 294
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 295
    invoke-direct {p0}, Lcom/app/tmyclean/utilities/TouchImageView;->savePreviousImageValues()V

    .line 296
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    .line 283
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/app/tmyclean/utilities/TouchImageView;->onDrawReady:Z

    .line 284
    iput-boolean v0, p0, Lcom/app/tmyclean/utilities/TouchImageView;->imageRenderedAtLeastOnce:Z

    .line 285
    iget-object v0, p0, Lcom/app/tmyclean/utilities/TouchImageView;->delayedZoomVariables:Lcom/app/tmyclean/utilities/TouchImageView$ZoomVariables;

    if-eqz v0, :cond_0

    .line 286
    iget v0, v0, Lcom/app/tmyclean/utilities/TouchImageView$ZoomVariables;->scale:F

    iget-object v1, p0, Lcom/app/tmyclean/utilities/TouchImageView;->delayedZoomVariables:Lcom/app/tmyclean/utilities/TouchImageView$ZoomVariables;

    iget v1, v1, Lcom/app/tmyclean/utilities/TouchImageView$ZoomVariables;->focusX:F

    iget-object v2, p0, Lcom/app/tmyclean/utilities/TouchImageView;->delayedZoomVariables:Lcom/app/tmyclean/utilities/TouchImageView$ZoomVariables;

    iget v2, v2, Lcom/app/tmyclean/utilities/TouchImageView$ZoomVariables;->focusY:F

    iget-object v3, p0, Lcom/app/tmyclean/utilities/TouchImageView;->delayedZoomVariables:Lcom/app/tmyclean/utilities/TouchImageView$ZoomVariables;

    iget-object v3, v3, Lcom/app/tmyclean/utilities/TouchImageView$ZoomVariables;->scaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/app/tmyclean/utilities/TouchImageView;->setZoom(FFFLandroid/widget/ImageView$ScaleType;)V

    .line 287
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/app/tmyclean/utilities/TouchImageView;->delayedZoomVariables:Lcom/app/tmyclean/utilities/TouchImageView$ZoomVariables;

    .line 289
    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 290
    return-void
.end method

.method protected onMeasure(II)V
    .locals 9
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "widthMeasureSpec",
            "heightMeasureSpec"
        }
    .end annotation

    .line 527
    invoke-virtual {p0}, Lcom/app/tmyclean/utilities/TouchImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 528
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 533
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 534
    .local v1, "drawableWidth":I
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 535
    .local v2, "drawableHeight":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 536
    .local v3, "widthSize":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 537
    .local v4, "widthMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 538
    .local v5, "heightSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    .line 539
    .local v6, "heightMode":I
    invoke-direct {p0, v4, v3, v1}, Lcom/app/tmyclean/utilities/TouchImageView;->setViewSize(III)I

    move-result v7

    iput v7, p0, Lcom/app/tmyclean/utilities/TouchImageView;->viewWidth:I

    .line 540
    invoke-direct {p0, v6, v5, v2}, Lcom/app/tmyclean/utilities/TouchImageView;->setViewSize(III)I

    move-result v7

    iput v7, p0, Lcom/app/tmyclean/utilities/TouchImageView;->viewHeight:I

    .line 545
    iget v8, p0, Lcom/app/tmyclean/utilities/TouchImageView;->viewWidth:I

    invoke-virtual {p0, v8, v7}, Lcom/app/tmyclean/utilities/TouchImageView;->setMeasuredDimension(II)V

    .line 550
    invoke-direct {p0}, Lcom/app/tmyclean/utilities/TouchImageView;->fitImageToView()V

    .line 551
    return-void

    .line 529
    .end local v1    # "drawableWidth":I
    .end local v2    # "drawableHeight":I
    .end local v3    # "widthSize":I
    .end local v4    # "widthMode":I
    .end local v5    # "heightSize":I
    .end local v6    # "heightMode":I
    :cond_1
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v1}, Lcom/app/tmyclean/utilities/TouchImageView;->setMeasuredDimension(II)V

    .line 530
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 264
    instance-of v0, p1, Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 265
    move-object v0, p1

    check-cast v0, Landroid/os/Bundle;

    .line 266
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "saveScale"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/app/tmyclean/utilities/TouchImageView;->normalizedScale:F

    .line 267
    const-string v1, "matrix"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloatArray(Ljava/lang/String;)[F

    move-result-object v1

    iput-object v1, p0, Lcom/app/tmyclean/utilities/TouchImageView;->m:[F

    .line 268
    iget-object v2, p0, Lcom/app/tmyclean/utilities/TouchImageView;->prevMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v1}, Landroid/graphics/Matrix;->setValues([F)V

    .line 269
    const-string v1, "matchViewHeight"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/app/tmyclean/utilities/TouchImageView;->prevMatchViewHeight:F

    .line 270
    const-string v1, "matchViewWidth"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/app/tmyclean/utilities/TouchImageView;->prevMatchViewWidth:F

    .line 271
    const-string v1, "viewHeight"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/app/tmyclean/utilities/TouchImageView;->prevViewHeight:I

    .line 272
    const-string v1, "viewWidth"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/app/tmyclean/utilities/TouchImageView;->prevViewWidth:I

    .line 273
    const-string v1, "imageRendered"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/app/tmyclean/utilities/TouchImageView;->imageRenderedAtLeastOnce:Z

    .line 274
    const-string v1, "instanceState"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroidx/appcompat/widget/AppCompatImageView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 275
    return-void

    .line 278
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 279
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 249
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 250
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatImageView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    const-string v2, "instanceState"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 251
    iget v1, p0, Lcom/app/tmyclean/utilities/TouchImageView;->normalizedScale:F

    const-string v2, "saveScale"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 252
    iget v1, p0, Lcom/app/tmyclean/utilities/TouchImageView;->matchViewHeight:F

    const-string v2, "matchViewHeight"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 253
    iget v1, p0, Lcom/app/tmyclean/utilities/TouchImageView;->matchViewWidth:F

    const-string v2, "matchViewWidth"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 254
    iget v1, p0, Lcom/app/tmyclean/utilities/TouchImageView;->viewWidth:I

    const-string v2, "viewWidth"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 255
    iget v1, p0, Lcom/app/tmyclean/utilities/TouchImageView;->viewHeight:I

    const-string v2, "viewHeight"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 256
    iget-object v1, p0, Lcom/app/tmyclean/utilities/TouchImageView;->matrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/app/tmyclean/utilities/TouchImageView;->m:[F

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->getValues([F)V

    .line 257
    iget-object v1, p0, Lcom/app/tmyclean/utilities/TouchImageView;->m:[F

    const-string v2, "matrix"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V

    .line 258
    iget-boolean v1, p0, Lcom/app/tmyclean/utilities/TouchImageView;->imageRenderedAtLeastOnce:Z

    const-string v2, "imageRendered"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 259
    return-object v0
.end method

.method public resetZoom()V
    .locals 1

    .line 350
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/app/tmyclean/utilities/TouchImageView;->normalizedScale:F

    .line 351
    invoke-direct {p0}, Lcom/app/tmyclean/utilities/TouchImageView;->fitImageToView()V

    .line 352
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "bm"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bm"
        }
    .end annotation

    .line 162
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 163
    invoke-direct {p0}, Lcom/app/tmyclean/utilities/TouchImageView;->savePreviousImageValues()V

    .line 164
    invoke-direct {p0}, Lcom/app/tmyclean/utilities/TouchImageView;->fitImageToView()V

    .line 165
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "drawable"
        }
    .end annotation

    .line 169
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 170
    invoke-direct {p0}, Lcom/app/tmyclean/utilities/TouchImageView;->savePreviousImageValues()V

    .line 171
    invoke-direct {p0}, Lcom/app/tmyclean/utilities/TouchImageView;->fitImageToView()V

    .line 172
    return-void
.end method

.method public setImageResource(I)V
    .locals 0
    .param p1, "resId"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resId"
        }
    .end annotation

    .line 155
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 156
    invoke-direct {p0}, Lcom/app/tmyclean/utilities/TouchImageView;->savePreviousImageValues()V

    .line 157
    invoke-direct {p0}, Lcom/app/tmyclean/utilities/TouchImageView;->fitImageToView()V

    .line 158
    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uri"
        }
    .end annotation

    .line 176
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageURI(Landroid/net/Uri;)V

    .line 177
    invoke-direct {p0}, Lcom/app/tmyclean/utilities/TouchImageView;->savePreviousImageValues()V

    .line 178
    invoke-direct {p0}, Lcom/app/tmyclean/utilities/TouchImageView;->fitImageToView()V

    .line 179
    return-void
.end method

.method public setMaxZoom(F)V
    .locals 1
    .param p1, "max"    # F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "max"
        }
    .end annotation

    .line 313
    iput p1, p0, Lcom/app/tmyclean/utilities/TouchImageView;->maxScale:F

    .line 314
    const/high16 v0, 0x3fa00000    # 1.25f

    mul-float v0, v0, p1

    iput v0, p0, Lcom/app/tmyclean/utilities/TouchImageView;->superMaxScale:F

    .line 315
    return-void
.end method

.method public setMinZoom(F)V
    .locals 1
    .param p1, "min"    # F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "min"
        }
    .end annotation

    .line 342
    iput p1, p0, Lcom/app/tmyclean/utilities/TouchImageView;->minScale:F

    .line 343
    const/high16 v0, 0x3f400000    # 0.75f

    mul-float v0, v0, p1

    iput v0, p0, Lcom/app/tmyclean/utilities/TouchImageView;->superMinScale:F

    .line 344
    return-void
.end method

.method public setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V
    .locals 0
    .param p1, "l"    # Landroid/view/GestureDetector$OnDoubleTapListener;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "l"
        }
    .end annotation

    .line 150
    iput-object p1, p0, Lcom/app/tmyclean/utilities/TouchImageView;->doubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    .line 151
    return-void
.end method

.method public setOnTouchImageViewListener(Lcom/app/tmyclean/utilities/TouchImageView$OnTouchImageViewListener;)V
    .locals 0
    .param p1, "l"    # Lcom/app/tmyclean/utilities/TouchImageView$OnTouchImageViewListener;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "l"
        }
    .end annotation

    .line 146
    iput-object p1, p0, Lcom/app/tmyclean/utilities/TouchImageView;->touchImageViewListener:Lcom/app/tmyclean/utilities/TouchImageView$OnTouchImageViewListener;

    .line 147
    return-void
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 0
    .param p1, "l"    # Landroid/view/View$OnTouchListener;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "l"
        }
    .end annotation

    .line 142
    iput-object p1, p0, Lcom/app/tmyclean/utilities/TouchImageView;->userTouchListener:Landroid/view/View$OnTouchListener;

    .line 143
    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 2
    .param p1, "type"    # Landroid/widget/ImageView$ScaleType;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 183
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    if-eq p1, v0, :cond_2

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_END:Landroid/widget/ImageView$ScaleType;

    if-eq p1, v0, :cond_2

    .line 186
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    if-ne p1, v0, :cond_0

    .line 187
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-super {p0, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0

    .line 190
    :cond_0
    iput-object p1, p0, Lcom/app/tmyclean/utilities/TouchImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    .line 191
    iget-boolean v0, p0, Lcom/app/tmyclean/utilities/TouchImageView;->onDrawReady:Z

    if-eqz v0, :cond_1

    .line 196
    invoke-virtual {p0, p0}, Lcom/app/tmyclean/utilities/TouchImageView;->setZoom(Lcom/app/tmyclean/utilities/TouchImageView;)V

    .line 199
    :cond_1
    :goto_0
    return-void

    .line 184
    :cond_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "TouchImageView does not support FIT_START or FIT_END"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setScrollPosition(FF)V
    .locals 1
    .param p1, "focusX"    # F
    .param p2, "focusY"    # F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "focusX",
            "focusY"
        }
    .end annotation

    .line 451
    iget v0, p0, Lcom/app/tmyclean/utilities/TouchImageView;->normalizedScale:F

    invoke-virtual {p0, v0, p1, p2}, Lcom/app/tmyclean/utilities/TouchImageView;->setZoom(FFF)V

    .line 452
    return-void
.end method

.method public setZoom(F)V
    .locals 1
    .param p1, "scale"    # F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scale"
        }
    .end annotation

    .line 360
    const/high16 v0, 0x3f000000    # 0.5f

    invoke-virtual {p0, p1, v0, v0}, Lcom/app/tmyclean/utilities/TouchImageView;->setZoom(FFF)V

    .line 361
    return-void
.end method

.method public setZoom(FFF)V
    .locals 1
    .param p1, "scale"    # F
    .param p2, "focusX"    # F
    .param p3, "focusY"    # F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "scale",
            "focusX",
            "focusY"
        }
    .end annotation

    .line 374
    iget-object v0, p0, Lcom/app/tmyclean/utilities/TouchImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/app/tmyclean/utilities/TouchImageView;->setZoom(FFFLandroid/widget/ImageView$ScaleType;)V

    .line 375
    return-void
.end method

.method public setZoom(FFFLandroid/widget/ImageView$ScaleType;)V
    .locals 8
    .param p1, "scale"    # F
    .param p2, "focusX"    # F
    .param p3, "focusY"    # F
    .param p4, "scaleType"    # Landroid/widget/ImageView$ScaleType;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "scale",
            "focusX",
            "focusY",
            "scaleType"
        }
    .end annotation

    .line 394
    iget-boolean v0, p0, Lcom/app/tmyclean/utilities/TouchImageView;->onDrawReady:Z

    if-nez v0, :cond_0

    .line 395
    new-instance v0, Lcom/app/tmyclean/utilities/TouchImageView$ZoomVariables;

    move-object v1, v0

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/app/tmyclean/utilities/TouchImageView$ZoomVariables;-><init>(Lcom/app/tmyclean/utilities/TouchImageView;FFFLandroid/widget/ImageView$ScaleType;)V

    iput-object v0, p0, Lcom/app/tmyclean/utilities/TouchImageView;->delayedZoomVariables:Lcom/app/tmyclean/utilities/TouchImageView$ZoomVariables;

    .line 396
    return-void

    .line 399
    :cond_0
    iget-object v0, p0, Lcom/app/tmyclean/utilities/TouchImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    if-eq p4, v0, :cond_1

    .line 400
    invoke-virtual {p0, p4}, Lcom/app/tmyclean/utilities/TouchImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 402
    :cond_1
    invoke-virtual {p0}, Lcom/app/tmyclean/utilities/TouchImageView;->resetZoom()V

    .line 403
    float-to-double v2, p1

    iget v0, p0, Lcom/app/tmyclean/utilities/TouchImageView;->viewWidth:I

    const/4 v7, 0x2

    div-int/2addr v0, v7

    int-to-float v4, v0

    iget v0, p0, Lcom/app/tmyclean/utilities/TouchImageView;->viewHeight:I

    div-int/2addr v0, v7

    int-to-float v5, v0

    const/4 v6, 0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/app/tmyclean/utilities/TouchImageView;->scaleImage(DFFZ)V

    .line 404
    iget-object v0, p0, Lcom/app/tmyclean/utilities/TouchImageView;->matrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/app/tmyclean/utilities/TouchImageView;->m:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 405
    iget-object v0, p0, Lcom/app/tmyclean/utilities/TouchImageView;->m:[F

    invoke-direct {p0}, Lcom/app/tmyclean/utilities/TouchImageView;->getImageWidth()F

    move-result v1

    mul-float v1, v1, p2

    iget v2, p0, Lcom/app/tmyclean/utilities/TouchImageView;->viewWidth:I

    int-to-float v2, v2

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float v2, v2, v3

    sub-float/2addr v1, v2

    neg-float v1, v1

    aput v1, v0, v7

    .line 406
    iget-object v0, p0, Lcom/app/tmyclean/utilities/TouchImageView;->m:[F

    const/4 v1, 0x5

    invoke-direct {p0}, Lcom/app/tmyclean/utilities/TouchImageView;->getImageHeight()F

    move-result v2

    mul-float v2, v2, p3

    iget v4, p0, Lcom/app/tmyclean/utilities/TouchImageView;->viewHeight:I

    int-to-float v4, v4

    mul-float v4, v4, v3

    sub-float/2addr v2, v4

    neg-float v2, v2

    aput v2, v0, v1

    .line 407
    iget-object v0, p0, Lcom/app/tmyclean/utilities/TouchImageView;->matrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/app/tmyclean/utilities/TouchImageView;->m:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setValues([F)V

    .line 408
    invoke-direct {p0}, Lcom/app/tmyclean/utilities/TouchImageView;->fixTrans()V

    .line 409
    iget-object v0, p0, Lcom/app/tmyclean/utilities/TouchImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lcom/app/tmyclean/utilities/TouchImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 410
    return-void
.end method

.method public setZoom(Lcom/app/tmyclean/utilities/TouchImageView;)V
    .locals 5
    .param p1, "img"    # Lcom/app/tmyclean/utilities/TouchImageView;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "img"
        }
    .end annotation

    .line 417
    invoke-virtual {p1}, Lcom/app/tmyclean/utilities/TouchImageView;->getScrollPosition()Landroid/graphics/PointF;

    move-result-object v0

    .line 418
    .local v0, "center":Landroid/graphics/PointF;
    invoke-virtual {p1}, Lcom/app/tmyclean/utilities/TouchImageView;->getCurrentZoom()F

    move-result v1

    iget v2, v0, Landroid/graphics/PointF;->x:F

    iget v3, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1}, Lcom/app/tmyclean/utilities/TouchImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v4

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/app/tmyclean/utilities/TouchImageView;->setZoom(FFFLandroid/widget/ImageView$ScaleType;)V

    .line 419
    return-void
.end method
