.class Lcom/balysv/materialripple/MaterialRippleLayout$4;
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
        "Ljava/lang/Float;",
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

    .line 502
    .local p2, "x0":Ljava/lang/Class;, "Ljava/lang/Class<Ljava/lang/Float;>;"
    iput-object p1, p0, Lcom/balysv/materialripple/MaterialRippleLayout$4;->this$0:Lcom/balysv/materialripple/MaterialRippleLayout;

    invoke-direct {p0, p2, p3}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lcom/balysv/materialripple/MaterialRippleLayout;)Ljava/lang/Float;
    .locals 1
    .param p1, "object"    # Lcom/balysv/materialripple/MaterialRippleLayout;

    .line 505
    invoke-static {p1}, Lcom/balysv/materialripple/MaterialRippleLayout;->access$900(Lcom/balysv/materialripple/MaterialRippleLayout;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 502
    check-cast p1, Lcom/balysv/materialripple/MaterialRippleLayout;

    invoke-virtual {p0, p1}, Lcom/balysv/materialripple/MaterialRippleLayout$4;->get(Lcom/balysv/materialripple/MaterialRippleLayout;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public set(Lcom/balysv/materialripple/MaterialRippleLayout;Ljava/lang/Float;)V
    .locals 1
    .param p1, "object"    # Lcom/balysv/materialripple/MaterialRippleLayout;
    .param p2, "value"    # Ljava/lang/Float;

    .line 510
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/balysv/materialripple/MaterialRippleLayout;->setRadius(F)V

    .line 511
    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 502
    check-cast p1, Lcom/balysv/materialripple/MaterialRippleLayout;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p0, p1, p2}, Lcom/balysv/materialripple/MaterialRippleLayout$4;->set(Lcom/balysv/materialripple/MaterialRippleLayout;Ljava/lang/Float;)V

    return-void
.end method
