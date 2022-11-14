.class Lcom/onesignal/DraggableRelativeLayout;
.super Landroid/widget/RelativeLayout;
.source "DraggableRelativeLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onesignal/DraggableRelativeLayout$Params;,
        Lcom/onesignal/DraggableRelativeLayout$DraggableListener;
    }
.end annotation


# static fields
.field private static final EXTRA_PX_DISMISS:I

.field private static final MARGIN_PX_SIZE:I


# instance fields
.field private dismissing:Z

.field private mDragHelper:Landroidx/customview/widget/ViewDragHelper;

.field private mListener:Lcom/onesignal/DraggableRelativeLayout$DraggableListener;

.field private params:Lcom/onesignal/DraggableRelativeLayout$Params;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    const/16 v0, 0x1c

    invoke-static {v0}, Lcom/onesignal/OSViewUtils;->dpToPx(I)I

    move-result v0

    sput v0, Lcom/onesignal/DraggableRelativeLayout;->MARGIN_PX_SIZE:I

    .line 17
    const/16 v0, 0x40

    invoke-static {v0}, Lcom/onesignal/OSViewUtils;->dpToPx(I)I

    move-result v0

    sput v0, Lcom/onesignal/DraggableRelativeLayout;->EXTRA_PX_DISMISS:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 52
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 54
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/onesignal/DraggableRelativeLayout;->setClipChildren(Z)V

    .line 55
    invoke-direct {p0}, Lcom/onesignal/DraggableRelativeLayout;->createDragHelper()V

    .line 56
    return-void
.end method

.method static synthetic access$300(Lcom/onesignal/DraggableRelativeLayout;)Lcom/onesignal/DraggableRelativeLayout$Params;
    .locals 1
    .param p0, "x0"    # Lcom/onesignal/DraggableRelativeLayout;

    .line 14
    iget-object v0, p0, Lcom/onesignal/DraggableRelativeLayout;->params:Lcom/onesignal/DraggableRelativeLayout$Params;

    return-object v0
.end method

.method static synthetic access$400(Lcom/onesignal/DraggableRelativeLayout;)Lcom/onesignal/DraggableRelativeLayout$DraggableListener;
    .locals 1
    .param p0, "x0"    # Lcom/onesignal/DraggableRelativeLayout;

    .line 14
    iget-object v0, p0, Lcom/onesignal/DraggableRelativeLayout;->mListener:Lcom/onesignal/DraggableRelativeLayout$DraggableListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/onesignal/DraggableRelativeLayout;)Z
    .locals 1
    .param p0, "x0"    # Lcom/onesignal/DraggableRelativeLayout;

    .line 14
    iget-boolean v0, p0, Lcom/onesignal/DraggableRelativeLayout;->dismissing:Z

    return v0
.end method

.method static synthetic access$502(Lcom/onesignal/DraggableRelativeLayout;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/onesignal/DraggableRelativeLayout;
    .param p1, "x1"    # Z

    .line 14
    iput-boolean p1, p0, Lcom/onesignal/DraggableRelativeLayout;->dismissing:Z

    return p1
.end method

.method static synthetic access$600(Lcom/onesignal/DraggableRelativeLayout;)Landroidx/customview/widget/ViewDragHelper;
    .locals 1
    .param p0, "x0"    # Lcom/onesignal/DraggableRelativeLayout;

    .line 14
    iget-object v0, p0, Lcom/onesignal/DraggableRelativeLayout;->mDragHelper:Landroidx/customview/widget/ViewDragHelper;

    return-object v0
.end method

.method private createDragHelper()V
    .locals 2

    .line 78
    new-instance v0, Lcom/onesignal/DraggableRelativeLayout$1;

    invoke-direct {v0, p0}, Lcom/onesignal/DraggableRelativeLayout$1;-><init>(Lcom/onesignal/DraggableRelativeLayout;)V

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p0, v1, v0}, Landroidx/customview/widget/ViewDragHelper;->create(Landroid/view/ViewGroup;FLandroidx/customview/widget/ViewDragHelper$Callback;)Landroidx/customview/widget/ViewDragHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/onesignal/DraggableRelativeLayout;->mDragHelper:Landroidx/customview/widget/ViewDragHelper;

    .line 144
    return-void
.end method


# virtual methods
.method public computeScroll()V
    .locals 2

    .line 179
    invoke-super {p0}, Landroid/widget/RelativeLayout;->computeScroll()V

    .line 181
    iget-object v0, p0, Lcom/onesignal/DraggableRelativeLayout;->mDragHelper:Landroidx/customview/widget/ViewDragHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/customview/widget/ViewDragHelper;->continueSettling(Z)Z

    move-result v0

    .line 183
    .local v0, "settling":Z
    if-eqz v0, :cond_0

    .line 184
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 185
    :cond_0
    return-void
.end method

.method public dismiss()V
    .locals 3

    .line 188
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/onesignal/DraggableRelativeLayout;->dismissing:Z

    .line 189
    iget-object v0, p0, Lcom/onesignal/DraggableRelativeLayout;->mDragHelper:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {p0}, Lcom/onesignal/DraggableRelativeLayout;->getLeft()I

    move-result v1

    iget-object v2, p0, Lcom/onesignal/DraggableRelativeLayout;->params:Lcom/onesignal/DraggableRelativeLayout$Params;

    invoke-static {v2}, Lcom/onesignal/DraggableRelativeLayout$Params;->access$000(Lcom/onesignal/DraggableRelativeLayout$Params;)I

    move-result v2

    invoke-virtual {v0, p0, v1, v2}, Landroidx/customview/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    .line 190
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 191
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 149
    iget-boolean v0, p0, Lcom/onesignal/DraggableRelativeLayout;->dismissing:Z

    if-eqz v0, :cond_0

    .line 150
    const/4 v0, 0x1

    return v0

    .line 153
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 166
    :sswitch_0
    iget-object v0, p0, Lcom/onesignal/DraggableRelativeLayout;->mListener:Lcom/onesignal/DraggableRelativeLayout$DraggableListener;

    if-eqz v0, :cond_1

    .line 167
    invoke-interface {v0}, Lcom/onesignal/DraggableRelativeLayout$DraggableListener;->onDragEnd()V

    .line 171
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/onesignal/DraggableRelativeLayout;->mDragHelper:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {v0, p1}, Landroidx/customview/widget/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V

    .line 174
    const/4 v0, 0x0

    return v0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5 -> :sswitch_0
    .end sparse-switch
.end method

.method setListener(Lcom/onesignal/DraggableRelativeLayout$DraggableListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/onesignal/DraggableRelativeLayout$DraggableListener;

    .line 59
    iput-object p1, p0, Lcom/onesignal/DraggableRelativeLayout;->mListener:Lcom/onesignal/DraggableRelativeLayout$DraggableListener;

    .line 60
    return-void
.end method

.method setParams(Lcom/onesignal/DraggableRelativeLayout$Params;)V
    .locals 3
    .param p1, "params"    # Lcom/onesignal/DraggableRelativeLayout$Params;

    .line 63
    iput-object p1, p0, Lcom/onesignal/DraggableRelativeLayout;->params:Lcom/onesignal/DraggableRelativeLayout$Params;

    .line 65
    iget v0, p1, Lcom/onesignal/DraggableRelativeLayout$Params;->messageHeight:I

    iget v1, p1, Lcom/onesignal/DraggableRelativeLayout$Params;->posY:I

    add-int/2addr v0, v1

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v2, p1, Lcom/onesignal/DraggableRelativeLayout$Params;->messageHeight:I

    sub-int/2addr v1, v2

    iget v2, p1, Lcom/onesignal/DraggableRelativeLayout$Params;->posY:I

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    sget v1, Lcom/onesignal/DraggableRelativeLayout;->EXTRA_PX_DISMISS:I

    add-int/2addr v0, v1

    invoke-static {p1, v0}, Lcom/onesignal/DraggableRelativeLayout$Params;->access$002(Lcom/onesignal/DraggableRelativeLayout$Params;I)I

    .line 66
    const/16 v0, 0xbb8

    invoke-static {v0}, Lcom/onesignal/OSViewUtils;->dpToPx(I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/onesignal/DraggableRelativeLayout$Params;->access$102(Lcom/onesignal/DraggableRelativeLayout$Params;I)I

    .line 68
    iget v0, p1, Lcom/onesignal/DraggableRelativeLayout$Params;->dragDirection:I

    if-nez v0, :cond_0

    .line 69
    iget v0, p1, Lcom/onesignal/DraggableRelativeLayout$Params;->messageHeight:I

    neg-int v0, v0

    sget v1, Lcom/onesignal/DraggableRelativeLayout;->MARGIN_PX_SIZE:I

    sub-int/2addr v0, v1

    invoke-static {p1, v0}, Lcom/onesignal/DraggableRelativeLayout$Params;->access$002(Lcom/onesignal/DraggableRelativeLayout$Params;I)I

    .line 70
    invoke-static {p1}, Lcom/onesignal/DraggableRelativeLayout$Params;->access$100(Lcom/onesignal/DraggableRelativeLayout$Params;)I

    move-result v0

    neg-int v0, v0

    invoke-static {p1, v0}, Lcom/onesignal/DraggableRelativeLayout$Params;->access$102(Lcom/onesignal/DraggableRelativeLayout$Params;I)I

    .line 71
    invoke-static {p1}, Lcom/onesignal/DraggableRelativeLayout$Params;->access$000(Lcom/onesignal/DraggableRelativeLayout$Params;)I

    move-result v0

    div-int/lit8 v0, v0, 0x3

    invoke-static {p1, v0}, Lcom/onesignal/DraggableRelativeLayout$Params;->access$202(Lcom/onesignal/DraggableRelativeLayout$Params;I)I

    goto :goto_0

    .line 74
    :cond_0
    iget v0, p1, Lcom/onesignal/DraggableRelativeLayout$Params;->messageHeight:I

    div-int/lit8 v0, v0, 0x3

    iget v1, p1, Lcom/onesignal/DraggableRelativeLayout$Params;->maxYPos:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    invoke-static {p1, v0}, Lcom/onesignal/DraggableRelativeLayout$Params;->access$202(Lcom/onesignal/DraggableRelativeLayout$Params;I)I

    .line 75
    :goto_0
    return-void
.end method
