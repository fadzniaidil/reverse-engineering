.class Lcom/onesignal/DraggableRelativeLayout$1;
.super Landroidx/customview/widget/ViewDragHelper$Callback;
.source "DraggableRelativeLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/DraggableRelativeLayout;->createDragHelper()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private lastYPos:I

.field final synthetic this$0:Lcom/onesignal/DraggableRelativeLayout;


# direct methods
.method constructor <init>(Lcom/onesignal/DraggableRelativeLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/onesignal/DraggableRelativeLayout;

    .line 78
    iput-object p1, p0, Lcom/onesignal/DraggableRelativeLayout$1;->this$0:Lcom/onesignal/DraggableRelativeLayout;

    invoke-direct {p0}, Landroidx/customview/widget/ViewDragHelper$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public clampViewPositionHorizontal(Landroid/view/View;II)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "right"    # I
    .param p3, "dy"    # I

    .line 112
    iget-object v0, p0, Lcom/onesignal/DraggableRelativeLayout$1;->this$0:Lcom/onesignal/DraggableRelativeLayout;

    invoke-static {v0}, Lcom/onesignal/DraggableRelativeLayout;->access$300(Lcom/onesignal/DraggableRelativeLayout;)Lcom/onesignal/DraggableRelativeLayout$Params;

    move-result-object v0

    iget v0, v0, Lcom/onesignal/DraggableRelativeLayout$Params;->maxXPos:I

    return v0
.end method

.method public clampViewPositionVertical(Landroid/view/View;II)I
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "top"    # I
    .param p3, "dy"    # I

    .line 88
    iput p2, p0, Lcom/onesignal/DraggableRelativeLayout$1;->lastYPos:I

    .line 89
    iget-object v0, p0, Lcom/onesignal/DraggableRelativeLayout$1;->this$0:Lcom/onesignal/DraggableRelativeLayout;

    invoke-static {v0}, Lcom/onesignal/DraggableRelativeLayout;->access$300(Lcom/onesignal/DraggableRelativeLayout;)Lcom/onesignal/DraggableRelativeLayout$Params;

    move-result-object v0

    iget v0, v0, Lcom/onesignal/DraggableRelativeLayout$Params;->dragDirection:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 92
    iget-object v0, p0, Lcom/onesignal/DraggableRelativeLayout$1;->this$0:Lcom/onesignal/DraggableRelativeLayout;

    invoke-static {v0}, Lcom/onesignal/DraggableRelativeLayout;->access$300(Lcom/onesignal/DraggableRelativeLayout;)Lcom/onesignal/DraggableRelativeLayout$Params;

    move-result-object v0

    iget v0, v0, Lcom/onesignal/DraggableRelativeLayout$Params;->dragThresholdY:I

    if-lt p2, v0, :cond_0

    iget-object v0, p0, Lcom/onesignal/DraggableRelativeLayout$1;->this$0:Lcom/onesignal/DraggableRelativeLayout;

    invoke-static {v0}, Lcom/onesignal/DraggableRelativeLayout;->access$400(Lcom/onesignal/DraggableRelativeLayout;)Lcom/onesignal/DraggableRelativeLayout$DraggableListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/onesignal/DraggableRelativeLayout$1;->this$0:Lcom/onesignal/DraggableRelativeLayout;

    invoke-static {v0}, Lcom/onesignal/DraggableRelativeLayout;->access$400(Lcom/onesignal/DraggableRelativeLayout;)Lcom/onesignal/DraggableRelativeLayout$DraggableListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/onesignal/DraggableRelativeLayout$DraggableListener;->onDragStart()V

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/onesignal/DraggableRelativeLayout$1;->this$0:Lcom/onesignal/DraggableRelativeLayout;

    invoke-static {v0}, Lcom/onesignal/DraggableRelativeLayout;->access$300(Lcom/onesignal/DraggableRelativeLayout;)Lcom/onesignal/DraggableRelativeLayout$Params;

    move-result-object v0

    iget v0, v0, Lcom/onesignal/DraggableRelativeLayout$Params;->maxYPos:I

    if-ge p2, v0, :cond_3

    .line 96
    iget-object v0, p0, Lcom/onesignal/DraggableRelativeLayout$1;->this$0:Lcom/onesignal/DraggableRelativeLayout;

    invoke-static {v0}, Lcom/onesignal/DraggableRelativeLayout;->access$300(Lcom/onesignal/DraggableRelativeLayout;)Lcom/onesignal/DraggableRelativeLayout$Params;

    move-result-object v0

    iget v0, v0, Lcom/onesignal/DraggableRelativeLayout$Params;->maxYPos:I

    return v0

    .line 101
    :cond_1
    iget-object v0, p0, Lcom/onesignal/DraggableRelativeLayout$1;->this$0:Lcom/onesignal/DraggableRelativeLayout;

    invoke-static {v0}, Lcom/onesignal/DraggableRelativeLayout;->access$300(Lcom/onesignal/DraggableRelativeLayout;)Lcom/onesignal/DraggableRelativeLayout$Params;

    move-result-object v0

    iget v0, v0, Lcom/onesignal/DraggableRelativeLayout$Params;->dragThresholdY:I

    if-gt p2, v0, :cond_2

    iget-object v0, p0, Lcom/onesignal/DraggableRelativeLayout$1;->this$0:Lcom/onesignal/DraggableRelativeLayout;

    invoke-static {v0}, Lcom/onesignal/DraggableRelativeLayout;->access$400(Lcom/onesignal/DraggableRelativeLayout;)Lcom/onesignal/DraggableRelativeLayout$DraggableListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 102
    iget-object v0, p0, Lcom/onesignal/DraggableRelativeLayout$1;->this$0:Lcom/onesignal/DraggableRelativeLayout;

    invoke-static {v0}, Lcom/onesignal/DraggableRelativeLayout;->access$400(Lcom/onesignal/DraggableRelativeLayout;)Lcom/onesignal/DraggableRelativeLayout$DraggableListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/onesignal/DraggableRelativeLayout$DraggableListener;->onDragStart()V

    .line 104
    :cond_2
    iget-object v0, p0, Lcom/onesignal/DraggableRelativeLayout$1;->this$0:Lcom/onesignal/DraggableRelativeLayout;

    invoke-static {v0}, Lcom/onesignal/DraggableRelativeLayout;->access$300(Lcom/onesignal/DraggableRelativeLayout;)Lcom/onesignal/DraggableRelativeLayout$Params;

    move-result-object v0

    iget v0, v0, Lcom/onesignal/DraggableRelativeLayout$Params;->maxYPos:I

    if-le p2, v0, :cond_3

    .line 105
    iget-object v0, p0, Lcom/onesignal/DraggableRelativeLayout$1;->this$0:Lcom/onesignal/DraggableRelativeLayout;

    invoke-static {v0}, Lcom/onesignal/DraggableRelativeLayout;->access$300(Lcom/onesignal/DraggableRelativeLayout;)Lcom/onesignal/DraggableRelativeLayout$Params;

    move-result-object v0

    iget v0, v0, Lcom/onesignal/DraggableRelativeLayout$Params;->maxYPos:I

    return v0

    .line 107
    :cond_3
    return p2
.end method

.method public onViewReleased(Landroid/view/View;FF)V
    .locals 4
    .param p1, "releasedChild"    # Landroid/view/View;
    .param p2, "xvel"    # F
    .param p3, "yvel"    # F

    .line 118
    iget-object v0, p0, Lcom/onesignal/DraggableRelativeLayout$1;->this$0:Lcom/onesignal/DraggableRelativeLayout;

    invoke-static {v0}, Lcom/onesignal/DraggableRelativeLayout;->access$300(Lcom/onesignal/DraggableRelativeLayout;)Lcom/onesignal/DraggableRelativeLayout$Params;

    move-result-object v0

    iget v0, v0, Lcom/onesignal/DraggableRelativeLayout$Params;->maxYPos:I

    .line 119
    .local v0, "settleDestY":I
    iget-object v1, p0, Lcom/onesignal/DraggableRelativeLayout$1;->this$0:Lcom/onesignal/DraggableRelativeLayout;

    invoke-static {v1}, Lcom/onesignal/DraggableRelativeLayout;->access$500(Lcom/onesignal/DraggableRelativeLayout;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 120
    iget-object v1, p0, Lcom/onesignal/DraggableRelativeLayout$1;->this$0:Lcom/onesignal/DraggableRelativeLayout;

    invoke-static {v1}, Lcom/onesignal/DraggableRelativeLayout;->access$300(Lcom/onesignal/DraggableRelativeLayout;)Lcom/onesignal/DraggableRelativeLayout$Params;

    move-result-object v1

    iget v1, v1, Lcom/onesignal/DraggableRelativeLayout$Params;->dragDirection:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 121
    iget v1, p0, Lcom/onesignal/DraggableRelativeLayout$1;->lastYPos:I

    iget-object v3, p0, Lcom/onesignal/DraggableRelativeLayout$1;->this$0:Lcom/onesignal/DraggableRelativeLayout;

    invoke-static {v3}, Lcom/onesignal/DraggableRelativeLayout;->access$300(Lcom/onesignal/DraggableRelativeLayout;)Lcom/onesignal/DraggableRelativeLayout$Params;

    move-result-object v3

    invoke-static {v3}, Lcom/onesignal/DraggableRelativeLayout$Params;->access$200(Lcom/onesignal/DraggableRelativeLayout$Params;)I

    move-result v3

    if-gt v1, v3, :cond_0

    iget-object v1, p0, Lcom/onesignal/DraggableRelativeLayout$1;->this$0:Lcom/onesignal/DraggableRelativeLayout;

    invoke-static {v1}, Lcom/onesignal/DraggableRelativeLayout;->access$300(Lcom/onesignal/DraggableRelativeLayout;)Lcom/onesignal/DraggableRelativeLayout$Params;

    move-result-object v1

    invoke-static {v1}, Lcom/onesignal/DraggableRelativeLayout$Params;->access$100(Lcom/onesignal/DraggableRelativeLayout$Params;)I

    move-result v1

    int-to-float v1, v1

    cmpl-float v1, p3, v1

    if-lez v1, :cond_3

    .line 122
    :cond_0
    iget-object v1, p0, Lcom/onesignal/DraggableRelativeLayout$1;->this$0:Lcom/onesignal/DraggableRelativeLayout;

    invoke-static {v1}, Lcom/onesignal/DraggableRelativeLayout;->access$300(Lcom/onesignal/DraggableRelativeLayout;)Lcom/onesignal/DraggableRelativeLayout$Params;

    move-result-object v1

    invoke-static {v1}, Lcom/onesignal/DraggableRelativeLayout$Params;->access$000(Lcom/onesignal/DraggableRelativeLayout$Params;)I

    move-result v0

    .line 123
    iget-object v1, p0, Lcom/onesignal/DraggableRelativeLayout$1;->this$0:Lcom/onesignal/DraggableRelativeLayout;

    invoke-static {v1, v2}, Lcom/onesignal/DraggableRelativeLayout;->access$502(Lcom/onesignal/DraggableRelativeLayout;Z)Z

    .line 125
    iget-object v1, p0, Lcom/onesignal/DraggableRelativeLayout$1;->this$0:Lcom/onesignal/DraggableRelativeLayout;

    invoke-static {v1}, Lcom/onesignal/DraggableRelativeLayout;->access$400(Lcom/onesignal/DraggableRelativeLayout;)Lcom/onesignal/DraggableRelativeLayout$DraggableListener;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 126
    iget-object v1, p0, Lcom/onesignal/DraggableRelativeLayout$1;->this$0:Lcom/onesignal/DraggableRelativeLayout;

    invoke-static {v1}, Lcom/onesignal/DraggableRelativeLayout;->access$400(Lcom/onesignal/DraggableRelativeLayout;)Lcom/onesignal/DraggableRelativeLayout$DraggableListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/onesignal/DraggableRelativeLayout$DraggableListener;->onDismiss()V

    goto :goto_0

    .line 130
    :cond_1
    iget v1, p0, Lcom/onesignal/DraggableRelativeLayout$1;->lastYPos:I

    iget-object v3, p0, Lcom/onesignal/DraggableRelativeLayout$1;->this$0:Lcom/onesignal/DraggableRelativeLayout;

    invoke-static {v3}, Lcom/onesignal/DraggableRelativeLayout;->access$300(Lcom/onesignal/DraggableRelativeLayout;)Lcom/onesignal/DraggableRelativeLayout$Params;

    move-result-object v3

    invoke-static {v3}, Lcom/onesignal/DraggableRelativeLayout$Params;->access$200(Lcom/onesignal/DraggableRelativeLayout$Params;)I

    move-result v3

    if-lt v1, v3, :cond_2

    iget-object v1, p0, Lcom/onesignal/DraggableRelativeLayout$1;->this$0:Lcom/onesignal/DraggableRelativeLayout;

    invoke-static {v1}, Lcom/onesignal/DraggableRelativeLayout;->access$300(Lcom/onesignal/DraggableRelativeLayout;)Lcom/onesignal/DraggableRelativeLayout$Params;

    move-result-object v1

    invoke-static {v1}, Lcom/onesignal/DraggableRelativeLayout$Params;->access$100(Lcom/onesignal/DraggableRelativeLayout$Params;)I

    move-result v1

    int-to-float v1, v1

    cmpg-float v1, p3, v1

    if-gez v1, :cond_3

    .line 131
    :cond_2
    iget-object v1, p0, Lcom/onesignal/DraggableRelativeLayout$1;->this$0:Lcom/onesignal/DraggableRelativeLayout;

    invoke-static {v1}, Lcom/onesignal/DraggableRelativeLayout;->access$300(Lcom/onesignal/DraggableRelativeLayout;)Lcom/onesignal/DraggableRelativeLayout$Params;

    move-result-object v1

    invoke-static {v1}, Lcom/onesignal/DraggableRelativeLayout$Params;->access$000(Lcom/onesignal/DraggableRelativeLayout$Params;)I

    move-result v0

    .line 132
    iget-object v1, p0, Lcom/onesignal/DraggableRelativeLayout$1;->this$0:Lcom/onesignal/DraggableRelativeLayout;

    invoke-static {v1, v2}, Lcom/onesignal/DraggableRelativeLayout;->access$502(Lcom/onesignal/DraggableRelativeLayout;Z)Z

    .line 134
    iget-object v1, p0, Lcom/onesignal/DraggableRelativeLayout$1;->this$0:Lcom/onesignal/DraggableRelativeLayout;

    invoke-static {v1}, Lcom/onesignal/DraggableRelativeLayout;->access$400(Lcom/onesignal/DraggableRelativeLayout;)Lcom/onesignal/DraggableRelativeLayout$DraggableListener;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 135
    iget-object v1, p0, Lcom/onesignal/DraggableRelativeLayout$1;->this$0:Lcom/onesignal/DraggableRelativeLayout;

    invoke-static {v1}, Lcom/onesignal/DraggableRelativeLayout;->access$400(Lcom/onesignal/DraggableRelativeLayout;)Lcom/onesignal/DraggableRelativeLayout$DraggableListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/onesignal/DraggableRelativeLayout$DraggableListener;->onDismiss()V

    .line 140
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/onesignal/DraggableRelativeLayout$1;->this$0:Lcom/onesignal/DraggableRelativeLayout;

    invoke-static {v1}, Lcom/onesignal/DraggableRelativeLayout;->access$600(Lcom/onesignal/DraggableRelativeLayout;)Landroidx/customview/widget/ViewDragHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/onesignal/DraggableRelativeLayout$1;->this$0:Lcom/onesignal/DraggableRelativeLayout;

    invoke-static {v2}, Lcom/onesignal/DraggableRelativeLayout;->access$300(Lcom/onesignal/DraggableRelativeLayout;)Lcom/onesignal/DraggableRelativeLayout$Params;

    move-result-object v2

    iget v2, v2, Lcom/onesignal/DraggableRelativeLayout$Params;->maxXPos:I

    invoke-virtual {v1, v2, v0}, Landroidx/customview/widget/ViewDragHelper;->settleCapturedViewAt(II)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 141
    iget-object v1, p0, Lcom/onesignal/DraggableRelativeLayout$1;->this$0:Lcom/onesignal/DraggableRelativeLayout;

    invoke-static {v1}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 142
    :cond_4
    return-void
.end method

.method public tryCaptureView(Landroid/view/View;I)Z
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "pointerId"    # I

    .line 83
    const/4 v0, 0x1

    return v0
.end method
