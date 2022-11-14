.class Lcom/balysv/materialripple/MaterialRippleLayout$PerformClickEvent;
.super Ljava/lang/Object;
.source "MaterialRippleLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/balysv/materialripple/MaterialRippleLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PerformClickEvent"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/balysv/materialripple/MaterialRippleLayout;


# direct methods
.method private constructor <init>(Lcom/balysv/materialripple/MaterialRippleLayout;)V
    .locals 0

    .line 635
    iput-object p1, p0, Lcom/balysv/materialripple/MaterialRippleLayout$PerformClickEvent;->this$0:Lcom/balysv/materialripple/MaterialRippleLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/balysv/materialripple/MaterialRippleLayout;Lcom/balysv/materialripple/MaterialRippleLayout$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/balysv/materialripple/MaterialRippleLayout;
    .param p2, "x1"    # Lcom/balysv/materialripple/MaterialRippleLayout$1;

    .line 635
    invoke-direct {p0, p1}, Lcom/balysv/materialripple/MaterialRippleLayout$PerformClickEvent;-><init>(Lcom/balysv/materialripple/MaterialRippleLayout;)V

    return-void
.end method

.method private clickAdapterView(Landroid/widget/AdapterView;)V
    .locals 4
    .param p1, "parent"    # Landroid/widget/AdapterView;

    .line 653
    iget-object v0, p0, Lcom/balysv/materialripple/MaterialRippleLayout$PerformClickEvent;->this$0:Lcom/balysv/materialripple/MaterialRippleLayout;

    invoke-virtual {p1, v0}, Landroid/widget/AdapterView;->getPositionForView(Landroid/view/View;)I

    move-result v0

    .line 654
    .local v0, "position":I
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 655
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v1

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    .line 657
    .local v1, "itemId":J
    :goto_0
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    .line 658
    iget-object v3, p0, Lcom/balysv/materialripple/MaterialRippleLayout$PerformClickEvent;->this$0:Lcom/balysv/materialripple/MaterialRippleLayout;

    invoke-virtual {p1, v3, v0, v1, v2}, Landroid/widget/AdapterView;->performItemClick(Landroid/view/View;IJ)Z

    .line 660
    :cond_1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 638
    iget-object v0, p0, Lcom/balysv/materialripple/MaterialRippleLayout$PerformClickEvent;->this$0:Lcom/balysv/materialripple/MaterialRippleLayout;

    invoke-static {v0}, Lcom/balysv/materialripple/MaterialRippleLayout;->access$200(Lcom/balysv/materialripple/MaterialRippleLayout;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 641
    :cond_0
    iget-object v0, p0, Lcom/balysv/materialripple/MaterialRippleLayout$PerformClickEvent;->this$0:Lcom/balysv/materialripple/MaterialRippleLayout;

    invoke-virtual {v0}, Lcom/balysv/materialripple/MaterialRippleLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/AdapterView;

    if-eqz v0, :cond_1

    .line 642
    iget-object v0, p0, Lcom/balysv/materialripple/MaterialRippleLayout$PerformClickEvent;->this$0:Lcom/balysv/materialripple/MaterialRippleLayout;

    invoke-virtual {v0}, Lcom/balysv/materialripple/MaterialRippleLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView;

    invoke-direct {p0, v0}, Lcom/balysv/materialripple/MaterialRippleLayout$PerformClickEvent;->clickAdapterView(Landroid/widget/AdapterView;)V

    goto :goto_0

    .line 643
    :cond_1
    iget-object v0, p0, Lcom/balysv/materialripple/MaterialRippleLayout$PerformClickEvent;->this$0:Lcom/balysv/materialripple/MaterialRippleLayout;

    invoke-static {v0}, Lcom/balysv/materialripple/MaterialRippleLayout;->access$1000(Lcom/balysv/materialripple/MaterialRippleLayout;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 645
    iget-object v0, p0, Lcom/balysv/materialripple/MaterialRippleLayout$PerformClickEvent;->this$0:Lcom/balysv/materialripple/MaterialRippleLayout;

    invoke-static {v0}, Lcom/balysv/materialripple/MaterialRippleLayout;->access$1100(Lcom/balysv/materialripple/MaterialRippleLayout;)Landroid/widget/AdapterView;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/balysv/materialripple/MaterialRippleLayout$PerformClickEvent;->clickAdapterView(Landroid/widget/AdapterView;)V

    goto :goto_0

    .line 648
    :cond_2
    iget-object v0, p0, Lcom/balysv/materialripple/MaterialRippleLayout$PerformClickEvent;->this$0:Lcom/balysv/materialripple/MaterialRippleLayout;

    invoke-static {v0}, Lcom/balysv/materialripple/MaterialRippleLayout;->access$100(Lcom/balysv/materialripple/MaterialRippleLayout;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    .line 650
    :goto_0
    return-void
.end method
