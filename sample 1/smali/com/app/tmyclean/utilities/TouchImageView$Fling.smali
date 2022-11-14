.class Lcom/app/tmyclean/utilities/TouchImageView$Fling;
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
    name = "Fling"
.end annotation


# instance fields
.field currX:I

.field currY:I

.field scroller:Lcom/app/tmyclean/utilities/TouchImageView$CompatScroller;

.field final synthetic this$0:Lcom/app/tmyclean/utilities/TouchImageView;


# direct methods
.method constructor <init>(Lcom/app/tmyclean/utilities/TouchImageView;II)V
    .locals 16
    .param p2, "velocityX"    # I
    .param p3, "velocityY"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            "this$0",
            "velocityX",
            "velocityY"
        }
    .end annotation

    .line 1122
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/app/tmyclean/utilities/TouchImageView$Fling;->this$0:Lcom/app/tmyclean/utilities/TouchImageView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1123
    sget-object v2, Lcom/app/tmyclean/utilities/TouchImageView$State;->FLING:Lcom/app/tmyclean/utilities/TouchImageView$State;

    invoke-static {v1, v2}, Lcom/app/tmyclean/utilities/TouchImageView;->access$1200(Lcom/app/tmyclean/utilities/TouchImageView;Lcom/app/tmyclean/utilities/TouchImageView$State;)V

    .line 1124
    new-instance v2, Lcom/app/tmyclean/utilities/TouchImageView$CompatScroller;

    invoke-static/range {p1 .. p1}, Lcom/app/tmyclean/utilities/TouchImageView;->access$2600(Lcom/app/tmyclean/utilities/TouchImageView;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lcom/app/tmyclean/utilities/TouchImageView$CompatScroller;-><init>(Lcom/app/tmyclean/utilities/TouchImageView;Landroid/content/Context;)V

    iput-object v2, v0, Lcom/app/tmyclean/utilities/TouchImageView$Fling;->scroller:Lcom/app/tmyclean/utilities/TouchImageView$CompatScroller;

    .line 1125
    invoke-static/range {p1 .. p1}, Lcom/app/tmyclean/utilities/TouchImageView;->access$1800(Lcom/app/tmyclean/utilities/TouchImageView;)Landroid/graphics/Matrix;

    move-result-object v2

    invoke-static/range {p1 .. p1}, Lcom/app/tmyclean/utilities/TouchImageView;->access$2700(Lcom/app/tmyclean/utilities/TouchImageView;)[F

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->getValues([F)V

    .line 1127
    invoke-static/range {p1 .. p1}, Lcom/app/tmyclean/utilities/TouchImageView;->access$2700(Lcom/app/tmyclean/utilities/TouchImageView;)[F

    move-result-object v2

    const/4 v3, 0x2

    aget v2, v2, v3

    float-to-int v2, v2

    .line 1128
    .local v2, "startX":I
    invoke-static/range {p1 .. p1}, Lcom/app/tmyclean/utilities/TouchImageView;->access$2700(Lcom/app/tmyclean/utilities/TouchImageView;)[F

    move-result-object v3

    const/4 v4, 0x5

    aget v3, v3, v4

    float-to-int v12, v3

    .line 1131
    .local v12, "startY":I
    invoke-static/range {p1 .. p1}, Lcom/app/tmyclean/utilities/TouchImageView;->access$1400(Lcom/app/tmyclean/utilities/TouchImageView;)F

    move-result v3

    invoke-static/range {p1 .. p1}, Lcom/app/tmyclean/utilities/TouchImageView;->access$1300(Lcom/app/tmyclean/utilities/TouchImageView;)I

    move-result v4

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    .line 1132
    invoke-static/range {p1 .. p1}, Lcom/app/tmyclean/utilities/TouchImageView;->access$1300(Lcom/app/tmyclean/utilities/TouchImageView;)I

    move-result v3

    invoke-static/range {p1 .. p1}, Lcom/app/tmyclean/utilities/TouchImageView;->access$1400(Lcom/app/tmyclean/utilities/TouchImageView;)F

    move-result v4

    float-to-int v4, v4

    sub-int/2addr v3, v4

    .line 1133
    .local v3, "minX":I
    const/4 v4, 0x0

    move v13, v3

    move v14, v4

    .local v4, "maxX":I
    goto :goto_0

    .line 1136
    .end local v3    # "minX":I
    .end local v4    # "maxX":I
    :cond_0
    move v4, v2

    .restart local v4    # "maxX":I
    move v3, v2

    move v13, v3

    move v14, v4

    .line 1139
    .end local v4    # "maxX":I
    .local v13, "minX":I
    .local v14, "maxX":I
    :goto_0
    invoke-static/range {p1 .. p1}, Lcom/app/tmyclean/utilities/TouchImageView;->access$1700(Lcom/app/tmyclean/utilities/TouchImageView;)F

    move-result v3

    invoke-static/range {p1 .. p1}, Lcom/app/tmyclean/utilities/TouchImageView;->access$1600(Lcom/app/tmyclean/utilities/TouchImageView;)I

    move-result v4

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    .line 1140
    invoke-static/range {p1 .. p1}, Lcom/app/tmyclean/utilities/TouchImageView;->access$1600(Lcom/app/tmyclean/utilities/TouchImageView;)I

    move-result v3

    invoke-static/range {p1 .. p1}, Lcom/app/tmyclean/utilities/TouchImageView;->access$1700(Lcom/app/tmyclean/utilities/TouchImageView;)F

    move-result v1

    float-to-int v1, v1

    sub-int/2addr v3, v1

    .line 1141
    .local v3, "minY":I
    const/4 v1, 0x0

    move v15, v3

    .local v1, "maxY":I
    goto :goto_1

    .line 1144
    .end local v1    # "maxY":I
    .end local v3    # "minY":I
    :cond_1
    move v1, v12

    .restart local v1    # "maxY":I
    move v3, v12

    move v15, v3

    .line 1147
    .local v15, "minY":I
    :goto_1
    iget-object v3, v0, Lcom/app/tmyclean/utilities/TouchImageView$Fling;->scroller:Lcom/app/tmyclean/utilities/TouchImageView$CompatScroller;

    move v4, v2

    move v5, v12

    move/from16 v6, p2

    move/from16 v7, p3

    move v8, v13

    move v9, v14

    move v10, v15

    move v11, v1

    invoke-virtual/range {v3 .. v11}, Lcom/app/tmyclean/utilities/TouchImageView$CompatScroller;->fling(IIIIIIII)V

    .line 1149
    iput v2, v0, Lcom/app/tmyclean/utilities/TouchImageView$Fling;->currX:I

    .line 1150
    iput v12, v0, Lcom/app/tmyclean/utilities/TouchImageView$Fling;->currY:I

    .line 1151
    return-void
.end method


# virtual methods
.method public cancelFling()V
    .locals 2

    .line 1154
    iget-object v0, p0, Lcom/app/tmyclean/utilities/TouchImageView$Fling;->scroller:Lcom/app/tmyclean/utilities/TouchImageView$CompatScroller;

    if-eqz v0, :cond_0

    .line 1155
    iget-object v0, p0, Lcom/app/tmyclean/utilities/TouchImageView$Fling;->this$0:Lcom/app/tmyclean/utilities/TouchImageView;

    sget-object v1, Lcom/app/tmyclean/utilities/TouchImageView$State;->NONE:Lcom/app/tmyclean/utilities/TouchImageView$State;

    invoke-static {v0, v1}, Lcom/app/tmyclean/utilities/TouchImageView;->access$1200(Lcom/app/tmyclean/utilities/TouchImageView;Lcom/app/tmyclean/utilities/TouchImageView$State;)V

    .line 1156
    iget-object v0, p0, Lcom/app/tmyclean/utilities/TouchImageView$Fling;->scroller:Lcom/app/tmyclean/utilities/TouchImageView$CompatScroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/app/tmyclean/utilities/TouchImageView$CompatScroller;->forceFinished(Z)V

    .line 1158
    :cond_0
    return-void
.end method

.method public run()V
    .locals 7

    .line 1167
    iget-object v0, p0, Lcom/app/tmyclean/utilities/TouchImageView$Fling;->this$0:Lcom/app/tmyclean/utilities/TouchImageView;

    invoke-static {v0}, Lcom/app/tmyclean/utilities/TouchImageView;->access$2100(Lcom/app/tmyclean/utilities/TouchImageView;)Lcom/app/tmyclean/utilities/TouchImageView$OnTouchImageViewListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1168
    iget-object v0, p0, Lcom/app/tmyclean/utilities/TouchImageView$Fling;->this$0:Lcom/app/tmyclean/utilities/TouchImageView;

    invoke-static {v0}, Lcom/app/tmyclean/utilities/TouchImageView;->access$2100(Lcom/app/tmyclean/utilities/TouchImageView;)Lcom/app/tmyclean/utilities/TouchImageView$OnTouchImageViewListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/app/tmyclean/utilities/TouchImageView$OnTouchImageViewListener;->onMove()V

    .line 1171
    :cond_0
    iget-object v0, p0, Lcom/app/tmyclean/utilities/TouchImageView$Fling;->scroller:Lcom/app/tmyclean/utilities/TouchImageView$CompatScroller;

    invoke-virtual {v0}, Lcom/app/tmyclean/utilities/TouchImageView$CompatScroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1172
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/app/tmyclean/utilities/TouchImageView$Fling;->scroller:Lcom/app/tmyclean/utilities/TouchImageView$CompatScroller;

    .line 1173
    return-void

    .line 1176
    :cond_1
    iget-object v0, p0, Lcom/app/tmyclean/utilities/TouchImageView$Fling;->scroller:Lcom/app/tmyclean/utilities/TouchImageView$CompatScroller;

    invoke-virtual {v0}, Lcom/app/tmyclean/utilities/TouchImageView$CompatScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1177
    iget-object v0, p0, Lcom/app/tmyclean/utilities/TouchImageView$Fling;->scroller:Lcom/app/tmyclean/utilities/TouchImageView$CompatScroller;

    invoke-virtual {v0}, Lcom/app/tmyclean/utilities/TouchImageView$CompatScroller;->getCurrX()I

    move-result v0

    .line 1178
    .local v0, "newX":I
    iget-object v1, p0, Lcom/app/tmyclean/utilities/TouchImageView$Fling;->scroller:Lcom/app/tmyclean/utilities/TouchImageView$CompatScroller;

    invoke-virtual {v1}, Lcom/app/tmyclean/utilities/TouchImageView$CompatScroller;->getCurrY()I

    move-result v1

    .line 1179
    .local v1, "newY":I
    iget v2, p0, Lcom/app/tmyclean/utilities/TouchImageView$Fling;->currX:I

    sub-int v2, v0, v2

    .line 1180
    .local v2, "transX":I
    iget v3, p0, Lcom/app/tmyclean/utilities/TouchImageView$Fling;->currY:I

    sub-int v3, v1, v3

    .line 1181
    .local v3, "transY":I
    iput v0, p0, Lcom/app/tmyclean/utilities/TouchImageView$Fling;->currX:I

    .line 1182
    iput v1, p0, Lcom/app/tmyclean/utilities/TouchImageView$Fling;->currY:I

    .line 1183
    iget-object v4, p0, Lcom/app/tmyclean/utilities/TouchImageView$Fling;->this$0:Lcom/app/tmyclean/utilities/TouchImageView;

    invoke-static {v4}, Lcom/app/tmyclean/utilities/TouchImageView;->access$1800(Lcom/app/tmyclean/utilities/TouchImageView;)Landroid/graphics/Matrix;

    move-result-object v4

    int-to-float v5, v2

    int-to-float v6, v3

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1184
    iget-object v4, p0, Lcom/app/tmyclean/utilities/TouchImageView$Fling;->this$0:Lcom/app/tmyclean/utilities/TouchImageView;

    invoke-static {v4}, Lcom/app/tmyclean/utilities/TouchImageView;->access$1900(Lcom/app/tmyclean/utilities/TouchImageView;)V

    .line 1185
    iget-object v4, p0, Lcom/app/tmyclean/utilities/TouchImageView$Fling;->this$0:Lcom/app/tmyclean/utilities/TouchImageView;

    invoke-static {v4}, Lcom/app/tmyclean/utilities/TouchImageView;->access$1800(Lcom/app/tmyclean/utilities/TouchImageView;)Landroid/graphics/Matrix;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/app/tmyclean/utilities/TouchImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 1186
    iget-object v4, p0, Lcom/app/tmyclean/utilities/TouchImageView$Fling;->this$0:Lcom/app/tmyclean/utilities/TouchImageView;

    invoke-static {v4, p0}, Lcom/app/tmyclean/utilities/TouchImageView;->access$500(Lcom/app/tmyclean/utilities/TouchImageView;Ljava/lang/Runnable;)V

    .line 1188
    .end local v0    # "newX":I
    .end local v1    # "newY":I
    .end local v2    # "transX":I
    .end local v3    # "transY":I
    :cond_2
    return-void
.end method
