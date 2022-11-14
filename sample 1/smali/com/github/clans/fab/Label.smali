.class public Lcom/github/clans/fab/Label;
.super Landroid/widget/TextView;
.source "Label.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/clans/fab/Label$Shadow;
    }
.end annotation


# static fields
.field private static final PORTER_DUFF_CLEAR:Landroid/graphics/Xfermode;


# instance fields
.field private mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mColorNormal:I

.field private mColorPressed:I

.field private mColorRipple:I

.field private mCornerRadius:I

.field private mFab:Lcom/github/clans/fab/FloatingActionButton;

.field mGestureDetector:Landroid/view/GestureDetector;

.field private mHandleVisibilityChanges:Z

.field private mHideAnimation:Landroid/view/animation/Animation;

.field private mRawHeight:I

.field private mRawWidth:I

.field private mShadowColor:I

.field private mShadowRadius:I

.field private mShadowXOffset:I

.field private mShadowYOffset:I

.field private mShowAnimation:Landroid/view/animation/Animation;

.field private mShowShadow:Z

.field private mUsingStyle:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 31
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    sput-object v0, Lcom/github/clans/fab/Label;->PORTER_DUFF_CLEAR:Landroid/graphics/Xfermode;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 52
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/clans/fab/Label;->mShowShadow:Z

    .line 49
    iput-boolean v0, p0, Lcom/github/clans/fab/Label;->mHandleVisibilityChanges:Z

    .line 307
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/github/clans/fab/Label;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/github/clans/fab/Label$2;

    invoke-direct {v2, p0}, Lcom/github/clans/fab/Label$2;-><init>(Lcom/github/clans/fab/Label;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/github/clans/fab/Label;->mGestureDetector:Landroid/view/GestureDetector;

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 56
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/clans/fab/Label;->mShowShadow:Z

    .line 49
    iput-boolean v0, p0, Lcom/github/clans/fab/Label;->mHandleVisibilityChanges:Z

    .line 307
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/github/clans/fab/Label;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/github/clans/fab/Label$2;

    invoke-direct {v2, p0}, Lcom/github/clans/fab/Label$2;-><init>(Lcom/github/clans/fab/Label;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/github/clans/fab/Label;->mGestureDetector:Landroid/view/GestureDetector;

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 60
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/clans/fab/Label;->mShowShadow:Z

    .line 49
    iput-boolean v0, p0, Lcom/github/clans/fab/Label;->mHandleVisibilityChanges:Z

    .line 307
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/github/clans/fab/Label;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/github/clans/fab/Label$2;

    invoke-direct {v2, p0}, Lcom/github/clans/fab/Label$2;-><init>(Lcom/github/clans/fab/Label;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/github/clans/fab/Label;->mGestureDetector:Landroid/view/GestureDetector;

    .line 61
    return-void
.end method

.method static synthetic access$100(Lcom/github/clans/fab/Label;)Lcom/github/clans/fab/FloatingActionButton;
    .locals 1
    .param p0, "x0"    # Lcom/github/clans/fab/Label;

    .line 29
    iget-object v0, p0, Lcom/github/clans/fab/Label;->mFab:Lcom/github/clans/fab/FloatingActionButton;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/github/clans/fab/Label;)I
    .locals 1
    .param p0, "x0"    # Lcom/github/clans/fab/Label;

    .line 29
    iget v0, p0, Lcom/github/clans/fab/Label;->mCornerRadius:I

    return v0
.end method

.method static synthetic access$200(Lcom/github/clans/fab/Label;)I
    .locals 1
    .param p0, "x0"    # Lcom/github/clans/fab/Label;

    .line 29
    iget v0, p0, Lcom/github/clans/fab/Label;->mColorNormal:I

    return v0
.end method

.method static synthetic access$300()Landroid/graphics/Xfermode;
    .locals 1

    .line 29
    sget-object v0, Lcom/github/clans/fab/Label;->PORTER_DUFF_CLEAR:Landroid/graphics/Xfermode;

    return-object v0
.end method

.method static synthetic access$400(Lcom/github/clans/fab/Label;)I
    .locals 1
    .param p0, "x0"    # Lcom/github/clans/fab/Label;

    .line 29
    iget v0, p0, Lcom/github/clans/fab/Label;->mShadowRadius:I

    return v0
.end method

.method static synthetic access$500(Lcom/github/clans/fab/Label;)I
    .locals 1
    .param p0, "x0"    # Lcom/github/clans/fab/Label;

    .line 29
    iget v0, p0, Lcom/github/clans/fab/Label;->mShadowXOffset:I

    return v0
.end method

.method static synthetic access$600(Lcom/github/clans/fab/Label;)I
    .locals 1
    .param p0, "x0"    # Lcom/github/clans/fab/Label;

    .line 29
    iget v0, p0, Lcom/github/clans/fab/Label;->mShadowYOffset:I

    return v0
.end method

.method static synthetic access$700(Lcom/github/clans/fab/Label;)I
    .locals 1
    .param p0, "x0"    # Lcom/github/clans/fab/Label;

    .line 29
    iget v0, p0, Lcom/github/clans/fab/Label;->mShadowColor:I

    return v0
.end method

.method static synthetic access$800(Lcom/github/clans/fab/Label;)I
    .locals 1
    .param p0, "x0"    # Lcom/github/clans/fab/Label;

    .line 29
    iget v0, p0, Lcom/github/clans/fab/Label;->mRawWidth:I

    return v0
.end method

.method static synthetic access$900(Lcom/github/clans/fab/Label;)I
    .locals 1
    .param p0, "x0"    # Lcom/github/clans/fab/Label;

    .line 29
    iget v0, p0, Lcom/github/clans/fab/Label;->mRawHeight:I

    return v0
.end method

.method private calculateMeasuredHeight()I
    .locals 2

    .line 77
    iget v0, p0, Lcom/github/clans/fab/Label;->mRawHeight:I

    if-nez v0, :cond_0

    .line 78
    invoke-virtual {p0}, Lcom/github/clans/fab/Label;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/Label;->mRawHeight:I

    .line 80
    :cond_0
    invoke-virtual {p0}, Lcom/github/clans/fab/Label;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/github/clans/fab/Label;->calculateShadowHeight()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private calculateMeasuredWidth()I
    .locals 2

    .line 70
    iget v0, p0, Lcom/github/clans/fab/Label;->mRawWidth:I

    if-nez v0, :cond_0

    .line 71
    invoke-virtual {p0}, Lcom/github/clans/fab/Label;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/Label;->mRawWidth:I

    .line 73
    :cond_0
    invoke-virtual {p0}, Lcom/github/clans/fab/Label;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/github/clans/fab/Label;->calculateShadowWidth()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private createFillDrawable()Landroid/graphics/drawable/Drawable;
    .locals 8

    .line 122
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 123
    .local v0, "drawable":Landroid/graphics/drawable/StateListDrawable;
    const/4 v1, 0x1

    new-array v2, v1, [I

    const v3, 0x10100a7

    const/4 v4, 0x0

    aput v3, v2, v4

    iget v3, p0, Lcom/github/clans/fab/Label;->mColorPressed:I

    invoke-direct {p0, v3}, Lcom/github/clans/fab/Label;->createRectDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 124
    new-array v2, v4, [I

    iget v3, p0, Lcom/github/clans/fab/Label;->mColorNormal:I

    invoke-direct {p0, v3}, Lcom/github/clans/fab/Label;->createRectDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 126
    invoke-static {}, Lcom/github/clans/fab/Util;->hasLollipop()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 127
    new-instance v2, Landroid/graphics/drawable/RippleDrawable;

    new-instance v3, Landroid/content/res/ColorStateList;

    new-array v5, v1, [[I

    new-array v6, v4, [I

    aput-object v6, v5, v4

    new-array v6, v1, [I

    iget v7, p0, Lcom/github/clans/fab/Label;->mColorRipple:I

    aput v7, v6, v4

    invoke-direct {v3, v5, v6}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    const/4 v4, 0x0

    invoke-direct {v2, v3, v0, v4}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 129
    .local v2, "ripple":Landroid/graphics/drawable/RippleDrawable;
    new-instance v3, Lcom/github/clans/fab/Label$1;

    invoke-direct {v3, p0}, Lcom/github/clans/fab/Label$1;-><init>(Lcom/github/clans/fab/Label;)V

    invoke-virtual {p0, v3}, Lcom/github/clans/fab/Label;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 135
    invoke-virtual {p0, v1}, Lcom/github/clans/fab/Label;->setClipToOutline(Z)V

    .line 136
    iput-object v2, p0, Lcom/github/clans/fab/Label;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 137
    return-object v2

    .line 140
    .end local v2    # "ripple":Landroid/graphics/drawable/RippleDrawable;
    :cond_0
    iput-object v0, p0, Lcom/github/clans/fab/Label;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 141
    return-object v0
.end method

.method private createRectDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p1, "color"    # I

    .line 145
    new-instance v0, Landroid/graphics/drawable/shapes/RoundRectShape;

    const/16 v1, 0x8

    new-array v1, v1, [F

    iget v2, p0, Lcom/github/clans/fab/Label;->mCornerRadius:I

    int-to-float v3, v2

    const/4 v4, 0x0

    aput v3, v1, v4

    int-to-float v3, v2

    const/4 v4, 0x1

    aput v3, v1, v4

    int-to-float v3, v2

    const/4 v4, 0x2

    aput v3, v1, v4

    int-to-float v3, v2

    const/4 v4, 0x3

    aput v3, v1, v4

    int-to-float v3, v2

    const/4 v4, 0x4

    aput v3, v1, v4

    int-to-float v3, v2

    const/4 v4, 0x5

    aput v3, v1, v4

    int-to-float v3, v2

    const/4 v4, 0x6

    aput v3, v1, v4

    int-to-float v2, v2

    const/4 v3, 0x7

    aput v2, v1, v3

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    .line 158
    .local v0, "shape":Landroid/graphics/drawable/shapes/RoundRectShape;
    new-instance v1, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 159
    .local v1, "shapeDrawable":Landroid/graphics/drawable/ShapeDrawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 160
    return-object v1
.end method

.method private playHideAnimation()V
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/github/clans/fab/Label;->mHideAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/github/clans/fab/Label;->mShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 191
    iget-object v0, p0, Lcom/github/clans/fab/Label;->mHideAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/github/clans/fab/Label;->startAnimation(Landroid/view/animation/Animation;)V

    .line 193
    :cond_0
    return-void
.end method

.method private playShowAnimation()V
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/github/clans/fab/Label;->mShowAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/github/clans/fab/Label;->mHideAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 184
    iget-object v0, p0, Lcom/github/clans/fab/Label;->mShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/github/clans/fab/Label;->startAnimation(Landroid/view/animation/Animation;)V

    .line 186
    :cond_0
    return-void
.end method

.method private setBackgroundCompat(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 174
    invoke-static {}, Lcom/github/clans/fab/Util;->hasJellyBean()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    invoke-virtual {p0, p1}, Lcom/github/clans/fab/Label;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 177
    :cond_0
    invoke-virtual {p0, p1}, Lcom/github/clans/fab/Label;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 179
    :goto_0
    return-void
.end method

.method private setShadow(Lcom/github/clans/fab/FloatingActionButton;)V
    .locals 1
    .param p1, "fab"    # Lcom/github/clans/fab/FloatingActionButton;

    .line 164
    invoke-virtual {p1}, Lcom/github/clans/fab/FloatingActionButton;->getShadowColor()I

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/Label;->mShadowColor:I

    .line 165
    invoke-virtual {p1}, Lcom/github/clans/fab/FloatingActionButton;->getShadowRadius()I

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/Label;->mShadowRadius:I

    .line 166
    invoke-virtual {p1}, Lcom/github/clans/fab/FloatingActionButton;->getShadowXOffset()I

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/Label;->mShadowXOffset:I

    .line 167
    invoke-virtual {p1}, Lcom/github/clans/fab/FloatingActionButton;->getShadowYOffset()I

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/Label;->mShadowYOffset:I

    .line 168
    invoke-virtual {p1}, Lcom/github/clans/fab/FloatingActionButton;->hasShadow()Z

    move-result v0

    iput-boolean v0, p0, Lcom/github/clans/fab/Label;->mShowShadow:Z

    .line 169
    return-void
.end method


# virtual methods
.method calculateShadowHeight()I
    .locals 2

    .line 88
    iget-boolean v0, p0, Lcom/github/clans/fab/Label;->mShowShadow:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/github/clans/fab/Label;->mShadowRadius:I

    iget v1, p0, Lcom/github/clans/fab/Label;->mShadowYOffset:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method calculateShadowWidth()I
    .locals 2

    .line 84
    iget-boolean v0, p0, Lcom/github/clans/fab/Label;->mShowShadow:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/github/clans/fab/Label;->mShadowRadius:I

    iget v1, p0, Lcom/github/clans/fab/Label;->mShadowXOffset:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method hide(Z)V
    .locals 1
    .param p1, "animate"    # Z

    .line 258
    if-eqz p1, :cond_0

    .line 259
    invoke-direct {p0}, Lcom/github/clans/fab/Label;->playHideAnimation()V

    .line 261
    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/github/clans/fab/Label;->setVisibility(I)V

    .line 262
    return-void
.end method

.method isHandleVisibilityChanges()Z
    .locals 1

    .line 281
    iget-boolean v0, p0, Lcom/github/clans/fab/Label;->mHandleVisibilityChanges:Z

    return v0
.end method

.method onActionDown()V
    .locals 5

    .line 197
    iget-boolean v0, p0, Lcom/github/clans/fab/Label;->mUsingStyle:Z

    if-eqz v0, :cond_0

    .line 198
    invoke-virtual {p0}, Lcom/github/clans/fab/Label;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/github/clans/fab/Label;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/github/clans/fab/Label;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Landroid/graphics/drawable/StateListDrawable;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 202
    check-cast v0, Landroid/graphics/drawable/StateListDrawable;

    .line 203
    .local v0, "drawable":Landroid/graphics/drawable/StateListDrawable;
    new-array v1, v2, [I

    const/4 v2, 0x0

    const v3, 0x10100a7

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    .end local v0    # "drawable":Landroid/graphics/drawable/StateListDrawable;
    goto :goto_0

    .line 204
    :cond_1
    invoke-static {}, Lcom/github/clans/fab/Util;->hasLollipop()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/github/clans/fab/Label;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v1, :cond_2

    .line 205
    check-cast v0, Landroid/graphics/drawable/RippleDrawable;

    .line 206
    .local v0, "ripple":Landroid/graphics/drawable/RippleDrawable;
    const/4 v1, 0x2

    new-array v3, v1, [I

    fill-array-data v3, :array_0

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/RippleDrawable;->setState([I)Z

    .line 207
    invoke-virtual {p0}, Lcom/github/clans/fab/Label;->getMeasuredWidth()I

    move-result v3

    div-int/2addr v3, v1

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/github/clans/fab/Label;->getMeasuredHeight()I

    move-result v4

    div-int/2addr v4, v1

    int-to-float v1, v4

    invoke-virtual {v0, v3, v1}, Landroid/graphics/drawable/RippleDrawable;->setHotspot(FF)V

    .line 208
    invoke-virtual {v0, v2, v2}, Landroid/graphics/drawable/RippleDrawable;->setVisible(ZZ)Z

    goto :goto_1

    .line 204
    .end local v0    # "ripple":Landroid/graphics/drawable/RippleDrawable;
    :cond_2
    :goto_0
    nop

    .line 211
    :goto_1
    return-void

    nop

    :array_0
    .array-data 4
        0x101009e
        0x10100a7
    .end array-data
.end method

.method onActionUp()V
    .locals 3

    .line 215
    iget-boolean v0, p0, Lcom/github/clans/fab/Label;->mUsingStyle:Z

    if-eqz v0, :cond_0

    .line 216
    invoke-virtual {p0}, Lcom/github/clans/fab/Label;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/github/clans/fab/Label;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/github/clans/fab/Label;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Landroid/graphics/drawable/StateListDrawable;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 220
    check-cast v0, Landroid/graphics/drawable/StateListDrawable;

    .line 221
    .local v0, "drawable":Landroid/graphics/drawable/StateListDrawable;
    new-array v1, v2, [I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    .end local v0    # "drawable":Landroid/graphics/drawable/StateListDrawable;
    goto :goto_0

    .line 222
    :cond_1
    invoke-static {}, Lcom/github/clans/fab/Util;->hasLollipop()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/github/clans/fab/Label;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v1, :cond_2

    .line 223
    check-cast v0, Landroid/graphics/drawable/RippleDrawable;

    .line 224
    .local v0, "ripple":Landroid/graphics/drawable/RippleDrawable;
    new-array v1, v2, [I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/RippleDrawable;->setState([I)Z

    .line 225
    invoke-virtual {p0}, Lcom/github/clans/fab/Label;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/github/clans/fab/Label;->getMeasuredHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/RippleDrawable;->setHotspot(FF)V

    .line 226
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Landroid/graphics/drawable/RippleDrawable;->setVisible(ZZ)Z

    goto :goto_1

    .line 222
    .end local v0    # "ripple":Landroid/graphics/drawable/RippleDrawable;
    :cond_2
    :goto_0
    nop

    .line 229
    :goto_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 65
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 66
    invoke-direct {p0}, Lcom/github/clans/fab/Label;->calculateMeasuredWidth()I

    move-result v0

    invoke-direct {p0}, Lcom/github/clans/fab/Label;->calculateMeasuredHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/github/clans/fab/Label;->setMeasuredDimension(II)V

    .line 67
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 286
    iget-object v0, p0, Lcom/github/clans/fab/Label;->mFab:Lcom/github/clans/fab/FloatingActionButton;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/github/clans/fab/FloatingActionButton;->getOnClickListener()Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/github/clans/fab/Label;->mFab:Lcom/github/clans/fab/FloatingActionButton;

    invoke-virtual {v0}, Lcom/github/clans/fab/FloatingActionButton;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 290
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 291
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 298
    :pswitch_1
    invoke-virtual {p0}, Lcom/github/clans/fab/Label;->onActionUp()V

    .line 299
    iget-object v1, p0, Lcom/github/clans/fab/Label;->mFab:Lcom/github/clans/fab/FloatingActionButton;

    invoke-virtual {v1}, Lcom/github/clans/fab/FloatingActionButton;->onActionUp()V

    goto :goto_0

    .line 293
    :pswitch_2
    invoke-virtual {p0}, Lcom/github/clans/fab/Label;->onActionUp()V

    .line 294
    iget-object v1, p0, Lcom/github/clans/fab/Label;->mFab:Lcom/github/clans/fab/FloatingActionButton;

    invoke-virtual {v1}, Lcom/github/clans/fab/FloatingActionButton;->onActionUp()V

    .line 295
    nop

    .line 303
    :goto_0
    iget-object v1, p0, Lcom/github/clans/fab/Label;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 304
    invoke-super {p0, p1}, Landroid/widget/TextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 287
    .end local v0    # "action":I
    :cond_1
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/TextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method setColors(III)V
    .locals 0
    .param p1, "colorNormal"    # I
    .param p2, "colorPressed"    # I
    .param p3, "colorRipple"    # I

    .line 245
    iput p1, p0, Lcom/github/clans/fab/Label;->mColorNormal:I

    .line 246
    iput p2, p0, Lcom/github/clans/fab/Label;->mColorPressed:I

    .line 247
    iput p3, p0, Lcom/github/clans/fab/Label;->mColorRipple:I

    .line 248
    return-void
.end method

.method setCornerRadius(I)V
    .locals 0
    .param p1, "cornerRadius"    # I

    .line 241
    iput p1, p0, Lcom/github/clans/fab/Label;->mCornerRadius:I

    .line 242
    return-void
.end method

.method setFab(Lcom/github/clans/fab/FloatingActionButton;)V
    .locals 0
    .param p1, "fab"    # Lcom/github/clans/fab/FloatingActionButton;

    .line 232
    iput-object p1, p0, Lcom/github/clans/fab/Label;->mFab:Lcom/github/clans/fab/FloatingActionButton;

    .line 233
    invoke-direct {p0, p1}, Lcom/github/clans/fab/Label;->setShadow(Lcom/github/clans/fab/FloatingActionButton;)V

    .line 234
    return-void
.end method

.method setHandleVisibilityChanges(Z)V
    .locals 0
    .param p1, "handle"    # Z

    .line 277
    iput-boolean p1, p0, Lcom/github/clans/fab/Label;->mHandleVisibilityChanges:Z

    .line 278
    return-void
.end method

.method setHideAnimation(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "hideAnimation"    # Landroid/view/animation/Animation;

    .line 269
    iput-object p1, p0, Lcom/github/clans/fab/Label;->mHideAnimation:Landroid/view/animation/Animation;

    .line 270
    return-void
.end method

.method setShowAnimation(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "showAnimation"    # Landroid/view/animation/Animation;

    .line 265
    iput-object p1, p0, Lcom/github/clans/fab/Label;->mShowAnimation:Landroid/view/animation/Animation;

    .line 266
    return-void
.end method

.method setShowShadow(Z)V
    .locals 0
    .param p1, "show"    # Z

    .line 237
    iput-boolean p1, p0, Lcom/github/clans/fab/Label;->mShowShadow:Z

    .line 238
    return-void
.end method

.method setUsingStyle(Z)V
    .locals 0
    .param p1, "usingStyle"    # Z

    .line 273
    iput-boolean p1, p0, Lcom/github/clans/fab/Label;->mUsingStyle:Z

    .line 274
    return-void
.end method

.method show(Z)V
    .locals 1
    .param p1, "animate"    # Z

    .line 251
    if-eqz p1, :cond_0

    .line 252
    invoke-direct {p0}, Lcom/github/clans/fab/Label;->playShowAnimation()V

    .line 254
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/github/clans/fab/Label;->setVisibility(I)V

    .line 255
    return-void
.end method

.method updateBackground()V
    .locals 10

    .line 93
    iget-boolean v0, p0, Lcom/github/clans/fab/Label;->mShowShadow:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 94
    new-instance v3, Landroid/graphics/drawable/LayerDrawable;

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    new-instance v4, Lcom/github/clans/fab/Label$Shadow;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/github/clans/fab/Label$Shadow;-><init>(Lcom/github/clans/fab/Label;Lcom/github/clans/fab/Label$1;)V

    aput-object v4, v0, v1

    .line 96
    invoke-direct {p0}, Lcom/github/clans/fab/Label;->createFillDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-direct {v3, v0}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 99
    .local v3, "layerDrawable":Landroid/graphics/drawable/LayerDrawable;
    iget v0, p0, Lcom/github/clans/fab/Label;->mShadowRadius:I

    iget v1, p0, Lcom/github/clans/fab/Label;->mShadowXOffset:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 100
    .local v0, "leftInset":I
    iget v1, p0, Lcom/github/clans/fab/Label;->mShadowRadius:I

    iget v2, p0, Lcom/github/clans/fab/Label;->mShadowYOffset:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    add-int/2addr v1, v2

    .line 101
    .local v1, "topInset":I
    iget v2, p0, Lcom/github/clans/fab/Label;->mShadowRadius:I

    iget v4, p0, Lcom/github/clans/fab/Label;->mShadowXOffset:I

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    add-int/2addr v2, v4

    .line 102
    .local v2, "rightInset":I
    iget v4, p0, Lcom/github/clans/fab/Label;->mShadowRadius:I

    iget v5, p0, Lcom/github/clans/fab/Label;->mShadowYOffset:I

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    add-int v9, v4, v5

    .line 104
    .local v9, "bottomInset":I
    const/4 v4, 0x1

    move v5, v0

    move v6, v1

    move v7, v2

    move v8, v9

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    .line 111
    .end local v0    # "leftInset":I
    .end local v1    # "topInset":I
    .end local v2    # "rightInset":I
    .end local v9    # "bottomInset":I
    move-object v0, v3

    goto :goto_0

    .line 112
    .end local v3    # "layerDrawable":Landroid/graphics/drawable/LayerDrawable;
    :cond_0
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    new-array v2, v2, [Landroid/graphics/drawable/Drawable;

    .line 113
    invoke-direct {p0}, Lcom/github/clans/fab/Label;->createFillDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-direct {v0, v2}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 117
    .local v0, "layerDrawable":Landroid/graphics/drawable/LayerDrawable;
    :goto_0
    invoke-direct {p0, v0}, Lcom/github/clans/fab/Label;->setBackgroundCompat(Landroid/graphics/drawable/Drawable;)V

    .line 118
    return-void
.end method
