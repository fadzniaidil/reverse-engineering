.class Lcom/balysv/materialripple/MaterialRippleLayout$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "MaterialRippleLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/balysv/materialripple/MaterialRippleLayout;->startRipple(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/balysv/materialripple/MaterialRippleLayout;

.field final synthetic val$animationEndRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/balysv/materialripple/MaterialRippleLayout;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/balysv/materialripple/MaterialRippleLayout;

    .line 329
    iput-object p1, p0, Lcom/balysv/materialripple/MaterialRippleLayout$3;->this$0:Lcom/balysv/materialripple/MaterialRippleLayout;

    iput-object p2, p0, Lcom/balysv/materialripple/MaterialRippleLayout$3;->val$animationEndRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 331
    iget-object v0, p0, Lcom/balysv/materialripple/MaterialRippleLayout$3;->this$0:Lcom/balysv/materialripple/MaterialRippleLayout;

    invoke-static {v0}, Lcom/balysv/materialripple/MaterialRippleLayout;->access$600(Lcom/balysv/materialripple/MaterialRippleLayout;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 332
    iget-object v0, p0, Lcom/balysv/materialripple/MaterialRippleLayout$3;->this$0:Lcom/balysv/materialripple/MaterialRippleLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/balysv/materialripple/MaterialRippleLayout;->setRadius(F)V

    .line 333
    iget-object v0, p0, Lcom/balysv/materialripple/MaterialRippleLayout$3;->this$0:Lcom/balysv/materialripple/MaterialRippleLayout;

    invoke-static {v0}, Lcom/balysv/materialripple/MaterialRippleLayout;->access$700(Lcom/balysv/materialripple/MaterialRippleLayout;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/balysv/materialripple/MaterialRippleLayout;->setRippleAlpha(Ljava/lang/Integer;)V

    .line 335
    :cond_0
    iget-object v0, p0, Lcom/balysv/materialripple/MaterialRippleLayout$3;->val$animationEndRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/balysv/materialripple/MaterialRippleLayout$3;->this$0:Lcom/balysv/materialripple/MaterialRippleLayout;

    invoke-static {v0}, Lcom/balysv/materialripple/MaterialRippleLayout;->access$800(Lcom/balysv/materialripple/MaterialRippleLayout;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 336
    iget-object v0, p0, Lcom/balysv/materialripple/MaterialRippleLayout$3;->val$animationEndRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 338
    :cond_1
    iget-object v0, p0, Lcom/balysv/materialripple/MaterialRippleLayout$3;->this$0:Lcom/balysv/materialripple/MaterialRippleLayout;

    invoke-static {v0}, Lcom/balysv/materialripple/MaterialRippleLayout;->access$100(Lcom/balysv/materialripple/MaterialRippleLayout;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 339
    return-void
.end method
