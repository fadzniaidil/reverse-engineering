.class public Lcom/github/clans/fab/FloatingActionButton;
.super Landroid/widget/ImageButton;
.source "FloatingActionButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState;,
        Lcom/github/clans/fab/FloatingActionButton$Shadow;,
        Lcom/github/clans/fab/FloatingActionButton$CircleDrawable;
    }
.end annotation


# static fields
.field private static final BAR_MAX_LENGTH:I = 0x10e

.field private static final BAR_SPIN_CYCLE_TIME:D = 500.0

.field private static final PAUSE_GROWING_TIME:J = 0xc8L

.field private static final PORTER_DUFF_CLEAR:Landroid/graphics/Xfermode;

.field public static final SIZE_MINI:I = 0x1

.field public static final SIZE_NORMAL:I


# instance fields
.field private mAnimateProgress:Z

.field private mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mBackgroundPaint:Landroid/graphics/Paint;

.field private mBarExtraLength:F

.field private mBarGrowingFromFront:Z

.field private mBarLength:I

.field private mButtonPositionSaved:Z

.field private mClickListener:Landroid/view/View$OnClickListener;

.field private mColorDisabled:I

.field private mColorNormal:I

.field private mColorPressed:I

.field private mColorRipple:I

.field private mCurrentProgress:F

.field mFabSize:I

.field mGestureDetector:Landroid/view/GestureDetector;

.field private mHideAnimation:Landroid/view/animation/Animation;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIconSize:I

.field private mLabelText:Ljava/lang/String;

.field private mLastTimeAnimated:J

.field private mOriginalX:F

.field private mOriginalY:F

.field private mPausedTimeWithoutGrowing:J

.field private mProgress:I

.field private mProgressBackgroundColor:I

.field private mProgressBarEnabled:Z

.field private mProgressCircleBounds:Landroid/graphics/RectF;

.field private mProgressColor:I

.field private mProgressIndeterminate:Z

.field private mProgressMax:I

.field private mProgressPaint:Landroid/graphics/Paint;

.field private mProgressWidth:I

.field mShadowColor:I

.field mShadowRadius:I

.field mShadowXOffset:I

.field mShadowYOffset:I

.field private mShouldProgressIndeterminate:Z

.field private mShouldSetProgress:Z

.field private mShouldUpdateButtonPosition:Z

.field private mShowAnimation:Landroid/view/animation/Animation;

.field private mShowProgressBackground:Z

.field mShowShadow:Z

.field private mSpinSpeed:F

.field private mTargetProgress:F

.field private mTimeStartGrowing:D

.field private mUsingElevation:Z

.field private mUsingElevationCompat:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 51
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    sput-object v0, Lcom/github/clans/fab/FloatingActionButton;->PORTER_DUFF_CLEAR:Landroid/graphics/Xfermode;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 100
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/github/clans/fab/FloatingActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 101
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 104
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/github/clans/fab/FloatingActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 105
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 108
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {v0, v1}, Lcom/github/clans/fab/Util;->dpToPx(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionButton;->mShadowRadius:I

    .line 48
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Lcom/github/clans/fab/Util;->dpToPx(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionButton;->mShadowXOffset:I

    .line 49
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x40400000    # 3.0f

    invoke-static {v0, v1}, Lcom/github/clans/fab/Util;->dpToPx(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionButton;->mShadowYOffset:I

    .line 61
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41c00000    # 24.0f

    invoke-static {v0, v1}, Lcom/github/clans/fab/Util;->dpToPx(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionButton;->mIconSize:I

    .line 72
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x40c00000    # 6.0f

    invoke-static {v0, v1}, Lcom/github/clans/fab/Util;->dpToPx(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionButton;->mProgressWidth:I

    .line 76
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/github/clans/fab/FloatingActionButton;->mOriginalX:F

    .line 77
    iput v0, p0, Lcom/github/clans/fab/FloatingActionButton;->mOriginalY:F

    .line 79
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/github/clans/fab/FloatingActionButton;->mProgressCircleBounds:Landroid/graphics/RectF;

    .line 80
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/github/clans/fab/FloatingActionButton;->mBackgroundPaint:Landroid/graphics/Paint;

    .line 81
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/github/clans/fab/FloatingActionButton;->mProgressPaint:Landroid/graphics/Paint;

    .line 84
    const/high16 v0, 0x43430000    # 195.0f

    iput v0, p0, Lcom/github/clans/fab/FloatingActionButton;->mSpinSpeed:F

    .line 85
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/github/clans/fab/FloatingActionButton;->mPausedTimeWithoutGrowing:J

    .line 87
    iput-boolean v1, p0, Lcom/github/clans/fab/FloatingActionButton;->mBarGrowingFromFront:Z

    .line 88
    const/16 v0, 0x10

    iput v0, p0, Lcom/github/clans/fab/FloatingActionButton;->mBarLength:I

    .line 96
    const/16 v0, 0x64

    iput v0, p0, Lcom/github/clans/fab/FloatingActionButton;->mProgressMax:I

    .line 573
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/github/clans/fab/FloatingActionButton$2;

    invoke-direct {v2, p0}, Lcom/github/clans/fab/FloatingActionButton$2;-><init>(Lcom/github/clans/fab/FloatingActionButton;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/github/clans/fab/FloatingActionButton;->mGestureDetector:Landroid/view/GestureDetector;

    .line 109
    invoke-direct {p0, p1, p2, p3}, Lcom/github/clans/fab/FloatingActionButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 110
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 114
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 47
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {v0, v1}, Lcom/github/clans/fab/Util;->dpToPx(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionButton;->mShadowRadius:I

    .line 48
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Lcom/github/clans/fab/Util;->dpToPx(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionButton;->mShadowXOffset:I

    .line 49
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x40400000    # 3.0f

    invoke-static {v0, v1}, Lcom/github/clans/fab/Util;->dpToPx(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionButton;->mShadowYOffset:I

    .line 61
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41c00000    # 24.0f

    invoke-static {v0, v1}, Lcom/github/clans/fab/Util;->dpToPx(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionButton;->mIconSize:I

    .line 72
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x40c00000    # 6.0f

    invoke-static {v0, v1}, Lcom/github/clans/fab/Util;->dpToPx(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionButton;->mProgressWidth:I

    .line 76
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/github/clans/fab/FloatingActionButton;->mOriginalX:F

    .line 77
    iput v0, p0, Lcom/github/clans/fab/FloatingActionButton;->mOriginalY:F

    .line 79
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/github/clans/fab/FloatingActionButton;->mProgressCircleBounds:Landroid/graphics/RectF;

    .line 80
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/github/clans/fab/FloatingActionButton;->mBackgroundPaint:Landroid/graphics/Paint;

    .line 81
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/github/clans/fab/FloatingActionButton;->mProgressPaint:Landroid/graphics/Paint;

    .line 84
    const/high16 v0, 0x43430000    # 195.0f

    iput v0, p0, Lcom/github/clans/fab/FloatingActionButton;->mSpinSpeed:F

    .line 85
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/github/clans/fab/FloatingActionButton;->mPausedTimeWithoutGrowing:J

    .line 87
    iput-boolean v1, p0, Lcom/github/clans/fab/FloatingActionButton;->mBarGrowingFromFront:Z

    .line 88
    const/16 v0, 0x10

    iput v0, p0, Lcom/github/clans/fab/FloatingActionButton;->mBarLength:I

    .line 96
    const/16 v0, 0x64

    iput v0, p0, Lcom/github/clans/fab/FloatingActionButton;->mProgressMax:I

    .line 573
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/github/clans/fab/FloatingActionButton$2;

    invoke-direct {v2, p0}, Lcom/github/clans/fab/FloatingActionButton$2;-><init>(Lcom/github/clans/fab/FloatingActionButton;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/github/clans/fab/FloatingActionButton;->mGestureDetector:Landroid/view/GestureDetector;

    .line 115
    invoke-direct {p0, p1, p2, p3}, Lcom/github/clans/fab/FloatingActionButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 116
    return-void
.end method

.method static synthetic access$1000(Lcom/github/clans/fab/FloatingActionButton;)F
    .locals 1
    .param p0, "x0"    # Lcom/github/clans/fab/FloatingActionButton;

    .line 39
    invoke-direct {p0}, Lcom/github/clans/fab/FloatingActionButton;->calculateCenterX()F

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/github/clans/fab/FloatingActionButton;)F
    .locals 1
    .param p0, "x0"    # Lcom/github/clans/fab/FloatingActionButton;

    .line 39
    invoke-direct {p0}, Lcom/github/clans/fab/FloatingActionButton;->calculateCenterY()F

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/github/clans/fab/FloatingActionButton;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/github/clans/fab/FloatingActionButton;

    .line 39
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionButton;->mClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/github/clans/fab/FloatingActionButton;)Z
    .locals 1
    .param p0, "x0"    # Lcom/github/clans/fab/FloatingActionButton;

    .line 39
    iget-boolean v0, p0, Lcom/github/clans/fab/FloatingActionButton;->mProgressBarEnabled:Z

    return v0
.end method

.method static synthetic access$300(Lcom/github/clans/fab/FloatingActionButton;)I
    .locals 1
    .param p0, "x0"    # Lcom/github/clans/fab/FloatingActionButton;

    .line 39
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->mProgressWidth:I

    return v0
.end method

.method static synthetic access$400(Lcom/github/clans/fab/FloatingActionButton;)I
    .locals 1
    .param p0, "x0"    # Lcom/github/clans/fab/FloatingActionButton;

    .line 39
    invoke-direct {p0}, Lcom/github/clans/fab/FloatingActionButton;->calculateMeasuredWidth()I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/github/clans/fab/FloatingActionButton;)I
    .locals 1
    .param p0, "x0"    # Lcom/github/clans/fab/FloatingActionButton;

    .line 39
    invoke-direct {p0}, Lcom/github/clans/fab/FloatingActionButton;->calculateMeasuredHeight()I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/github/clans/fab/FloatingActionButton;)I
    .locals 1
    .param p0, "x0"    # Lcom/github/clans/fab/FloatingActionButton;

    .line 39
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->mColorNormal:I

    return v0
.end method

.method static synthetic access$700()Landroid/graphics/Xfermode;
    .locals 1

    .line 39
    sget-object v0, Lcom/github/clans/fab/FloatingActionButton;->PORTER_DUFF_CLEAR:Landroid/graphics/Xfermode;

    return-object v0
.end method

.method static synthetic access$800(Lcom/github/clans/fab/FloatingActionButton;)I
    .locals 1
    .param p0, "x0"    # Lcom/github/clans/fab/FloatingActionButton;

    .line 39
    invoke-direct {p0}, Lcom/github/clans/fab/FloatingActionButton;->getCircleSize()I

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/github/clans/fab/FloatingActionButton;)Z
    .locals 1
    .param p0, "x0"    # Lcom/github/clans/fab/FloatingActionButton;

    .line 39
    iget-boolean v0, p0, Lcom/github/clans/fab/FloatingActionButton;->mShowProgressBackground:Z

    return v0
.end method

.method private calculateCenterX()F
    .locals 1

    .line 216
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    return v0
.end method

.method private calculateCenterY()F
    .locals 1

    .line 220
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->getMeasuredHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    return v0
.end method

.method private calculateMeasuredHeight()I
    .locals 2

    .line 192
    invoke-direct {p0}, Lcom/github/clans/fab/FloatingActionButton;->getCircleSize()I

    move-result v0

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->calculateShadowHeight()I

    move-result v1

    add-int/2addr v0, v1

    .line 193
    .local v0, "height":I
    iget-boolean v1, p0, Lcom/github/clans/fab/FloatingActionButton;->mProgressBarEnabled:Z

    if-eqz v1, :cond_0

    .line 194
    iget v1, p0, Lcom/github/clans/fab/FloatingActionButton;->mProgressWidth:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 196
    :cond_0
    return v0
.end method

.method private calculateMeasuredWidth()I
    .locals 2

    .line 184
    invoke-direct {p0}, Lcom/github/clans/fab/FloatingActionButton;->getCircleSize()I

    move-result v0

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->calculateShadowWidth()I

    move-result v1

    add-int/2addr v0, v1

    .line 185
    .local v0, "width":I
    iget-boolean v1, p0, Lcom/github/clans/fab/FloatingActionButton;->mProgressBarEnabled:Z

    if-eqz v1, :cond_0

    .line 186
    iget v1, p0, Lcom/github/clans/fab/FloatingActionButton;->mProgressWidth:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 188
    :cond_0
    return v0
.end method

.method private createCircleDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "color"    # I

    .line 424
    new-instance v0, Lcom/github/clans/fab/FloatingActionButton$CircleDrawable;

    new-instance v1, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v1}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/github/clans/fab/FloatingActionButton$CircleDrawable;-><init>(Lcom/github/clans/fab/FloatingActionButton;Landroid/graphics/drawable/shapes/Shape;Lcom/github/clans/fab/FloatingActionButton$1;)V

    .line 425
    .local v0, "shapeDrawable":Lcom/github/clans/fab/FloatingActionButton$CircleDrawable;
    invoke-virtual {v0}, Lcom/github/clans/fab/FloatingActionButton$CircleDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 426
    return-object v0
.end method

.method private createFillDrawable()Landroid/graphics/drawable/Drawable;
    .locals 8

    .line 400
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 401
    .local v0, "drawable":Landroid/graphics/drawable/StateListDrawable;
    const/4 v1, 0x1

    new-array v2, v1, [I

    const v3, -0x101009e

    const/4 v4, 0x0

    aput v3, v2, v4

    iget v3, p0, Lcom/github/clans/fab/FloatingActionButton;->mColorDisabled:I

    invoke-direct {p0, v3}, Lcom/github/clans/fab/FloatingActionButton;->createCircleDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 402
    new-array v2, v1, [I

    const v3, 0x10100a7

    aput v3, v2, v4

    iget v3, p0, Lcom/github/clans/fab/FloatingActionButton;->mColorPressed:I

    invoke-direct {p0, v3}, Lcom/github/clans/fab/FloatingActionButton;->createCircleDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 403
    new-array v2, v4, [I

    iget v3, p0, Lcom/github/clans/fab/FloatingActionButton;->mColorNormal:I

    invoke-direct {p0, v3}, Lcom/github/clans/fab/FloatingActionButton;->createCircleDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 405
    invoke-static {}, Lcom/github/clans/fab/Util;->hasLollipop()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 406
    new-instance v2, Landroid/graphics/drawable/RippleDrawable;

    new-instance v3, Landroid/content/res/ColorStateList;

    new-array v5, v1, [[I

    new-array v6, v4, [I

    aput-object v6, v5, v4

    new-array v6, v1, [I

    iget v7, p0, Lcom/github/clans/fab/FloatingActionButton;->mColorRipple:I

    aput v7, v6, v4

    invoke-direct {v3, v5, v6}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    const/4 v4, 0x0

    invoke-direct {v2, v3, v0, v4}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 408
    .local v2, "ripple":Landroid/graphics/drawable/RippleDrawable;
    new-instance v3, Lcom/github/clans/fab/FloatingActionButton$1;

    invoke-direct {v3, p0}, Lcom/github/clans/fab/FloatingActionButton$1;-><init>(Lcom/github/clans/fab/FloatingActionButton;)V

    invoke-virtual {p0, v3}, Lcom/github/clans/fab/FloatingActionButton;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 414
    invoke-virtual {p0, v1}, Lcom/github/clans/fab/FloatingActionButton;->setClipToOutline(Z)V

    .line 415
    iput-object v2, p0, Lcom/github/clans/fab/FloatingActionButton;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 416
    return-object v2

    .line 419
    .end local v2    # "ripple":Landroid/graphics/drawable/RippleDrawable;
    :cond_0
    iput-object v0, p0, Lcom/github/clans/fab/FloatingActionButton;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 420
    return-object v0
.end method

.method private getCircleSize()I
    .locals 2

    .line 179
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/github/clans/fab/FloatingActionButton;->mFabSize:I

    if-nez v1, :cond_0

    sget v1, Lcom/github/clans/fab/R$dimen;->fab_size_normal:I

    goto :goto_0

    :cond_0
    sget v1, Lcom/github/clans/fab/R$dimen;->fab_size_mini:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method private getShadowX()I
    .locals 2

    .line 208
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->mShadowRadius:I

    iget v1, p0, Lcom/github/clans/fab/FloatingActionButton;->mShadowXOffset:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private getShadowY()I
    .locals 2

    .line 212
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->mShadowRadius:I

    iget v1, p0, Lcom/github/clans/fab/FloatingActionButton;->mShadowYOffset:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 119
    sget-object v0, Lcom/github/clans/fab/R$styleable;->FloatingActionButton:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 120
    .local v0, "attr":Landroid/content/res/TypedArray;
    sget v2, Lcom/github/clans/fab/R$styleable;->FloatingActionButton_fab_colorNormal:I

    const v3, -0x25bcca

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/github/clans/fab/FloatingActionButton;->mColorNormal:I

    .line 121
    sget v2, Lcom/github/clans/fab/R$styleable;->FloatingActionButton_fab_colorPressed:I

    const v3, -0x18afbd

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/github/clans/fab/FloatingActionButton;->mColorPressed:I

    .line 122
    sget v2, Lcom/github/clans/fab/R$styleable;->FloatingActionButton_fab_colorDisabled:I

    const v3, -0x555556

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/github/clans/fab/FloatingActionButton;->mColorDisabled:I

    .line 123
    sget v2, Lcom/github/clans/fab/R$styleable;->FloatingActionButton_fab_colorRipple:I

    const v3, -0x66000001

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/github/clans/fab/FloatingActionButton;->mColorRipple:I

    .line 124
    sget v2, Lcom/github/clans/fab/R$styleable;->FloatingActionButton_fab_showShadow:I

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/github/clans/fab/FloatingActionButton;->mShowShadow:Z

    .line 125
    sget v2, Lcom/github/clans/fab/R$styleable;->FloatingActionButton_fab_shadowColor:I

    const/high16 v4, 0x66000000

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/github/clans/fab/FloatingActionButton;->mShadowColor:I

    .line 126
    sget v2, Lcom/github/clans/fab/R$styleable;->FloatingActionButton_fab_shadowRadius:I

    iget v4, p0, Lcom/github/clans/fab/FloatingActionButton;->mShadowRadius:I

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/github/clans/fab/FloatingActionButton;->mShadowRadius:I

    .line 127
    sget v2, Lcom/github/clans/fab/R$styleable;->FloatingActionButton_fab_shadowXOffset:I

    iget v4, p0, Lcom/github/clans/fab/FloatingActionButton;->mShadowXOffset:I

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/github/clans/fab/FloatingActionButton;->mShadowXOffset:I

    .line 128
    sget v2, Lcom/github/clans/fab/R$styleable;->FloatingActionButton_fab_shadowYOffset:I

    iget v4, p0, Lcom/github/clans/fab/FloatingActionButton;->mShadowYOffset:I

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/github/clans/fab/FloatingActionButton;->mShadowYOffset:I

    .line 129
    sget v2, Lcom/github/clans/fab/R$styleable;->FloatingActionButton_fab_size:I

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/github/clans/fab/FloatingActionButton;->mFabSize:I

    .line 130
    sget v2, Lcom/github/clans/fab/R$styleable;->FloatingActionButton_fab_label:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/github/clans/fab/FloatingActionButton;->mLabelText:Ljava/lang/String;

    .line 131
    sget v2, Lcom/github/clans/fab/R$styleable;->FloatingActionButton_fab_progress_indeterminate:I

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/github/clans/fab/FloatingActionButton;->mShouldProgressIndeterminate:Z

    .line 132
    sget v2, Lcom/github/clans/fab/R$styleable;->FloatingActionButton_fab_progress_color:I

    const v4, -0xff6978

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/github/clans/fab/FloatingActionButton;->mProgressColor:I

    .line 133
    sget v2, Lcom/github/clans/fab/R$styleable;->FloatingActionButton_fab_progress_backgroundColor:I

    const/high16 v4, 0x4d000000    # 1.34217728E8f

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/github/clans/fab/FloatingActionButton;->mProgressBackgroundColor:I

    .line 134
    sget v2, Lcom/github/clans/fab/R$styleable;->FloatingActionButton_fab_progress_max:I

    iget v4, p0, Lcom/github/clans/fab/FloatingActionButton;->mProgressMax:I

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/github/clans/fab/FloatingActionButton;->mProgressMax:I

    .line 135
    sget v2, Lcom/github/clans/fab/R$styleable;->FloatingActionButton_fab_progress_showBackground:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/github/clans/fab/FloatingActionButton;->mShowProgressBackground:Z

    .line 137
    sget v2, Lcom/github/clans/fab/R$styleable;->FloatingActionButton_fab_progress:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 138
    sget v2, Lcom/github/clans/fab/R$styleable;->FloatingActionButton_fab_progress:I

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/github/clans/fab/FloatingActionButton;->mProgress:I

    .line 139
    iput-boolean v3, p0, Lcom/github/clans/fab/FloatingActionButton;->mShouldSetProgress:Z

    .line 142
    :cond_0
    sget v2, Lcom/github/clans/fab/R$styleable;->FloatingActionButton_fab_elevationCompat:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 143
    sget v2, Lcom/github/clans/fab/R$styleable;->FloatingActionButton_fab_elevationCompat:I

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    int-to-float v2, v2

    .line 144
    .local v2, "elevation":F
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->isInEditMode()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 145
    invoke-virtual {p0, v2}, Lcom/github/clans/fab/FloatingActionButton;->setElevation(F)V

    goto :goto_0

    .line 147
    :cond_1
    invoke-virtual {p0, v2}, Lcom/github/clans/fab/FloatingActionButton;->setElevationCompat(F)V

    .line 151
    .end local v2    # "elevation":F
    :cond_2
    :goto_0
    invoke-direct {p0, v0}, Lcom/github/clans/fab/FloatingActionButton;->initShowAnimation(Landroid/content/res/TypedArray;)V

    .line 152
    invoke-direct {p0, v0}, Lcom/github/clans/fab/FloatingActionButton;->initHideAnimation(Landroid/content/res/TypedArray;)V

    .line 153
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 155
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->isInEditMode()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 156
    iget-boolean v2, p0, Lcom/github/clans/fab/FloatingActionButton;->mShouldProgressIndeterminate:Z

    if-eqz v2, :cond_3

    .line 157
    invoke-virtual {p0, v3}, Lcom/github/clans/fab/FloatingActionButton;->setIndeterminate(Z)V

    goto :goto_1

    .line 158
    :cond_3
    iget-boolean v2, p0, Lcom/github/clans/fab/FloatingActionButton;->mShouldSetProgress:Z

    if-eqz v2, :cond_4

    .line 159
    invoke-direct {p0}, Lcom/github/clans/fab/FloatingActionButton;->saveButtonOriginalPosition()V

    .line 160
    iget v2, p0, Lcom/github/clans/fab/FloatingActionButton;->mProgress:I

    invoke-virtual {p0, v2, v1}, Lcom/github/clans/fab/FloatingActionButton;->setProgress(IZ)V

    .line 165
    :cond_4
    :goto_1
    invoke-virtual {p0, v3}, Lcom/github/clans/fab/FloatingActionButton;->setClickable(Z)V

    .line 166
    return-void
.end method

.method private initHideAnimation(Landroid/content/res/TypedArray;)V
    .locals 2
    .param p1, "attr"    # Landroid/content/res/TypedArray;

    .line 174
    sget v0, Lcom/github/clans/fab/R$styleable;->FloatingActionButton_fab_hideAnimation:I

    sget v1, Lcom/github/clans/fab/R$anim;->fab_scale_down:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 175
    .local v0, "resourceId":I
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/github/clans/fab/FloatingActionButton;->mHideAnimation:Landroid/view/animation/Animation;

    .line 176
    return-void
.end method

.method private initShowAnimation(Landroid/content/res/TypedArray;)V
    .locals 2
    .param p1, "attr"    # Landroid/content/res/TypedArray;

    .line 169
    sget v0, Lcom/github/clans/fab/R$styleable;->FloatingActionButton_fab_showAnimation:I

    sget v1, Lcom/github/clans/fab/R$anim;->fab_scale_up:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 170
    .local v0, "resourceId":I
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/github/clans/fab/FloatingActionButton;->mShowAnimation:Landroid/view/animation/Animation;

    .line 171
    return-void
.end method

.method private saveButtonOriginalPosition()V
    .locals 2

    .line 440
    iget-boolean v0, p0, Lcom/github/clans/fab/FloatingActionButton;->mButtonPositionSaved:Z

    if-nez v0, :cond_2

    .line 441
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->mOriginalX:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 442
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->getX()F

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionButton;->mOriginalX:F

    .line 445
    :cond_0
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->mOriginalY:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 446
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->getY()F

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionButton;->mOriginalY:F

    .line 449
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/clans/fab/FloatingActionButton;->mButtonPositionSaved:Z

    .line 451
    :cond_2
    return-void
.end method

.method private setBackgroundCompat(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 432
    invoke-static {}, Lcom/github/clans/fab/Util;->hasJellyBean()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 433
    invoke-virtual {p0, p1}, Lcom/github/clans/fab/FloatingActionButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 435
    :cond_0
    invoke-virtual {p0, p1}, Lcom/github/clans/fab/FloatingActionButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 437
    :goto_0
    return-void
.end method

.method private setupProgressBarPaints()V
    .locals 2

    .line 468
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionButton;->mBackgroundPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/github/clans/fab/FloatingActionButton;->mProgressBackgroundColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 469
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionButton;->mBackgroundPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 470
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionButton;->mBackgroundPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/github/clans/fab/FloatingActionButton;->mProgressWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 472
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionButton;->mProgressPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/github/clans/fab/FloatingActionButton;->mProgressColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 473
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionButton;->mProgressPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 474
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionButton;->mProgressPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/github/clans/fab/FloatingActionButton;->mProgressWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 475
    return-void
.end method

.method private setupProgressBounds()V
    .locals 8

    .line 478
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->hasShadow()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/github/clans/fab/FloatingActionButton;->getShadowX()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 479
    .local v0, "circleInsetHorizontal":I
    :goto_0
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->hasShadow()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/github/clans/fab/FloatingActionButton;->getShadowY()I

    move-result v1

    .line 480
    .local v1, "circleInsetVertical":I
    :cond_1
    new-instance v2, Landroid/graphics/RectF;

    iget v3, p0, Lcom/github/clans/fab/FloatingActionButton;->mProgressWidth:I

    div-int/lit8 v4, v3, 0x2

    add-int/2addr v4, v0

    int-to-float v4, v4

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v1

    int-to-float v3, v3

    .line 483
    invoke-direct {p0}, Lcom/github/clans/fab/FloatingActionButton;->calculateMeasuredWidth()I

    move-result v5

    sub-int/2addr v5, v0

    iget v6, p0, Lcom/github/clans/fab/FloatingActionButton;->mProgressWidth:I

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    int-to-float v5, v5

    .line 484
    invoke-direct {p0}, Lcom/github/clans/fab/FloatingActionButton;->calculateMeasuredHeight()I

    move-result v6

    sub-int/2addr v6, v1

    iget v7, p0, Lcom/github/clans/fab/FloatingActionButton;->mProgressWidth:I

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    int-to-float v6, v6

    invoke-direct {v2, v4, v3, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v2, p0, Lcom/github/clans/fab/FloatingActionButton;->mProgressCircleBounds:Landroid/graphics/RectF;

    .line 486
    return-void
.end method

.method private updateButtonPosition()V
    .locals 3

    .line 456
    iget-boolean v0, p0, Lcom/github/clans/fab/FloatingActionButton;->mProgressBarEnabled:Z

    if-eqz v0, :cond_2

    .line 457
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->mOriginalX:F

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->getX()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->getX()F

    move-result v0

    iget v1, p0, Lcom/github/clans/fab/FloatingActionButton;->mProgressWidth:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->getX()F

    move-result v0

    iget v1, p0, Lcom/github/clans/fab/FloatingActionButton;->mProgressWidth:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    .line 458
    .local v0, "x":F
    :goto_0
    iget v1, p0, Lcom/github/clans/fab/FloatingActionButton;->mOriginalY:F

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->getY()F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->getY()F

    move-result v1

    iget v2, p0, Lcom/github/clans/fab/FloatingActionButton;->mProgressWidth:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->getY()F

    move-result v1

    iget v2, p0, Lcom/github/clans/fab/FloatingActionButton;->mProgressWidth:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    .local v1, "y":F
    :goto_1
    goto :goto_2

    .line 460
    .end local v0    # "x":F
    .end local v1    # "y":F
    :cond_2
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->mOriginalX:F

    .line 461
    .restart local v0    # "x":F
    iget v1, p0, Lcom/github/clans/fab/FloatingActionButton;->mOriginalY:F

    .line 463
    .restart local v1    # "y":F
    :goto_2
    invoke-virtual {p0, v0}, Lcom/github/clans/fab/FloatingActionButton;->setX(F)V

    .line 464
    invoke-virtual {p0, v1}, Lcom/github/clans/fab/FloatingActionButton;->setY(F)V

    .line 465
    return-void
.end method

.method private updateProgressLength(J)V
    .locals 5
    .param p1, "deltaTimeInMillis"    # J

    .line 287
    iget-wide v0, p0, Lcom/github/clans/fab/FloatingActionButton;->mPausedTimeWithoutGrowing:J

    const-wide/16 v2, 0xc8

    cmp-long v4, v0, v2

    if-ltz v4, :cond_2

    .line 288
    iget-wide v0, p0, Lcom/github/clans/fab/FloatingActionButton;->mTimeStartGrowing:D

    long-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/github/clans/fab/FloatingActionButton;->mTimeStartGrowing:D

    .line 290
    const-wide v2, 0x407f400000000000L    # 500.0

    cmpl-double v4, v0, v2

    if-lez v4, :cond_0

    .line 291
    sub-double/2addr v0, v2

    iput-wide v0, p0, Lcom/github/clans/fab/FloatingActionButton;->mTimeStartGrowing:D

    .line 292
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/github/clans/fab/FloatingActionButton;->mPausedTimeWithoutGrowing:J

    .line 293
    iget-boolean v0, p0, Lcom/github/clans/fab/FloatingActionButton;->mBarGrowingFromFront:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/github/clans/fab/FloatingActionButton;->mBarGrowingFromFront:Z

    .line 296
    :cond_0
    iget-wide v0, p0, Lcom/github/clans/fab/FloatingActionButton;->mTimeStartGrowing:D

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v2

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double v0, v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    .line 297
    .local v0, "distance":F
    iget v1, p0, Lcom/github/clans/fab/FloatingActionButton;->mBarLength:I

    rsub-int v1, v1, 0x10e

    int-to-float v1, v1

    .line 299
    .local v1, "length":F
    iget-boolean v2, p0, Lcom/github/clans/fab/FloatingActionButton;->mBarGrowingFromFront:Z

    if-eqz v2, :cond_1

    .line 300
    mul-float v2, v0, v1

    iput v2, p0, Lcom/github/clans/fab/FloatingActionButton;->mBarExtraLength:F

    goto :goto_0

    .line 302
    :cond_1
    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v0

    mul-float v2, v2, v1

    .line 303
    .local v2, "newLength":F
    iget v3, p0, Lcom/github/clans/fab/FloatingActionButton;->mCurrentProgress:F

    iget v4, p0, Lcom/github/clans/fab/FloatingActionButton;->mBarExtraLength:F

    sub-float/2addr v4, v2

    add-float/2addr v3, v4

    iput v3, p0, Lcom/github/clans/fab/FloatingActionButton;->mCurrentProgress:F

    .line 304
    iput v2, p0, Lcom/github/clans/fab/FloatingActionButton;->mBarExtraLength:F

    .line 306
    .end local v0    # "distance":F
    .end local v1    # "length":F
    .end local v2    # "newLength":F
    :goto_0
    goto :goto_1

    .line 307
    :cond_2
    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/github/clans/fab/FloatingActionButton;->mPausedTimeWithoutGrowing:J

    .line 309
    :goto_1
    return-void
.end method


# virtual methods
.method calculateShadowHeight()I
    .locals 1

    .line 204
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->hasShadow()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/github/clans/fab/FloatingActionButton;->getShadowY()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method calculateShadowWidth()I
    .locals 1

    .line 200
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->hasShadow()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/github/clans/fab/FloatingActionButton;->getShadowX()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getButtonSize()I
    .locals 1

    .line 842
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->mFabSize:I

    return v0
.end method

.method public getColorDisabled()I
    .locals 1

    .line 902
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->mColorDisabled:I

    return v0
.end method

.method public getColorNormal()I
    .locals 1

    .line 857
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->mColorNormal:I

    return v0
.end method

.method public getColorPressed()I
    .locals 1

    .line 872
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->mColorPressed:I

    return v0
.end method

.method public getColorRipple()I
    .locals 1

    .line 887
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->mColorRipple:I

    return v0
.end method

.method getHideAnimation()Landroid/view/animation/Animation;
    .locals 1

    .line 493
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionButton;->mHideAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method protected getIconDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 391
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionButton;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 392
    return-object v0

    .line 394
    :cond_0
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    return-object v0
.end method

.method public getLabelText()Ljava/lang/String;
    .locals 1

    .line 1085
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionButton;->mLabelText:Ljava/lang/String;

    return-object v0
.end method

.method getLabelView()Lcom/github/clans/fab/Label;
    .locals 1

    .line 511
    sget v0, Lcom/github/clans/fab/R$id;->fab_label:I

    invoke-virtual {p0, v0}, Lcom/github/clans/fab/FloatingActionButton;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/clans/fab/Label;

    return-object v0
.end method

.method public getLabelVisibility()I
    .locals 2

    .line 1105
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->getLabelView()Lcom/github/clans/fab/Label;

    move-result-object v0

    .line 1106
    .local v0, "labelView":Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 1107
    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    return v1

    .line 1110
    :cond_0
    const/4 v1, -0x1

    return v1
.end method

.method public declared-synchronized getMax()I
    .locals 1

    monitor-enter p0

    .line 1180
    :try_start_0
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->mProgressMax:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 1180
    .end local p0    # "this":Lcom/github/clans/fab/FloatingActionButton;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getOnClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    .line 507
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionButton;->mClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public declared-synchronized getProgress()I
    .locals 1

    monitor-enter p0

    .line 1221
    :try_start_0
    iget-boolean v0, p0, Lcom/github/clans/fab/FloatingActionButton;->mProgressIndeterminate:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->mProgress:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return v0

    .line 1221
    .end local p0    # "this":Lcom/github/clans/fab/FloatingActionButton;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getShadowColor()I
    .locals 1

    .line 1028
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->mShadowColor:I

    return v0
.end method

.method public getShadowRadius()I
    .locals 1

    .line 945
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->mShadowRadius:I

    return v0
.end method

.method public getShadowXOffset()I
    .locals 1

    .line 977
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->mShadowXOffset:I

    return v0
.end method

.method public getShadowYOffset()I
    .locals 1

    .line 1009
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->mShadowYOffset:I

    return v0
.end method

.method getShowAnimation()Landroid/view/animation/Animation;
    .locals 1

    .line 489
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionButton;->mShowAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method public hasShadow()Z
    .locals 1

    .line 913
    iget-boolean v0, p0, Lcom/github/clans/fab/FloatingActionButton;->mUsingElevation:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/github/clans/fab/FloatingActionButton;->mShowShadow:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hide(Z)V
    .locals 1
    .param p1, "animate"    # Z

    .line 1060
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->isHidden()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1061
    if-eqz p1, :cond_0

    .line 1062
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->playHideAnimation()V

    .line 1064
    :cond_0
    const/4 v0, 0x4

    invoke-super {p0, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1066
    :cond_1
    return-void
.end method

.method public hideButtonInMenu(Z)V
    .locals 3
    .param p1, "animate"    # Z

    .line 1260
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->isHidden()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    .line 1261
    invoke-virtual {p0, p1}, Lcom/github/clans/fab/FloatingActionButton;->hide(Z)V

    .line 1263
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->getLabelView()Lcom/github/clans/fab/Label;

    move-result-object v0

    .line 1264
    .local v0, "label":Lcom/github/clans/fab/Label;
    if-eqz v0, :cond_0

    .line 1265
    invoke-virtual {v0, p1}, Lcom/github/clans/fab/Label;->hide(Z)V

    .line 1268
    :cond_0
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->getHideAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    new-instance v2, Lcom/github/clans/fab/FloatingActionButton$4;

    invoke-direct {v2, p0}, Lcom/github/clans/fab/FloatingActionButton$4;-><init>(Lcom/github/clans/fab/FloatingActionButton;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1284
    .end local v0    # "label":Lcom/github/clans/fab/Label;
    :cond_1
    return-void
.end method

.method public declared-synchronized hideProgress()V
    .locals 1

    monitor-enter p0

    .line 1225
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/github/clans/fab/FloatingActionButton;->mProgressBarEnabled:Z

    .line 1226
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/clans/fab/FloatingActionButton;->mShouldUpdateButtonPosition:Z

    .line 1227
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->updateBackground()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1228
    monitor-exit p0

    return-void

    .line 1224
    .end local p0    # "this":Lcom/github/clans/fab/FloatingActionButton;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isHidden()Z
    .locals 2

    .line 1037
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public declared-synchronized isProgressBackgroundShown()Z
    .locals 1

    monitor-enter p0

    .line 1235
    :try_start_0
    iget-boolean v0, p0, Lcom/github/clans/fab/FloatingActionButton;->mShowProgressBackground:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 1235
    .end local p0    # "this":Lcom/github/clans/fab/FloatingActionButton;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method onActionDown()V
    .locals 3

    .line 522
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionButton;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Landroid/graphics/drawable/StateListDrawable;

    const/4 v2, 0x2

    if-eqz v1, :cond_0

    .line 523
    check-cast v0, Landroid/graphics/drawable/StateListDrawable;

    .line 524
    .local v0, "drawable":Landroid/graphics/drawable/StateListDrawable;
    new-array v1, v2, [I

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    .end local v0    # "drawable":Landroid/graphics/drawable/StateListDrawable;
    goto :goto_0

    .line 525
    :cond_0
    invoke-static {}, Lcom/github/clans/fab/Util;->hasLollipop()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 526
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionButton;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/RippleDrawable;

    .line 527
    .local v0, "ripple":Landroid/graphics/drawable/RippleDrawable;
    new-array v1, v2, [I

    fill-array-data v1, :array_1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/RippleDrawable;->setState([I)Z

    .line 528
    invoke-direct {p0}, Lcom/github/clans/fab/FloatingActionButton;->calculateCenterX()F

    move-result v1

    invoke-direct {p0}, Lcom/github/clans/fab/FloatingActionButton;->calculateCenterY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/RippleDrawable;->setHotspot(FF)V

    .line 529
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Landroid/graphics/drawable/RippleDrawable;->setVisible(ZZ)Z

    goto :goto_1

    .line 525
    .end local v0    # "ripple":Landroid/graphics/drawable/RippleDrawable;
    :cond_1
    :goto_0
    nop

    .line 531
    :goto_1
    return-void

    :array_0
    .array-data 4
        0x101009e
        0x10100a7
    .end array-data

    :array_1
    .array-data 4
        0x101009e
        0x10100a7
    .end array-data
.end method

.method onActionUp()V
    .locals 5

    .line 535
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionButton;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Landroid/graphics/drawable/StateListDrawable;

    const v2, 0x101009e

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_0

    .line 536
    check-cast v0, Landroid/graphics/drawable/StateListDrawable;

    .line 537
    .local v0, "drawable":Landroid/graphics/drawable/StateListDrawable;
    new-array v1, v4, [I

    aput v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    .end local v0    # "drawable":Landroid/graphics/drawable/StateListDrawable;
    goto :goto_0

    .line 538
    :cond_0
    invoke-static {}, Lcom/github/clans/fab/Util;->hasLollipop()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 539
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionButton;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/RippleDrawable;

    .line 540
    .local v0, "ripple":Landroid/graphics/drawable/RippleDrawable;
    new-array v1, v4, [I

    aput v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/RippleDrawable;->setState([I)Z

    .line 541
    invoke-direct {p0}, Lcom/github/clans/fab/FloatingActionButton;->calculateCenterX()F

    move-result v1

    invoke-direct {p0}, Lcom/github/clans/fab/FloatingActionButton;->calculateCenterY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/RippleDrawable;->setHotspot(FF)V

    .line 542
    invoke-virtual {v0, v4, v4}, Landroid/graphics/drawable/RippleDrawable;->setVisible(ZZ)Z

    goto :goto_1

    .line 538
    .end local v0    # "ripple":Landroid/graphics/drawable/RippleDrawable;
    :cond_1
    :goto_0
    nop

    .line 544
    :goto_1
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 231
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->onDraw(Landroid/graphics/Canvas;)V

    .line 233
    iget-boolean v0, p0, Lcom/github/clans/fab/FloatingActionButton;->mProgressBarEnabled:Z

    if-eqz v0, :cond_6

    .line 234
    iget-boolean v0, p0, Lcom/github/clans/fab/FloatingActionButton;->mShowProgressBackground:Z

    if-eqz v0, :cond_0

    .line 235
    iget-object v2, p0, Lcom/github/clans/fab/FloatingActionButton;->mProgressCircleBounds:Landroid/graphics/RectF;

    const/high16 v3, 0x43b40000    # 360.0f

    const/high16 v4, 0x43b40000    # 360.0f

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/github/clans/fab/FloatingActionButton;->mBackgroundPaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 238
    :cond_0
    const/4 v0, 0x0

    .line 240
    .local v0, "shouldInvalidate":Z
    iget-boolean v1, p0, Lcom/github/clans/fab/FloatingActionButton;->mProgressIndeterminate:Z

    const/high16 v2, 0x447a0000    # 1000.0f

    if-eqz v1, :cond_3

    .line 241
    const/4 v0, 0x1

    .line 243
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/github/clans/fab/FloatingActionButton;->mLastTimeAnimated:J

    sub-long/2addr v3, v5

    .line 244
    .local v3, "deltaTime":J
    long-to-float v1, v3

    iget v5, p0, Lcom/github/clans/fab/FloatingActionButton;->mSpinSpeed:F

    mul-float v1, v1, v5

    div-float/2addr v1, v2

    .line 246
    .local v1, "deltaNormalized":F
    invoke-direct {p0, v3, v4}, Lcom/github/clans/fab/FloatingActionButton;->updateProgressLength(J)V

    .line 248
    iget v2, p0, Lcom/github/clans/fab/FloatingActionButton;->mCurrentProgress:F

    add-float/2addr v2, v1

    iput v2, p0, Lcom/github/clans/fab/FloatingActionButton;->mCurrentProgress:F

    .line 249
    const/high16 v5, 0x43b40000    # 360.0f

    cmpl-float v6, v2, v5

    if-lez v6, :cond_1

    .line 250
    sub-float/2addr v2, v5

    iput v2, p0, Lcom/github/clans/fab/FloatingActionButton;->mCurrentProgress:F

    .line 253
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/github/clans/fab/FloatingActionButton;->mLastTimeAnimated:J

    .line 254
    iget v2, p0, Lcom/github/clans/fab/FloatingActionButton;->mCurrentProgress:F

    const/high16 v5, 0x42b40000    # 90.0f

    sub-float/2addr v2, v5

    .line 255
    .local v2, "from":F
    iget v5, p0, Lcom/github/clans/fab/FloatingActionButton;->mBarLength:I

    int-to-float v5, v5

    iget v6, p0, Lcom/github/clans/fab/FloatingActionButton;->mBarExtraLength:F

    add-float/2addr v5, v6

    .line 257
    .local v5, "to":F
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->isInEditMode()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 258
    const/4 v2, 0x0

    .line 259
    const/high16 v5, 0x43070000    # 135.0f

    .line 262
    :cond_2
    iget-object v7, p0, Lcom/github/clans/fab/FloatingActionButton;->mProgressCircleBounds:Landroid/graphics/RectF;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/github/clans/fab/FloatingActionButton;->mProgressPaint:Landroid/graphics/Paint;

    move-object v6, p1

    move v8, v2

    move v9, v5

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 263
    .end local v1    # "deltaNormalized":F
    .end local v2    # "from":F
    .end local v3    # "deltaTime":J
    .end local v5    # "to":F
    goto :goto_1

    .line 264
    :cond_3
    iget v1, p0, Lcom/github/clans/fab/FloatingActionButton;->mCurrentProgress:F

    iget v3, p0, Lcom/github/clans/fab/FloatingActionButton;->mTargetProgress:F

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_5

    .line 265
    const/4 v0, 0x1

    .line 266
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/github/clans/fab/FloatingActionButton;->mLastTimeAnimated:J

    sub-long/2addr v3, v5

    long-to-float v1, v3

    div-float/2addr v1, v2

    .line 267
    .local v1, "deltaTime":F
    iget v2, p0, Lcom/github/clans/fab/FloatingActionButton;->mSpinSpeed:F

    mul-float v2, v2, v1

    .line 269
    .local v2, "deltaNormalized":F
    iget v3, p0, Lcom/github/clans/fab/FloatingActionButton;->mCurrentProgress:F

    iget v4, p0, Lcom/github/clans/fab/FloatingActionButton;->mTargetProgress:F

    cmpl-float v5, v3, v4

    if-lez v5, :cond_4

    .line 270
    sub-float/2addr v3, v2

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iput v3, p0, Lcom/github/clans/fab/FloatingActionButton;->mCurrentProgress:F

    goto :goto_0

    .line 272
    :cond_4
    add-float/2addr v3, v2

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iput v3, p0, Lcom/github/clans/fab/FloatingActionButton;->mCurrentProgress:F

    .line 274
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/github/clans/fab/FloatingActionButton;->mLastTimeAnimated:J

    .line 277
    .end local v1    # "deltaTime":F
    .end local v2    # "deltaNormalized":F
    :cond_5
    iget-object v2, p0, Lcom/github/clans/fab/FloatingActionButton;->mProgressCircleBounds:Landroid/graphics/RectF;

    const/high16 v3, -0x3d4c0000    # -90.0f

    iget v4, p0, Lcom/github/clans/fab/FloatingActionButton;->mCurrentProgress:F

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/github/clans/fab/FloatingActionButton;->mProgressPaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 280
    :goto_1
    if-eqz v0, :cond_6

    .line 281
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->invalidate()V

    .line 284
    .end local v0    # "shouldInvalidate":Z
    :cond_6
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 226
    invoke-direct {p0}, Lcom/github/clans/fab/FloatingActionButton;->calculateMeasuredWidth()I

    move-result v0

    invoke-direct {p0}, Lcom/github/clans/fab/FloatingActionButton;->calculateMeasuredHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/github/clans/fab/FloatingActionButton;->setMeasuredDimension(II)V

    .line 227
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 619
    instance-of v0, p1, Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState;

    if-nez v0, :cond_0

    .line 620
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 621
    return-void

    .line 624
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState;

    .line 625
    .local v0, "ss":Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState;
    invoke-virtual {v0}, Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/ImageButton;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 627
    iget v1, v0, Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState;->mCurrentProgress:F

    iput v1, p0, Lcom/github/clans/fab/FloatingActionButton;->mCurrentProgress:F

    .line 628
    iget v1, v0, Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState;->mTargetProgress:F

    iput v1, p0, Lcom/github/clans/fab/FloatingActionButton;->mTargetProgress:F

    .line 629
    iget v1, v0, Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState;->mSpinSpeed:F

    iput v1, p0, Lcom/github/clans/fab/FloatingActionButton;->mSpinSpeed:F

    .line 630
    iget v1, v0, Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState;->mProgressWidth:I

    iput v1, p0, Lcom/github/clans/fab/FloatingActionButton;->mProgressWidth:I

    .line 631
    iget v1, v0, Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState;->mProgressColor:I

    iput v1, p0, Lcom/github/clans/fab/FloatingActionButton;->mProgressColor:I

    .line 632
    iget v1, v0, Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState;->mProgressBackgroundColor:I

    iput v1, p0, Lcom/github/clans/fab/FloatingActionButton;->mProgressBackgroundColor:I

    .line 633
    iget-boolean v1, v0, Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState;->mShouldProgressIndeterminate:Z

    iput-boolean v1, p0, Lcom/github/clans/fab/FloatingActionButton;->mShouldProgressIndeterminate:Z

    .line 634
    iget-boolean v1, v0, Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState;->mShouldSetProgress:Z

    iput-boolean v1, p0, Lcom/github/clans/fab/FloatingActionButton;->mShouldSetProgress:Z

    .line 635
    iget v1, v0, Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState;->mProgress:I

    iput v1, p0, Lcom/github/clans/fab/FloatingActionButton;->mProgress:I

    .line 636
    iget-boolean v1, v0, Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState;->mAnimateProgress:Z

    iput-boolean v1, p0, Lcom/github/clans/fab/FloatingActionButton;->mAnimateProgress:Z

    .line 637
    iget-boolean v1, v0, Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState;->mShowProgressBackground:Z

    iput-boolean v1, p0, Lcom/github/clans/fab/FloatingActionButton;->mShowProgressBackground:Z

    .line 639
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/github/clans/fab/FloatingActionButton;->mLastTimeAnimated:J

    .line 640
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 598
    invoke-super {p0}, Landroid/widget/ImageButton;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 600
    .local v0, "superState":Landroid/os/Parcelable;
    new-instance v1, Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState;

    invoke-direct {v1, v0}, Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 602
    .local v1, "ss":Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState;
    iget v2, p0, Lcom/github/clans/fab/FloatingActionButton;->mCurrentProgress:F

    iput v2, v1, Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState;->mCurrentProgress:F

    .line 603
    iget v2, p0, Lcom/github/clans/fab/FloatingActionButton;->mTargetProgress:F

    iput v2, v1, Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState;->mTargetProgress:F

    .line 604
    iget v2, p0, Lcom/github/clans/fab/FloatingActionButton;->mSpinSpeed:F

    iput v2, v1, Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState;->mSpinSpeed:F

    .line 605
    iget v2, p0, Lcom/github/clans/fab/FloatingActionButton;->mProgressWidth:I

    iput v2, v1, Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState;->mProgressWidth:I

    .line 606
    iget v2, p0, Lcom/github/clans/fab/FloatingActionButton;->mProgressColor:I

    iput v2, v1, Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState;->mProgressColor:I

    .line 607
    iget v2, p0, Lcom/github/clans/fab/FloatingActionButton;->mProgressBackgroundColor:I

    iput v2, v1, Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState;->mProgressBackgroundColor:I

    .line 608
    iget-boolean v2, p0, Lcom/github/clans/fab/FloatingActionButton;->mProgressIndeterminate:Z

    iput-boolean v2, v1, Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState;->mShouldProgressIndeterminate:Z

    .line 609
    iget-boolean v2, p0, Lcom/github/clans/fab/FloatingActionButton;->mProgressBarEnabled:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/github/clans/fab/FloatingActionButton;->mProgress:I

    if-lez v2, :cond_0

    iget-boolean v2, p0, Lcom/github/clans/fab/FloatingActionButton;->mProgressIndeterminate:Z

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, v1, Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState;->mShouldSetProgress:Z

    .line 610
    iget v2, p0, Lcom/github/clans/fab/FloatingActionButton;->mProgress:I

    iput v2, v1, Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState;->mProgress:I

    .line 611
    iget-boolean v2, p0, Lcom/github/clans/fab/FloatingActionButton;->mAnimateProgress:Z

    iput-boolean v2, v1, Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState;->mAnimateProgress:Z

    .line 612
    iget-boolean v2, p0, Lcom/github/clans/fab/FloatingActionButton;->mShowProgressBackground:Z

    iput-boolean v2, v1, Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState;->mShowProgressBackground:Z

    .line 614
    return-object v1
.end method

.method protected onSizeChanged(IIII)V
    .locals 3
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .line 313
    invoke-direct {p0}, Lcom/github/clans/fab/FloatingActionButton;->saveButtonOriginalPosition()V

    .line 315
    iget-boolean v0, p0, Lcom/github/clans/fab/FloatingActionButton;->mShouldProgressIndeterminate:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 316
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/github/clans/fab/FloatingActionButton;->setIndeterminate(Z)V

    .line 317
    iput-boolean v1, p0, Lcom/github/clans/fab/FloatingActionButton;->mShouldProgressIndeterminate:Z

    goto :goto_0

    .line 318
    :cond_0
    iget-boolean v0, p0, Lcom/github/clans/fab/FloatingActionButton;->mShouldSetProgress:Z

    if-eqz v0, :cond_1

    .line 319
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->mProgress:I

    iget-boolean v2, p0, Lcom/github/clans/fab/FloatingActionButton;->mAnimateProgress:Z

    invoke-virtual {p0, v0, v2}, Lcom/github/clans/fab/FloatingActionButton;->setProgress(IZ)V

    .line 320
    iput-boolean v1, p0, Lcom/github/clans/fab/FloatingActionButton;->mShouldSetProgress:Z

    goto :goto_0

    .line 321
    :cond_1
    iget-boolean v0, p0, Lcom/github/clans/fab/FloatingActionButton;->mShouldUpdateButtonPosition:Z

    if-eqz v0, :cond_2

    .line 322
    invoke-direct {p0}, Lcom/github/clans/fab/FloatingActionButton;->updateButtonPosition()V

    .line 323
    iput-boolean v1, p0, Lcom/github/clans/fab/FloatingActionButton;->mShouldUpdateButtonPosition:Z

    .line 325
    :cond_2
    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageButton;->onSizeChanged(IIII)V

    .line 327
    invoke-direct {p0}, Lcom/github/clans/fab/FloatingActionButton;->setupProgressBounds()V

    .line 328
    invoke-direct {p0}, Lcom/github/clans/fab/FloatingActionButton;->setupProgressBarPaints()V

    .line 329
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->updateBackground()V

    .line 330
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 548
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionButton;->mClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 549
    sget v0, Lcom/github/clans/fab/R$id;->fab_label:I

    invoke-virtual {p0, v0}, Lcom/github/clans/fab/FloatingActionButton;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/clans/fab/Label;

    .line 550
    .local v0, "label":Lcom/github/clans/fab/Label;
    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/ImageButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 552
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 553
    .local v1, "action":I
    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 562
    :pswitch_1
    if-eqz v0, :cond_1

    .line 563
    invoke-virtual {v0}, Lcom/github/clans/fab/Label;->onActionUp()V

    .line 565
    :cond_1
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->onActionUp()V

    goto :goto_0

    .line 555
    :pswitch_2
    if-eqz v0, :cond_2

    .line 556
    invoke-virtual {v0}, Lcom/github/clans/fab/Label;->onActionUp()V

    .line 558
    :cond_2
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->onActionUp()V

    .line 559
    nop

    .line 568
    :goto_0
    iget-object v2, p0, Lcom/github/clans/fab/FloatingActionButton;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 570
    .end local v0    # "label":Lcom/github/clans/fab/Label;
    .end local v1    # "action":I
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method playHideAnimation()V
    .locals 1

    .line 502
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionButton;->mShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 503
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionButton;->mHideAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/github/clans/fab/FloatingActionButton;->startAnimation(Landroid/view/animation/Animation;)V

    .line 504
    return-void
.end method

.method playShowAnimation()V
    .locals 1

    .line 497
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionButton;->mHideAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 498
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionButton;->mShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/github/clans/fab/FloatingActionButton;->startAnimation(Landroid/view/animation/Animation;)V

    .line 499
    return-void
.end method

.method public setButtonSize(I)V
    .locals 2
    .param p1, "size"    # I

    .line 831
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 832
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Use @FabSize constants only!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 835
    :cond_1
    :goto_0
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->mFabSize:I

    if-eq v0, p1, :cond_2

    .line 836
    iput p1, p0, Lcom/github/clans/fab/FloatingActionButton;->mFabSize:I

    .line 837
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->updateBackground()V

    .line 839
    :cond_2
    return-void
.end method

.method public setColorDisabled(I)V
    .locals 1
    .param p1, "color"    # I

    .line 891
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->mColorDisabled:I

    if-eq p1, v0, :cond_0

    .line 892
    iput p1, p0, Lcom/github/clans/fab/FloatingActionButton;->mColorDisabled:I

    .line 893
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->updateBackground()V

    .line 895
    :cond_0
    return-void
.end method

.method public setColorDisabledResId(I)V
    .locals 1
    .param p1, "colorResId"    # I

    .line 898
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/github/clans/fab/FloatingActionButton;->setColorDisabled(I)V

    .line 899
    return-void
.end method

.method public setColorNormal(I)V
    .locals 1
    .param p1, "color"    # I

    .line 846
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->mColorNormal:I

    if-eq v0, p1, :cond_0

    .line 847
    iput p1, p0, Lcom/github/clans/fab/FloatingActionButton;->mColorNormal:I

    .line 848
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->updateBackground()V

    .line 850
    :cond_0
    return-void
.end method

.method public setColorNormalResId(I)V
    .locals 1
    .param p1, "colorResId"    # I

    .line 853
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/github/clans/fab/FloatingActionButton;->setColorNormal(I)V

    .line 854
    return-void
.end method

.method public setColorPressed(I)V
    .locals 1
    .param p1, "color"    # I

    .line 861
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->mColorPressed:I

    if-eq p1, v0, :cond_0

    .line 862
    iput p1, p0, Lcom/github/clans/fab/FloatingActionButton;->mColorPressed:I

    .line 863
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->updateBackground()V

    .line 865
    :cond_0
    return-void
.end method

.method public setColorPressedResId(I)V
    .locals 1
    .param p1, "colorResId"    # I

    .line 868
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/github/clans/fab/FloatingActionButton;->setColorPressed(I)V

    .line 869
    return-void
.end method

.method public setColorRipple(I)V
    .locals 1
    .param p1, "color"    # I

    .line 876
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->mColorRipple:I

    if-eq p1, v0, :cond_0

    .line 877
    iput p1, p0, Lcom/github/clans/fab/FloatingActionButton;->mColorRipple:I

    .line 878
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->updateBackground()V

    .line 880
    :cond_0
    return-void
.end method

.method public setColorRippleResId(I)V
    .locals 1
    .param p1, "colorResId"    # I

    .line 883
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/github/clans/fab/FloatingActionButton;->setColorRipple(I)V

    .line 884
    return-void
.end method

.method setColors(III)V
    .locals 0
    .param p1, "colorNormal"    # I
    .param p2, "colorPressed"    # I
    .param p3, "colorRipple"    # I

    .line 515
    iput p1, p0, Lcom/github/clans/fab/FloatingActionButton;->mColorNormal:I

    .line 516
    iput p2, p0, Lcom/github/clans/fab/FloatingActionButton;->mColorPressed:I

    .line 517
    iput p3, p0, Lcom/github/clans/fab/FloatingActionButton;->mColorRipple:I

    .line 518
    return-void
.end method

.method public setElevation(F)V
    .locals 1
    .param p1, "elevation"    # F

    .line 1115
    invoke-static {}, Lcom/github/clans/fab/Util;->hasLollipop()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 1116
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setElevation(F)V

    .line 1117
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1118
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/clans/fab/FloatingActionButton;->mUsingElevation:Z

    .line 1119
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/github/clans/fab/FloatingActionButton;->mShowShadow:Z

    .line 1121
    :cond_0
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->updateBackground()V

    .line 1123
    :cond_1
    return-void
.end method

.method public setElevationCompat(F)V
    .locals 3
    .param p1, "elevation"    # F

    .line 1133
    const/high16 v0, 0x26000000

    iput v0, p0, Lcom/github/clans/fab/FloatingActionButton;->mShadowColor:I

    .line 1134
    const/high16 v0, 0x40000000    # 2.0f

    div-float v1, p1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Lcom/github/clans/fab/FloatingActionButton;->mShadowRadius:I

    .line 1135
    const/4 v1, 0x0

    iput v1, p0, Lcom/github/clans/fab/FloatingActionButton;->mShadowXOffset:I

    .line 1136
    iget v2, p0, Lcom/github/clans/fab/FloatingActionButton;->mFabSize:I

    if-nez v2, :cond_0

    move v0, p1

    goto :goto_0

    :cond_0
    div-float v0, p1, v0

    :goto_0
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionButton;->mShadowYOffset:I

    .line 1138
    invoke-static {}, Lcom/github/clans/fab/Util;->hasLollipop()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 1139
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setElevation(F)V

    .line 1140
    iput-boolean v2, p0, Lcom/github/clans/fab/FloatingActionButton;->mUsingElevationCompat:Z

    .line 1141
    iput-boolean v1, p0, Lcom/github/clans/fab/FloatingActionButton;->mShowShadow:Z

    .line 1142
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->updateBackground()V

    .line 1144
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1145
    .local v0, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v0, :cond_1

    .line 1146
    invoke-virtual {p0, v0}, Lcom/github/clans/fab/FloatingActionButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1148
    .end local v0    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    goto :goto_1

    .line 1149
    :cond_2
    iput-boolean v2, p0, Lcom/github/clans/fab/FloatingActionButton;->mShowShadow:Z

    .line 1150
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->updateBackground()V

    .line 1152
    :goto_1
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 1240
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1241
    sget v0, Lcom/github/clans/fab/R$id;->fab_label:I

    invoke-virtual {p0, v0}, Lcom/github/clans/fab/FloatingActionButton;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/clans/fab/Label;

    .line 1242
    .local v0, "label":Lcom/github/clans/fab/Label;
    if-eqz v0, :cond_0

    .line 1243
    invoke-virtual {v0, p1}, Lcom/github/clans/fab/Label;->setEnabled(Z)V

    .line 1245
    :cond_0
    return-void
.end method

.method public setHideAnimation(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "hideAnimation"    # Landroid/view/animation/Animation;

    .line 1093
    iput-object p1, p0, Lcom/github/clans/fab/FloatingActionButton;->mHideAnimation:Landroid/view/animation/Animation;

    .line 1094
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 793
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionButton;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    .line 794
    iput-object p1, p0, Lcom/github/clans/fab/FloatingActionButton;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 795
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->updateBackground()V

    .line 797
    :cond_0
    return-void
.end method

.method public setImageResource(I)V
    .locals 2
    .param p1, "resId"    # I

    .line 801
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 802
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/github/clans/fab/FloatingActionButton;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eq v1, v0, :cond_0

    .line 803
    iput-object v0, p0, Lcom/github/clans/fab/FloatingActionButton;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 804
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->updateBackground()V

    .line 806
    :cond_0
    return-void
.end method

.method public declared-synchronized setIndeterminate(Z)V
    .locals 2
    .param p1, "indeterminate"    # Z

    monitor-enter p0

    .line 1162
    if-nez p1, :cond_0

    .line 1163
    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/github/clans/fab/FloatingActionButton;->mCurrentProgress:F

    .line 1166
    .end local p0    # "this":Lcom/github/clans/fab/FloatingActionButton;
    :cond_0
    iput-boolean p1, p0, Lcom/github/clans/fab/FloatingActionButton;->mProgressBarEnabled:Z

    .line 1167
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/clans/fab/FloatingActionButton;->mShouldUpdateButtonPosition:Z

    .line 1168
    iput-boolean p1, p0, Lcom/github/clans/fab/FloatingActionButton;->mProgressIndeterminate:Z

    .line 1169
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/github/clans/fab/FloatingActionButton;->mLastTimeAnimated:J

    .line 1170
    invoke-direct {p0}, Lcom/github/clans/fab/FloatingActionButton;->setupProgressBounds()V

    .line 1172
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->updateBackground()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1173
    monitor-exit p0

    return-void

    .line 1161
    .end local p1    # "indeterminate":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setLabelColors(III)V
    .locals 5
    .param p1, "colorNormal"    # I
    .param p2, "colorPressed"    # I
    .param p3, "colorRipple"    # I

    .line 1301
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->getLabelView()Lcom/github/clans/fab/Label;

    move-result-object v0

    .line 1303
    .local v0, "label":Lcom/github/clans/fab/Label;
    invoke-virtual {v0}, Lcom/github/clans/fab/Label;->getPaddingLeft()I

    move-result v1

    .line 1304
    .local v1, "left":I
    invoke-virtual {v0}, Lcom/github/clans/fab/Label;->getPaddingTop()I

    move-result v2

    .line 1305
    .local v2, "top":I
    invoke-virtual {v0}, Lcom/github/clans/fab/Label;->getPaddingRight()I

    move-result v3

    .line 1306
    .local v3, "right":I
    invoke-virtual {v0}, Lcom/github/clans/fab/Label;->getPaddingBottom()I

    move-result v4

    .line 1308
    .local v4, "bottom":I
    invoke-virtual {v0, p1, p2, p3}, Lcom/github/clans/fab/Label;->setColors(III)V

    .line 1309
    invoke-virtual {v0}, Lcom/github/clans/fab/Label;->updateBackground()V

    .line 1310
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/github/clans/fab/Label;->setPadding(IIII)V

    .line 1311
    return-void
.end method

.method public setLabelText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .line 1077
    iput-object p1, p0, Lcom/github/clans/fab/FloatingActionButton;->mLabelText:Ljava/lang/String;

    .line 1078
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->getLabelView()Lcom/github/clans/fab/Label;

    move-result-object v0

    .line 1079
    .local v0, "labelView":Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 1080
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1082
    :cond_0
    return-void
.end method

.method public setLabelTextColor(I)V
    .locals 1
    .param p1, "color"    # I

    .line 1314
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->getLabelView()Lcom/github/clans/fab/Label;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/github/clans/fab/Label;->setTextColor(I)V

    .line 1315
    return-void
.end method

.method public setLabelTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "colors"    # Landroid/content/res/ColorStateList;

    .line 1318
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->getLabelView()Lcom/github/clans/fab/Label;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/github/clans/fab/Label;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1319
    return-void
.end method

.method public setLabelVisibility(I)V
    .locals 2
    .param p1, "visibility"    # I

    .line 1097
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->getLabelView()Lcom/github/clans/fab/Label;

    move-result-object v0

    .line 1098
    .local v0, "labelView":Lcom/github/clans/fab/Label;
    if-eqz v0, :cond_1

    .line 1099
    invoke-virtual {v0, p1}, Lcom/github/clans/fab/Label;->setVisibility(I)V

    .line 1100
    if-nez p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/github/clans/fab/Label;->setHandleVisibilityChanges(Z)V

    .line 1102
    :cond_1
    return-void
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 3
    .param p1, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .line 335
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/github/clans/fab/FloatingActionButton;->mUsingElevationCompat:Z

    if-eqz v0, :cond_0

    .line 336
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    invoke-direct {p0}, Lcom/github/clans/fab/FloatingActionButton;->getShadowX()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 337
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-direct {p0}, Lcom/github/clans/fab/FloatingActionButton;->getShadowY()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 338
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    invoke-direct {p0}, Lcom/github/clans/fab/FloatingActionButton;->getShadowX()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 339
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-direct {p0}, Lcom/github/clans/fab/FloatingActionButton;->getShadowY()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 341
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 342
    return-void
.end method

.method public declared-synchronized setMax(I)V
    .locals 0
    .param p1, "max"    # I

    monitor-enter p0

    .line 1176
    :try_start_0
    iput p1, p0, Lcom/github/clans/fab/FloatingActionButton;->mProgressMax:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1177
    monitor-exit p0

    return-void

    .line 1175
    .end local p0    # "this":Lcom/github/clans/fab/FloatingActionButton;
    .end local p1    # "max":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 2
    .param p1, "l"    # Landroid/view/View$OnClickListener;

    .line 810
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 811
    iput-object p1, p0, Lcom/github/clans/fab/FloatingActionButton;->mClickListener:Landroid/view/View$OnClickListener;

    .line 812
    sget v0, Lcom/github/clans/fab/R$id;->fab_label:I

    invoke-virtual {p0, v0}, Lcom/github/clans/fab/FloatingActionButton;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 813
    .local v0, "label":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 814
    new-instance v1, Lcom/github/clans/fab/FloatingActionButton$3;

    invoke-direct {v1, p0}, Lcom/github/clans/fab/FloatingActionButton$3;-><init>(Lcom/github/clans/fab/FloatingActionButton;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 823
    :cond_0
    return-void
.end method

.method public declared-synchronized setProgress(IZ)V
    .locals 2
    .param p1, "progress"    # I
    .param p2, "animate"    # Z

    monitor-enter p0

    .line 1184
    :try_start_0
    iget-boolean v0, p0, Lcom/github/clans/fab/FloatingActionButton;->mProgressIndeterminate:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    .line 1186
    :cond_0
    :try_start_1
    iput p1, p0, Lcom/github/clans/fab/FloatingActionButton;->mProgress:I

    .line 1187
    iput-boolean p2, p0, Lcom/github/clans/fab/FloatingActionButton;->mAnimateProgress:Z

    .line 1189
    iget-boolean v0, p0, Lcom/github/clans/fab/FloatingActionButton;->mButtonPositionSaved:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 1190
    iput-boolean v1, p0, Lcom/github/clans/fab/FloatingActionButton;->mShouldSetProgress:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1191
    monitor-exit p0

    return-void

    .line 1194
    .end local p0    # "this":Lcom/github/clans/fab/FloatingActionButton;
    :cond_1
    :try_start_2
    iput-boolean v1, p0, Lcom/github/clans/fab/FloatingActionButton;->mProgressBarEnabled:Z

    .line 1195
    iput-boolean v1, p0, Lcom/github/clans/fab/FloatingActionButton;->mShouldUpdateButtonPosition:Z

    .line 1196
    invoke-direct {p0}, Lcom/github/clans/fab/FloatingActionButton;->setupProgressBounds()V

    .line 1197
    invoke-direct {p0}, Lcom/github/clans/fab/FloatingActionButton;->saveButtonOriginalPosition()V

    .line 1198
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->updateBackground()V

    .line 1200
    if-gez p1, :cond_2

    .line 1201
    const/4 p1, 0x0

    goto :goto_0

    .line 1202
    :cond_2
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->mProgressMax:I

    if-le p1, v0, :cond_3

    .line 1203
    move p1, v0

    .line 1206
    :cond_3
    :goto_0
    int-to-float v0, p1

    iget v1, p0, Lcom/github/clans/fab/FloatingActionButton;->mTargetProgress:F
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_4

    .line 1207
    monitor-exit p0

    return-void

    .line 1210
    :cond_4
    :try_start_3
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->mProgressMax:I

    if-lez v0, :cond_5

    int-to-float v1, p1

    int-to-float v0, v0

    div-float/2addr v1, v0

    const/high16 v0, 0x43b40000    # 360.0f

    mul-float v1, v1, v0

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    :goto_1
    iput v1, p0, Lcom/github/clans/fab/FloatingActionButton;->mTargetProgress:F

    .line 1211
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/github/clans/fab/FloatingActionButton;->mLastTimeAnimated:J

    .line 1213
    if-nez p2, :cond_6

    .line 1214
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->mTargetProgress:F

    iput v0, p0, Lcom/github/clans/fab/FloatingActionButton;->mCurrentProgress:F

    .line 1217
    :cond_6
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->invalidate()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1218
    monitor-exit p0

    return-void

    .line 1183
    .end local p1    # "progress":I
    .end local p2    # "animate":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setShadowColor(I)V
    .locals 1
    .param p1, "color"    # I

    .line 1021
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->mShadowColor:I

    if-eq v0, p1, :cond_0

    .line 1022
    iput p1, p0, Lcom/github/clans/fab/FloatingActionButton;->mShadowColor:I

    .line 1023
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->updateBackground()V

    .line 1025
    :cond_0
    return-void
.end method

.method public setShadowColorResource(I)V
    .locals 2
    .param p1, "colorResId"    # I

    .line 1013
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 1014
    .local v0, "shadowColor":I
    iget v1, p0, Lcom/github/clans/fab/FloatingActionButton;->mShadowColor:I

    if-eq v1, v0, :cond_0

    .line 1015
    iput v0, p0, Lcom/github/clans/fab/FloatingActionButton;->mShadowColor:I

    .line 1016
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->updateBackground()V

    .line 1018
    :cond_0
    return-void
.end method

.method public setShadowRadius(F)V
    .locals 1
    .param p1, "shadowRadiusDp"    # F

    .line 939
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/github/clans/fab/Util;->dpToPx(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionButton;->mShadowRadius:I

    .line 940
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->requestLayout()V

    .line 941
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->updateBackground()V

    .line 942
    return-void
.end method

.method public setShadowRadius(I)V
    .locals 2
    .param p1, "dimenResId"    # I

    .line 922
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 923
    .local v0, "shadowRadius":I
    iget v1, p0, Lcom/github/clans/fab/FloatingActionButton;->mShadowRadius:I

    if-eq v1, v0, :cond_0

    .line 924
    iput v0, p0, Lcom/github/clans/fab/FloatingActionButton;->mShadowRadius:I

    .line 925
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->requestLayout()V

    .line 926
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->updateBackground()V

    .line 928
    :cond_0
    return-void
.end method

.method public setShadowXOffset(F)V
    .locals 1
    .param p1, "shadowXOffsetDp"    # F

    .line 971
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/github/clans/fab/Util;->dpToPx(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionButton;->mShadowXOffset:I

    .line 972
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->requestLayout()V

    .line 973
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->updateBackground()V

    .line 974
    return-void
.end method

.method public setShadowXOffset(I)V
    .locals 2
    .param p1, "dimenResId"    # I

    .line 954
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 955
    .local v0, "shadowXOffset":I
    iget v1, p0, Lcom/github/clans/fab/FloatingActionButton;->mShadowXOffset:I

    if-eq v1, v0, :cond_0

    .line 956
    iput v0, p0, Lcom/github/clans/fab/FloatingActionButton;->mShadowXOffset:I

    .line 957
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->requestLayout()V

    .line 958
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->updateBackground()V

    .line 960
    :cond_0
    return-void
.end method

.method public setShadowYOffset(F)V
    .locals 1
    .param p1, "shadowYOffsetDp"    # F

    .line 1003
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/github/clans/fab/Util;->dpToPx(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionButton;->mShadowYOffset:I

    .line 1004
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->requestLayout()V

    .line 1005
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->updateBackground()V

    .line 1006
    return-void
.end method

.method public setShadowYOffset(I)V
    .locals 2
    .param p1, "dimenResId"    # I

    .line 986
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 987
    .local v0, "shadowYOffset":I
    iget v1, p0, Lcom/github/clans/fab/FloatingActionButton;->mShadowYOffset:I

    if-eq v1, v0, :cond_0

    .line 988
    iput v0, p0, Lcom/github/clans/fab/FloatingActionButton;->mShadowYOffset:I

    .line 989
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->requestLayout()V

    .line 990
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->updateBackground()V

    .line 992
    :cond_0
    return-void
.end method

.method public setShowAnimation(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "showAnimation"    # Landroid/view/animation/Animation;

    .line 1089
    iput-object p1, p0, Lcom/github/clans/fab/FloatingActionButton;->mShowAnimation:Landroid/view/animation/Animation;

    .line 1090
    return-void
.end method

.method public declared-synchronized setShowProgressBackground(Z)V
    .locals 0
    .param p1, "show"    # Z

    monitor-enter p0

    .line 1231
    :try_start_0
    iput-boolean p1, p0, Lcom/github/clans/fab/FloatingActionButton;->mShowProgressBackground:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1232
    monitor-exit p0

    return-void

    .line 1230
    .end local p0    # "this":Lcom/github/clans/fab/FloatingActionButton;
    .end local p1    # "show":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setShowShadow(Z)V
    .locals 1
    .param p1, "show"    # Z

    .line 906
    iget-boolean v0, p0, Lcom/github/clans/fab/FloatingActionButton;->mShowShadow:Z

    if-eq v0, p1, :cond_0

    .line 907
    iput-boolean p1, p0, Lcom/github/clans/fab/FloatingActionButton;->mShowShadow:Z

    .line 908
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->updateBackground()V

    .line 910
    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .line 1249
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1250
    sget v0, Lcom/github/clans/fab/R$id;->fab_label:I

    invoke-virtual {p0, v0}, Lcom/github/clans/fab/FloatingActionButton;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/clans/fab/Label;

    .line 1251
    .local v0, "label":Lcom/github/clans/fab/Label;
    if-eqz v0, :cond_0

    .line 1252
    invoke-virtual {v0, p1}, Lcom/github/clans/fab/Label;->setVisibility(I)V

    .line 1254
    :cond_0
    return-void
.end method

.method public show(Z)V
    .locals 1
    .param p1, "animate"    # Z

    .line 1046
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->isHidden()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1047
    if-eqz p1, :cond_0

    .line 1048
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->playShowAnimation()V

    .line 1050
    :cond_0
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1052
    :cond_1
    return-void
.end method

.method public showButtonInMenu(Z)V
    .locals 1
    .param p1, "animate"    # Z

    .line 1287
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1289
    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/github/clans/fab/FloatingActionButton;->setVisibility(I)V

    .line 1290
    invoke-virtual {p0, p1}, Lcom/github/clans/fab/FloatingActionButton;->show(Z)V

    .line 1291
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->getLabelView()Lcom/github/clans/fab/Label;

    move-result-object v0

    .line 1292
    .local v0, "label":Lcom/github/clans/fab/Label;
    if-eqz v0, :cond_1

    .line 1293
    invoke-virtual {v0, p1}, Lcom/github/clans/fab/Label;->show(Z)V

    .line 1295
    :cond_1
    return-void
.end method

.method public toggle(Z)V
    .locals 1
    .param p1, "animate"    # Z

    .line 1069
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->isHidden()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1070
    invoke-virtual {p0, p1}, Lcom/github/clans/fab/FloatingActionButton;->show(Z)V

    goto :goto_0

    .line 1072
    :cond_0
    invoke-virtual {p0, p1}, Lcom/github/clans/fab/FloatingActionButton;->hide(Z)V

    .line 1074
    :goto_0
    return-void
.end method

.method updateBackground()V
    .locals 13

    .line 346
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->hasShadow()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v0, :cond_0

    .line 347
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    const/4 v4, 0x3

    new-array v4, v4, [Landroid/graphics/drawable/Drawable;

    new-instance v5, Lcom/github/clans/fab/FloatingActionButton$Shadow;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/github/clans/fab/FloatingActionButton$Shadow;-><init>(Lcom/github/clans/fab/FloatingActionButton;Lcom/github/clans/fab/FloatingActionButton$1;)V

    aput-object v5, v4, v2

    .line 349
    invoke-direct {p0}, Lcom/github/clans/fab/FloatingActionButton;->createFillDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    aput-object v5, v4, v1

    .line 350
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-direct {v0, v4}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .local v0, "layerDrawable":Landroid/graphics/drawable/LayerDrawable;
    goto :goto_0

    .line 353
    .end local v0    # "layerDrawable":Landroid/graphics/drawable/LayerDrawable;
    :cond_0
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    new-array v4, v3, [Landroid/graphics/drawable/Drawable;

    .line 354
    invoke-direct {p0}, Lcom/github/clans/fab/FloatingActionButton;->createFillDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    aput-object v5, v4, v2

    .line 355
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-direct {v0, v4}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 359
    .restart local v0    # "layerDrawable":Landroid/graphics/drawable/LayerDrawable;
    :goto_0
    const/4 v4, -0x1

    .line 360
    .local v4, "iconSize":I
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 361
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    move v10, v4

    goto :goto_1

    .line 360
    :cond_1
    move v10, v4

    .line 363
    .end local v4    # "iconSize":I
    .local v10, "iconSize":I
    :goto_1
    invoke-direct {p0}, Lcom/github/clans/fab/FloatingActionButton;->getCircleSize()I

    move-result v4

    if-lez v10, :cond_2

    move v5, v10

    goto :goto_2

    :cond_2
    iget v5, p0, Lcom/github/clans/fab/FloatingActionButton;->mIconSize:I

    :goto_2
    sub-int/2addr v4, v5

    div-int/lit8 v11, v4, 0x2

    .line 364
    .local v11, "iconOffset":I
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->hasShadow()Z

    move-result v4

    if-eqz v4, :cond_3

    iget v4, p0, Lcom/github/clans/fab/FloatingActionButton;->mShadowRadius:I

    iget v5, p0, Lcom/github/clans/fab/FloatingActionButton;->mShadowXOffset:I

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    add-int/2addr v4, v5

    goto :goto_3

    :cond_3
    const/4 v4, 0x0

    .line 365
    .local v4, "circleInsetHorizontal":I
    :goto_3
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->hasShadow()Z

    move-result v5

    if-eqz v5, :cond_4

    iget v2, p0, Lcom/github/clans/fab/FloatingActionButton;->mShadowRadius:I

    iget v5, p0, Lcom/github/clans/fab/FloatingActionButton;->mShadowYOffset:I

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    add-int/2addr v2, v5

    .line 367
    .local v2, "circleInsetVertical":I
    :cond_4
    iget-boolean v5, p0, Lcom/github/clans/fab/FloatingActionButton;->mProgressBarEnabled:Z

    if-eqz v5, :cond_5

    .line 368
    iget v5, p0, Lcom/github/clans/fab/FloatingActionButton;->mProgressWidth:I

    add-int/2addr v4, v5

    .line 369
    add-int/2addr v2, v5

    move v12, v4

    goto :goto_4

    .line 367
    :cond_5
    move v12, v4

    .line 379
    .end local v4    # "circleInsetHorizontal":I
    .local v12, "circleInsetHorizontal":I
    :goto_4
    nop

    .line 380
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->hasShadow()Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v5, 0x2

    goto :goto_5

    :cond_6
    const/4 v5, 0x1

    :goto_5
    add-int v6, v12, v11

    add-int v7, v2, v11

    add-int v8, v12, v11

    add-int v9, v2, v11

    .line 379
    move-object v4, v0

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    .line 387
    invoke-direct {p0, v0}, Lcom/github/clans/fab/FloatingActionButton;->setBackgroundCompat(Landroid/graphics/drawable/Drawable;)V

    .line 388
    return-void
.end method
