.class Lcom/balysv/materialripple/MaterialRippleLayout$2;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "MaterialRippleLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/balysv/materialripple/MaterialRippleLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/balysv/materialripple/MaterialRippleLayout;


# direct methods
.method constructor <init>(Lcom/balysv/materialripple/MaterialRippleLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/balysv/materialripple/MaterialRippleLayout;

    .line 290
    iput-object p1, p0, Lcom/balysv/materialripple/MaterialRippleLayout$2;->this$0:Lcom/balysv/materialripple/MaterialRippleLayout;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 303
    iget-object v0, p0, Lcom/balysv/materialripple/MaterialRippleLayout$2;->this$0:Lcom/balysv/materialripple/MaterialRippleLayout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/balysv/materialripple/MaterialRippleLayout;->access$202(Lcom/balysv/materialripple/MaterialRippleLayout;Z)Z

    .line 304
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDown(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 292
    iget-object v0, p0, Lcom/balysv/materialripple/MaterialRippleLayout$2;->this$0:Lcom/balysv/materialripple/MaterialRippleLayout;

    invoke-static {v0}, Lcom/balysv/materialripple/MaterialRippleLayout;->access$100(Lcom/balysv/materialripple/MaterialRippleLayout;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->performLongClick()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/balysv/materialripple/MaterialRippleLayout;->access$202(Lcom/balysv/materialripple/MaterialRippleLayout;Z)Z

    .line 293
    iget-object v0, p0, Lcom/balysv/materialripple/MaterialRippleLayout$2;->this$0:Lcom/balysv/materialripple/MaterialRippleLayout;

    invoke-static {v0}, Lcom/balysv/materialripple/MaterialRippleLayout;->access$200(Lcom/balysv/materialripple/MaterialRippleLayout;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 294
    iget-object v0, p0, Lcom/balysv/materialripple/MaterialRippleLayout$2;->this$0:Lcom/balysv/materialripple/MaterialRippleLayout;

    invoke-static {v0}, Lcom/balysv/materialripple/MaterialRippleLayout;->access$300(Lcom/balysv/materialripple/MaterialRippleLayout;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/balysv/materialripple/MaterialRippleLayout$2;->this$0:Lcom/balysv/materialripple/MaterialRippleLayout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/balysv/materialripple/MaterialRippleLayout;->access$400(Lcom/balysv/materialripple/MaterialRippleLayout;Ljava/lang/Runnable;)V

    .line 297
    :cond_0
    iget-object v0, p0, Lcom/balysv/materialripple/MaterialRippleLayout$2;->this$0:Lcom/balysv/materialripple/MaterialRippleLayout;

    invoke-static {v0}, Lcom/balysv/materialripple/MaterialRippleLayout;->access$500(Lcom/balysv/materialripple/MaterialRippleLayout;)V

    .line 299
    :cond_1
    return-void
.end method
