.class Lcom/balysv/materialripple/MaterialRippleLayout$5;
.super Landroid/util/Property;
.source "MaterialRippleLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/balysv/materialripple/MaterialRippleLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property<",
        "Lcom/balysv/materialripple/MaterialRippleLayout;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/balysv/materialripple/MaterialRippleLayout;


# direct methods
.method constructor <init>(Lcom/balysv/materialripple/MaterialRippleLayout;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/balysv/materialripple/MaterialRippleLayout;
    .param p3, "x1"    # Ljava/lang/String;

    .line 525
    .local p2, "x0":Ljava/lang/Class;, "Ljava/lang/Class<Ljava/lang/Integer;>;"
    iput-object p1, p0, Lcom/balysv/materialripple/MaterialRippleLayout$5;->this$0:Lcom/balysv/materialripple/MaterialRippleLayout;

    invoke-direct {p0, p2, p3}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lcom/balysv/materialripple/MaterialRippleLayout;)Ljava/lang/Integer;
    .locals 1
    .param p1, "object"    # Lcom/balysv/materialripple/MaterialRippleLayout;

    .line 528
    invoke-virtual {p1}, Lcom/balysv/materialripple/MaterialRippleLayout;->getRippleAlpha()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 525
    check-cast p1, Lcom/balysv/materialripple/MaterialRippleLayout;

    invoke-virtual {p0, p1}, Lcom/balysv/materialripple/MaterialRippleLayout$5;->get(Lcom/balysv/materialripple/MaterialRippleLayout;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public set(Lcom/balysv/materialripple/MaterialRippleLayout;Ljava/lang/Integer;)V
    .locals 0
    .param p1, "object"    # Lcom/balysv/materialripple/MaterialRippleLayout;
    .param p2, "value"    # Ljava/lang/Integer;

    .line 533
    invoke-virtual {p1, p2}, Lcom/balysv/materialripple/MaterialRippleLayout;->setRippleAlpha(Ljava/lang/Integer;)V

    .line 534
    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 525
    check-cast p1, Lcom/balysv/materialripple/MaterialRippleLayout;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lcom/balysv/materialripple/MaterialRippleLayout$5;->set(Lcom/balysv/materialripple/MaterialRippleLayout;Ljava/lang/Integer;)V

    return-void
.end method
