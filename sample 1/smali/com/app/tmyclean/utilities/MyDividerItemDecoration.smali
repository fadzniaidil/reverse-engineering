.class public Lcom/app/tmyclean/utilities/MyDividerItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "MyDividerItemDecoration.java"


# static fields
.field private static final ATTRS:[I

.field public static final HORIZONTAL_LIST:I = 0x0

.field public static final VERTICAL_LIST:I = 0x1


# instance fields
.field private context:Landroid/content/Context;

.field private mDivider:Landroid/graphics/drawable/Drawable;

.field private mOrientation:I

.field private margin:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 17
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x1010214

    aput v2, v0, v1

    sput-object v0, Lcom/app/tmyclean/utilities/MyDividerItemDecoration;->ATTRS:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "orientation"    # I
    .param p3, "margin"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "orientation",
            "margin"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/app/tmyclean/utilities/MyDividerItemDecoration;->context:Landroid/content/Context;

    .line 32
    iput p3, p0, Lcom/app/tmyclean/utilities/MyDividerItemDecoration;->margin:I

    .line 33
    sget-object v0, Lcom/app/tmyclean/utilities/MyDividerItemDecoration;->ATTRS:[I

    invoke-virtual {p1, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 34
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/app/tmyclean/utilities/MyDividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 35
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 36
    invoke-virtual {p0, p2}, Lcom/app/tmyclean/utilities/MyDividerItemDecoration;->setOrientation(I)V

    .line 37
    return-void
.end method

.method private dpToPx(I)I
    .locals 4
    .param p1, "dp"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dp"
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lcom/app/tmyclean/utilities/MyDividerItemDecoration;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 98
    .local v0, "r":Landroid/content/res/Resources;
    int-to-float v1, p1

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    return v1
.end method


# virtual methods
.method public drawHorizontal(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 11
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "parent"    # Landroidx/recyclerview/widget/RecyclerView;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "c",
            "parent"
        }
    .end annotation

    .line 72
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingTop()I

    move-result v0

    .line 73
    .local v0, "top":I
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getHeight()I

    move-result v1

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    .line 75
    .local v1, "bottom":I
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildCount()I

    move-result v2

    .line 76
    .local v2, "childCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 77
    invoke-virtual {p2, v3}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 78
    .local v4, "child":Landroid/view/View;
    nop

    .line 79
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 80
    .local v5, "params":Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v6

    iget v7, v5, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->rightMargin:I

    add-int/2addr v6, v7

    .line 81
    .local v6, "left":I
    iget-object v7, p0, Lcom/app/tmyclean/utilities/MyDividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    add-int/2addr v7, v6

    .line 82
    .local v7, "right":I
    iget-object v8, p0, Lcom/app/tmyclean/utilities/MyDividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    iget v9, p0, Lcom/app/tmyclean/utilities/MyDividerItemDecoration;->margin:I

    invoke-direct {p0, v9}, Lcom/app/tmyclean/utilities/MyDividerItemDecoration;->dpToPx(I)I

    move-result v9

    add-int/2addr v9, v0

    iget v10, p0, Lcom/app/tmyclean/utilities/MyDividerItemDecoration;->margin:I

    invoke-direct {p0, v10}, Lcom/app/tmyclean/utilities/MyDividerItemDecoration;->dpToPx(I)I

    move-result v10

    sub-int v10, v1, v10

    invoke-virtual {v8, v6, v9, v7, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 83
    iget-object v8, p0, Lcom/app/tmyclean/utilities/MyDividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 76
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "params":Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    .end local v6    # "left":I
    .end local v7    # "right":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 85
    .end local v3    # "i":I
    :cond_0
    return-void
.end method

.method public drawVertical(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 10
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "parent"    # Landroidx/recyclerview/widget/RecyclerView;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "c",
            "parent"
        }
    .end annotation

    .line 56
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingLeft()I

    move-result v0

    .line 57
    .local v0, "left":I
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getWidth()I

    move-result v1

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 59
    .local v1, "right":I
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildCount()I

    move-result v2

    .line 60
    .local v2, "childCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 61
    invoke-virtual {p2, v3}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 62
    .local v4, "child":Landroid/view/View;
    nop

    .line 63
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 64
    .local v5, "params":Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v6

    iget v7, v5, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->bottomMargin:I

    add-int/2addr v6, v7

    .line 65
    .local v6, "top":I
    iget-object v7, p0, Lcom/app/tmyclean/utilities/MyDividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    add-int/2addr v7, v6

    .line 66
    .local v7, "bottom":I
    iget-object v8, p0, Lcom/app/tmyclean/utilities/MyDividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    iget v9, p0, Lcom/app/tmyclean/utilities/MyDividerItemDecoration;->margin:I

    invoke-direct {p0, v9}, Lcom/app/tmyclean/utilities/MyDividerItemDecoration;->dpToPx(I)I

    move-result v9

    add-int/2addr v9, v0

    invoke-virtual {v8, v9, v6, v1, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 67
    iget-object v8, p0, Lcom/app/tmyclean/utilities/MyDividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 60
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "params":Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    .end local v6    # "top":I
    .end local v7    # "bottom":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 69
    .end local v3    # "i":I
    :cond_0
    return-void
.end method

.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 3
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

    .line 89
    iget v0, p0, Lcom/app/tmyclean/utilities/MyDividerItemDecoration;->mOrientation:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 90
    iget-object v0, p0, Lcom/app/tmyclean/utilities/MyDividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    invoke-virtual {p1, v1, v1, v1, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/app/tmyclean/utilities/MyDividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p1, v1, v1, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 94
    :goto_0
    return-void
.end method

.method public onDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 2
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "parent"    # Landroidx/recyclerview/widget/RecyclerView;
    .param p3, "state"    # Landroidx/recyclerview/widget/RecyclerView$State;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "c",
            "parent",
            "state"
        }
    .end annotation

    .line 48
    iget v0, p0, Lcom/app/tmyclean/utilities/MyDividerItemDecoration;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 49
    invoke-virtual {p0, p1, p2}, Lcom/app/tmyclean/utilities/MyDividerItemDecoration;->drawVertical(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;)V

    goto :goto_0

    .line 51
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/app/tmyclean/utilities/MyDividerItemDecoration;->drawHorizontal(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;)V

    .line 53
    :goto_0
    return-void
.end method

.method public setOrientation(I)V
    .locals 2
    .param p1, "orientation"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "orientation"
        }
    .end annotation

    .line 40
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 41
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid orientation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :cond_1
    :goto_0
    iput p1, p0, Lcom/app/tmyclean/utilities/MyDividerItemDecoration;->mOrientation:I

    .line 44
    return-void
.end method
