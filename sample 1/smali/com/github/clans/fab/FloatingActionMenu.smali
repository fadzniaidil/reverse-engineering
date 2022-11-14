.class public Lcom/github/clans/fab/FloatingActionMenu;
.super Landroid/view/ViewGroup;
.source "FloatingActionMenu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/clans/fab/FloatingActionMenu$OnMenuToggleListener;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION:I = 0x12c

.field private static final CLOSED_PLUS_ROTATION:F = 0.0f

.field private static final LABELS_POSITION_LEFT:I = 0x0

.field private static final LABELS_POSITION_RIGHT:I = 0x1

.field private static final OPENED_PLUS_ROTATION_LEFT:F = -135.0f

.field private static final OPENED_PLUS_ROTATION_RIGHT:F = 135.0f

.field private static final OPEN_DOWN:I = 0x1

.field private static final OPEN_UP:I


# instance fields
.field private mAnimationDelayPerItem:I

.field private mBackgroundColor:I

.field private mButtonSpacing:I

.field private mButtonsCount:I

.field private mCloseAnimatorSet:Landroid/animation/AnimatorSet;

.field private mCloseInterpolator:Landroid/view/animation/Interpolator;

.field private mCustomTypefaceFromFont:Landroid/graphics/Typeface;

.field private mHideBackgroundAnimator:Landroid/animation/ValueAnimator;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIconAnimated:Z

.field private mIconToggleSet:Landroid/animation/AnimatorSet;

.field private mImageToggle:Landroid/widget/ImageView;

.field private mImageToggleHideAnimation:Landroid/view/animation/Animation;

.field private mImageToggleShowAnimation:Landroid/view/animation/Animation;

.field private mIsAnimated:Z

.field private mIsMenuButtonAnimationRunning:Z

.field private mIsMenuOpening:Z

.field private mIsSetClosedOnTouchOutside:Z

.field private mLabelsColorNormal:I

.field private mLabelsColorPressed:I

.field private mLabelsColorRipple:I

.field private mLabelsContext:Landroid/content/Context;

.field private mLabelsCornerRadius:I

.field private mLabelsEllipsize:I

.field private mLabelsHideAnimation:I

.field private mLabelsMargin:I

.field private mLabelsMaxLines:I

.field private mLabelsPaddingBottom:I

.field private mLabelsPaddingLeft:I

.field private mLabelsPaddingRight:I

.field private mLabelsPaddingTop:I

.field private mLabelsPosition:I

.field private mLabelsShowAnimation:I

.field private mLabelsShowShadow:Z

.field private mLabelsSingleLine:Z

.field private mLabelsStyle:I

.field private mLabelsTextColor:Landroid/content/res/ColorStateList;

.field private mLabelsTextSize:F

.field private mLabelsVerticalOffset:I

.field private mMaxButtonWidth:I

.field private mMenuButton:Lcom/github/clans/fab/FloatingActionButton;

.field private mMenuButtonHideAnimation:Landroid/view/animation/Animation;

.field private mMenuButtonShowAnimation:Landroid/view/animation/Animation;

.field private mMenuColorNormal:I

.field private mMenuColorPressed:I

.field private mMenuColorRipple:I

.field private mMenuFabSize:I

.field private mMenuLabelText:Ljava/lang/String;

.field private mMenuOpened:Z

.field private mMenuShadowColor:I

.field private mMenuShadowRadius:F

.field private mMenuShadowXOffset:F

.field private mMenuShadowYOffset:F

.field private mMenuShowShadow:Z

.field private mOpenAnimatorSet:Landroid/animation/AnimatorSet;

.field private mOpenDirection:I

.field private mOpenInterpolator:Landroid/view/animation/Interpolator;

.field private mShowBackgroundAnimator:Landroid/animation/ValueAnimator;

.field private mToggleListener:Lcom/github/clans/fab/FloatingActionMenu$OnMenuToggleListener;

.field private mUiHandler:Landroid/os/Handler;

.field private mUsingMenuLabel:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 114
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/github/clans/fab/FloatingActionMenu;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 115
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 118
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/github/clans/fab/FloatingActionMenu;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 119
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 122
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->mOpenAnimatorSet:Landroid/animation/AnimatorSet;

    .line 45
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->mCloseAnimatorSet:Landroid/animation/AnimatorSet;

    .line 48
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/github/clans/fab/Util;->dpToPx(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->mButtonSpacing:I

    .line 51
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/github/clans/fab/Util;->dpToPx(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->mLabelsMargin:I

    .line 52
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/github/clans/fab/Util;->dpToPx(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->mLabelsVerticalOffset:I

    .line 56
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->mUiHandler:Landroid/os/Handler;

    .line 59
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {v0, v1}, Lcom/github/clans/fab/Util;->dpToPx(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->mLabelsPaddingTop:I

    .line 60
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v0, v2}, Lcom/github/clans/fab/Util;->dpToPx(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->mLabelsPaddingRight:I

    .line 61
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/github/clans/fab/Util;->dpToPx(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->mLabelsPaddingBottom:I

    .line 62
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/github/clans/fab/Util;->dpToPx(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->mLabelsPaddingLeft:I

    .line 65
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v2, 0x40400000    # 3.0f

    invoke-static {v0, v2}, Lcom/github/clans/fab/Util;->dpToPx(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->mLabelsCornerRadius:I

    .line 72
    iput v1, p0, Lcom/github/clans/fab/FloatingActionMenu;->mMenuShadowRadius:F

    .line 73
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->mMenuShadowXOffset:F

    .line 74
    iput v2, p0, Lcom/github/clans/fab/FloatingActionMenu;->mMenuShadowYOffset:F

    .line 82
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->mIsAnimated:Z

    .line 89
    iput-boolean v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->mIconAnimated:Z

    .line 123
    invoke-direct {p0, p1, p2}, Lcom/github/clans/fab/FloatingActionMenu;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 124
    return-void
.end method

.method static synthetic access$000(Lcom/github/clans/fab/FloatingActionMenu;)Z
    .locals 1
    .param p0, "x0"    # Lcom/github/clans/fab/FloatingActionMenu;

    .line 31
    iget-boolean v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->mIsAnimated:Z

    return v0
.end method

.method static synthetic access$100(Lcom/github/clans/fab/FloatingActionMenu;)Lcom/github/clans/fab/FloatingActionButton;
    .locals 1
    .param p0, "x0"    # Lcom/github/clans/fab/FloatingActionMenu;

    .line 31
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->mMenuButton:Lcom/github/clans/fab/FloatingActionButton;

    return-object v0
.end method

.method static synthetic access$202(Lcom/github/clans/fab/FloatingActionMenu;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/github/clans/fab/FloatingActionMenu;
    .param p1, "x1"    # Z

    .line 31
    iput-boolean p1, p0, Lcom/github/clans/fab/FloatingActionMenu;->mMenuOpened:Z

    return p1
.end method

.method static synthetic access$300(Lcom/github/clans/fab/FloatingActionMenu;)Lcom/github/clans/fab/FloatingActionMenu$OnMenuToggleListener;
    .locals 1
    .param p0, "x0"    # Lcom/github/clans/fab/FloatingActionMenu;

    .line 31
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->mToggleListener:Lcom/github/clans/fab/FloatingActionMenu$OnMenuToggleListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/github/clans/fab/FloatingActionMenu;)Landroid/view/animation/Animation;
    .locals 1
    .param p0, "x0"    # Lcom/github/clans/fab/FloatingActionMenu;

    .line 31
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->mMenuButtonHideAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$502(Lcom/github/clans/fab/FloatingActionMenu;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/github/clans/fab/FloatingActionMenu;
    .param p1, "x1"    # Z

    .line 31
    iput-boolean p1, p0, Lcom/github/clans/fab/FloatingActionMenu;->mIsMenuButtonAnimationRunning:Z

    return p1
.end method

.method static synthetic access$600(Lcom/github/clans/fab/FloatingActionMenu;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/github/clans/fab/FloatingActionMenu;
    .param p1, "x1"    # Z

    .line 31
    invoke-direct {p0, p1}, Lcom/github/clans/fab/FloatingActionMenu;->hideMenuButtonWithImage(Z)V

    return-void
.end method

.method private addLabel(Lcom/github/clans/fab/FloatingActionButton;)V
    .locals 6
    .param p1, "fab"    # Lcom/github/clans/fab/FloatingActionButton;

    .line 477
    invoke-virtual {p1}, Lcom/github/clans/fab/FloatingActionButton;->getLabelText()Ljava/lang/String;

    move-result-object v0

    .line 479
    .local v0, "text":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 481
    :cond_0
    new-instance v1, Lcom/github/clans/fab/Label;

    iget-object v2, p0, Lcom/github/clans/fab/FloatingActionMenu;->mLabelsContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/github/clans/fab/Label;-><init>(Landroid/content/Context;)V

    .line 482
    .local v1, "label":Lcom/github/clans/fab/Label;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/github/clans/fab/Label;->setClickable(Z)V

    .line 483
    invoke-virtual {v1, p1}, Lcom/github/clans/fab/Label;->setFab(Lcom/github/clans/fab/FloatingActionButton;)V

    .line 484
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenu;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v4, p0, Lcom/github/clans/fab/FloatingActionMenu;->mLabelsShowAnimation:I

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/github/clans/fab/Label;->setShowAnimation(Landroid/view/animation/Animation;)V

    .line 485
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenu;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v4, p0, Lcom/github/clans/fab/FloatingActionMenu;->mLabelsHideAnimation:I

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/github/clans/fab/Label;->setHideAnimation(Landroid/view/animation/Animation;)V

    .line 487
    iget v3, p0, Lcom/github/clans/fab/FloatingActionMenu;->mLabelsStyle:I

    const/4 v4, 0x0

    if-lez v3, :cond_1

    .line 488
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenu;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v5, p0, Lcom/github/clans/fab/FloatingActionMenu;->mLabelsStyle:I

    invoke-virtual {v1, v3, v5}, Lcom/github/clans/fab/Label;->setTextAppearance(Landroid/content/Context;I)V

    .line 489
    invoke-virtual {v1, v4}, Lcom/github/clans/fab/Label;->setShowShadow(Z)V

    .line 490
    invoke-virtual {v1, v2}, Lcom/github/clans/fab/Label;->setUsingStyle(Z)V

    goto :goto_0

    .line 492
    :cond_1
    iget v2, p0, Lcom/github/clans/fab/FloatingActionMenu;->mLabelsColorNormal:I

    iget v3, p0, Lcom/github/clans/fab/FloatingActionMenu;->mLabelsColorPressed:I

    iget v5, p0, Lcom/github/clans/fab/FloatingActionMenu;->mLabelsColorRipple:I

    invoke-virtual {v1, v2, v3, v5}, Lcom/github/clans/fab/Label;->setColors(III)V

    .line 493
    iget-boolean v2, p0, Lcom/github/clans/fab/FloatingActionMenu;->mLabelsShowShadow:Z

    invoke-virtual {v1, v2}, Lcom/github/clans/fab/Label;->setShowShadow(Z)V

    .line 494
    iget v2, p0, Lcom/github/clans/fab/FloatingActionMenu;->mLabelsCornerRadius:I

    invoke-virtual {v1, v2}, Lcom/github/clans/fab/Label;->setCornerRadius(I)V

    .line 495
    iget v2, p0, Lcom/github/clans/fab/FloatingActionMenu;->mLabelsEllipsize:I

    if-lez v2, :cond_2

    .line 496
    invoke-direct {p0, v1}, Lcom/github/clans/fab/FloatingActionMenu;->setLabelEllipsize(Lcom/github/clans/fab/Label;)V

    .line 498
    :cond_2
    iget v2, p0, Lcom/github/clans/fab/FloatingActionMenu;->mLabelsMaxLines:I

    invoke-virtual {v1, v2}, Lcom/github/clans/fab/Label;->setMaxLines(I)V

    .line 499
    invoke-virtual {v1}, Lcom/github/clans/fab/Label;->updateBackground()V

    .line 501
    iget v2, p0, Lcom/github/clans/fab/FloatingActionMenu;->mLabelsTextSize:F

    invoke-virtual {v1, v4, v2}, Lcom/github/clans/fab/Label;->setTextSize(IF)V

    .line 502
    iget-object v2, p0, Lcom/github/clans/fab/FloatingActionMenu;->mLabelsTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v2}, Lcom/github/clans/fab/Label;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 504
    iget v2, p0, Lcom/github/clans/fab/FloatingActionMenu;->mLabelsPaddingLeft:I

    .line 505
    .local v2, "left":I
    iget v3, p0, Lcom/github/clans/fab/FloatingActionMenu;->mLabelsPaddingTop:I

    .line 506
    .local v3, "top":I
    iget-boolean v4, p0, Lcom/github/clans/fab/FloatingActionMenu;->mLabelsShowShadow:Z

    if-eqz v4, :cond_3

    .line 507
    invoke-virtual {p1}, Lcom/github/clans/fab/FloatingActionButton;->getShadowRadius()I

    move-result v4

    invoke-virtual {p1}, Lcom/github/clans/fab/FloatingActionButton;->getShadowXOffset()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v2, v4

    .line 508
    invoke-virtual {p1}, Lcom/github/clans/fab/FloatingActionButton;->getShadowRadius()I

    move-result v4

    invoke-virtual {p1}, Lcom/github/clans/fab/FloatingActionButton;->getShadowYOffset()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v3, v4

    .line 511
    :cond_3
    iget v4, p0, Lcom/github/clans/fab/FloatingActionMenu;->mLabelsPaddingLeft:I

    iget v5, p0, Lcom/github/clans/fab/FloatingActionMenu;->mLabelsPaddingTop:I

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/github/clans/fab/Label;->setPadding(IIII)V

    .line 518
    iget v4, p0, Lcom/github/clans/fab/FloatingActionMenu;->mLabelsMaxLines:I

    if-ltz v4, :cond_4

    iget-boolean v4, p0, Lcom/github/clans/fab/FloatingActionMenu;->mLabelsSingleLine:Z

    if-eqz v4, :cond_5

    .line 519
    :cond_4
    iget-boolean v4, p0, Lcom/github/clans/fab/FloatingActionMenu;->mLabelsSingleLine:Z

    invoke-virtual {v1, v4}, Lcom/github/clans/fab/Label;->setSingleLine(Z)V

    .line 523
    .end local v2    # "left":I
    .end local v3    # "top":I
    :cond_5
    :goto_0
    iget-object v2, p0, Lcom/github/clans/fab/FloatingActionMenu;->mCustomTypefaceFromFont:Landroid/graphics/Typeface;

    if-eqz v2, :cond_6

    .line 524
    invoke-virtual {v1, v2}, Lcom/github/clans/fab/Label;->setTypeface(Landroid/graphics/Typeface;)V

    .line 526
    :cond_6
    invoke-virtual {v1, v0}, Lcom/github/clans/fab/Label;->setText(Ljava/lang/CharSequence;)V

    .line 527
    invoke-virtual {p1}, Lcom/github/clans/fab/FloatingActionButton;->getOnClickListener()Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/github/clans/fab/Label;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 529
    invoke-virtual {p0, v1}, Lcom/github/clans/fab/FloatingActionMenu;->addView(Landroid/view/View;)V

    .line 530
    sget v2, Lcom/github/clans/fab/R$id;->fab_label:I

    invoke-virtual {p1, v2, v1}, Lcom/github/clans/fab/FloatingActionButton;->setTag(ILjava/lang/Object;)V

    .line 531
    return-void
.end method

.method private adjustForOvershoot(I)I
    .locals 4
    .param p1, "dimension"    # I

    .line 442
    int-to-double v0, p1

    const-wide v2, 0x3f9eb851eb851eb8L    # 0.03

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    int-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method private createDefaultIconAnimation()V
    .locals 9

    .line 275
    iget v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->mOpenDirection:I

    const/high16 v1, 0x43070000    # 135.0f

    const/high16 v2, -0x3cf90000    # -135.0f

    if-nez v0, :cond_2

    .line 276
    iget v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->mLabelsPosition:I

    if-nez v0, :cond_0

    const/high16 v3, -0x3cf90000    # -135.0f

    goto :goto_0

    :cond_0
    const/high16 v3, 0x43070000    # 135.0f

    .line 277
    .local v3, "collapseAngle":F
    :goto_0
    if-nez v0, :cond_1

    const/high16 v1, -0x3cf90000    # -135.0f

    :cond_1
    move v0, v1

    .local v0, "expandAngle":F
    goto :goto_3

    .line 279
    .end local v0    # "expandAngle":F
    .end local v3    # "collapseAngle":F
    :cond_2
    iget v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->mLabelsPosition:I

    if-nez v0, :cond_3

    const/high16 v3, 0x43070000    # 135.0f

    goto :goto_1

    :cond_3
    const/high16 v3, -0x3cf90000    # -135.0f

    .line 280
    .restart local v3    # "collapseAngle":F
    :goto_1
    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    const/high16 v1, -0x3cf90000    # -135.0f

    :goto_2
    move v0, v1

    .line 283
    .restart local v0    # "expandAngle":F
    :goto_3
    iget-object v1, p0, Lcom/github/clans/fab/FloatingActionMenu;->mImageToggle:Landroid/widget/ImageView;

    const/4 v2, 0x2

    new-array v4, v2, [F

    const/4 v5, 0x0

    aput v3, v4, v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    aput v7, v4, v6

    const-string v8, "rotation"

    invoke-static {v1, v8, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 290
    .local v1, "collapseAnimator":Landroid/animation/ObjectAnimator;
    iget-object v4, p0, Lcom/github/clans/fab/FloatingActionMenu;->mImageToggle:Landroid/widget/ImageView;

    new-array v2, v2, [F

    aput v7, v2, v5

    aput v0, v2, v6

    invoke-static {v4, v8, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 297
    .local v2, "expandAnimator":Landroid/animation/ObjectAnimator;
    iget-object v4, p0, Lcom/github/clans/fab/FloatingActionMenu;->mOpenAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v4, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 298
    iget-object v4, p0, Lcom/github/clans/fab/FloatingActionMenu;->mCloseAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v4, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 300
    iget-object v4, p0, Lcom/github/clans/fab/FloatingActionMenu;->mOpenAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v5, p0, Lcom/github/clans/fab/FloatingActionMenu;->mOpenInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 301
    iget-object v4, p0, Lcom/github/clans/fab/FloatingActionMenu;->mCloseAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v5, p0, Lcom/github/clans/fab/FloatingActionMenu;->mCloseInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 303
    iget-object v4, p0, Lcom/github/clans/fab/FloatingActionMenu;->mOpenAnimatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v5, 0x12c

    invoke-virtual {v4, v5, v6}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 304
    iget-object v4, p0, Lcom/github/clans/fab/FloatingActionMenu;->mCloseAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v4, v5, v6}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 305
    return-void
.end method

.method private createLabels()V
    .locals 4

    .line 455
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/github/clans/fab/FloatingActionMenu;->mButtonsCount:I

    if-ge v0, v1, :cond_3

    .line 457
    invoke-virtual {p0, v0}, Lcom/github/clans/fab/FloatingActionMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/github/clans/fab/FloatingActionMenu;->mImageToggle:Landroid/widget/ImageView;

    if-ne v1, v2, :cond_0

    goto :goto_1

    .line 459
    :cond_0
    invoke-virtual {p0, v0}, Lcom/github/clans/fab/FloatingActionMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/github/clans/fab/FloatingActionButton;

    .line 461
    .local v1, "fab":Lcom/github/clans/fab/FloatingActionButton;
    sget v2, Lcom/github/clans/fab/R$id;->fab_label:I

    invoke-virtual {v1, v2}, Lcom/github/clans/fab/FloatingActionButton;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 463
    :cond_1
    invoke-direct {p0, v1}, Lcom/github/clans/fab/FloatingActionMenu;->addLabel(Lcom/github/clans/fab/FloatingActionButton;)V

    .line 465
    iget-object v2, p0, Lcom/github/clans/fab/FloatingActionMenu;->mMenuButton:Lcom/github/clans/fab/FloatingActionButton;

    if-ne v1, v2, :cond_2

    .line 466
    new-instance v3, Lcom/github/clans/fab/FloatingActionMenu$3;

    invoke-direct {v3, p0}, Lcom/github/clans/fab/FloatingActionMenu$3;-><init>(Lcom/github/clans/fab/FloatingActionMenu;)V

    invoke-virtual {v2, v3}, Lcom/github/clans/fab/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 455
    .end local v1    # "fab":Lcom/github/clans/fab/FloatingActionButton;
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 474
    .end local v0    # "i":I
    :cond_3
    return-void
.end method

.method private createMenuButton()V
    .locals 4

    .line 249
    new-instance v0, Lcom/github/clans/fab/FloatingActionButton;

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/github/clans/fab/FloatingActionButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->mMenuButton:Lcom/github/clans/fab/FloatingActionButton;

    .line 251
    iget-boolean v1, p0, Lcom/github/clans/fab/FloatingActionMenu;->mMenuShowShadow:Z

    iput-boolean v1, v0, Lcom/github/clans/fab/FloatingActionButton;->mShowShadow:Z

    .line 252
    iget-boolean v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->mMenuShowShadow:Z

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->mMenuButton:Lcom/github/clans/fab/FloatingActionButton;

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/github/clans/fab/FloatingActionMenu;->mMenuShadowRadius:F

    invoke-static {v1, v2}, Lcom/github/clans/fab/Util;->dpToPx(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Lcom/github/clans/fab/FloatingActionButton;->mShadowRadius:I

    .line 254
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->mMenuButton:Lcom/github/clans/fab/FloatingActionButton;

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/github/clans/fab/FloatingActionMenu;->mMenuShadowXOffset:F

    invoke-static {v1, v2}, Lcom/github/clans/fab/Util;->dpToPx(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Lcom/github/clans/fab/FloatingActionButton;->mShadowXOffset:I

    .line 255
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->mMenuButton:Lcom/github/clans/fab/FloatingActionButton;

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/github/clans/fab/FloatingActionMenu;->mMenuShadowYOffset:F

    invoke-static {v1, v2}, Lcom/github/clans/fab/Util;->dpToPx(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Lcom/github/clans/fab/FloatingActionButton;->mShadowYOffset:I

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->mMenuButton:Lcom/github/clans/fab/FloatingActionButton;

    iget v1, p0, Lcom/github/clans/fab/FloatingActionMenu;->mMenuColorNormal:I

    iget v2, p0, Lcom/github/clans/fab/FloatingActionMenu;->mMenuColorPressed:I

    iget v3, p0, Lcom/github/clans/fab/FloatingActionMenu;->mMenuColorRipple:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/github/clans/fab/FloatingActionButton;->setColors(III)V

    .line 258
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->mMenuButton:Lcom/github/clans/fab/FloatingActionButton;

    iget v1, p0, Lcom/github/clans/fab/FloatingActionMenu;->mMenuShadowColor:I

    iput v1, v0, Lcom/github/clans/fab/FloatingActionButton;->mShadowColor:I

    .line 259
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->mMenuButton:Lcom/github/clans/fab/FloatingActionButton;

    iget v1, p0, Lcom/github/clans/fab/FloatingActionMenu;->mMenuFabSize:I

    iput v1, v0, Lcom/github/clans/fab/FloatingActionButton;->mFabSize:I

    .line 260
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->mMenuButton:Lcom/github/clans/fab/FloatingActionButton;

    invoke-virtual {v0}, Lcom/github/clans/fab/FloatingActionButton;->updateBackground()V

    .line 261
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->mMenuButton:Lcom/github/clans/fab/FloatingActionButton;

    iget-object v1, p0, Lcom/github/clans/fab/FloatingActionMenu;->mMenuLabelText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/github/clans/fab/FloatingActionButton;->setLabelText(Ljava/lang/String;)V

    .line 263
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->mImageToggle:Landroid/widget/ImageView;

    .line 264
    iget-object v1, p0, Lcom/github/clans/fab/FloatingActionMenu;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 266
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->mMenuButton:Lcom/github/clans/fab/FloatingActionButton;

    invoke-super {p0}, Landroid/view/ViewGroup;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/github/clans/fab/FloatingActionMenu;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 267
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->mImageToggle:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/github/clans/fab/FloatingActionMenu;->addView(Landroid/view/View;)V

    .line 269
    invoke-direct {p0}, Lcom/github/clans/fab/FloatingActionMenu;->createDefaultIconAnimation()V

    .line 270
    return-void
.end method

.method private hideMenuButtonWithImage(Z)V
    .locals 2
    .param p1, "animate"    # Z

    .line 572
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenu;->isMenuButtonHidden()Z

    move-result v0

    if-nez v0, :cond_1

    .line 573
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->mMenuButton:Lcom/github/clans/fab/FloatingActionButton;

    invoke-virtual {v0, p1}, Lcom/github/clans/fab/FloatingActionButton;->hide(Z)V

    .line 574
    if-eqz p1, :cond_0

    .line 575
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->mImageToggle:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/github/clans/fab/FloatingActionMenu;->mImageToggleHideAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 577
    :cond_0
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->mImageToggle:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 578
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->mIsMenuButtonAnimationRunning:Z

    .line 580
    :cond_1
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 127
    sget-object v0, Lcom/github/clans/fab/R$styleable;->FloatingActionMenu:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 128
    .local v0, "attr":Landroid/content/res/TypedArray;
    sget v2, Lcom/github/clans/fab/R$styleable;->FloatingActionMenu_menu_buttonSpacing:I

    iget v3, p0, Lcom/github/clans/fab/FloatingActionMenu;->mButtonSpacing:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/github/clans/fab/FloatingActionMenu;->mButtonSpacing:I

    .line 129
    sget v2, Lcom/github/clans/fab/R$styleable;->FloatingActionMenu_menu_labels_margin:I

    iget v3, p0, Lcom/github/clans/fab/FloatingActionMenu;->mLabelsMargin:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/github/clans/fab/FloatingActionMenu;->mLabelsMargin:I

    .line 130
    sget v2, Lcom/github/clans/fab/R$styleable;->FloatingActionMenu_menu_labels_position:I

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/github/clans/fab/FloatingActionMenu;->mLabelsPosition:I

    .line 131
    sget v2, Lcom/github/clans/fab/R$styleable;->FloatingActionMenu_menu_labels_showAnimation:I

    iget v3, p0, Lcom/github/clans/fab/FloatingActionMenu;->mLabelsPosition:I

    if-nez v3, :cond_0

    sget v3, Lcom/github/clans/fab/R$anim;->fab_slide_in_from_right:I

    goto :goto_0

    :cond_0
    sget v3, Lcom/github/clans/fab/R$anim;->fab_slide_in_from_left:I

    :goto_0
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/github/clans/fab/FloatingActionMenu;->mLabelsShowAnimation:I

    .line 133
    sget v2, Lcom/github/clans/fab/R$styleable;->FloatingActionMenu_menu_labels_hideAnimation:I

    iget v3, p0, Lcom/github/clans/fab/FloatingActionMenu;->mLabelsPosition:I

    if-nez v3, :cond_1

    sget v3, Lcom/github/clans/fab/R$anim;->fab_slide_out_to_right:I

    goto :goto_1

    :cond_1
    sget v3, Lcom/github/clans/fab/R$anim;->fab_slide_out_to_left:I

    :goto_1
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/github/clans/fab/FloatingActionMenu;->mLabelsHideAnimation:I

    .line 135
    sget v2, Lcom/github/clans/fab/R$styleable;->FloatingActionMenu_menu_labels_paddingTop:I

    iget v3, p0, Lcom/github/clans/fab/FloatingActionMenu;->mLabelsPaddingTop:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/github/clans/fab/FloatingActionMenu;->mLabelsPaddingTop:I

    .line 136
    sget v2, Lcom/github/clans/fab/R$styleable;->FloatingActionMenu_menu_labels_paddingRight:I

    iget v3, p0, Lcom/github/clans/fab/FloatingActionMenu;->mLabelsPaddingRight:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/github/clans/fab/FloatingActionMenu;->mLabelsPaddingRight:I

    .line 137
    sget v2, Lcom/github/clans/fab/R$styleable;->FloatingActionMenu_menu_labels_paddingBottom:I

    iget v3, p0, Lcom/github/clans/fab/FloatingActionMenu;->mLabelsPaddingBottom:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/github/clans/fab/FloatingActionMenu;->mLabelsPaddingBottom:I

    .line 138
    sget v2, Lcom/github/clans/fab/R$styleable;->FloatingActionMenu_menu_labels_paddingLeft:I

    iget v3, p0, Lcom/github/clans/fab/FloatingActionMenu;->mLabelsPaddingLeft:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/github/clans/fab/FloatingActionMenu;->mLabelsPaddingLeft:I

    .line 139
    sget v2, Lcom/github/clans/fab/R$styleable;->FloatingActionMenu_menu_labels_textColor:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Lcom/github/clans/fab/FloatingActionMenu;->mLabelsTextColor:Landroid/content/res/ColorStateList;

    .line 141
    const/4 v3, -0x1

    if-nez v2, :cond_2

    .line 142
    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Lcom/github/clans/fab/FloatingActionMenu;->mLabelsTextColor:Landroid/content/res/ColorStateList;

    .line 144
    :cond_2
    sget v2, Lcom/github/clans/fab/R$styleable;->FloatingActionMenu_menu_labels_textSize:I

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/github/clans/fab/R$dimen;->labels_text_size:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Lcom/github/clans/fab/FloatingActionMenu;->mLabelsTextSize:F

    .line 145
    sget v2, Lcom/github/clans/fab/R$styleable;->FloatingActionMenu_menu_labels_cornerRadius:I

    iget v4, p0, Lcom/github/clans/fab/FloatingActionMenu;->mLabelsCornerRadius:I

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/github/clans/fab/FloatingActionMenu;->mLabelsCornerRadius:I

    .line 146
    sget v2, Lcom/github/clans/fab/R$styleable;->FloatingActionMenu_menu_labels_showShadow:I

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/github/clans/fab/FloatingActionMenu;->mLabelsShowShadow:Z

    .line 147
    sget v2, Lcom/github/clans/fab/R$styleable;->FloatingActionMenu_menu_labels_colorNormal:I

    const v5, -0xcccccd

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/github/clans/fab/FloatingActionMenu;->mLabelsColorNormal:I

    .line 148
    sget v2, Lcom/github/clans/fab/R$styleable;->FloatingActionMenu_menu_labels_colorPressed:I

    const v5, -0xbbbbbc

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/github/clans/fab/FloatingActionMenu;->mLabelsColorPressed:I

    .line 149
    sget v2, Lcom/github/clans/fab/R$styleable;->FloatingActionMenu_menu_labels_colorRipple:I

    const v5, 0x66ffffff

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/github/clans/fab/FloatingActionMenu;->mLabelsColorRipple:I

    .line 150
    sget v2, Lcom/github/clans/fab/R$styleable;->FloatingActionMenu_menu_showShadow:I

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/github/clans/fab/FloatingActionMenu;->mMenuShowShadow:Z

    .line 151
    sget v2, Lcom/github/clans/fab/R$styleable;->FloatingActionMenu_menu_shadowColor:I

    const/high16 v5, 0x66000000

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/github/clans/fab/FloatingActionMenu;->mMenuShadowColor:I

    .line 152
    sget v2, Lcom/github/clans/fab/R$styleable;->FloatingActionMenu_menu_shadowRadius:I

    iget v5, p0, Lcom/github/clans/fab/FloatingActionMenu;->mMenuShadowRadius:F

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Lcom/github/clans/fab/FloatingActionMenu;->mMenuShadowRadius:F

    .line 153
    sget v2, Lcom/github/clans/fab/R$styleable;->FloatingActionMenu_menu_shadowXOffset:I

    iget v5, p0, Lcom/github/clans/fab/FloatingActionMenu;->mMenuShadowXOffset:F

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Lcom/github/clans/fab/FloatingActionMenu;->mMenuShadowXOffset:F

    .line 154
    sget v2, Lcom/github/clans/fab/R$styleable;->FloatingActionMenu_menu_shadowYOffset:I

    iget v5, p0, Lcom/github/clans/fab/FloatingActionMenu;->mMenuShadowYOffset:F

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Lcom/github/clans/fab/FloatingActionMenu;->mMenuShadowYOffset:F

    .line 155
    sget v2, Lcom/github/clans/fab/R$styleable;->FloatingActionMenu_menu_colorNormal:I

    const v5, -0x25bcca

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/github/clans/fab/FloatingActionMenu;->mMenuColorNormal:I

    .line 156
    sget v2, Lcom/github/clans/fab/R$styleable;->FloatingActionMenu_menu_colorPressed:I

    const v5, -0x18afbd

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/github/clans/fab/FloatingActionMenu;->mMenuColorPressed:I

    .line 157
    sget v2, Lcom/github/clans/fab/R$styleable;->FloatingActionMenu_menu_colorRipple:I

    const v5, -0x66000001

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/github/clans/fab/FloatingActionMenu;->mMenuColorRipple:I

    .line 158
    sget v2, Lcom/github/clans/fab/R$styleable;->FloatingActionMenu_menu_animationDelayPerItem:I

    const/16 v5, 0x32

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/github/clans/fab/FloatingActionMenu;->mAnimationDelayPerItem:I

    .line 159
    sget v2, Lcom/github/clans/fab/R$styleable;->FloatingActionMenu_menu_icon:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/github/clans/fab/FloatingActionMenu;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 160
    if-nez v2, :cond_3

    .line 161
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v5, Lcom/github/clans/fab/R$drawable;->fab_add:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/github/clans/fab/FloatingActionMenu;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 163
    :cond_3
    sget v2, Lcom/github/clans/fab/R$styleable;->FloatingActionMenu_menu_labels_singleLine:I

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/github/clans/fab/FloatingActionMenu;->mLabelsSingleLine:Z

    .line 164
    sget v2, Lcom/github/clans/fab/R$styleable;->FloatingActionMenu_menu_labels_ellipsize:I

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/github/clans/fab/FloatingActionMenu;->mLabelsEllipsize:I

    .line 165
    sget v2, Lcom/github/clans/fab/R$styleable;->FloatingActionMenu_menu_labels_maxLines:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/github/clans/fab/FloatingActionMenu;->mLabelsMaxLines:I

    .line 166
    sget v2, Lcom/github/clans/fab/R$styleable;->FloatingActionMenu_menu_fab_size:I

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/github/clans/fab/FloatingActionMenu;->mMenuFabSize:I

    .line 167
    sget v2, Lcom/github/clans/fab/R$styleable;->FloatingActionMenu_menu_labels_style:I

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/github/clans/fab/FloatingActionMenu;->mLabelsStyle:I

    .line 168
    sget v2, Lcom/github/clans/fab/R$styleable;->FloatingActionMenu_menu_labels_customFont:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 170
    .local v2, "customFont":Ljava/lang/String;
    :try_start_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 171
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenu;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-static {v3, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    iput-object v3, p0, Lcom/github/clans/fab/FloatingActionMenu;->mCustomTypefaceFromFont:Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    :cond_4
    nop

    .line 176
    sget v3, Lcom/github/clans/fab/R$styleable;->FloatingActionMenu_menu_openDirection:I

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lcom/github/clans/fab/FloatingActionMenu;->mOpenDirection:I

    .line 177
    sget v3, Lcom/github/clans/fab/R$styleable;->FloatingActionMenu_menu_backgroundColor:I

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, p0, Lcom/github/clans/fab/FloatingActionMenu;->mBackgroundColor:I

    .line 179
    sget v3, Lcom/github/clans/fab/R$styleable;->FloatingActionMenu_menu_fab_label:I

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 180
    iput-boolean v4, p0, Lcom/github/clans/fab/FloatingActionMenu;->mUsingMenuLabel:Z

    .line 181
    sget v3, Lcom/github/clans/fab/R$styleable;->FloatingActionMenu_menu_fab_label:I

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/github/clans/fab/FloatingActionMenu;->mMenuLabelText:Ljava/lang/String;

    .line 184
    :cond_5
    sget v3, Lcom/github/clans/fab/R$styleable;->FloatingActionMenu_menu_labels_padding:I

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 185
    sget v3, Lcom/github/clans/fab/R$styleable;->FloatingActionMenu_menu_labels_padding:I

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    .line 186
    .local v1, "padding":I
    invoke-direct {p0, v1}, Lcom/github/clans/fab/FloatingActionMenu;->initPadding(I)V

    .line 189
    .end local v1    # "padding":I
    :cond_6
    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v1}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    iput-object v1, p0, Lcom/github/clans/fab/FloatingActionMenu;->mOpenInterpolator:Landroid/view/animation/Interpolator;

    .line 190
    new-instance v1, Landroid/view/animation/AnticipateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AnticipateInterpolator;-><init>()V

    iput-object v1, p0, Lcom/github/clans/fab/FloatingActionMenu;->mCloseInterpolator:Landroid/view/animation/Interpolator;

    .line 191
    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenu;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v4, p0, Lcom/github/clans/fab/FloatingActionMenu;->mLabelsStyle:I

    invoke-direct {v1, v3, v4}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/github/clans/fab/FloatingActionMenu;->mLabelsContext:Landroid/content/Context;

    .line 193
    invoke-direct {p0}, Lcom/github/clans/fab/FloatingActionMenu;->initBackgroundDimAnimation()V

    .line 194
    invoke-direct {p0}, Lcom/github/clans/fab/FloatingActionMenu;->createMenuButton()V

    .line 195
    invoke-direct {p0, v0}, Lcom/github/clans/fab/FloatingActionMenu;->initMenuButtonAnimations(Landroid/content/res/TypedArray;)V

    .line 197
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 198
    return-void

    .line 173
    :catch_0
    move-exception v1

    .line 174
    .local v1, "ex":Ljava/lang/RuntimeException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to load specified custom font: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method private initBackgroundDimAnimation()V
    .locals 11

    .line 211
    iget v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->mBackgroundColor:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    .line 212
    .local v0, "maxAlpha":I
    iget v1, p0, Lcom/github/clans/fab/FloatingActionMenu;->mBackgroundColor:I

    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    .line 213
    .local v1, "red":I
    iget v2, p0, Lcom/github/clans/fab/FloatingActionMenu;->mBackgroundColor:I

    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v2

    .line 214
    .local v2, "green":I
    iget v3, p0, Lcom/github/clans/fab/FloatingActionMenu;->mBackgroundColor:I

    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    .line 216
    .local v3, "blue":I
    const/4 v4, 0x2

    new-array v5, v4, [I

    const/4 v6, 0x0

    aput v6, v5, v6

    const/4 v7, 0x1

    aput v0, v5, v7

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v5

    iput-object v5, p0, Lcom/github/clans/fab/FloatingActionMenu;->mShowBackgroundAnimator:Landroid/animation/ValueAnimator;

    .line 217
    const-wide/16 v8, 0x12c

    invoke-virtual {v5, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 218
    iget-object v5, p0, Lcom/github/clans/fab/FloatingActionMenu;->mShowBackgroundAnimator:Landroid/animation/ValueAnimator;

    new-instance v10, Lcom/github/clans/fab/FloatingActionMenu$1;

    invoke-direct {v10, p0, v1, v2, v3}, Lcom/github/clans/fab/FloatingActionMenu$1;-><init>(Lcom/github/clans/fab/FloatingActionMenu;III)V

    invoke-virtual {v5, v10}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 226
    new-array v4, v4, [I

    aput v0, v4, v6

    aput v6, v4, v7

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v4

    iput-object v4, p0, Lcom/github/clans/fab/FloatingActionMenu;->mHideBackgroundAnimator:Landroid/animation/ValueAnimator;

    .line 227
    invoke-virtual {v4, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 228
    iget-object v4, p0, Lcom/github/clans/fab/FloatingActionMenu;->mHideBackgroundAnimator:Landroid/animation/ValueAnimator;

    new-instance v5, Lcom/github/clans/fab/FloatingActionMenu$2;

    invoke-direct {v5, p0, v1, v2, v3}, Lcom/github/clans/fab/FloatingActionMenu$2;-><init>(Lcom/github/clans/fab/FloatingActionMenu;III)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 235
    return-void
.end method

.method private initMenuButtonAnimations(Landroid/content/res/TypedArray;)V
    .locals 3
    .param p1, "attr"    # Landroid/content/res/TypedArray;

    .line 201
    sget v0, Lcom/github/clans/fab/R$styleable;->FloatingActionMenu_menu_fab_show_animation:I

    sget v1, Lcom/github/clans/fab/R$anim;->fab_scale_up:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 202
    .local v0, "showResId":I
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/github/clans/fab/FloatingActionMenu;->setMenuButtonShowAnimation(Landroid/view/animation/Animation;)V

    .line 203
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/github/clans/fab/FloatingActionMenu;->mImageToggleShowAnimation:Landroid/view/animation/Animation;

    .line 205
    sget v1, Lcom/github/clans/fab/R$styleable;->FloatingActionMenu_menu_fab_hide_animation:I

    sget v2, Lcom/github/clans/fab/R$anim;->fab_scale_down:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 206
    .local v1, "hideResId":I
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenu;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/github/clans/fab/FloatingActionMenu;->setMenuButtonHideAnimation(Landroid/view/animation/Animation;)V

    .line 207
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenu;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    iput-object v2, p0, Lcom/github/clans/fab/FloatingActionMenu;->mImageToggleHideAnimation:Landroid/view/animation/Animation;

    .line 208
    return-void
.end method

.method private initPadding(I)V
    .locals 0
    .param p1, "padding"    # I

    .line 242
    iput p1, p0, Lcom/github/clans/fab/FloatingActionMenu;->mLabelsPaddingTop:I

    .line 243
    iput p1, p0, Lcom/github/clans/fab/FloatingActionMenu;->mLabelsPaddingRight:I

    .line 244
    iput p1, p0, Lcom/github/clans/fab/FloatingActionMenu;->mLabelsPaddingBottom:I

    .line 245
    iput p1, p0, Lcom/github/clans/fab/FloatingActionMenu;->mLabelsPaddingLeft:I

    .line 246
    return-void
.end method

.method private isBackgroundEnabled()Z
    .locals 1

    .line 238
    iget v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->mBackgroundColor:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private setLabelEllipsize(Lcom/github/clans/fab/Label;)V
    .locals 1
    .param p1, "label"    # Lcom/github/clans/fab/Label;

    .line 534
    iget v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->mLabelsEllipsize:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 545
    :pswitch_0
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, v0}, Lcom/github/clans/fab/Label;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_0

    .line 542
    :pswitch_1
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, v0}, Lcom/github/clans/fab/Label;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 543
    goto :goto_0

    .line 539
    :pswitch_2
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, v0}, Lcom/github/clans/fab/Label;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 540
    goto :goto_0

    .line 536
    :pswitch_3
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, v0}, Lcom/github/clans/fab/Label;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 537
    nop

    .line 548
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private showMenuButtonWithImage(Z)V
    .locals 2
    .param p1, "animate"    # Z

    .line 583
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenu;->isMenuButtonHidden()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 584
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->mMenuButton:Lcom/github/clans/fab/FloatingActionButton;

    invoke-virtual {v0, p1}, Lcom/github/clans/fab/FloatingActionButton;->show(Z)V

    .line 585
    if-eqz p1, :cond_0

    .line 586
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->mImageToggle:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/github/clans/fab/FloatingActionMenu;->mImageToggleShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 588
    :cond_0
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->mImageToggle:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 590
    :cond_1
    return-void
.end method


# virtual methods
.method public addMenuButton(Lcom/github/clans/fab/FloatingActionButton;)V
    .locals 1
    .param p1, "fab"    # Lcom/github/clans/fab/FloatingActionButton;

    .line 962
    iget v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->mButtonsCount:I

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {p0, p1, v0}, Lcom/github/clans/fab/FloatingActionMenu;->addView(Landroid/view/View;I)V

    .line 963
    iget v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->mButtonsCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->mButtonsCount:I

    .line 964
    invoke-direct {p0, p1}, Lcom/github/clans/fab/FloatingActionMenu;->addLabel(Lcom/github/clans/fab/FloatingActionButton;)V

    .line 965
    return-void
.end method

.method public addMenuButton(Lcom/github/clans/fab/FloatingActionButton;I)V
    .locals 2
    .param p1, "fab"    # Lcom/github/clans/fab/FloatingActionButton;
    .param p2, "index"    # I

    .line 974
    iget v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->mButtonsCount:I

    add-int/lit8 v0, v0, -0x2

    .line 975
    .local v0, "size":I
    if-gez p2, :cond_0

    .line 976
    const/4 p2, 0x0

    goto :goto_0

    .line 977
    :cond_0
    if-le p2, v0, :cond_1

    .line 978
    move p2, v0

    .line 981
    :cond_1
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/github/clans/fab/FloatingActionMenu;->addView(Landroid/view/View;I)V

    .line 982
    iget v1, p0, Lcom/github/clans/fab/FloatingActionMenu;->mButtonsCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/github/clans/fab/FloatingActionMenu;->mButtonsCount:I

    .line 983
    invoke-direct {p0, p1}, Lcom/github/clans/fab/FloatingActionMenu;->addLabel(Lcom/github/clans/fab/FloatingActionButton;)V

    .line 984
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 568
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    return v0
.end method

.method public close(Z)V
    .locals 9
    .param p1, "animate"    # Z

    .line 682
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenu;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 683
    invoke-direct {p0}, Lcom/github/clans/fab/FloatingActionMenu;->isBackgroundEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 684
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->mHideBackgroundAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 687
    :cond_0
    iget-boolean v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->mIconAnimated:Z

    if-eqz v0, :cond_2

    .line 688
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->mIconToggleSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    .line 689
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 691
    :cond_1
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->mCloseAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 692
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->mOpenAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 696
    :cond_2
    :goto_0
    const/4 v0, 0x0

    .line 697
    .local v0, "delay":I
    const/4 v1, 0x0

    .line 698
    .local v1, "counter":I
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/github/clans/fab/FloatingActionMenu;->mIsMenuOpening:Z

    .line 699
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenu;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 700
    invoke-virtual {p0, v2}, Lcom/github/clans/fab/FloatingActionMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 701
    .local v3, "child":Landroid/view/View;
    instance-of v4, v3, Lcom/github/clans/fab/FloatingActionButton;

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_3

    .line 702
    add-int/lit8 v1, v1, 0x1

    .line 704
    move-object v4, v3

    check-cast v4, Lcom/github/clans/fab/FloatingActionButton;

    .line 705
    .local v4, "fab":Lcom/github/clans/fab/FloatingActionButton;
    iget-object v5, p0, Lcom/github/clans/fab/FloatingActionMenu;->mUiHandler:Landroid/os/Handler;

    new-instance v6, Lcom/github/clans/fab/FloatingActionMenu$6;

    invoke-direct {v6, p0, v4, p1}, Lcom/github/clans/fab/FloatingActionMenu$6;-><init>(Lcom/github/clans/fab/FloatingActionMenu;Lcom/github/clans/fab/FloatingActionButton;Z)V

    int-to-long v7, v0

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 720
    iget v5, p0, Lcom/github/clans/fab/FloatingActionMenu;->mAnimationDelayPerItem:I

    add-int/2addr v0, v5

    .line 699
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "fab":Lcom/github/clans/fab/FloatingActionButton;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 724
    .end local v2    # "i":I
    :cond_4
    iget-object v2, p0, Lcom/github/clans/fab/FloatingActionMenu;->mUiHandler:Landroid/os/Handler;

    new-instance v3, Lcom/github/clans/fab/FloatingActionMenu$7;

    invoke-direct {v3, p0}, Lcom/github/clans/fab/FloatingActionMenu$7;-><init>(Lcom/github/clans/fab/FloatingActionMenu;)V

    add-int/lit8 v1, v1, 0x1

    iget v4, p0, Lcom/github/clans/fab/FloatingActionMenu;->mAnimationDelayPerItem:I

    mul-int v4, v4, v1

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 735
    .end local v0    # "delay":I
    .end local v1    # "counter":I
    :cond_5
    return-void
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenu;->generateDefaultLayoutParams()Landroid/view/ViewGroup$MarginLayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$MarginLayoutParams;
    .locals 2

    .line 562
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 31
    invoke-virtual {p0, p1}, Lcom/github/clans/fab/FloatingActionMenu;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$MarginLayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 31
    invoke-virtual {p0, p1}, Lcom/github/clans/fab/FloatingActionMenu;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$MarginLayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$MarginLayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 552
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$MarginLayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 557
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getAnimationDelayPerItem()I
    .locals 1

    .line 775
    iget v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->mAnimationDelayPerItem:I

    return v0
.end method

.method public getIconToggleAnimatorSet()Landroid/animation/AnimatorSet;
    .locals 1

    .line 799
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->mIconToggleSet:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method public getMenuButtonColorNormal()I
    .locals 1

    .line 930
    iget v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->mMenuColorNormal:I

    return v0
.end method

.method public getMenuButtonColorPressed()I
    .locals 1

    .line 944
    iget v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->mMenuColorPressed:I

    return v0
.end method

.method public getMenuButtonColorRipple()I
    .locals 1

    .line 958
    iget v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->mMenuColorRipple:I

    return v0
.end method

.method public getMenuButtonLabelText()Ljava/lang/String;
    .locals 1

    .line 1006
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->mMenuLabelText:Ljava/lang/String;

    return-object v0
.end method

.method public getMenuIconView()Landroid/widget/ImageView;
    .locals 1

    .line 791
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->mImageToggle:Landroid/widget/ImageView;

    return-object v0
.end method

.method public hideMenu(Z)V
    .locals 4
    .param p1, "animate"    # Z

    .line 840
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenu;->isMenuHidden()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->mIsMenuButtonAnimationRunning:Z

    if-nez v0, :cond_2

    .line 841
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->mIsMenuButtonAnimationRunning:Z

    .line 842
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenu;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 843
    invoke-virtual {p0, p1}, Lcom/github/clans/fab/FloatingActionMenu;->close(Z)V

    .line 844
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->mUiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/github/clans/fab/FloatingActionMenu$8;

    invoke-direct {v1, p0, p1}, Lcom/github/clans/fab/FloatingActionMenu$8;-><init>(Lcom/github/clans/fab/FloatingActionMenu;Z)V

    iget v2, p0, Lcom/github/clans/fab/FloatingActionMenu;->mAnimationDelayPerItem:I

    iget v3, p0, Lcom/github/clans/fab/FloatingActionMenu;->mButtonsCount:I

    mul-int v2, v2, v3

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 855
    :cond_0
    if-eqz p1, :cond_1

    .line 856
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->mMenuButtonHideAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/github/clans/fab/FloatingActionMenu;->startAnimation(Landroid/view/animation/Animation;)V

    .line 858
    :cond_1
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/github/clans/fab/FloatingActionMenu;->setVisibility(I)V

    .line 859
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->mIsMenuButtonAnimationRunning:Z

    .line 862
    :cond_2
    :goto_0
    return-void
.end method

.method public hideMenuButton(Z)V
    .locals 4
    .param p1, "animate"    # Z

    .line 891
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenu;->isMenuButtonHidden()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->mIsMenuButtonAnimationRunning:Z

    if-nez v0, :cond_1

    .line 892
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->mIsMenuButtonAnimationRunning:Z

    .line 893
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenu;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 894
    invoke-virtual {p0, p1}, Lcom/github/clans/fab/FloatingActionMenu;->close(Z)V

    .line 895
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->mUiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/github/clans/fab/FloatingActionMenu$9;

    invoke-direct {v1, p0, p1}, Lcom/github/clans/fab/FloatingActionMenu$9;-><init>(Lcom/github/clans/fab/FloatingActionMenu;Z)V

    iget v2, p0, Lcom/github/clans/fab/FloatingActionMenu;->mAnimationDelayPerItem:I

    iget v3, p0, Lcom/github/clans/fab/FloatingActionMenu;->mButtonsCount:I

    mul-int v2, v2, v3

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 902
    :cond_0
    invoke-direct {p0, p1}, Lcom/github/clans/fab/FloatingActionMenu;->hideMenuButtonWithImage(Z)V

    .line 905
    :cond_1
    :goto_0
    return-void
.end method

.method public isAnimated()Z
    .locals 1

    .line 767
    iget-boolean v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->mIsAnimated:Z

    return v0
.end method

.method public isIconAnimated()Z
    .locals 1

    .line 787
    iget-boolean v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->mIconAnimated:Z

    return v0
.end method

.method public isMenuButtonHidden()Z
    .locals 1

    .line 817
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->mMenuButton:Lcom/github/clans/fab/FloatingActionButton;

    invoke-virtual {v0}, Lcom/github/clans/fab/FloatingActionButton;->isHidden()Z

    move-result v0

    return v0
.end method

.method public isMenuHidden()Z
    .locals 2

    .line 813
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenu;->getVisibility()I

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

.method public isOpened()Z
    .locals 1

    .line 614
    iget-boolean v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->mMenuOpened:Z

    return v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 447
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 448
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->mMenuButton:Lcom/github/clans/fab/FloatingActionButton;

    invoke-virtual {p0, v0}, Lcom/github/clans/fab/FloatingActionMenu;->bringChildToFront(Landroid/view/View;)V

    .line 449
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->mImageToggle:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/github/clans/fab/FloatingActionMenu;->bringChildToFront(Landroid/view/View;)V

    .line 450
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenu;->getChildCount()I

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->mButtonsCount:I

    .line 451
    invoke-direct {p0}, Lcom/github/clans/fab/FloatingActionMenu;->createLabels()V

    .line 452
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 22
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 362
    move-object/from16 v0, p0

    iget v1, v0, Lcom/github/clans/fab/FloatingActionMenu;->mLabelsPosition:I

    if-nez v1, :cond_0

    sub-int v1, p4, p2

    iget v2, v0, Lcom/github/clans/fab/FloatingActionMenu;->mMaxButtonWidth:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    .line 363
    invoke-virtual/range {p0 .. p0}, Lcom/github/clans/fab/FloatingActionMenu;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    goto :goto_0

    :cond_0
    iget v1, v0, Lcom/github/clans/fab/FloatingActionMenu;->mMaxButtonWidth:I

    div-int/lit8 v1, v1, 0x2

    .line 364
    invoke-virtual/range {p0 .. p0}, Lcom/github/clans/fab/FloatingActionMenu;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    :goto_0
    nop

    .line 365
    .local v1, "buttonsHorizontalCenter":I
    iget v2, v0, Lcom/github/clans/fab/FloatingActionMenu;->mOpenDirection:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 367
    .local v2, "openUp":Z
    :goto_1
    if-eqz v2, :cond_2

    sub-int v5, p5, p3

    iget-object v6, v0, Lcom/github/clans/fab/FloatingActionMenu;->mMenuButton:Lcom/github/clans/fab/FloatingActionButton;

    .line 368
    invoke-virtual {v6}, Lcom/github/clans/fab/FloatingActionButton;->getMeasuredHeight()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual/range {p0 .. p0}, Lcom/github/clans/fab/FloatingActionMenu;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    goto :goto_2

    .line 369
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/github/clans/fab/FloatingActionMenu;->getPaddingTop()I

    move-result v5

    :goto_2
    nop

    .line 370
    .local v5, "menuButtonTop":I
    iget-object v6, v0, Lcom/github/clans/fab/FloatingActionMenu;->mMenuButton:Lcom/github/clans/fab/FloatingActionButton;

    invoke-virtual {v6}, Lcom/github/clans/fab/FloatingActionButton;->getMeasuredWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int v6, v1, v6

    .line 372
    .local v6, "menuButtonLeft":I
    iget-object v7, v0, Lcom/github/clans/fab/FloatingActionMenu;->mMenuButton:Lcom/github/clans/fab/FloatingActionButton;

    invoke-virtual {v7}, Lcom/github/clans/fab/FloatingActionButton;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v8, v6

    iget-object v9, v0, Lcom/github/clans/fab/FloatingActionMenu;->mMenuButton:Lcom/github/clans/fab/FloatingActionButton;

    .line 373
    invoke-virtual {v9}, Lcom/github/clans/fab/FloatingActionButton;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v9, v5

    .line 372
    invoke-virtual {v7, v6, v5, v8, v9}, Lcom/github/clans/fab/FloatingActionButton;->layout(IIII)V

    .line 375
    iget-object v7, v0, Lcom/github/clans/fab/FloatingActionMenu;->mImageToggle:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    sub-int v7, v1, v7

    .line 376
    .local v7, "imageLeft":I
    iget-object v8, v0, Lcom/github/clans/fab/FloatingActionMenu;->mMenuButton:Lcom/github/clans/fab/FloatingActionButton;

    invoke-virtual {v8}, Lcom/github/clans/fab/FloatingActionButton;->getMeasuredHeight()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v8, v5

    iget-object v9, v0, Lcom/github/clans/fab/FloatingActionMenu;->mImageToggle:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    sub-int/2addr v8, v9

    .line 378
    .local v8, "imageTop":I
    iget-object v9, v0, Lcom/github/clans/fab/FloatingActionMenu;->mImageToggle:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v10

    add-int/2addr v10, v7

    iget-object v11, v0, Lcom/github/clans/fab/FloatingActionMenu;->mImageToggle:Landroid/widget/ImageView;

    .line 379
    invoke-virtual {v11}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v11

    add-int/2addr v11, v8

    .line 378
    invoke-virtual {v9, v7, v8, v10, v11}, Landroid/widget/ImageView;->layout(IIII)V

    .line 381
    if-eqz v2, :cond_3

    iget-object v9, v0, Lcom/github/clans/fab/FloatingActionMenu;->mMenuButton:Lcom/github/clans/fab/FloatingActionButton;

    .line 382
    invoke-virtual {v9}, Lcom/github/clans/fab/FloatingActionButton;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v9, v5

    iget v10, v0, Lcom/github/clans/fab/FloatingActionMenu;->mButtonSpacing:I

    add-int/2addr v9, v10

    goto :goto_3

    :cond_3
    move v9, v5

    .line 385
    .local v9, "nextY":I
    :goto_3
    iget v10, v0, Lcom/github/clans/fab/FloatingActionMenu;->mButtonsCount:I

    sub-int/2addr v10, v3

    .local v10, "i":I
    :goto_4
    if-ltz v10, :cond_10

    .line 386
    invoke-virtual {v0, v10}, Lcom/github/clans/fab/FloatingActionMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 388
    .local v3, "child":Landroid/view/View;
    iget-object v11, v0, Lcom/github/clans/fab/FloatingActionMenu;->mImageToggle:Landroid/widget/ImageView;

    if-ne v3, v11, :cond_4

    goto :goto_5

    .line 390
    :cond_4
    move-object v11, v3

    check-cast v11, Lcom/github/clans/fab/FloatingActionButton;

    .line 392
    .local v11, "fab":Lcom/github/clans/fab/FloatingActionButton;
    invoke-virtual {v11}, Lcom/github/clans/fab/FloatingActionButton;->getVisibility()I

    move-result v12

    const/16 v13, 0x8

    if-ne v12, v13, :cond_5

    .line 385
    .end local v3    # "child":Landroid/view/View;
    .end local v11    # "fab":Lcom/github/clans/fab/FloatingActionButton;
    :goto_5
    move/from16 v17, v1

    move/from16 v21, v5

    move/from16 v20, v6

    goto/16 :goto_e

    .line 394
    .restart local v3    # "child":Landroid/view/View;
    .restart local v11    # "fab":Lcom/github/clans/fab/FloatingActionButton;
    :cond_5
    invoke-virtual {v11}, Lcom/github/clans/fab/FloatingActionButton;->getMeasuredWidth()I

    move-result v12

    div-int/lit8 v12, v12, 0x2

    sub-int v12, v1, v12

    .line 395
    .local v12, "childX":I
    if-eqz v2, :cond_6

    invoke-virtual {v11}, Lcom/github/clans/fab/FloatingActionButton;->getMeasuredHeight()I

    move-result v13

    sub-int v13, v9, v13

    iget v14, v0, Lcom/github/clans/fab/FloatingActionMenu;->mButtonSpacing:I

    sub-int/2addr v13, v14

    goto :goto_6

    :cond_6
    move v13, v9

    .line 397
    .local v13, "childY":I
    :goto_6
    iget-object v14, v0, Lcom/github/clans/fab/FloatingActionMenu;->mMenuButton:Lcom/github/clans/fab/FloatingActionButton;

    if-eq v11, v14, :cond_7

    .line 398
    invoke-virtual {v11}, Lcom/github/clans/fab/FloatingActionButton;->getMeasuredWidth()I

    move-result v14

    add-int/2addr v14, v12

    .line 399
    invoke-virtual {v11}, Lcom/github/clans/fab/FloatingActionButton;->getMeasuredHeight()I

    move-result v15

    add-int/2addr v15, v13

    .line 398
    invoke-virtual {v11, v12, v13, v14, v15}, Lcom/github/clans/fab/FloatingActionButton;->layout(IIII)V

    .line 401
    iget-boolean v14, v0, Lcom/github/clans/fab/FloatingActionMenu;->mIsMenuOpening:Z

    if-nez v14, :cond_7

    .line 402
    invoke-virtual {v11, v4}, Lcom/github/clans/fab/FloatingActionButton;->hide(Z)V

    .line 406
    :cond_7
    sget v14, Lcom/github/clans/fab/R$id;->fab_label:I

    invoke-virtual {v11, v14}, Lcom/github/clans/fab/FloatingActionButton;->getTag(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/View;

    .line 407
    .local v14, "label":Landroid/view/View;
    if-eqz v14, :cond_d

    .line 408
    iget-boolean v15, v0, Lcom/github/clans/fab/FloatingActionMenu;->mUsingMenuLabel:Z

    if-eqz v15, :cond_8

    iget v15, v0, Lcom/github/clans/fab/FloatingActionMenu;->mMaxButtonWidth:I

    goto :goto_7

    :cond_8
    invoke-virtual {v11}, Lcom/github/clans/fab/FloatingActionButton;->getMeasuredWidth()I

    move-result v15

    :goto_7
    div-int/lit8 v15, v15, 0x2

    iget v4, v0, Lcom/github/clans/fab/FloatingActionMenu;->mLabelsMargin:I

    add-int/2addr v15, v4

    .line 409
    .local v15, "labelsOffset":I
    iget v4, v0, Lcom/github/clans/fab/FloatingActionMenu;->mLabelsPosition:I

    if-nez v4, :cond_9

    sub-int v16, v1, v15

    goto :goto_8

    :cond_9
    add-int v16, v1, v15

    .line 413
    .local v16, "labelXNearButton":I
    :goto_8
    if-nez v4, :cond_a

    .line 414
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    sub-int v4, v16, v4

    goto :goto_9

    .line 415
    :cond_a
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int v4, v16, v4

    :goto_9
    nop

    .line 417
    .local v4, "labelXAwayFromButton":I
    move/from16 v17, v1

    .end local v1    # "buttonsHorizontalCenter":I
    .local v17, "buttonsHorizontalCenter":I
    iget v1, v0, Lcom/github/clans/fab/FloatingActionMenu;->mLabelsPosition:I

    if-nez v1, :cond_b

    move/from16 v18, v4

    goto :goto_a

    :cond_b
    move/from16 v18, v16

    :goto_a
    move/from16 v19, v18

    .line 421
    .local v19, "labelLeft":I
    if-nez v1, :cond_c

    move/from16 v1, v16

    goto :goto_b

    :cond_c
    move v1, v4

    .line 425
    .local v1, "labelRight":I
    :goto_b
    move/from16 v18, v4

    .end local v4    # "labelXAwayFromButton":I
    .local v18, "labelXAwayFromButton":I
    iget v4, v0, Lcom/github/clans/fab/FloatingActionMenu;->mLabelsVerticalOffset:I

    sub-int v4, v13, v4

    invoke-virtual {v11}, Lcom/github/clans/fab/FloatingActionButton;->getMeasuredHeight()I

    move-result v20

    .line 426
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v21

    sub-int v20, v20, v21

    div-int/lit8 v20, v20, 0x2

    add-int v4, v4, v20

    .line 428
    .local v4, "labelTop":I
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v20

    move/from16 v21, v5

    .end local v5    # "menuButtonTop":I
    .local v21, "menuButtonTop":I
    add-int v5, v4, v20

    move/from16 v20, v6

    move/from16 v6, v19

    .end local v19    # "labelLeft":I
    .local v6, "labelLeft":I
    .local v20, "menuButtonLeft":I
    invoke-virtual {v14, v6, v4, v1, v5}, Landroid/view/View;->layout(IIII)V

    .line 430
    iget-boolean v5, v0, Lcom/github/clans/fab/FloatingActionMenu;->mIsMenuOpening:Z

    if-nez v5, :cond_e

    .line 431
    const/4 v5, 0x4

    invoke-virtual {v14, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_c

    .line 407
    .end local v4    # "labelTop":I
    .end local v15    # "labelsOffset":I
    .end local v16    # "labelXNearButton":I
    .end local v17    # "buttonsHorizontalCenter":I
    .end local v18    # "labelXAwayFromButton":I
    .end local v20    # "menuButtonLeft":I
    .end local v21    # "menuButtonTop":I
    .local v1, "buttonsHorizontalCenter":I
    .restart local v5    # "menuButtonTop":I
    .local v6, "menuButtonLeft":I
    :cond_d
    move/from16 v17, v1

    move/from16 v21, v5

    move/from16 v20, v6

    .line 435
    .end local v1    # "buttonsHorizontalCenter":I
    .end local v5    # "menuButtonTop":I
    .end local v6    # "menuButtonLeft":I
    .restart local v17    # "buttonsHorizontalCenter":I
    .restart local v20    # "menuButtonLeft":I
    .restart local v21    # "menuButtonTop":I
    :cond_e
    :goto_c
    if-eqz v2, :cond_f

    iget v1, v0, Lcom/github/clans/fab/FloatingActionMenu;->mButtonSpacing:I

    sub-int v1, v13, v1

    goto :goto_d

    .line 437
    :cond_f
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, v13

    iget v4, v0, Lcom/github/clans/fab/FloatingActionMenu;->mButtonSpacing:I

    add-int/2addr v1, v4

    :goto_d
    move v9, v1

    .line 385
    .end local v3    # "child":Landroid/view/View;
    .end local v11    # "fab":Lcom/github/clans/fab/FloatingActionButton;
    .end local v12    # "childX":I
    .end local v13    # "childY":I
    .end local v14    # "label":Landroid/view/View;
    :goto_e
    add-int/lit8 v10, v10, -0x1

    move/from16 v1, v17

    move/from16 v6, v20

    move/from16 v5, v21

    const/4 v4, 0x0

    goto/16 :goto_4

    .line 439
    .end local v10    # "i":I
    .end local v17    # "buttonsHorizontalCenter":I
    .end local v20    # "menuButtonLeft":I
    .end local v21    # "menuButtonTop":I
    .restart local v1    # "buttonsHorizontalCenter":I
    .restart local v5    # "menuButtonTop":I
    .restart local v6    # "menuButtonLeft":I
    :cond_10
    return-void
.end method

.method protected onMeasure(II)V
    .locals 18
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 309
    move-object/from16 v6, p0

    const/4 v7, 0x0

    .line 310
    .local v7, "width":I
    const/4 v8, 0x0

    .line 311
    .local v8, "height":I
    const/4 v0, 0x0

    iput v0, v6, Lcom/github/clans/fab/FloatingActionMenu;->mMaxButtonWidth:I

    .line 312
    const/4 v9, 0x0

    .line 314
    .local v9, "maxLabelWidth":I
    iget-object v1, v6, Lcom/github/clans/fab/FloatingActionMenu;->mImageToggle:Landroid/widget/ImageView;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v2, p1

    move/from16 v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/github/clans/fab/FloatingActionMenu;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 316
    const/4 v0, 0x0

    move v10, v0

    .local v10, "i":I
    :goto_0
    iget v0, v6, Lcom/github/clans/fab/FloatingActionMenu;->mButtonsCount:I

    const/16 v11, 0x8

    if-ge v10, v0, :cond_2

    .line 317
    invoke-virtual {v6, v10}, Lcom/github/clans/fab/FloatingActionMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 319
    .local v12, "child":Landroid/view/View;
    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v11, :cond_1

    iget-object v0, v6, Lcom/github/clans/fab/FloatingActionMenu;->mImageToggle:Landroid/widget/ImageView;

    if-ne v12, v0, :cond_0

    goto :goto_1

    .line 321
    :cond_0
    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v12

    move/from16 v2, p1

    move/from16 v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/github/clans/fab/FloatingActionMenu;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 322
    iget v0, v6, Lcom/github/clans/fab/FloatingActionMenu;->mMaxButtonWidth:I

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v6, Lcom/github/clans/fab/FloatingActionMenu;->mMaxButtonWidth:I

    .line 316
    .end local v12    # "child":Landroid/view/View;
    :cond_1
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 325
    .end local v10    # "i":I
    :cond_2
    const/4 v0, 0x0

    move/from16 v17, v8

    move v8, v0

    move/from16 v0, v17

    .local v0, "height":I
    .local v8, "i":I
    :goto_2
    iget v1, v6, Lcom/github/clans/fab/FloatingActionMenu;->mButtonsCount:I

    const/4 v2, 0x1

    if-ge v8, v1, :cond_7

    .line 326
    const/4 v1, 0x0

    .line 327
    .local v1, "usedWidth":I
    invoke-virtual {v6, v8}, Lcom/github/clans/fab/FloatingActionMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 329
    .local v10, "child":Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eq v3, v11, :cond_6

    iget-object v3, v6, Lcom/github/clans/fab/FloatingActionMenu;->mImageToggle:Landroid/widget/ImageView;

    if-ne v10, v3, :cond_3

    goto :goto_4

    .line 331
    :cond_3
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int v12, v1, v3

    .line 332
    .end local v1    # "usedWidth":I
    .local v12, "usedWidth":I
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int v13, v0, v1

    .line 334
    .end local v0    # "height":I
    .local v13, "height":I
    sget v0, Lcom/github/clans/fab/R$id;->fab_label:I

    invoke-virtual {v10, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Lcom/github/clans/fab/Label;

    .line 335
    .local v14, "label":Lcom/github/clans/fab/Label;
    if-eqz v14, :cond_5

    .line 336
    iget v0, v6, Lcom/github/clans/fab/FloatingActionMenu;->mMaxButtonWidth:I

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr v0, v1

    iget-boolean v1, v6, Lcom/github/clans/fab/FloatingActionMenu;->mUsingMenuLabel:Z

    if-eqz v1, :cond_4

    goto :goto_3

    :cond_4
    const/4 v2, 0x2

    :goto_3
    div-int v15, v0, v2

    .line 337
    .local v15, "labelOffset":I
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {v14}, Lcom/github/clans/fab/Label;->calculateShadowWidth()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, v6, Lcom/github/clans/fab/FloatingActionMenu;->mLabelsMargin:I

    add-int/2addr v0, v1

    add-int v16, v0, v15

    .line 338
    .local v16, "labelUsedWidth":I
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v14

    move/from16 v2, p1

    move/from16 v3, v16

    move/from16 v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/github/clans/fab/FloatingActionMenu;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 339
    invoke-virtual {v14}, Lcom/github/clans/fab/Label;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v12, v0

    .line 340
    add-int v0, v12, v15

    invoke-static {v9, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v9, v0

    move v0, v13

    .end local v9    # "maxLabelWidth":I
    .local v0, "maxLabelWidth":I
    goto :goto_4

    .line 335
    .end local v0    # "maxLabelWidth":I
    .end local v15    # "labelOffset":I
    .end local v16    # "labelUsedWidth":I
    .restart local v9    # "maxLabelWidth":I
    :cond_5
    move v0, v13

    .line 325
    .end local v10    # "child":Landroid/view/View;
    .end local v12    # "usedWidth":I
    .end local v13    # "height":I
    .end local v14    # "label":Lcom/github/clans/fab/Label;
    .local v0, "height":I
    :cond_6
    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 344
    .end local v8    # "i":I
    :cond_7
    iget v1, v6, Lcom/github/clans/fab/FloatingActionMenu;->mMaxButtonWidth:I

    iget v3, v6, Lcom/github/clans/fab/FloatingActionMenu;->mLabelsMargin:I

    add-int/2addr v3, v9

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/github/clans/fab/FloatingActionMenu;->getPaddingLeft()I

    move-result v3

    add-int/2addr v1, v3

    invoke-virtual/range {p0 .. p0}, Lcom/github/clans/fab/FloatingActionMenu;->getPaddingRight()I

    move-result v3

    add-int/2addr v1, v3

    .line 346
    .end local v7    # "width":I
    .local v1, "width":I
    iget v3, v6, Lcom/github/clans/fab/FloatingActionMenu;->mButtonSpacing:I

    iget v4, v6, Lcom/github/clans/fab/FloatingActionMenu;->mButtonsCount:I

    sub-int/2addr v4, v2

    mul-int v3, v3, v4

    invoke-virtual/range {p0 .. p0}, Lcom/github/clans/fab/FloatingActionMenu;->getPaddingTop()I

    move-result v2

    add-int/2addr v3, v2

    invoke-virtual/range {p0 .. p0}, Lcom/github/clans/fab/FloatingActionMenu;->getPaddingBottom()I

    move-result v2

    add-int/2addr v3, v2

    add-int/2addr v0, v3

    .line 347
    invoke-direct {v6, v0}, Lcom/github/clans/fab/FloatingActionMenu;->adjustForOvershoot(I)I

    move-result v0

    .line 349
    invoke-virtual/range {p0 .. p0}, Lcom/github/clans/fab/FloatingActionMenu;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_8

    .line 350
    invoke-virtual/range {p0 .. p0}, Lcom/github/clans/fab/FloatingActionMenu;->getSuggestedMinimumWidth()I

    move-result v2

    move/from16 v4, p1

    invoke-static {v2, v4}, Lcom/github/clans/fab/FloatingActionMenu;->getDefaultSize(II)I

    move-result v1

    goto :goto_5

    .line 349
    :cond_8
    move/from16 v4, p1

    .line 353
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/github/clans/fab/FloatingActionMenu;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v2, v3, :cond_9

    .line 354
    invoke-virtual/range {p0 .. p0}, Lcom/github/clans/fab/FloatingActionMenu;->getSuggestedMinimumHeight()I

    move-result v2

    move/from16 v3, p2

    invoke-static {v2, v3}, Lcom/github/clans/fab/FloatingActionMenu;->getDefaultSize(II)I

    move-result v0

    goto :goto_6

    .line 353
    :cond_9
    move/from16 v3, p2

    .line 357
    :goto_6
    invoke-virtual {v6, v1, v0}, Lcom/github/clans/fab/FloatingActionMenu;->setMeasuredDimension(II)V

    .line 358
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 594
    iget-boolean v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->mIsSetClosedOnTouchOutside:Z

    if-eqz v0, :cond_0

    .line 595
    const/4 v0, 0x0

    .line 596
    .local v0, "handled":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 601
    :pswitch_0
    iget-boolean v1, p0, Lcom/github/clans/fab/FloatingActionMenu;->mIsAnimated:Z

    invoke-virtual {p0, v1}, Lcom/github/clans/fab/FloatingActionMenu;->close(Z)V

    .line 602
    const/4 v0, 0x1

    goto :goto_0

    .line 598
    :pswitch_1
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenu;->isOpened()Z

    move-result v0

    .line 599
    nop

    .line 605
    :goto_0
    return v0

    .line 608
    .end local v0    # "handled":Z
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public open(Z)V
    .locals 10
    .param p1, "animate"    # Z

    .line 626
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenu;->isOpened()Z

    move-result v0

    if-nez v0, :cond_5

    .line 627
    invoke-direct {p0}, Lcom/github/clans/fab/FloatingActionMenu;->isBackgroundEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 628
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->mShowBackgroundAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 631
    :cond_0
    iget-boolean v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->mIconAnimated:Z

    if-eqz v0, :cond_2

    .line 632
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->mIconToggleSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    .line 633
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 635
    :cond_1
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->mCloseAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 636
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->mOpenAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 640
    :cond_2
    :goto_0
    const/4 v0, 0x0

    .line 641
    .local v0, "delay":I
    const/4 v1, 0x0

    .line 642
    .local v1, "counter":I
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/github/clans/fab/FloatingActionMenu;->mIsMenuOpening:Z

    .line 643
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenu;->getChildCount()I

    move-result v3

    sub-int/2addr v3, v2

    .local v3, "i":I
    :goto_1
    if-ltz v3, :cond_4

    .line 644
    invoke-virtual {p0, v3}, Lcom/github/clans/fab/FloatingActionMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 645
    .local v4, "child":Landroid/view/View;
    instance-of v5, v4, Lcom/github/clans/fab/FloatingActionButton;

    if-eqz v5, :cond_3

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_3

    .line 646
    add-int/lit8 v1, v1, 0x1

    .line 648
    move-object v5, v4

    check-cast v5, Lcom/github/clans/fab/FloatingActionButton;

    .line 649
    .local v5, "fab":Lcom/github/clans/fab/FloatingActionButton;
    iget-object v6, p0, Lcom/github/clans/fab/FloatingActionMenu;->mUiHandler:Landroid/os/Handler;

    new-instance v7, Lcom/github/clans/fab/FloatingActionMenu$4;

    invoke-direct {v7, p0, v5, p1}, Lcom/github/clans/fab/FloatingActionMenu$4;-><init>(Lcom/github/clans/fab/FloatingActionMenu;Lcom/github/clans/fab/FloatingActionButton;Z)V

    int-to-long v8, v0

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 664
    iget v6, p0, Lcom/github/clans/fab/FloatingActionMenu;->mAnimationDelayPerItem:I

    add-int/2addr v0, v6

    .line 643
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "fab":Lcom/github/clans/fab/FloatingActionButton;
    :cond_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 668
    .end local v3    # "i":I
    :cond_4
    iget-object v3, p0, Lcom/github/clans/fab/FloatingActionMenu;->mUiHandler:Landroid/os/Handler;

    new-instance v4, Lcom/github/clans/fab/FloatingActionMenu$5;

    invoke-direct {v4, p0}, Lcom/github/clans/fab/FloatingActionMenu$5;-><init>(Lcom/github/clans/fab/FloatingActionMenu;)V

    add-int/2addr v1, v2

    iget v2, p0, Lcom/github/clans/fab/FloatingActionMenu;->mAnimationDelayPerItem:I

    mul-int v2, v2, v1

    int-to-long v5, v2

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 679
    .end local v0    # "delay":I
    .end local v1    # "counter":I
    :cond_5
    return-void
.end method

.method public removeAllMenuButtons()V
    .locals 4

    .line 987
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/github/clans/fab/FloatingActionMenu;->close(Z)V

    .line 989
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 990
    .local v0, "viewsToRemove":Ljava/util/List;, "Ljava/util/List<Lcom/github/clans/fab/FloatingActionButton;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenu;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 991
    invoke-virtual {p0, v1}, Lcom/github/clans/fab/FloatingActionMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 992
    .local v2, "v":Landroid/view/View;
    iget-object v3, p0, Lcom/github/clans/fab/FloatingActionMenu;->mMenuButton:Lcom/github/clans/fab/FloatingActionButton;

    if-eq v2, v3, :cond_0

    iget-object v3, p0, Lcom/github/clans/fab/FloatingActionMenu;->mImageToggle:Landroid/widget/ImageView;

    if-eq v2, v3, :cond_0

    instance-of v3, v2, Lcom/github/clans/fab/FloatingActionButton;

    if-eqz v3, :cond_0

    .line 993
    move-object v3, v2

    check-cast v3, Lcom/github/clans/fab/FloatingActionButton;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 990
    .end local v2    # "v":Landroid/view/View;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 996
    .end local v1    # "i":I
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/clans/fab/FloatingActionButton;

    .line 997
    .local v2, "v":Lcom/github/clans/fab/FloatingActionButton;
    invoke-virtual {p0, v2}, Lcom/github/clans/fab/FloatingActionMenu;->removeMenuButton(Lcom/github/clans/fab/FloatingActionButton;)V

    .line 998
    .end local v2    # "v":Lcom/github/clans/fab/FloatingActionButton;
    goto :goto_1

    .line 999
    :cond_2
    return-void
.end method

.method public removeMenuButton(Lcom/github/clans/fab/FloatingActionButton;)V
    .locals 1
    .param p1, "fab"    # Lcom/github/clans/fab/FloatingActionButton;

    .line 968
    invoke-virtual {p1}, Lcom/github/clans/fab/FloatingActionButton;->getLabelView()Lcom/github/clans/fab/Label;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/github/clans/fab/FloatingActionMenu;->removeView(Landroid/view/View;)V

    .line 969
    invoke-virtual {p0, p1}, Lcom/github/clans/fab/FloatingActionMenu;->removeView(Landroid/view/View;)V

    .line 970
    iget v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->mButtonsCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->mButtonsCount:I

    .line 971
    return-void
.end method

.method public setAnimated(Z)V
    .locals 7
    .param p1, "animated"    # Z

    .line 761
    iput-boolean p1, p0, Lcom/github/clans/fab/FloatingActionMenu;->mIsAnimated:Z

    .line 762
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->mOpenAnimatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v1, 0x12c

    const-wide/16 v3, 0x0

    if-eqz p1, :cond_0

    move-wide v5, v1

    goto :goto_0

    :cond_0
    move-wide v5, v3

    :goto_0
    invoke-virtual {v0, v5, v6}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 763
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->mCloseAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move-wide v1, v3

    :goto_1
    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 764
    return-void
.end method

.method public setAnimationDelayPerItem(I)V
    .locals 0
    .param p1, "animationDelayPerItem"    # I

    .line 771
    iput p1, p0, Lcom/github/clans/fab/FloatingActionMenu;->mAnimationDelayPerItem:I

    .line 772
    return-void
.end method

.method public setClosedOnTouchOutside(Z)V
    .locals 0
    .param p1, "close"    # Z

    .line 916
    iput-boolean p1, p0, Lcom/github/clans/fab/FloatingActionMenu;->mIsSetClosedOnTouchOutside:Z

    .line 917
    return-void
.end method

.method public setIconAnimated(Z)V
    .locals 0
    .param p1, "animated"    # Z

    .line 783
    iput-boolean p1, p0, Lcom/github/clans/fab/FloatingActionMenu;->mIconAnimated:Z

    .line 784
    return-void
.end method

.method public setIconAnimationCloseInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 1
    .param p1, "closeInterpolator"    # Landroid/view/animation/Interpolator;

    .line 752
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->mCloseAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 753
    return-void
.end method

.method public setIconAnimationInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 1
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;

    .line 743
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->mOpenAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 744
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->mCloseAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 745
    return-void
.end method

.method public setIconAnimationOpenInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 1
    .param p1, "openInterpolator"    # Landroid/view/animation/Interpolator;

    .line 748
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->mOpenAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 749
    return-void
.end method

.method public setIconToggleAnimatorSet(Landroid/animation/AnimatorSet;)V
    .locals 0
    .param p1, "toggleAnimatorSet"    # Landroid/animation/AnimatorSet;

    .line 795
    iput-object p1, p0, Lcom/github/clans/fab/FloatingActionMenu;->mIconToggleSet:Landroid/animation/AnimatorSet;

    .line 796
    return-void
.end method

.method public setMenuButtonColorNormal(I)V
    .locals 1
    .param p1, "color"    # I

    .line 920
    iput p1, p0, Lcom/github/clans/fab/FloatingActionMenu;->mMenuColorNormal:I

    .line 921
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->mMenuButton:Lcom/github/clans/fab/FloatingActionButton;

    invoke-virtual {v0, p1}, Lcom/github/clans/fab/FloatingActionButton;->setColorNormal(I)V

    .line 922
    return-void
.end method

.method public setMenuButtonColorNormalResId(I)V
    .locals 1
    .param p1, "colorResId"    # I

    .line 925
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->mMenuColorNormal:I

    .line 926
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->mMenuButton:Lcom/github/clans/fab/FloatingActionButton;

    invoke-virtual {v0, p1}, Lcom/github/clans/fab/FloatingActionButton;->setColorNormalResId(I)V

    .line 927
    return-void
.end method

.method public setMenuButtonColorPressed(I)V
    .locals 1
    .param p1, "color"    # I

    .line 934
    iput p1, p0, Lcom/github/clans/fab/FloatingActionMenu;->mMenuColorPressed:I

    .line 935
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->mMenuButton:Lcom/github/clans/fab/FloatingActionButton;

    invoke-virtual {v0, p1}, Lcom/github/clans/fab/FloatingActionButton;->setColorPressed(I)V

    .line 936
    return-void
.end method

.method public setMenuButtonColorPressedResId(I)V
    .locals 1
    .param p1, "colorResId"    # I

    .line 939
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->mMenuColorPressed:I

    .line 940
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->mMenuButton:Lcom/github/clans/fab/FloatingActionButton;

    invoke-virtual {v0, p1}, Lcom/github/clans/fab/FloatingActionButton;->setColorPressedResId(I)V

    .line 941
    return-void
.end method

.method public setMenuButtonColorRipple(I)V
    .locals 1
    .param p1, "color"    # I

    .line 948
    iput p1, p0, Lcom/github/clans/fab/FloatingActionMenu;->mMenuColorRipple:I

    .line 949
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->mMenuButton:Lcom/github/clans/fab/FloatingActionButton;

    invoke-virtual {v0, p1}, Lcom/github/clans/fab/FloatingActionButton;->setColorRipple(I)V

    .line 950
    return-void
.end method

.method public setMenuButtonColorRippleResId(I)V
    .locals 1
    .param p1, "colorResId"    # I

    .line 953
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->mMenuColorRipple:I

    .line 954
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->mMenuButton:Lcom/github/clans/fab/FloatingActionButton;

    invoke-virtual {v0, p1}, Lcom/github/clans/fab/FloatingActionButton;->setColorRippleResId(I)V

    .line 955
    return-void
.end method

.method public setMenuButtonHideAnimation(Landroid/view/animation/Animation;)V
    .locals 1
    .param p1, "hideAnimation"    # Landroid/view/animation/Animation;

    .line 808
    iput-object p1, p0, Lcom/github/clans/fab/FloatingActionMenu;->mMenuButtonHideAnimation:Landroid/view/animation/Animation;

    .line 809
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->mMenuButton:Lcom/github/clans/fab/FloatingActionButton;

    invoke-virtual {v0, p1}, Lcom/github/clans/fab/FloatingActionButton;->setHideAnimation(Landroid/view/animation/Animation;)V

    .line 810
    return-void
.end method

.method public setMenuButtonLabelText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .line 1002
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->mMenuButton:Lcom/github/clans/fab/FloatingActionButton;

    invoke-virtual {v0, p1}, Lcom/github/clans/fab/FloatingActionButton;->setLabelText(Ljava/lang/String;)V

    .line 1003
    return-void
.end method

.method public setMenuButtonShowAnimation(Landroid/view/animation/Animation;)V
    .locals 1
    .param p1, "showAnimation"    # Landroid/view/animation/Animation;

    .line 803
    iput-object p1, p0, Lcom/github/clans/fab/FloatingActionMenu;->mMenuButtonShowAnimation:Landroid/view/animation/Animation;

    .line 804
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->mMenuButton:Lcom/github/clans/fab/FloatingActionButton;

    invoke-virtual {v0, p1}, Lcom/github/clans/fab/FloatingActionButton;->setShowAnimation(Landroid/view/animation/Animation;)V

    .line 805
    return-void
.end method

.method public setOnMenuButtonClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "clickListener"    # Landroid/view/View$OnClickListener;

    .line 1010
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->mMenuButton:Lcom/github/clans/fab/FloatingActionButton;

    invoke-virtual {v0, p1}, Lcom/github/clans/fab/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1011
    return-void
.end method

.method public setOnMenuButtonLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 1
    .param p1, "longClickListener"    # Landroid/view/View$OnLongClickListener;

    .line 1014
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->mMenuButton:Lcom/github/clans/fab/FloatingActionButton;

    invoke-virtual {v0, p1}, Lcom/github/clans/fab/FloatingActionButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1015
    return-void
.end method

.method public setOnMenuToggleListener(Lcom/github/clans/fab/FloatingActionMenu$OnMenuToggleListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/github/clans/fab/FloatingActionMenu$OnMenuToggleListener;

    .line 779
    iput-object p1, p0, Lcom/github/clans/fab/FloatingActionMenu;->mToggleListener:Lcom/github/clans/fab/FloatingActionMenu$OnMenuToggleListener;

    .line 780
    return-void
.end method

.method public showMenu(Z)V
    .locals 1
    .param p1, "animate"    # Z

    .line 826
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenu;->isMenuHidden()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 827
    if-eqz p1, :cond_0

    .line 828
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->mMenuButtonShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/github/clans/fab/FloatingActionMenu;->startAnimation(Landroid/view/animation/Animation;)V

    .line 830
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/github/clans/fab/FloatingActionMenu;->setVisibility(I)V

    .line 832
    :cond_1
    return-void
.end method

.method public showMenuButton(Z)V
    .locals 1
    .param p1, "animate"    # Z

    .line 879
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenu;->isMenuButtonHidden()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 880
    invoke-direct {p0, p1}, Lcom/github/clans/fab/FloatingActionMenu;->showMenuButtonWithImage(Z)V

    .line 882
    :cond_0
    return-void
.end method

.method public toggle(Z)V
    .locals 1
    .param p1, "animate"    # Z

    .line 618
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenu;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 619
    invoke-virtual {p0, p1}, Lcom/github/clans/fab/FloatingActionMenu;->close(Z)V

    goto :goto_0

    .line 621
    :cond_0
    invoke-virtual {p0, p1}, Lcom/github/clans/fab/FloatingActionMenu;->open(Z)V

    .line 623
    :goto_0
    return-void
.end method

.method public toggleMenu(Z)V
    .locals 1
    .param p1, "animate"    # Z

    .line 865
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenu;->isMenuHidden()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 866
    invoke-virtual {p0, p1}, Lcom/github/clans/fab/FloatingActionMenu;->showMenu(Z)V

    goto :goto_0

    .line 868
    :cond_0
    invoke-virtual {p0, p1}, Lcom/github/clans/fab/FloatingActionMenu;->hideMenu(Z)V

    .line 870
    :goto_0
    return-void
.end method

.method public toggleMenuButton(Z)V
    .locals 1
    .param p1, "animate"    # Z

    .line 908
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenu;->isMenuButtonHidden()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 909
    invoke-virtual {p0, p1}, Lcom/github/clans/fab/FloatingActionMenu;->showMenuButton(Z)V

    goto :goto_0

    .line 911
    :cond_0
    invoke-virtual {p0, p1}, Lcom/github/clans/fab/FloatingActionMenu;->hideMenuButton(Z)V

    .line 913
    :goto_0
    return-void
.end method
