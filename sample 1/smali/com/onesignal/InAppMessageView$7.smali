.class Lcom/onesignal/InAppMessageView$7;
.super Ljava/lang/Object;
.source "InAppMessageView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/InAppMessageView;->createAnimationListenerForAndroidApi23Elevation(Landroidx/cardview/widget/CardView;)Landroid/view/animation/Animation$AnimationListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/onesignal/InAppMessageView;

.field final synthetic val$messageViewCardView:Landroidx/cardview/widget/CardView;


# direct methods
.method constructor <init>(Lcom/onesignal/InAppMessageView;Landroidx/cardview/widget/CardView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/onesignal/InAppMessageView;

    .line 510
    iput-object p1, p0, Lcom/onesignal/InAppMessageView$7;->this$0:Lcom/onesignal/InAppMessageView;

    iput-object p2, p0, Lcom/onesignal/InAppMessageView$7;->val$messageViewCardView:Landroidx/cardview/widget/CardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 519
    iget-object v0, p0, Lcom/onesignal/InAppMessageView$7;->val$messageViewCardView:Landroidx/cardview/widget/CardView;

    const/4 v1, 0x5

    invoke-static {v1}, Lcom/onesignal/OSViewUtils;->dpToPx(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroidx/cardview/widget/CardView;->setCardElevation(F)V

    .line 520
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 525
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 514
    return-void
.end method
