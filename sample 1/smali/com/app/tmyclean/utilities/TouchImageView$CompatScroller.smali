.class Lcom/app/tmyclean/utilities/TouchImageView$CompatScroller;
.super Ljava/lang/Object;
.source "TouchImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/app/tmyclean/utilities/TouchImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CompatScroller"
.end annotation


# instance fields
.field isPreGingerbread:Z

.field overScroller:Landroid/widget/OverScroller;

.field scroller:Landroid/widget/Scroller;

.field final synthetic this$0:Lcom/app/tmyclean/utilities/TouchImageView;


# direct methods
.method public constructor <init>(Lcom/app/tmyclean/utilities/TouchImageView;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            "this$0",
            "context"
        }
    .end annotation

    .line 1197
    iput-object p1, p0, Lcom/app/tmyclean/utilities/TouchImageView$CompatScroller;->this$0:Lcom/app/tmyclean/utilities/TouchImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1198
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x9

    if-ge p1, v0, :cond_0

    .line 1199
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/app/tmyclean/utilities/TouchImageView$CompatScroller;->isPreGingerbread:Z

    .line 1200
    new-instance p1, Landroid/widget/Scroller;

    invoke-direct {p1, p2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/app/tmyclean/utilities/TouchImageView$CompatScroller;->scroller:Landroid/widget/Scroller;

    goto :goto_0

    .line 1203
    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/app/tmyclean/utilities/TouchImageView$CompatScroller;->isPreGingerbread:Z

    .line 1204
    new-instance p1, Landroid/widget/OverScroller;

    invoke-direct {p1, p2}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/app/tmyclean/utilities/TouchImageView$CompatScroller;->overScroller:Landroid/widget/OverScroller;

    .line 1206
    :goto_0
    return-void
.end method


# virtual methods
.method public computeScrollOffset()Z
    .locals 1

    .line 1233
    iget-boolean v0, p0, Lcom/app/tmyclean/utilities/TouchImageView$CompatScroller;->isPreGingerbread:Z

    if-eqz v0, :cond_0

    .line 1234
    iget-object v0, p0, Lcom/app/tmyclean/utilities/TouchImageView$CompatScroller;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    return v0

    .line 1236
    :cond_0
    iget-object v0, p0, Lcom/app/tmyclean/utilities/TouchImageView$CompatScroller;->overScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    .line 1237
    iget-object v0, p0, Lcom/app/tmyclean/utilities/TouchImageView$CompatScroller;->overScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    return v0
.end method

.method public fling(IIIIIIII)V
    .locals 12
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "velocityX"    # I
    .param p4, "velocityY"    # I
    .param p5, "minX"    # I
    .param p6, "maxX"    # I
    .param p7, "minY"    # I
    .param p8, "maxY"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "startX",
            "startY",
            "velocityX",
            "velocityY",
            "minX",
            "maxX",
            "minY",
            "maxY"
        }
    .end annotation

    .line 1209
    move-object v0, p0

    iget-boolean v1, v0, Lcom/app/tmyclean/utilities/TouchImageView$CompatScroller;->isPreGingerbread:Z

    if-eqz v1, :cond_0

    .line 1210
    iget-object v2, v0, Lcom/app/tmyclean/utilities/TouchImageView$CompatScroller;->scroller:Landroid/widget/Scroller;

    move v3, p1

    move v4, p2

    move v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    invoke-virtual/range {v2 .. v10}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    goto :goto_0

    .line 1212
    :cond_0
    iget-object v3, v0, Lcom/app/tmyclean/utilities/TouchImageView$CompatScroller;->overScroller:Landroid/widget/OverScroller;

    move v4, p1

    move v5, p2

    move v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    invoke-virtual/range {v3 .. v11}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    .line 1214
    :goto_0
    return-void
.end method

.method public forceFinished(Z)V
    .locals 1
    .param p1, "finished"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "finished"
        }
    .end annotation

    .line 1217
    iget-boolean v0, p0, Lcom/app/tmyclean/utilities/TouchImageView$CompatScroller;->isPreGingerbread:Z

    if-eqz v0, :cond_0

    .line 1218
    iget-object v0, p0, Lcom/app/tmyclean/utilities/TouchImageView$CompatScroller;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v0, p1}, Landroid/widget/Scroller;->forceFinished(Z)V

    goto :goto_0

    .line 1220
    :cond_0
    iget-object v0, p0, Lcom/app/tmyclean/utilities/TouchImageView$CompatScroller;->overScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0, p1}, Landroid/widget/OverScroller;->forceFinished(Z)V

    .line 1222
    :goto_0
    return-void
.end method

.method public getCurrX()I
    .locals 1

    .line 1242
    iget-boolean v0, p0, Lcom/app/tmyclean/utilities/TouchImageView$CompatScroller;->isPreGingerbread:Z

    if-eqz v0, :cond_0

    .line 1243
    iget-object v0, p0, Lcom/app/tmyclean/utilities/TouchImageView$CompatScroller;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    return v0

    .line 1245
    :cond_0
    iget-object v0, p0, Lcom/app/tmyclean/utilities/TouchImageView$CompatScroller;->overScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v0

    return v0
.end method

.method public getCurrY()I
    .locals 1

    .line 1250
    iget-boolean v0, p0, Lcom/app/tmyclean/utilities/TouchImageView$CompatScroller;->isPreGingerbread:Z

    if-eqz v0, :cond_0

    .line 1251
    iget-object v0, p0, Lcom/app/tmyclean/utilities/TouchImageView$CompatScroller;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    return v0

    .line 1253
    :cond_0
    iget-object v0, p0, Lcom/app/tmyclean/utilities/TouchImageView$CompatScroller;->overScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v0

    return v0
.end method

.method public isFinished()Z
    .locals 1

    .line 1225
    iget-boolean v0, p0, Lcom/app/tmyclean/utilities/TouchImageView$CompatScroller;->isPreGingerbread:Z

    if-eqz v0, :cond_0

    .line 1226
    iget-object v0, p0, Lcom/app/tmyclean/utilities/TouchImageView$CompatScroller;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    return v0

    .line 1228
    :cond_0
    iget-object v0, p0, Lcom/app/tmyclean/utilities/TouchImageView$CompatScroller;->overScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    return v0
.end method
