.class final Lcom/balysv/materialripple/MaterialRippleLayout$PressedEvent;
.super Ljava/lang/Object;
.source "MaterialRippleLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/balysv/materialripple/MaterialRippleLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PressedEvent"
.end annotation


# instance fields
.field private final event:Landroid/view/MotionEvent;

.field final synthetic this$0:Lcom/balysv/materialripple/MaterialRippleLayout;


# direct methods
.method public constructor <init>(Lcom/balysv/materialripple/MaterialRippleLayout;Landroid/view/MotionEvent;)V
    .locals 0
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 667
    iput-object p1, p0, Lcom/balysv/materialripple/MaterialRippleLayout$PressedEvent;->this$0:Lcom/balysv/materialripple/MaterialRippleLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 668
    iput-object p2, p0, Lcom/balysv/materialripple/MaterialRippleLayout$PressedEvent;->event:Landroid/view/MotionEvent;

    .line 669
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 673
    iget-object v0, p0, Lcom/balysv/materialripple/MaterialRippleLayout$PressedEvent;->this$0:Lcom/balysv/materialripple/MaterialRippleLayout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/balysv/materialripple/MaterialRippleLayout;->access$1202(Lcom/balysv/materialripple/MaterialRippleLayout;Z)Z

    .line 674
    iget-object v0, p0, Lcom/balysv/materialripple/MaterialRippleLayout$PressedEvent;->this$0:Lcom/balysv/materialripple/MaterialRippleLayout;

    invoke-static {v0}, Lcom/balysv/materialripple/MaterialRippleLayout;->access$100(Lcom/balysv/materialripple/MaterialRippleLayout;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setLongClickable(Z)V

    .line 675
    iget-object v0, p0, Lcom/balysv/materialripple/MaterialRippleLayout$PressedEvent;->this$0:Lcom/balysv/materialripple/MaterialRippleLayout;

    invoke-static {v0}, Lcom/balysv/materialripple/MaterialRippleLayout;->access$100(Lcom/balysv/materialripple/MaterialRippleLayout;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/balysv/materialripple/MaterialRippleLayout$PressedEvent;->event:Landroid/view/MotionEvent;

    invoke-virtual {v0, v1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 676
    iget-object v0, p0, Lcom/balysv/materialripple/MaterialRippleLayout$PressedEvent;->this$0:Lcom/balysv/materialripple/MaterialRippleLayout;

    invoke-static {v0}, Lcom/balysv/materialripple/MaterialRippleLayout;->access$100(Lcom/balysv/materialripple/MaterialRippleLayout;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 677
    iget-object v0, p0, Lcom/balysv/materialripple/MaterialRippleLayout$PressedEvent;->this$0:Lcom/balysv/materialripple/MaterialRippleLayout;

    invoke-static {v0}, Lcom/balysv/materialripple/MaterialRippleLayout;->access$300(Lcom/balysv/materialripple/MaterialRippleLayout;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 678
    iget-object v0, p0, Lcom/balysv/materialripple/MaterialRippleLayout$PressedEvent;->this$0:Lcom/balysv/materialripple/MaterialRippleLayout;

    invoke-static {v0}, Lcom/balysv/materialripple/MaterialRippleLayout;->access$1300(Lcom/balysv/materialripple/MaterialRippleLayout;)V

    .line 680
    :cond_0
    return-void
.end method
