.class public Lcom/app/tmyclean/utilities/ItemOffsetDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "ItemOffsetDecoration.java"


# instance fields
.field private mItemOffset:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "itemOffset"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "itemOffset"
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 16
    iput p1, p0, Lcom/app/tmyclean/utilities/ItemOffsetDecoration;->mItemOffset:I

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "itemOffsetId"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "itemOffsetId"
        }
    .end annotation

    .line 20
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/app/tmyclean/utilities/ItemOffsetDecoration;-><init>(I)V

    .line 21
    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 1
    .param p1, "outRect"    # Landroid/graphics/Rect;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "parent"    # Landroidx/recyclerview/widget/RecyclerView;
    .param p4, "state"    # Landroidx/recyclerview/widget/RecyclerView$State;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "outRect",
            "view",
            "parent",
            "state"
        }
    .end annotation

    .line 26
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 27
    iget v0, p0, Lcom/app/tmyclean/utilities/ItemOffsetDecoration;->mItemOffset:I

    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 28
    return-void
.end method
