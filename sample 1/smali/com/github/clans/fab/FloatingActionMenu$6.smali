.class Lcom/github/clans/fab/FloatingActionMenu$6;
.super Ljava/lang/Object;
.source "FloatingActionMenu.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/clans/fab/FloatingActionMenu;->close(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/github/clans/fab/FloatingActionMenu;

.field final synthetic val$animate:Z

.field final synthetic val$fab:Lcom/github/clans/fab/FloatingActionButton;


# direct methods
.method constructor <init>(Lcom/github/clans/fab/FloatingActionMenu;Lcom/github/clans/fab/FloatingActionButton;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/github/clans/fab/FloatingActionMenu;

    .line 705
    iput-object p1, p0, Lcom/github/clans/fab/FloatingActionMenu$6;->this$0:Lcom/github/clans/fab/FloatingActionMenu;

    iput-object p2, p0, Lcom/github/clans/fab/FloatingActionMenu$6;->val$fab:Lcom/github/clans/fab/FloatingActionButton;

    iput-boolean p3, p0, Lcom/github/clans/fab/FloatingActionMenu$6;->val$animate:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 708
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu$6;->this$0:Lcom/github/clans/fab/FloatingActionMenu;

    invoke-virtual {v0}, Lcom/github/clans/fab/FloatingActionMenu;->isOpened()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 710
    :cond_0
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu$6;->val$fab:Lcom/github/clans/fab/FloatingActionButton;

    iget-object v1, p0, Lcom/github/clans/fab/FloatingActionMenu$6;->this$0:Lcom/github/clans/fab/FloatingActionMenu;

    invoke-static {v1}, Lcom/github/clans/fab/FloatingActionMenu;->access$100(Lcom/github/clans/fab/FloatingActionMenu;)Lcom/github/clans/fab/FloatingActionButton;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 711
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu$6;->val$fab:Lcom/github/clans/fab/FloatingActionButton;

    iget-boolean v1, p0, Lcom/github/clans/fab/FloatingActionMenu$6;->val$animate:Z

    invoke-virtual {v0, v1}, Lcom/github/clans/fab/FloatingActionButton;->hide(Z)V

    .line 714
    :cond_1
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu$6;->val$fab:Lcom/github/clans/fab/FloatingActionButton;

    sget v1, Lcom/github/clans/fab/R$id;->fab_label:I

    invoke-virtual {v0, v1}, Lcom/github/clans/fab/FloatingActionButton;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/clans/fab/Label;

    .line 715
    .local v0, "label":Lcom/github/clans/fab/Label;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/github/clans/fab/Label;->isHandleVisibilityChanges()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 716
    iget-boolean v1, p0, Lcom/github/clans/fab/FloatingActionMenu$6;->val$animate:Z

    invoke-virtual {v0, v1}, Lcom/github/clans/fab/Label;->hide(Z)V

    .line 718
    :cond_2
    return-void
.end method
