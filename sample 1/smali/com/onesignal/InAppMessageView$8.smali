.class Lcom/onesignal/InAppMessageView$8;
.super Landroid/animation/AnimatorListenerAdapter;
.source "InAppMessageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/InAppMessageView;->animateAndDismissLayout(Landroid/view/View;Lcom/onesignal/WebViewManager$OneSignalGenericCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/onesignal/InAppMessageView;

.field final synthetic val$callback:Lcom/onesignal/WebViewManager$OneSignalGenericCallback;


# direct methods
.method constructor <init>(Lcom/onesignal/InAppMessageView;Lcom/onesignal/WebViewManager$OneSignalGenericCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/onesignal/InAppMessageView;

    .line 574
    iput-object p1, p0, Lcom/onesignal/InAppMessageView$8;->this$0:Lcom/onesignal/InAppMessageView;

    iput-object p2, p0, Lcom/onesignal/InAppMessageView$8;->val$callback:Lcom/onesignal/WebViewManager$OneSignalGenericCallback;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 577
    iget-object v0, p0, Lcom/onesignal/InAppMessageView$8;->this$0:Lcom/onesignal/InAppMessageView;

    invoke-static {v0}, Lcom/onesignal/InAppMessageView;->access$1900(Lcom/onesignal/InAppMessageView;)V

    .line 578
    iget-object v0, p0, Lcom/onesignal/InAppMessageView$8;->val$callback:Lcom/onesignal/WebViewManager$OneSignalGenericCallback;

    if-eqz v0, :cond_0

    .line 579
    invoke-interface {v0}, Lcom/onesignal/WebViewManager$OneSignalGenericCallback;->onComplete()V

    .line 580
    :cond_0
    return-void
.end method
