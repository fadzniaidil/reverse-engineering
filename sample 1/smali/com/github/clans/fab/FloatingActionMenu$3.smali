.class Lcom/github/clans/fab/FloatingActionMenu$3;
.super Ljava/lang/Object;
.source "FloatingActionMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/clans/fab/FloatingActionMenu;->createLabels()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/github/clans/fab/FloatingActionMenu;


# direct methods
.method constructor <init>(Lcom/github/clans/fab/FloatingActionMenu;)V
    .locals 0
    .param p1, "this$0"    # Lcom/github/clans/fab/FloatingActionMenu;

    .line 466
    iput-object p1, p0, Lcom/github/clans/fab/FloatingActionMenu$3;->this$0:Lcom/github/clans/fab/FloatingActionMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 469
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu$3;->this$0:Lcom/github/clans/fab/FloatingActionMenu;

    invoke-static {v0}, Lcom/github/clans/fab/FloatingActionMenu;->access$000(Lcom/github/clans/fab/FloatingActionMenu;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/github/clans/fab/FloatingActionMenu;->toggle(Z)V

    .line 470
    return-void
.end method
