.class Lcom/github/clans/fab/Label$2;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "Label.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/clans/fab/Label;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/github/clans/fab/Label;


# direct methods
.method constructor <init>(Lcom/github/clans/fab/Label;)V
    .locals 0
    .param p1, "this$0"    # Lcom/github/clans/fab/Label;

    .line 307
    iput-object p1, p0, Lcom/github/clans/fab/Label$2;->this$0:Lcom/github/clans/fab/Label;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 311
    iget-object v0, p0, Lcom/github/clans/fab/Label$2;->this$0:Lcom/github/clans/fab/Label;

    invoke-virtual {v0}, Lcom/github/clans/fab/Label;->onActionDown()V

    .line 312
    iget-object v0, p0, Lcom/github/clans/fab/Label$2;->this$0:Lcom/github/clans/fab/Label;

    invoke-static {v0}, Lcom/github/clans/fab/Label;->access$100(Lcom/github/clans/fab/Label;)Lcom/github/clans/fab/FloatingActionButton;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/github/clans/fab/Label$2;->this$0:Lcom/github/clans/fab/Label;

    invoke-static {v0}, Lcom/github/clans/fab/Label;->access$100(Lcom/github/clans/fab/Label;)Lcom/github/clans/fab/FloatingActionButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/clans/fab/FloatingActionButton;->onActionDown()V

    .line 315
    :cond_0
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDown(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 320
    iget-object v0, p0, Lcom/github/clans/fab/Label$2;->this$0:Lcom/github/clans/fab/Label;

    invoke-virtual {v0}, Lcom/github/clans/fab/Label;->onActionUp()V

    .line 321
    iget-object v0, p0, Lcom/github/clans/fab/Label$2;->this$0:Lcom/github/clans/fab/Label;

    invoke-static {v0}, Lcom/github/clans/fab/Label;->access$100(Lcom/github/clans/fab/Label;)Lcom/github/clans/fab/FloatingActionButton;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 322
    iget-object v0, p0, Lcom/github/clans/fab/Label$2;->this$0:Lcom/github/clans/fab/Label;

    invoke-static {v0}, Lcom/github/clans/fab/Label;->access$100(Lcom/github/clans/fab/Label;)Lcom/github/clans/fab/FloatingActionButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/clans/fab/FloatingActionButton;->onActionUp()V

    .line 324
    :cond_0
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
