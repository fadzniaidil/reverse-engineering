.class Lcom/onesignal/InAppMessageView;
.super Ljava/lang/Object;
.source "InAppMessageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onesignal/InAppMessageView$InAppMessageViewListener;
    }
.end annotation


# static fields
.field private static final ACTIVITY_BACKGROUND_COLOR_EMPTY:I

.field private static final ACTIVITY_BACKGROUND_COLOR_FULL:I

.field private static final ACTIVITY_FINISH_AFTER_DISMISS_DELAY_MS:I = 0x258

.field private static final ACTIVITY_INIT_DELAY:I = 0xc8

.field private static final DRAG_THRESHOLD_PX_SIZE:I

.field private static final IN_APP_BACKGROUND_ANIMATION_DURATION_MS:I = 0x190

.field private static final IN_APP_BANNER_ANIMATION_DURATION_MS:I = 0x3e8

.field private static final IN_APP_CENTER_ANIMATION_DURATION_MS:I = 0x3e8

.field private static final IN_APP_MESSAGE_CARD_VIEW_TAG:Ljava/lang/String; = "IN_APP_MESSAGE_CARD_VIEW_TAG"

.field private static final MARGIN_PX_SIZE:I


# instance fields
.field private currentActivity:Landroid/app/Activity;

.field private dismissDuration:D

.field private displayLocation:Lcom/onesignal/WebViewManager$Position;

.field private draggableRelativeLayout:Lcom/onesignal/DraggableRelativeLayout;

.field private final handler:Landroid/os/Handler;

.field private hasBackground:Z

.field private isDragging:Z

.field private messageController:Lcom/onesignal/InAppMessageView$InAppMessageViewListener;

.field private pageHeight:I

.field private pageWidth:I

.field private parentRelativeLayout:Landroid/widget/RelativeLayout;

.field private popupWindow:Landroid/widget/PopupWindow;

.field private scheduleDismissRunnable:Ljava/lang/Runnable;

.field private shouldDismissWhenActive:Z

.field private webView:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    const-string v0, "#00000000"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/onesignal/InAppMessageView;->ACTIVITY_BACKGROUND_COLOR_EMPTY:I

    .line 50
    const-string v0, "#BB000000"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/onesignal/InAppMessageView;->ACTIVITY_BACKGROUND_COLOR_FULL:I

    .line 58
    const/16 v0, 0x18

    invoke-static {v0}, Lcom/onesignal/OSViewUtils;->dpToPx(I)I

    move-result v0

    sput v0, Lcom/onesignal/InAppMessageView;->MARGIN_PX_SIZE:I

    .line 59
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/onesignal/OSViewUtils;->dpToPx(I)I

    move-result v0

    sput v0, Lcom/onesignal/InAppMessageView;->DRAG_THRESHOLD_PX_SIZE:I

    return-void
.end method

.method constructor <init>(Landroid/webkit/WebView;Lcom/onesignal/WebViewManager$Position;ID)V
    .locals 2
    .param p1, "webView"    # Landroid/webkit/WebView;
    .param p2, "displayLocation"    # Lcom/onesignal/WebViewManager$Position;
    .param p3, "pageHeight"    # I
    .param p4, "dismissDuration"    # D

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/onesignal/InAppMessageView;->handler:Landroid/os/Handler;

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/onesignal/InAppMessageView;->shouldDismissWhenActive:Z

    .line 74
    iput-boolean v0, p0, Lcom/onesignal/InAppMessageView;->isDragging:Z

    .line 83
    iput-object p1, p0, Lcom/onesignal/InAppMessageView;->webView:Landroid/webkit/WebView;

    .line 84
    iput-object p2, p0, Lcom/onesignal/InAppMessageView;->displayLocation:Lcom/onesignal/WebViewManager$Position;

    .line 85
    iput p3, p0, Lcom/onesignal/InAppMessageView;->pageHeight:I

    .line 86
    const/4 v0, -0x1

    iput v0, p0, Lcom/onesignal/InAppMessageView;->pageWidth:I

    .line 87
    invoke-static {p4, p5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    move-wide v0, p4

    :goto_0
    iput-wide v0, p0, Lcom/onesignal/InAppMessageView;->dismissDuration:D

    .line 88
    invoke-virtual {p2}, Lcom/onesignal/WebViewManager$Position;->isBanner()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/onesignal/InAppMessageView;->hasBackground:Z

    .line 89
    return-void
.end method

.method static synthetic access$000(Lcom/onesignal/InAppMessageView;)Landroid/webkit/WebView;
    .locals 1
    .param p0, "x0"    # Lcom/onesignal/InAppMessageView;

    .line 45
    iget-object v0, p0, Lcom/onesignal/InAppMessageView;->webView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/onesignal/InAppMessageView;)Lcom/onesignal/DraggableRelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/onesignal/InAppMessageView;

    .line 45
    iget-object v0, p0, Lcom/onesignal/InAppMessageView;->draggableRelativeLayout:Lcom/onesignal/DraggableRelativeLayout;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/onesignal/InAppMessageView;Lcom/onesignal/WebViewManager$Position;Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/onesignal/InAppMessageView;
    .param p1, "x1"    # Lcom/onesignal/WebViewManager$Position;
    .param p2, "x2"    # Landroid/view/View;
    .param p3, "x3"    # Landroid/view/View;

    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcom/onesignal/InAppMessageView;->animateInAppMessage(Lcom/onesignal/WebViewManager$Position;Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/onesignal/InAppMessageView;)V
    .locals 0
    .param p0, "x0"    # Lcom/onesignal/InAppMessageView;

    .line 45
    invoke-direct {p0}, Lcom/onesignal/InAppMessageView;->startDismissTimerIfNeeded()V

    return-void
.end method

.method static synthetic access$1200(Lcom/onesignal/InAppMessageView;Lcom/onesignal/WebViewManager$OneSignalGenericCallback;)V
    .locals 0
    .param p0, "x0"    # Lcom/onesignal/InAppMessageView;
    .param p1, "x1"    # Lcom/onesignal/WebViewManager$OneSignalGenericCallback;

    .line 45
    invoke-direct {p0, p1}, Lcom/onesignal/InAppMessageView;->finishAfterDelay(Lcom/onesignal/WebViewManager$OneSignalGenericCallback;)V

    return-void
.end method

.method static synthetic access$1302(Lcom/onesignal/InAppMessageView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/onesignal/InAppMessageView;
    .param p1, "x1"    # Z

    .line 45
    iput-boolean p1, p0, Lcom/onesignal/InAppMessageView;->isDragging:Z

    return p1
.end method

.method static synthetic access$1402(Lcom/onesignal/InAppMessageView;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lcom/onesignal/InAppMessageView;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .line 45
    iput-object p1, p0, Lcom/onesignal/InAppMessageView;->scheduleDismissRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$1502(Lcom/onesignal/InAppMessageView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/onesignal/InAppMessageView;
    .param p1, "x1"    # Z

    .line 45
    iput-boolean p1, p0, Lcom/onesignal/InAppMessageView;->shouldDismissWhenActive:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/onesignal/InAppMessageView;Landroid/app/Activity;)V
    .locals 0
    .param p0, "x0"    # Lcom/onesignal/InAppMessageView;
    .param p1, "x1"    # Landroid/app/Activity;

    .line 45
    invoke-direct {p0, p1}, Lcom/onesignal/InAppMessageView;->delayShowUntilAvailable(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/onesignal/InAppMessageView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/onesignal/InAppMessageView;

    .line 45
    iget-boolean v0, p0, Lcom/onesignal/InAppMessageView;->hasBackground:Z

    return v0
.end method

.method static synthetic access$1800(Lcom/onesignal/InAppMessageView;Landroid/view/View;Lcom/onesignal/WebViewManager$OneSignalGenericCallback;)V
    .locals 0
    .param p0, "x0"    # Lcom/onesignal/InAppMessageView;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Lcom/onesignal/WebViewManager$OneSignalGenericCallback;

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/onesignal/InAppMessageView;->animateAndDismissLayout(Landroid/view/View;Lcom/onesignal/WebViewManager$OneSignalGenericCallback;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/onesignal/InAppMessageView;)V
    .locals 0
    .param p0, "x0"    # Lcom/onesignal/InAppMessageView;

    .line 45
    invoke-direct {p0}, Lcom/onesignal/InAppMessageView;->cleanupViewsAfterDismiss()V

    return-void
.end method

.method static synthetic access$200(Lcom/onesignal/InAppMessageView;)Lcom/onesignal/WebViewManager$Position;
    .locals 1
    .param p0, "x0"    # Lcom/onesignal/InAppMessageView;

    .line 45
    iget-object v0, p0, Lcom/onesignal/InAppMessageView;->displayLocation:Lcom/onesignal/WebViewManager$Position;

    return-object v0
.end method

.method static synthetic access$300(Lcom/onesignal/InAppMessageView;ILcom/onesignal/WebViewManager$Position;)Lcom/onesignal/DraggableRelativeLayout$Params;
    .locals 1
    .param p0, "x0"    # Lcom/onesignal/InAppMessageView;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/onesignal/WebViewManager$Position;

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/onesignal/InAppMessageView;->createDraggableLayoutParams(ILcom/onesignal/WebViewManager$Position;)Lcom/onesignal/DraggableRelativeLayout$Params;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/onesignal/InAppMessageView;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/onesignal/InAppMessageView;

    .line 45
    iget-object v0, p0, Lcom/onesignal/InAppMessageView;->currentActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$500(Lcom/onesignal/InAppMessageView;Landroid/content/Context;Landroid/widget/LinearLayout$LayoutParams;Lcom/onesignal/DraggableRelativeLayout$Params;)V
    .locals 0
    .param p0, "x0"    # Lcom/onesignal/InAppMessageView;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Landroid/widget/LinearLayout$LayoutParams;
    .param p3, "x3"    # Lcom/onesignal/DraggableRelativeLayout$Params;

    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcom/onesignal/InAppMessageView;->setUpDraggableLayout(Landroid/content/Context;Landroid/widget/LinearLayout$LayoutParams;Lcom/onesignal/DraggableRelativeLayout$Params;)V

    return-void
.end method

.method static synthetic access$600(Lcom/onesignal/InAppMessageView;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/onesignal/InAppMessageView;
    .param p1, "x1"    # Landroid/content/Context;

    .line 45
    invoke-direct {p0, p1}, Lcom/onesignal/InAppMessageView;->setUpParentLinearLayout(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$700(Lcom/onesignal/InAppMessageView;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/onesignal/InAppMessageView;

    .line 45
    iget-object v0, p0, Lcom/onesignal/InAppMessageView;->parentRelativeLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$800(Lcom/onesignal/InAppMessageView;Landroid/widget/RelativeLayout;)V
    .locals 0
    .param p0, "x0"    # Lcom/onesignal/InAppMessageView;
    .param p1, "x1"    # Landroid/widget/RelativeLayout;

    .line 45
    invoke-direct {p0, p1}, Lcom/onesignal/InAppMessageView;->createPopupWindow(Landroid/widget/RelativeLayout;)V

    return-void
.end method

.method static synthetic access$900(Lcom/onesignal/InAppMessageView;)Lcom/onesignal/InAppMessageView$InAppMessageViewListener;
    .locals 1
    .param p0, "x0"    # Lcom/onesignal/InAppMessageView;

    .line 45
    iget-object v0, p0, Lcom/onesignal/InAppMessageView;->messageController:Lcom/onesignal/InAppMessageView$InAppMessageViewListener;

    return-object v0
.end method

.method private animateAndDismissLayout(Landroid/view/View;Lcom/onesignal/WebViewManager$OneSignalGenericCallback;)V
    .locals 6
    .param p1, "backgroundView"    # Landroid/view/View;
    .param p2, "callback"    # Lcom/onesignal/WebViewManager$OneSignalGenericCallback;

    .line 574
    new-instance v5, Lcom/onesignal/InAppMessageView$8;

    invoke-direct {v5, p0, p2}, Lcom/onesignal/InAppMessageView$8;-><init>(Lcom/onesignal/InAppMessageView;Lcom/onesignal/WebViewManager$OneSignalGenericCallback;)V

    .line 584
    .local v5, "animCallback":Landroid/animation/Animator$AnimatorListener;
    sget v3, Lcom/onesignal/InAppMessageView;->ACTIVITY_BACKGROUND_COLOR_FULL:I

    sget v4, Lcom/onesignal/InAppMessageView;->ACTIVITY_BACKGROUND_COLOR_EMPTY:I

    const/16 v2, 0x190

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/onesignal/InAppMessageView;->animateBackgroundColor(Landroid/view/View;IIILandroid/animation/Animator$AnimatorListener;)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 590
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 591
    return-void
.end method

.method private animateBackgroundColor(Landroid/view/View;IIILandroid/animation/Animator$AnimatorListener;)Landroid/animation/ValueAnimator;
    .locals 1
    .param p1, "backgroundView"    # Landroid/view/View;
    .param p2, "duration"    # I
    .param p3, "startColor"    # I
    .param p4, "endColor"    # I
    .param p5, "animCallback"    # Landroid/animation/Animator$AnimatorListener;

    .line 594
    invoke-static {p1, p2, p3, p4, p5}, Lcom/onesignal/OneSignalAnimate;->animateViewColor(Landroid/view/View;IIILandroid/animation/Animator$AnimatorListener;)Landroid/animation/ValueAnimator;

    move-result-object v0

    return-object v0
.end method

.method private animateBottom(Landroid/view/View;ILandroid/view/animation/Animation$AnimationListener;)V
    .locals 7
    .param p1, "messageView"    # Landroid/view/View;
    .param p2, "height"    # I
    .param p3, "cardViewAnimCallback"    # Landroid/view/animation/Animation$AnimationListener;

    .line 543
    sget v0, Lcom/onesignal/InAppMessageView;->MARGIN_PX_SIZE:I

    add-int/2addr v0, p2

    int-to-float v2, v0

    new-instance v5, Lcom/onesignal/OneSignalBounceInterpolator;

    const-wide v0, 0x3fb999999999999aL    # 0.1

    const-wide/high16 v3, 0x4020000000000000L    # 8.0

    invoke-direct {v5, v0, v1, v3, v4}, Lcom/onesignal/OneSignalBounceInterpolator;-><init>(DD)V

    const/4 v3, 0x0

    const/16 v4, 0x3e8

    move-object v1, p1

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Lcom/onesignal/OneSignalAnimate;->animateViewByTranslation(Landroid/view/View;FFILandroid/view/animation/Interpolator;Landroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;

    move-result-object v0

    .line 550
    invoke-virtual {v0}, Landroid/view/animation/Animation;->start()V

    .line 551
    return-void
.end method

.method private animateCenter(Landroid/view/View;Landroid/view/View;Landroid/view/animation/Animation$AnimationListener;Landroid/animation/Animator$AnimatorListener;)V
    .locals 7
    .param p1, "messageView"    # Landroid/view/View;
    .param p2, "backgroundView"    # Landroid/view/View;
    .param p3, "cardViewAnimCallback"    # Landroid/view/animation/Animation$AnimationListener;
    .param p4, "backgroundAnimCallback"    # Landroid/animation/Animator$AnimatorListener;

    .line 555
    new-instance v0, Lcom/onesignal/OneSignalBounceInterpolator;

    const-wide v1, 0x3fb999999999999aL    # 0.1

    const-wide/high16 v3, 0x4020000000000000L    # 8.0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/onesignal/OneSignalBounceInterpolator;-><init>(DD)V

    const/16 v1, 0x3e8

    invoke-static {p1, v1, v0, p3}, Lcom/onesignal/OneSignalAnimate;->animateViewSmallToLarge(Landroid/view/View;ILandroid/view/animation/Interpolator;Landroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;

    move-result-object v0

    .line 562
    .local v0, "messageAnimation":Landroid/view/animation/Animation;
    sget v4, Lcom/onesignal/InAppMessageView;->ACTIVITY_BACKGROUND_COLOR_EMPTY:I

    sget v5, Lcom/onesignal/InAppMessageView;->ACTIVITY_BACKGROUND_COLOR_FULL:I

    const/16 v3, 0x190

    move-object v1, p0

    move-object v2, p2

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/onesignal/InAppMessageView;->animateBackgroundColor(Landroid/view/View;IIILandroid/animation/Animator$AnimatorListener;)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 569
    .local v1, "backgroundAnimation":Landroid/animation/ValueAnimator;
    invoke-virtual {v0}, Landroid/view/animation/Animation;->start()V

    .line 570
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 571
    return-void
.end method

.method private animateInAppMessage(Lcom/onesignal/WebViewManager$Position;Landroid/view/View;Landroid/view/View;)V
    .locals 4
    .param p1, "displayLocation"    # Lcom/onesignal/WebViewManager$Position;
    .param p2, "messageView"    # Landroid/view/View;
    .param p3, "backgroundView"    # Landroid/view/View;

    .line 488
    const-string v0, "IN_APP_MESSAGE_CARD_VIEW_TAG"

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/cardview/widget/CardView;

    .line 490
    .local v0, "messageViewCardView":Landroidx/cardview/widget/CardView;
    const/4 v1, 0x0

    .line 491
    .local v1, "cardViewAnimCallback":Landroid/view/animation/Animation$AnimationListener;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-ne v2, v3, :cond_0

    .line 492
    invoke-direct {p0, v0}, Lcom/onesignal/InAppMessageView;->createAnimationListenerForAndroidApi23Elevation(Landroidx/cardview/widget/CardView;)Landroid/view/animation/Animation$AnimationListener;

    move-result-object v1

    .line 495
    :cond_0
    sget-object v2, Lcom/onesignal/InAppMessageView$9;->$SwitchMap$com$onesignal$WebViewManager$Position:[I

    invoke-virtual {p1}, Lcom/onesignal/WebViewManager$Position;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 504
    :pswitch_0
    const/4 v2, 0x0

    invoke-direct {p0, p2, p3, v1, v2}, Lcom/onesignal/InAppMessageView;->animateCenter(Landroid/view/View;Landroid/view/View;Landroid/view/animation/Animation$AnimationListener;Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    .line 500
    :pswitch_1
    iget-object v2, p0, Lcom/onesignal/InAppMessageView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getHeight()I

    move-result v2

    invoke-direct {p0, v0, v2, v1}, Lcom/onesignal/InAppMessageView;->animateBottom(Landroid/view/View;ILandroid/view/animation/Animation$AnimationListener;)V

    .line 501
    goto :goto_0

    .line 497
    :pswitch_2
    iget-object v2, p0, Lcom/onesignal/InAppMessageView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getHeight()I

    move-result v2

    invoke-direct {p0, v0, v2, v1}, Lcom/onesignal/InAppMessageView;->animateTop(Landroid/view/View;ILandroid/view/animation/Animation$AnimationListener;)V

    .line 498
    nop

    .line 507
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private animateTop(Landroid/view/View;ILandroid/view/animation/Animation$AnimationListener;)V
    .locals 7
    .param p1, "messageView"    # Landroid/view/View;
    .param p2, "height"    # I
    .param p3, "cardViewAnimCallback"    # Landroid/view/animation/Animation$AnimationListener;

    .line 531
    neg-int v0, p2

    sget v1, Lcom/onesignal/InAppMessageView;->MARGIN_PX_SIZE:I

    sub-int/2addr v0, v1

    int-to-float v2, v0

    new-instance v5, Lcom/onesignal/OneSignalBounceInterpolator;

    const-wide v0, 0x3fb999999999999aL    # 0.1

    const-wide/high16 v3, 0x4020000000000000L    # 8.0

    invoke-direct {v5, v0, v1, v3, v4}, Lcom/onesignal/OneSignalBounceInterpolator;-><init>(DD)V

    const/4 v3, 0x0

    const/16 v4, 0x3e8

    move-object v1, p1

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Lcom/onesignal/OneSignalAnimate;->animateViewByTranslation(Landroid/view/View;FFILandroid/view/animation/Interpolator;Landroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;

    move-result-object v0

    .line 538
    invoke-virtual {v0}, Landroid/view/animation/Animation;->start()V

    .line 539
    return-void
.end method

.method private cleanupViewsAfterDismiss()V
    .locals 1

    .line 454
    invoke-virtual {p0}, Lcom/onesignal/InAppMessageView;->removeAllViews()V

    .line 455
    iget-object v0, p0, Lcom/onesignal/InAppMessageView;->messageController:Lcom/onesignal/InAppMessageView$InAppMessageViewListener;

    if-eqz v0, :cond_0

    .line 456
    invoke-interface {v0}, Lcom/onesignal/InAppMessageView$InAppMessageViewListener;->onMessageWasDismissed()V

    .line 457
    :cond_0
    return-void
.end method

.method private createAnimationListenerForAndroidApi23Elevation(Landroidx/cardview/widget/CardView;)Landroid/view/animation/Animation$AnimationListener;
    .locals 1
    .param p1, "messageViewCardView"    # Landroidx/cardview/widget/CardView;

    .line 510
    new-instance v0, Lcom/onesignal/InAppMessageView$7;

    invoke-direct {v0, p0, p1}, Lcom/onesignal/InAppMessageView$7;-><init>(Lcom/onesignal/InAppMessageView;Landroidx/cardview/widget/CardView;)V

    return-object v0
.end method

.method private createCardView(Landroid/content/Context;)Landroidx/cardview/widget/CardView;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 350
    new-instance v0, Landroidx/cardview/widget/CardView;

    invoke-direct {v0, p1}, Landroidx/cardview/widget/CardView;-><init>(Landroid/content/Context;)V

    .line 352
    .local v0, "cardView":Landroidx/cardview/widget/CardView;
    iget-object v1, p0, Lcom/onesignal/InAppMessageView;->displayLocation:Lcom/onesignal/WebViewManager$Position;

    sget-object v2, Lcom/onesignal/WebViewManager$Position;->FULL_SCREEN:Lcom/onesignal/WebViewManager$Position;

    const/4 v3, -0x1

    if-ne v1, v2, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    const/4 v1, -0x2

    .line 355
    .local v1, "height":I
    :goto_0
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 359
    .local v2, "cardViewLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 360
    invoke-virtual {v0, v2}, Landroidx/cardview/widget/CardView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 364
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-ne v3, v4, :cond_1

    .line 365
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroidx/cardview/widget/CardView;->setCardElevation(F)V

    goto :goto_1

    .line 367
    :cond_1
    const/4 v3, 0x5

    invoke-static {v3}, Lcom/onesignal/OSViewUtils;->dpToPx(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroidx/cardview/widget/CardView;->setCardElevation(F)V

    .line 369
    :goto_1
    const/16 v3, 0x8

    invoke-static {v3}, Lcom/onesignal/OSViewUtils;->dpToPx(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroidx/cardview/widget/CardView;->setRadius(F)V

    .line 370
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroidx/cardview/widget/CardView;->setClipChildren(Z)V

    .line 371
    invoke-virtual {v0, v3}, Landroidx/cardview/widget/CardView;->setClipToPadding(Z)V

    .line 372
    invoke-virtual {v0, v3}, Landroidx/cardview/widget/CardView;->setPreventCornerOverlap(Z)V

    .line 374
    return-object v0
.end method

.method private createDraggableLayoutParams(ILcom/onesignal/WebViewManager$Position;)Lcom/onesignal/DraggableRelativeLayout$Params;
    .locals 4
    .param p1, "pageHeight"    # I
    .param p2, "displayLocation"    # Lcom/onesignal/WebViewManager$Position;

    .line 192
    new-instance v0, Lcom/onesignal/DraggableRelativeLayout$Params;

    invoke-direct {v0}, Lcom/onesignal/DraggableRelativeLayout$Params;-><init>()V

    .line 193
    .local v0, "draggableParams":Lcom/onesignal/DraggableRelativeLayout$Params;
    sget v1, Lcom/onesignal/InAppMessageView;->MARGIN_PX_SIZE:I

    iput v1, v0, Lcom/onesignal/DraggableRelativeLayout$Params;->maxXPos:I

    .line 194
    iput v1, v0, Lcom/onesignal/DraggableRelativeLayout$Params;->maxYPos:I

    .line 196
    iput p1, v0, Lcom/onesignal/DraggableRelativeLayout$Params;->messageHeight:I

    .line 197
    invoke-direct {p0}, Lcom/onesignal/InAppMessageView;->getDisplayYSize()I

    move-result v2

    iput v2, v0, Lcom/onesignal/DraggableRelativeLayout$Params;->height:I

    .line 199
    sget-object v2, Lcom/onesignal/InAppMessageView$9;->$SwitchMap$com$onesignal$WebViewManager$Position:[I

    invoke-virtual {p2}, Lcom/onesignal/WebViewManager$Position;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 208
    :pswitch_0
    invoke-direct {p0}, Lcom/onesignal/InAppMessageView;->getDisplayYSize()I

    move-result v2

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v2, v1

    move p1, v2

    iput v2, v0, Lcom/onesignal/DraggableRelativeLayout$Params;->messageHeight:I

    .line 211
    :pswitch_1
    invoke-direct {p0}, Lcom/onesignal/InAppMessageView;->getDisplayYSize()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    div-int/lit8 v2, p1, 0x2

    sub-int/2addr v1, v2

    .line 212
    .local v1, "y":I
    sget v2, Lcom/onesignal/InAppMessageView;->DRAG_THRESHOLD_PX_SIZE:I

    add-int/2addr v2, v1

    iput v2, v0, Lcom/onesignal/DraggableRelativeLayout$Params;->dragThresholdY:I

    .line 213
    iput v1, v0, Lcom/onesignal/DraggableRelativeLayout$Params;->maxYPos:I

    .line 214
    iput v1, v0, Lcom/onesignal/DraggableRelativeLayout$Params;->posY:I

    goto :goto_0

    .line 204
    .end local v1    # "y":I
    :pswitch_2
    invoke-direct {p0}, Lcom/onesignal/InAppMessageView;->getDisplayYSize()I

    move-result v2

    sub-int/2addr v2, p1

    iput v2, v0, Lcom/onesignal/DraggableRelativeLayout$Params;->posY:I

    .line 205
    sget v2, Lcom/onesignal/InAppMessageView;->DRAG_THRESHOLD_PX_SIZE:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/onesignal/DraggableRelativeLayout$Params;->dragThresholdY:I

    .line 206
    goto :goto_0

    .line 201
    :pswitch_3
    sget v2, Lcom/onesignal/InAppMessageView;->DRAG_THRESHOLD_PX_SIZE:I

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/onesignal/DraggableRelativeLayout$Params;->dragThresholdY:I

    .line 202
    nop

    .line 218
    :goto_0
    sget-object v1, Lcom/onesignal/WebViewManager$Position;->TOP_BANNER:Lcom/onesignal/WebViewManager$Position;

    if-ne p2, v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    :goto_1
    iput v1, v0, Lcom/onesignal/DraggableRelativeLayout$Params;->dragDirection:I

    .line 222
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private createParentLinearLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 3

    .line 174
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lcom/onesignal/InAppMessageView;->pageWidth:I

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 176
    .local v0, "linearLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    sget-object v1, Lcom/onesignal/InAppMessageView$9;->$SwitchMap$com$onesignal$WebViewManager$Position:[I

    iget-object v2, p0, Lcom/onesignal/InAppMessageView;->displayLocation:Lcom/onesignal/WebViewManager$Position;

    invoke-virtual {v2}, Lcom/onesignal/WebViewManager$Position;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 185
    :pswitch_0
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    goto :goto_0

    .line 181
    :pswitch_1
    const/16 v1, 0x51

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 182
    goto :goto_0

    .line 178
    :pswitch_2
    const/16 v1, 0x31

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 179
    nop

    .line 188
    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private createPopupWindow(Landroid/widget/RelativeLayout;)V
    .locals 4
    .param p1, "parentRelativeLayout"    # Landroid/widget/RelativeLayout;

    .line 258
    new-instance v0, Landroid/widget/PopupWindow;

    iget-boolean v1, p0, Lcom/onesignal/InAppMessageView;->hasBackground:Z

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    const/4 v3, -0x1

    goto :goto_0

    :cond_0
    iget v3, p0, Lcom/onesignal/InAppMessageView;->pageWidth:I

    :goto_0
    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, -0x2

    :goto_1
    invoke-direct {v0, p1, v3, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v0, p0, Lcom/onesignal/InAppMessageView;->popupWindow:Landroid/widget/PopupWindow;

    .line 263
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 264
    iget-object v0, p0, Lcom/onesignal/InAppMessageView;->popupWindow:Landroid/widget/PopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 266
    const/4 v0, 0x0

    .line 267
    .local v0, "gravity":I
    iget-boolean v1, p0, Lcom/onesignal/InAppMessageView;->hasBackground:Z

    if-nez v1, :cond_2

    .line 268
    sget-object v1, Lcom/onesignal/InAppMessageView$9;->$SwitchMap$com$onesignal$WebViewManager$Position:[I

    iget-object v3, p0, Lcom/onesignal/InAppMessageView;->displayLocation:Lcom/onesignal/WebViewManager$Position;

    invoke-virtual {v3}, Lcom/onesignal/WebViewManager$Position;->ordinal()I

    move-result v3

    aget v1, v1, v3

    packed-switch v1, :pswitch_data_0

    goto :goto_2

    .line 273
    :pswitch_0
    const/16 v0, 0x51

    goto :goto_2

    .line 270
    :pswitch_1
    const/16 v0, 0x31

    .line 280
    :cond_2
    :goto_2
    iget-object v1, p0, Lcom/onesignal/InAppMessageView;->popupWindow:Landroid/widget/PopupWindow;

    const/16 v3, 0x3eb

    invoke-static {v1, v3}, Landroidx/core/widget/PopupWindowCompat;->setWindowLayoutType(Landroid/widget/PopupWindow;I)V

    .line 285
    iget-object v1, p0, Lcom/onesignal/InAppMessageView;->popupWindow:Landroid/widget/PopupWindow;

    iget-object v3, p0, Lcom/onesignal/InAppMessageView;->currentActivity:Landroid/app/Activity;

    .line 286
    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v3

    .line 285
    invoke-virtual {v1, v3, v0, v2, v2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 291
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private delayShowUntilAvailable(Landroid/app/Activity;)V
    .locals 4
    .param p1, "currentActivity"    # Landroid/app/Activity;

    .line 403
    invoke-static {p1}, Lcom/onesignal/OSViewUtils;->isActivityFullyReady(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/onesignal/InAppMessageView;->parentRelativeLayout:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    .line 404
    invoke-virtual {p0, p1}, Lcom/onesignal/InAppMessageView;->showInAppMessageView(Landroid/app/Activity;)V

    .line 405
    return-void

    .line 407
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/onesignal/InAppMessageView$5;

    invoke-direct {v1, p0, p1}, Lcom/onesignal/InAppMessageView$5;-><init>(Lcom/onesignal/InAppMessageView;Landroid/app/Activity;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 413
    return-void
.end method

.method private dereferenceViews()V
    .locals 1

    .line 482
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/onesignal/InAppMessageView;->parentRelativeLayout:Landroid/widget/RelativeLayout;

    .line 483
    iput-object v0, p0, Lcom/onesignal/InAppMessageView;->draggableRelativeLayout:Lcom/onesignal/DraggableRelativeLayout;

    .line 484
    iput-object v0, p0, Lcom/onesignal/InAppMessageView;->webView:Landroid/webkit/WebView;

    .line 485
    return-void
.end method

.method private finishAfterDelay(Lcom/onesignal/WebViewManager$OneSignalGenericCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/onesignal/WebViewManager$OneSignalGenericCallback;

    .line 436
    new-instance v0, Lcom/onesignal/InAppMessageView$6;

    invoke-direct {v0, p0, p1}, Lcom/onesignal/InAppMessageView$6;-><init>(Lcom/onesignal/InAppMessageView;Lcom/onesignal/WebViewManager$OneSignalGenericCallback;)V

    const/16 v1, 0x258

    invoke-static {v0, v1}, Lcom/onesignal/OSUtils;->runOnMainThreadDelayed(Ljava/lang/Runnable;I)V

    .line 448
    return-void
.end method

.method private getDisplayYSize()I
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/onesignal/InAppMessageView;->currentActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/onesignal/OSViewUtils;->getWindowHeight(Landroid/app/Activity;)I

    move-result v0

    return v0
.end method

.method private setUpDraggableLayout(Landroid/content/Context;Landroid/widget/LinearLayout$LayoutParams;Lcom/onesignal/DraggableRelativeLayout$Params;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "linearLayoutParams"    # Landroid/widget/LinearLayout$LayoutParams;
    .param p3, "draggableParams"    # Lcom/onesignal/DraggableRelativeLayout$Params;

    .line 304
    new-instance v0, Lcom/onesignal/DraggableRelativeLayout;

    invoke-direct {v0, p1}, Lcom/onesignal/DraggableRelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/onesignal/InAppMessageView;->draggableRelativeLayout:Lcom/onesignal/DraggableRelativeLayout;

    .line 305
    if-eqz p2, :cond_0

    .line 306
    invoke-virtual {v0, p2}, Lcom/onesignal/DraggableRelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 307
    :cond_0
    iget-object v0, p0, Lcom/onesignal/InAppMessageView;->draggableRelativeLayout:Lcom/onesignal/DraggableRelativeLayout;

    invoke-virtual {v0, p3}, Lcom/onesignal/DraggableRelativeLayout;->setParams(Lcom/onesignal/DraggableRelativeLayout$Params;)V

    .line 308
    iget-object v0, p0, Lcom/onesignal/InAppMessageView;->draggableRelativeLayout:Lcom/onesignal/DraggableRelativeLayout;

    new-instance v1, Lcom/onesignal/InAppMessageView$3;

    invoke-direct {v1, p0}, Lcom/onesignal/InAppMessageView$3;-><init>(Lcom/onesignal/InAppMessageView;)V

    invoke-virtual {v0, v1}, Lcom/onesignal/DraggableRelativeLayout;->setListener(Lcom/onesignal/DraggableRelativeLayout$DraggableListener;)V

    .line 325
    iget-object v0, p0, Lcom/onesignal/InAppMessageView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 326
    iget-object v0, p0, Lcom/onesignal/InAppMessageView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 328
    :cond_1
    invoke-direct {p0, p1}, Lcom/onesignal/InAppMessageView;->createCardView(Landroid/content/Context;)Landroidx/cardview/widget/CardView;

    move-result-object v0

    .line 329
    .local v0, "cardView":Landroidx/cardview/widget/CardView;
    const-string v1, "IN_APP_MESSAGE_CARD_VIEW_TAG"

    invoke-virtual {v0, v1}, Landroidx/cardview/widget/CardView;->setTag(Ljava/lang/Object;)V

    .line 330
    iget-object v1, p0, Lcom/onesignal/InAppMessageView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroidx/cardview/widget/CardView;->addView(Landroid/view/View;)V

    .line 332
    iget-object v1, p0, Lcom/onesignal/InAppMessageView;->draggableRelativeLayout:Lcom/onesignal/DraggableRelativeLayout;

    sget v2, Lcom/onesignal/InAppMessageView;->MARGIN_PX_SIZE:I

    invoke-virtual {v1, v2, v2, v2, v2}, Lcom/onesignal/DraggableRelativeLayout;->setPadding(IIII)V

    .line 333
    iget-object v1, p0, Lcom/onesignal/InAppMessageView;->draggableRelativeLayout:Lcom/onesignal/DraggableRelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/onesignal/DraggableRelativeLayout;->setClipChildren(Z)V

    .line 334
    iget-object v1, p0, Lcom/onesignal/InAppMessageView;->draggableRelativeLayout:Lcom/onesignal/DraggableRelativeLayout;

    invoke-virtual {v1, v2}, Lcom/onesignal/DraggableRelativeLayout;->setClipToPadding(Z)V

    .line 335
    iget-object v1, p0, Lcom/onesignal/InAppMessageView;->draggableRelativeLayout:Lcom/onesignal/DraggableRelativeLayout;

    invoke-virtual {v1, v0}, Lcom/onesignal/DraggableRelativeLayout;->addView(Landroid/view/View;)V

    .line 336
    return-void
.end method

.method private setUpParentLinearLayout(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 294
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/onesignal/InAppMessageView;->parentRelativeLayout:Landroid/widget/RelativeLayout;

    .line 295
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 296
    iget-object v0, p0, Lcom/onesignal/InAppMessageView;->parentRelativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setClipChildren(Z)V

    .line 297
    iget-object v0, p0, Lcom/onesignal/InAppMessageView;->parentRelativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setClipToPadding(Z)V

    .line 298
    iget-object v0, p0, Lcom/onesignal/InAppMessageView;->parentRelativeLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/onesignal/InAppMessageView;->draggableRelativeLayout:Lcom/onesignal/DraggableRelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 299
    return-void
.end method

.method private showDraggableView(Lcom/onesignal/WebViewManager$Position;Landroid/widget/RelativeLayout$LayoutParams;Landroid/widget/LinearLayout$LayoutParams;Lcom/onesignal/DraggableRelativeLayout$Params;)V
    .locals 7
    .param p1, "displayLocation"    # Lcom/onesignal/WebViewManager$Position;
    .param p2, "relativeLayoutParams"    # Landroid/widget/RelativeLayout$LayoutParams;
    .param p3, "linearLayoutParams"    # Landroid/widget/LinearLayout$LayoutParams;
    .param p4, "webViewLayoutParams"    # Lcom/onesignal/DraggableRelativeLayout$Params;

    .line 229
    new-instance v6, Lcom/onesignal/InAppMessageView$2;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/onesignal/InAppMessageView$2;-><init>(Lcom/onesignal/InAppMessageView;Landroid/widget/RelativeLayout$LayoutParams;Landroid/widget/LinearLayout$LayoutParams;Lcom/onesignal/DraggableRelativeLayout$Params;Lcom/onesignal/WebViewManager$Position;)V

    invoke-static {v6}, Lcom/onesignal/OSUtils;->runOnMainUIThread(Ljava/lang/Runnable;)V

    .line 250
    return-void
.end method

.method private startDismissTimerIfNeeded()V
    .locals 6

    .line 381
    iget-wide v0, p0, Lcom/onesignal/InAppMessageView;->dismissDuration:D

    const-wide/16 v2, 0x0

    cmpg-double v4, v0, v2

    if-gtz v4, :cond_0

    .line 382
    return-void

    .line 384
    :cond_0
    iget-object v0, p0, Lcom/onesignal/InAppMessageView;->scheduleDismissRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 385
    return-void

    .line 387
    :cond_1
    new-instance v0, Lcom/onesignal/InAppMessageView$4;

    invoke-direct {v0, p0}, Lcom/onesignal/InAppMessageView$4;-><init>(Lcom/onesignal/InAppMessageView;)V

    iput-object v0, p0, Lcom/onesignal/InAppMessageView;->scheduleDismissRunnable:Ljava/lang/Runnable;

    .line 398
    iget-object v1, p0, Lcom/onesignal/InAppMessageView;->handler:Landroid/os/Handler;

    iget-wide v2, p0, Lcom/onesignal/InAppMessageView;->dismissDuration:D

    double-to-long v2, v2

    const-wide/16 v4, 0x3e8

    mul-long v2, v2, v4

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 399
    return-void
.end method


# virtual methods
.method checkIfShouldDismiss()V
    .locals 1

    .line 108
    iget-boolean v0, p0, Lcom/onesignal/InAppMessageView;->shouldDismissWhenActive:Z

    if-eqz v0, :cond_0

    .line 109
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/onesignal/InAppMessageView;->shouldDismissWhenActive:Z

    .line 110
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/onesignal/InAppMessageView;->finishAfterDelay(Lcom/onesignal/WebViewManager$OneSignalGenericCallback;)V

    .line 112
    :cond_0
    return-void
.end method

.method dismissAndAwaitNextMessage(Lcom/onesignal/WebViewManager$OneSignalGenericCallback;)V
    .locals 3
    .param p1, "callback"    # Lcom/onesignal/WebViewManager$OneSignalGenericCallback;

    .line 419
    iget-object v0, p0, Lcom/onesignal/InAppMessageView;->draggableRelativeLayout:Lcom/onesignal/DraggableRelativeLayout;

    if-nez v0, :cond_1

    .line 420
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    const-string v2, "No host presenter to trigger dismiss animation, counting as dismissed already"

    invoke-static {v0, v2, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 421
    invoke-direct {p0}, Lcom/onesignal/InAppMessageView;->dereferenceViews()V

    .line 422
    if-eqz p1, :cond_0

    .line 423
    invoke-interface {p1}, Lcom/onesignal/WebViewManager$OneSignalGenericCallback;->onComplete()V

    .line 424
    :cond_0
    return-void

    .line 427
    :cond_1
    invoke-virtual {v0}, Lcom/onesignal/DraggableRelativeLayout;->dismiss()V

    .line 428
    invoke-direct {p0, p1}, Lcom/onesignal/InAppMessageView;->finishAfterDelay(Lcom/onesignal/WebViewManager$OneSignalGenericCallback;)V

    .line 429
    return-void
.end method

.method getDisplayPosition()Lcom/onesignal/WebViewManager$Position;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/onesignal/InAppMessageView;->displayLocation:Lcom/onesignal/WebViewManager$Position;

    return-object v0
.end method

.method isDragging()Z
    .locals 1

    .line 342
    iget-boolean v0, p0, Lcom/onesignal/InAppMessageView;->isDragging:Z

    return v0
.end method

.method removeAllViews()V
    .locals 2

    .line 463
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v1, "InAppMessageView removing views"

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->onesignalLog(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 464
    iget-object v0, p0, Lcom/onesignal/InAppMessageView;->scheduleDismissRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 466
    iget-object v1, p0, Lcom/onesignal/InAppMessageView;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 467
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/onesignal/InAppMessageView;->scheduleDismissRunnable:Ljava/lang/Runnable;

    .line 469
    :cond_0
    iget-object v0, p0, Lcom/onesignal/InAppMessageView;->draggableRelativeLayout:Lcom/onesignal/DraggableRelativeLayout;

    if-eqz v0, :cond_1

    .line 470
    invoke-virtual {v0}, Lcom/onesignal/DraggableRelativeLayout;->removeAllViews()V

    .line 472
    :cond_1
    iget-object v0, p0, Lcom/onesignal/InAppMessageView;->popupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_2

    .line 473
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 474
    :cond_2
    invoke-direct {p0}, Lcom/onesignal/InAppMessageView;->dereferenceViews()V

    .line 475
    return-void
.end method

.method setMessageController(Lcom/onesignal/InAppMessageView$InAppMessageViewListener;)V
    .locals 0
    .param p1, "messageController"    # Lcom/onesignal/InAppMessageView$InAppMessageViewListener;

    .line 96
    iput-object p1, p0, Lcom/onesignal/InAppMessageView;->messageController:Lcom/onesignal/InAppMessageView$InAppMessageViewListener;

    .line 97
    return-void
.end method

.method setWebView(Landroid/webkit/WebView;)V
    .locals 0
    .param p1, "webView"    # Landroid/webkit/WebView;

    .line 92
    iput-object p1, p0, Lcom/onesignal/InAppMessageView;->webView:Landroid/webkit/WebView;

    .line 93
    return-void
.end method

.method showInAppMessageView(Landroid/app/Activity;)V
    .locals 4
    .param p1, "currentActivity"    # Landroid/app/Activity;

    .line 151
    iput-object p1, p0, Lcom/onesignal/InAppMessageView;->currentActivity:Landroid/app/Activity;

    .line 153
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/onesignal/InAppMessageView;->pageHeight:I

    const/4 v2, -0x1

    invoke-direct {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 157
    .local v0, "webViewLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 159
    iget-boolean v1, p0, Lcom/onesignal/InAppMessageView;->hasBackground:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/onesignal/InAppMessageView;->createParentLinearLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 161
    .local v1, "linearLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    :goto_0
    iget-object v2, p0, Lcom/onesignal/InAppMessageView;->displayLocation:Lcom/onesignal/WebViewManager$Position;

    iget v3, p0, Lcom/onesignal/InAppMessageView;->pageHeight:I

    .line 165
    invoke-direct {p0, v3, v2}, Lcom/onesignal/InAppMessageView;->createDraggableLayoutParams(ILcom/onesignal/WebViewManager$Position;)Lcom/onesignal/DraggableRelativeLayout$Params;

    move-result-object v3

    .line 161
    invoke-direct {p0, v2, v0, v1, v3}, Lcom/onesignal/InAppMessageView;->showDraggableView(Lcom/onesignal/WebViewManager$Position;Landroid/widget/RelativeLayout$LayoutParams;Landroid/widget/LinearLayout$LayoutParams;Lcom/onesignal/DraggableRelativeLayout$Params;)V

    .line 167
    return-void
.end method

.method showView(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .line 104
    invoke-direct {p0, p1}, Lcom/onesignal/InAppMessageView;->delayShowUntilAvailable(Landroid/app/Activity;)V

    .line 105
    return-void
.end method

.method updateHeight(I)V
    .locals 1
    .param p1, "pageHeight"    # I

    .line 121
    iput p1, p0, Lcom/onesignal/InAppMessageView;->pageHeight:I

    .line 122
    new-instance v0, Lcom/onesignal/InAppMessageView$1;

    invoke-direct {v0, p0, p1}, Lcom/onesignal/InAppMessageView$1;-><init>(Lcom/onesignal/InAppMessageView;I)V

    invoke-static {v0}, Lcom/onesignal/OSUtils;->runOnMainUIThread(Ljava/lang/Runnable;)V

    .line 146
    return-void
.end method
