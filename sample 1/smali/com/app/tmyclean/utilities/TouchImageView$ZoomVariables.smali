.class Lcom/app/tmyclean/utilities/TouchImageView$ZoomVariables;
.super Ljava/lang/Object;
.source "TouchImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/app/tmyclean/utilities/TouchImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ZoomVariables"
.end annotation


# instance fields
.field public focusX:F

.field public focusY:F

.field public scale:F

.field public scaleType:Landroid/widget/ImageView$ScaleType;

.field final synthetic this$0:Lcom/app/tmyclean/utilities/TouchImageView;


# direct methods
.method public constructor <init>(Lcom/app/tmyclean/utilities/TouchImageView;FFFLandroid/widget/ImageView$ScaleType;)V
    .locals 0
    .param p2, "scale"    # F
    .param p3, "focusX"    # F
    .param p4, "focusY"    # F
    .param p5, "scaleType"    # Landroid/widget/ImageView$ScaleType;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "this$0",
            "scale",
            "focusX",
            "focusY",
            "scaleType"
        }
    .end annotation

    .line 1274
    iput-object p1, p0, Lcom/app/tmyclean/utilities/TouchImageView$ZoomVariables;->this$0:Lcom/app/tmyclean/utilities/TouchImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1275
    iput p2, p0, Lcom/app/tmyclean/utilities/TouchImageView$ZoomVariables;->scale:F

    .line 1276
    iput p3, p0, Lcom/app/tmyclean/utilities/TouchImageView$ZoomVariables;->focusX:F

    .line 1277
    iput p4, p0, Lcom/app/tmyclean/utilities/TouchImageView$ZoomVariables;->focusY:F

    .line 1278
    iput-object p5, p0, Lcom/app/tmyclean/utilities/TouchImageView$ZoomVariables;->scaleType:Landroid/widget/ImageView$ScaleType;

    .line 1279
    return-void
.end method
