.class Lcom/onesignal/OneSignalAnimate;
.super Ljava/lang/Object;
.source "OneSignalAnimate.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static animateViewByTranslation(Landroid/view/View;FFILandroid/view/animation/Interpolator;Landroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;
    .locals 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "deltaFromY"    # F
    .param p2, "deltaToY"    # F
    .param p3, "duration"    # I
    .param p4, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p5, "animCallback"    # Landroid/view/animation/Animation$AnimationListener;

    .line 19
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, p1, p2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 20
    .local v0, "translateAnimation":Landroid/view/animation/Animation;
    int-to-long v1, p3

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 21
    invoke-virtual {v0, p4}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 22
    if-eqz p5, :cond_0

    .line 23
    invoke-virtual {v0, p5}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 24
    :cond_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 26
    return-object v0
.end method

.method static animateViewColor(Landroid/view/View;IIILandroid/animation/Animator$AnimatorListener;)Landroid/animation/ValueAnimator;
    .locals 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "duration"    # I
    .param p2, "colorStart"    # I
    .param p3, "colorEnd"    # I
    .param p4, "animCallback"    # Landroid/animation/Animator$AnimatorListener;

    .line 34
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 35
    .local v0, "backgroundAnimation":Landroid/animation/ValueAnimator;
    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 36
    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p2, v1, v2

    const/4 v2, 0x1

    aput p3, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 39
    new-instance v1, Landroid/animation/ArgbEvaluator;

    invoke-direct {v1}, Landroid/animation/ArgbEvaluator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 40
    new-instance v1, Lcom/onesignal/OneSignalAnimate$1;

    invoke-direct {v1, p0}, Lcom/onesignal/OneSignalAnimate$1;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 46
    if-eqz p4, :cond_0

    .line 47
    invoke-virtual {v0, p4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 49
    :cond_0
    return-object v0
.end method

.method static animateViewSmallToLarge(Landroid/view/View;ILandroid/view/animation/Interpolator;Landroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;
    .locals 10
    .param p0, "view"    # Landroid/view/View;
    .param p1, "duration"    # I
    .param p2, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p3, "animCallback"    # Landroid/view/animation/Animation$AnimationListener;

    .line 56
    new-instance v9, Landroid/view/animation/ScaleAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 61
    .local v0, "scaleAnimation":Landroid/view/animation/Animation;
    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 62
    invoke-virtual {v0, p2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 63
    if-eqz p3, :cond_0

    .line 64
    invoke-virtual {v0, p3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 65
    :cond_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 67
    return-object v0
.end method
