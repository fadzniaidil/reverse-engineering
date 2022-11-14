.class Lcom/app/tmyclean/utilities/TouchImageView$PrivateOnTouchListener;
.super Ljava/lang/Object;
.source "TouchImageView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/app/tmyclean/utilities/TouchImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PrivateOnTouchListener"
.end annotation


# instance fields
.field private last:Landroid/graphics/PointF;

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

    .line 823
    iput-object p1, p0, Lcom/app/tmyclean/utilities/TouchImageView$PrivateOnTouchListener;->this$0:Lcom/app/tmyclean/utilities/TouchImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 828
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lcom/app/tmyclean/utilities/TouchImageView$PrivateOnTouchListener;->last:Landroid/graphics/PointF;

    return-void
.end method

.method synthetic constructor <init>(Lcom/app/tmyclean/utilities/TouchImageView;Lcom/app/tmyclean/utilities/TouchImageView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/app/tmyclean/utilities/TouchImageView;
    .param p2, "x1"    # Lcom/app/tmyclean/utilities/TouchImageView$1;

    .line 823
    invoke-direct {p0, p1}, Lcom/app/tmyclean/utilities/TouchImageView$PrivateOnTouchListener;-><init>(Lcom/app/tmyclean/utilities/TouchImageView;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "v",
            "event"
        }
    .end annotation

    .line 832
    iget-object v0, p0, Lcom/app/tmyclean/utilities/TouchImageView$PrivateOnTouchListener;->this$0:Lcom/app/tmyclean/utilities/TouchImageView;

    invoke-static {v0}, Lcom/app/tmyclean/utilities/TouchImageView;->access$1000(Lcom/app/tmyclean/utilities/TouchImageView;)Landroid/view/ScaleGestureDetector;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 833
    iget-object v0, p0, Lcom/app/tmyclean/utilities/TouchImageView$PrivateOnTouchListener;->this$0:Lcom/app/tmyclean/utilities/TouchImageView;

    invoke-static {v0}, Lcom/app/tmyclean/utilities/TouchImageView;->access$1100(Lcom/app/tmyclean/utilities/TouchImageView;)Landroid/view/GestureDetector;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 834
    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 836
    .local v0, "curr":Landroid/graphics/PointF;
    iget-object v1, p0, Lcom/app/tmyclean/utilities/TouchImageView$PrivateOnTouchListener;->this$0:Lcom/app/tmyclean/utilities/TouchImageView;

    invoke-static {v1}, Lcom/app/tmyclean/utilities/TouchImageView;->access$600(Lcom/app/tmyclean/utilities/TouchImageView;)Lcom/app/tmyclean/utilities/TouchImageView$State;

    move-result-object v1

    sget-object v2, Lcom/app/tmyclean/utilities/TouchImageView$State;->NONE:Lcom/app/tmyclean/utilities/TouchImageView$State;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/app/tmyclean/utilities/TouchImageView$PrivateOnTouchListener;->this$0:Lcom/app/tmyclean/utilities/TouchImageView;

    invoke-static {v1}, Lcom/app/tmyclean/utilities/TouchImageView;->access$600(Lcom/app/tmyclean/utilities/TouchImageView;)Lcom/app/tmyclean/utilities/TouchImageView$State;

    move-result-object v1

    sget-object v2, Lcom/app/tmyclean/utilities/TouchImageView$State;->DRAG:Lcom/app/tmyclean/utilities/TouchImageView$State;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/app/tmyclean/utilities/TouchImageView$PrivateOnTouchListener;->this$0:Lcom/app/tmyclean/utilities/TouchImageView;

    invoke-static {v1}, Lcom/app/tmyclean/utilities/TouchImageView;->access$600(Lcom/app/tmyclean/utilities/TouchImageView;)Lcom/app/tmyclean/utilities/TouchImageView$State;

    move-result-object v1

    sget-object v2, Lcom/app/tmyclean/utilities/TouchImageView$State;->FLING:Lcom/app/tmyclean/utilities/TouchImageView$State;

    if-ne v1, v2, :cond_2

    .line 837
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 846
    :pswitch_1
    iget-object v1, p0, Lcom/app/tmyclean/utilities/TouchImageView$PrivateOnTouchListener;->this$0:Lcom/app/tmyclean/utilities/TouchImageView;

    invoke-static {v1}, Lcom/app/tmyclean/utilities/TouchImageView;->access$600(Lcom/app/tmyclean/utilities/TouchImageView;)Lcom/app/tmyclean/utilities/TouchImageView$State;

    move-result-object v1

    sget-object v2, Lcom/app/tmyclean/utilities/TouchImageView$State;->DRAG:Lcom/app/tmyclean/utilities/TouchImageView$State;

    if-ne v1, v2, :cond_2

    .line 847
    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/app/tmyclean/utilities/TouchImageView$PrivateOnTouchListener;->last:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v2

    .line 848
    .local v1, "deltaX":F
    iget v2, v0, Landroid/graphics/PointF;->y:F

    iget-object v3, p0, Lcom/app/tmyclean/utilities/TouchImageView$PrivateOnTouchListener;->last:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v3

    .line 849
    .local v2, "deltaY":F
    iget-object v3, p0, Lcom/app/tmyclean/utilities/TouchImageView$PrivateOnTouchListener;->this$0:Lcom/app/tmyclean/utilities/TouchImageView;

    invoke-static {v3}, Lcom/app/tmyclean/utilities/TouchImageView;->access$1300(Lcom/app/tmyclean/utilities/TouchImageView;)I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/app/tmyclean/utilities/TouchImageView$PrivateOnTouchListener;->this$0:Lcom/app/tmyclean/utilities/TouchImageView;

    invoke-static {v5}, Lcom/app/tmyclean/utilities/TouchImageView;->access$1400(Lcom/app/tmyclean/utilities/TouchImageView;)F

    move-result v5

    invoke-static {v3, v1, v4, v5}, Lcom/app/tmyclean/utilities/TouchImageView;->access$1500(Lcom/app/tmyclean/utilities/TouchImageView;FFF)F

    move-result v3

    .line 850
    .local v3, "fixTransX":F
    iget-object v4, p0, Lcom/app/tmyclean/utilities/TouchImageView$PrivateOnTouchListener;->this$0:Lcom/app/tmyclean/utilities/TouchImageView;

    invoke-static {v4}, Lcom/app/tmyclean/utilities/TouchImageView;->access$1600(Lcom/app/tmyclean/utilities/TouchImageView;)I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/app/tmyclean/utilities/TouchImageView$PrivateOnTouchListener;->this$0:Lcom/app/tmyclean/utilities/TouchImageView;

    invoke-static {v6}, Lcom/app/tmyclean/utilities/TouchImageView;->access$1700(Lcom/app/tmyclean/utilities/TouchImageView;)F

    move-result v6

    invoke-static {v4, v2, v5, v6}, Lcom/app/tmyclean/utilities/TouchImageView;->access$1500(Lcom/app/tmyclean/utilities/TouchImageView;FFF)F

    move-result v4

    .line 851
    .local v4, "fixTransY":F
    iget-object v5, p0, Lcom/app/tmyclean/utilities/TouchImageView$PrivateOnTouchListener;->this$0:Lcom/app/tmyclean/utilities/TouchImageView;

    invoke-static {v5}, Lcom/app/tmyclean/utilities/TouchImageView;->access$1800(Lcom/app/tmyclean/utilities/TouchImageView;)Landroid/graphics/Matrix;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 852
    iget-object v5, p0, Lcom/app/tmyclean/utilities/TouchImageView$PrivateOnTouchListener;->this$0:Lcom/app/tmyclean/utilities/TouchImageView;

    invoke-static {v5}, Lcom/app/tmyclean/utilities/TouchImageView;->access$1900(Lcom/app/tmyclean/utilities/TouchImageView;)V

    .line 853
    iget-object v5, p0, Lcom/app/tmyclean/utilities/TouchImageView$PrivateOnTouchListener;->last:Landroid/graphics/PointF;

    iget v6, v0, Landroid/graphics/PointF;->x:F

    iget v7, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v5, v6, v7}, Landroid/graphics/PointF;->set(FF)V

    .line 854
    .end local v1    # "deltaX":F
    .end local v2    # "deltaY":F
    .end local v3    # "fixTransX":F
    .end local v4    # "fixTransY":F
    goto :goto_0

    .line 859
    :pswitch_2
    iget-object v1, p0, Lcom/app/tmyclean/utilities/TouchImageView$PrivateOnTouchListener;->this$0:Lcom/app/tmyclean/utilities/TouchImageView;

    sget-object v2, Lcom/app/tmyclean/utilities/TouchImageView$State;->NONE:Lcom/app/tmyclean/utilities/TouchImageView$State;

    invoke-static {v1, v2}, Lcom/app/tmyclean/utilities/TouchImageView;->access$1200(Lcom/app/tmyclean/utilities/TouchImageView;Lcom/app/tmyclean/utilities/TouchImageView$State;)V

    goto :goto_0

    .line 839
    :pswitch_3
    iget-object v1, p0, Lcom/app/tmyclean/utilities/TouchImageView$PrivateOnTouchListener;->last:Landroid/graphics/PointF;

    invoke-virtual {v1, v0}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 840
    iget-object v1, p0, Lcom/app/tmyclean/utilities/TouchImageView$PrivateOnTouchListener;->this$0:Lcom/app/tmyclean/utilities/TouchImageView;

    invoke-static {v1}, Lcom/app/tmyclean/utilities/TouchImageView;->access$400(Lcom/app/tmyclean/utilities/TouchImageView;)Lcom/app/tmyclean/utilities/TouchImageView$Fling;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 841
    iget-object v1, p0, Lcom/app/tmyclean/utilities/TouchImageView$PrivateOnTouchListener;->this$0:Lcom/app/tmyclean/utilities/TouchImageView;

    invoke-static {v1}, Lcom/app/tmyclean/utilities/TouchImageView;->access$400(Lcom/app/tmyclean/utilities/TouchImageView;)Lcom/app/tmyclean/utilities/TouchImageView$Fling;

    move-result-object v1

    invoke-virtual {v1}, Lcom/app/tmyclean/utilities/TouchImageView$Fling;->cancelFling()V

    .line 842
    :cond_1
    iget-object v1, p0, Lcom/app/tmyclean/utilities/TouchImageView$PrivateOnTouchListener;->this$0:Lcom/app/tmyclean/utilities/TouchImageView;

    sget-object v2, Lcom/app/tmyclean/utilities/TouchImageView$State;->DRAG:Lcom/app/tmyclean/utilities/TouchImageView$State;

    invoke-static {v1, v2}, Lcom/app/tmyclean/utilities/TouchImageView;->access$1200(Lcom/app/tmyclean/utilities/TouchImageView;Lcom/app/tmyclean/utilities/TouchImageView$State;)V

    .line 843
    nop

    .line 864
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/app/tmyclean/utilities/TouchImageView$PrivateOnTouchListener;->this$0:Lcom/app/tmyclean/utilities/TouchImageView;

    invoke-static {v1}, Lcom/app/tmyclean/utilities/TouchImageView;->access$1800(Lcom/app/tmyclean/utilities/TouchImageView;)Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/app/tmyclean/utilities/TouchImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 869
    iget-object v1, p0, Lcom/app/tmyclean/utilities/TouchImageView$PrivateOnTouchListener;->this$0:Lcom/app/tmyclean/utilities/TouchImageView;

    invoke-static {v1}, Lcom/app/tmyclean/utilities/TouchImageView;->access$2000(Lcom/app/tmyclean/utilities/TouchImageView;)Landroid/view/View$OnTouchListener;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 870
    iget-object v1, p0, Lcom/app/tmyclean/utilities/TouchImageView$PrivateOnTouchListener;->this$0:Lcom/app/tmyclean/utilities/TouchImageView;

    invoke-static {v1}, Lcom/app/tmyclean/utilities/TouchImageView;->access$2000(Lcom/app/tmyclean/utilities/TouchImageView;)Landroid/view/View$OnTouchListener;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 876
    :cond_3
    iget-object v1, p0, Lcom/app/tmyclean/utilities/TouchImageView$PrivateOnTouchListener;->this$0:Lcom/app/tmyclean/utilities/TouchImageView;

    invoke-static {v1}, Lcom/app/tmyclean/utilities/TouchImageView;->access$2100(Lcom/app/tmyclean/utilities/TouchImageView;)Lcom/app/tmyclean/utilities/TouchImageView$OnTouchImageViewListener;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 877
    iget-object v1, p0, Lcom/app/tmyclean/utilities/TouchImageView$PrivateOnTouchListener;->this$0:Lcom/app/tmyclean/utilities/TouchImageView;

    invoke-static {v1}, Lcom/app/tmyclean/utilities/TouchImageView;->access$2100(Lcom/app/tmyclean/utilities/TouchImageView;)Lcom/app/tmyclean/utilities/TouchImageView$OnTouchImageViewListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/app/tmyclean/utilities/TouchImageView$OnTouchImageViewListener;->onMove()V

    .line 883
    :cond_4
    const/4 v1, 0x1

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
