.class public Lcom/app/tmyclean/utilities/RoundedImageView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "RoundedImageView.java"


# static fields
.field public static final DEFAULT_BORDER_WIDTH:I = 0x0

.field public static final DEFAULT_RADIUS:I = 0x0

.field private static final SCALE_TYPES:[Landroid/widget/ImageView$ScaleType;

.field public static final TAG:Ljava/lang/String; = "RoundedImageView"


# instance fields
.field private mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mBorderColor:Landroid/content/res/ColorStateList;

.field private mBorderWidth:I

.field private mCornerRadius:I

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mOval:Z

.field private mResource:I

.field private mRoundBackground:Z

.field private mScaleType:Landroid/widget/ImageView$ScaleType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 23
    const/16 v0, 0x8

    new-array v0, v0, [Landroid/widget/ImageView$ScaleType;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_END:Landroid/widget/ImageView$ScaleType;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sput-object v0, Lcom/app/tmyclean/utilities/RoundedImageView;->SCALE_TYPES:[Landroid/widget/ImageView$ScaleType;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 48
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/app/tmyclean/utilities/RoundedImageView;->mCornerRadius:I

    .line 35
    iput v0, p0, Lcom/app/tmyclean/utilities/RoundedImageView;->mBorderWidth:I

    .line 36
    nop

    .line 37
    const/high16 v1, -0x1000000

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/app/tmyclean/utilities/RoundedImageView;->mBorderColor:Landroid/content/res/ColorStateList;

    .line 38
    iput-boolean v0, p0, Lcom/app/tmyclean/utilities/RoundedImageView;->mOval:Z

    .line 39
    iput-boolean v0, p0, Lcom/app/tmyclean/utilities/RoundedImageView;->mRoundBackground:Z

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/app/tmyclean/utilities/RoundedImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs",
            "defStyle"
        }
    .end annotation

    .line 56
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/app/tmyclean/utilities/RoundedImageView;->mCornerRadius:I

    .line 35
    iput v0, p0, Lcom/app/tmyclean/utilities/RoundedImageView;->mBorderWidth:I

    .line 36
    nop

    .line 37
    const/high16 v1, -0x1000000

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Lcom/app/tmyclean/utilities/RoundedImageView;->mBorderColor:Landroid/content/res/ColorStateList;

    .line 38
    iput-boolean v0, p0, Lcom/app/tmyclean/utilities/RoundedImageView;->mOval:Z

    .line 39
    iput-boolean v0, p0, Lcom/app/tmyclean/utilities/RoundedImageView;->mRoundBackground:Z

    .line 58
    sget-object v2, Lcom/app/tmyclean/R$styleable;->RoundedImageView:[I

    invoke-virtual {p1, p2, v2, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 60
    .local v2, "a":Landroid/content/res/TypedArray;
    const/4 v3, -0x1

    invoke-virtual {v2, v0, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 61
    .local v4, "index":I
    if-ltz v4, :cond_0

    .line 62
    sget-object v5, Lcom/app/tmyclean/utilities/RoundedImageView;->SCALE_TYPES:[Landroid/widget/ImageView$ScaleType;

    aget-object v5, v5, v4

    invoke-virtual {p0, v5}, Lcom/app/tmyclean/utilities/RoundedImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0

    .line 65
    :cond_0
    sget-object v5, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v5}, Lcom/app/tmyclean/utilities/RoundedImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 68
    :goto_0
    const/4 v5, 0x3

    invoke-virtual {v2, v5, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/app/tmyclean/utilities/RoundedImageView;->mCornerRadius:I

    .line 69
    const/4 v5, 0x2

    invoke-virtual {v2, v5, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/app/tmyclean/utilities/RoundedImageView;->mBorderWidth:I

    .line 72
    iget v5, p0, Lcom/app/tmyclean/utilities/RoundedImageView;->mCornerRadius:I

    if-gez v5, :cond_1

    .line 73
    iput v0, p0, Lcom/app/tmyclean/utilities/RoundedImageView;->mCornerRadius:I

    .line 75
    :cond_1
    if-gez v3, :cond_2

    .line 76
    iput v0, p0, Lcom/app/tmyclean/utilities/RoundedImageView;->mBorderWidth:I

    .line 79
    :cond_2
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    iput-object v3, p0, Lcom/app/tmyclean/utilities/RoundedImageView;->mBorderColor:Landroid/content/res/ColorStateList;

    .line 80
    if-nez v3, :cond_3

    .line 81
    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/app/tmyclean/utilities/RoundedImageView;->mBorderColor:Landroid/content/res/ColorStateList;

    .line 84
    :cond_3
    const/16 v1, 0x11

    invoke-virtual {v2, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/app/tmyclean/utilities/RoundedImageView;->mRoundBackground:Z

    .line 85
    const/4 v1, 0x4

    invoke-virtual {v2, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/app/tmyclean/utilities/RoundedImageView;->mOval:Z

    .line 87
    invoke-direct {p0}, Lcom/app/tmyclean/utilities/RoundedImageView;->updateDrawableAttrs()V

    .line 88
    invoke-direct {p0}, Lcom/app/tmyclean/utilities/RoundedImageView;->updateBackgroundDrawableAttrs()V

    .line 90
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 91
    return-void
.end method

.method private resolveResource()Landroid/graphics/drawable/Drawable;
    .locals 5

    .line 179
    invoke-virtual {p0}, Lcom/app/tmyclean/utilities/RoundedImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 180
    .local v0, "rsrc":Landroid/content/res/Resources;
    if-nez v0, :cond_0

    .line 181
    const/4 v1, 0x0

    return-object v1

    .line 184
    :cond_0
    const/4 v1, 0x0

    .line 186
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    iget v2, p0, Lcom/app/tmyclean/utilities/RoundedImageView;->mResource:I

    if-eqz v2, :cond_1

    .line 188
    :try_start_0
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 193
    goto :goto_0

    .line 189
    :catch_0
    move-exception v2

    .line 190
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to find resource: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/app/tmyclean/utilities/RoundedImageView;->mResource:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "RoundedImageView"

    invoke-static {v4, v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 192
    const/4 v3, 0x0

    iput v3, p0, Lcom/app/tmyclean/utilities/RoundedImageView;->mResource:I

    .line 195
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    invoke-static {v1}, Lcom/app/tmyclean/utilities/RoundedDrawable;->fromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    return-object v2
.end method

.method private updateAttrs(Landroid/graphics/drawable/Drawable;Z)V
    .locals 4
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "background"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "drawable",
            "background"
        }
    .end annotation

    .line 211
    if-nez p1, :cond_0

    .line 212
    return-void

    .line 215
    :cond_0
    instance-of v0, p1, Lcom/app/tmyclean/utilities/RoundedDrawable;

    if-eqz v0, :cond_3

    .line 216
    move-object v0, p1

    check-cast v0, Lcom/app/tmyclean/utilities/RoundedDrawable;

    iget-object v1, p0, Lcom/app/tmyclean/utilities/RoundedImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    .line 217
    invoke-virtual {v0, v1}, Lcom/app/tmyclean/utilities/RoundedDrawable;->setScaleType(Landroid/widget/ImageView$ScaleType;)Lcom/app/tmyclean/utilities/RoundedDrawable;

    move-result-object v0

    .line 218
    if-eqz p2, :cond_1

    iget-boolean v1, p0, Lcom/app/tmyclean/utilities/RoundedImageView;->mRoundBackground:Z

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/app/tmyclean/utilities/RoundedImageView;->mCornerRadius:I

    int-to-float v1, v1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/app/tmyclean/utilities/RoundedDrawable;->setCornerRadius(F)Lcom/app/tmyclean/utilities/RoundedDrawable;

    move-result-object v0

    .line 219
    if-eqz p2, :cond_2

    iget-boolean v1, p0, Lcom/app/tmyclean/utilities/RoundedImageView;->mRoundBackground:Z

    if-nez v1, :cond_2

    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    iget v1, p0, Lcom/app/tmyclean/utilities/RoundedImageView;->mBorderWidth:I

    :goto_1
    invoke-virtual {v0, v1}, Lcom/app/tmyclean/utilities/RoundedDrawable;->setBorderWidth(I)Lcom/app/tmyclean/utilities/RoundedDrawable;

    move-result-object v0

    iget-object v1, p0, Lcom/app/tmyclean/utilities/RoundedImageView;->mBorderColor:Landroid/content/res/ColorStateList;

    .line 220
    invoke-virtual {v0, v1}, Lcom/app/tmyclean/utilities/RoundedDrawable;->setBorderColors(Landroid/content/res/ColorStateList;)Lcom/app/tmyclean/utilities/RoundedDrawable;

    move-result-object v0

    iget-boolean v1, p0, Lcom/app/tmyclean/utilities/RoundedImageView;->mOval:Z

    .line 221
    invoke-virtual {v0, v1}, Lcom/app/tmyclean/utilities/RoundedDrawable;->setOval(Z)Lcom/app/tmyclean/utilities/RoundedDrawable;

    goto :goto_3

    .line 222
    :cond_3
    instance-of v0, p1, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v0, :cond_4

    .line 224
    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    .line 225
    .local v0, "ld":Landroid/graphics/drawable/LayerDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v1

    .line 226
    .local v1, "layers":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v1, :cond_4

    .line 227
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-direct {p0, v3, p2}, Lcom/app/tmyclean/utilities/RoundedImageView;->updateAttrs(Landroid/graphics/drawable/Drawable;Z)V

    .line 226
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 230
    .end local v0    # "ld":Landroid/graphics/drawable/LayerDrawable;
    .end local v1    # "layers":I
    .end local v2    # "i":I
    :cond_4
    :goto_3
    return-void
.end method

.method private updateBackgroundDrawableAttrs()V
    .locals 2

    .line 207
    iget-object v0, p0, Lcom/app/tmyclean/utilities/RoundedImageView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/app/tmyclean/utilities/RoundedImageView;->updateAttrs(Landroid/graphics/drawable/Drawable;Z)V

    .line 208
    return-void
.end method

.method private updateDrawableAttrs()V
    .locals 2

    .line 203
    iget-object v0, p0, Lcom/app/tmyclean/utilities/RoundedImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/app/tmyclean/utilities/RoundedImageView;->updateAttrs(Landroid/graphics/drawable/Drawable;Z)V

    .line 204
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 0

    .line 95
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatImageView;->drawableStateChanged()V

    .line 96
    invoke-virtual {p0}, Lcom/app/tmyclean/utilities/RoundedImageView;->invalidate()V

    .line 97
    return-void
.end method

.method public getBorderColor()I
    .locals 1

    .line 270
    iget-object v0, p0, Lcom/app/tmyclean/utilities/RoundedImageView;->mBorderColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    return v0
.end method

.method public getBorderColors()Landroid/content/res/ColorStateList;
    .locals 1

    .line 278
    iget-object v0, p0, Lcom/app/tmyclean/utilities/RoundedImageView;->mBorderColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getBorderWidth()I
    .locals 1

    .line 255
    iget v0, p0, Lcom/app/tmyclean/utilities/RoundedImageView;->mBorderWidth:I

    return v0
.end method

.method public getCornerRadius()I
    .locals 1

    .line 241
    iget v0, p0, Lcom/app/tmyclean/utilities/RoundedImageView;->mCornerRadius:I

    return v0
.end method

.method public getScaleType()Landroid/widget/ImageView$ScaleType;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/app/tmyclean/utilities/RoundedImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    return-object v0
.end method

.method public isOval()Z
    .locals 1

    .line 296
    iget-boolean v0, p0, Lcom/app/tmyclean/utilities/RoundedImageView;->mOval:Z

    return v0
.end method

.method public isRoundBackground()Z
    .locals 1

    .line 307
    iget-boolean v0, p0, Lcom/app/tmyclean/utilities/RoundedImageView;->mRoundBackground:Z

    return v0
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "background"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 235
    invoke-static {p1}, Lcom/app/tmyclean/utilities/RoundedDrawable;->fromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/app/tmyclean/utilities/RoundedImageView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 236
    invoke-direct {p0}, Lcom/app/tmyclean/utilities/RoundedImageView;->updateBackgroundDrawableAttrs()V

    .line 237
    iget-object v0, p0, Lcom/app/tmyclean/utilities/RoundedImageView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-super {p0, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 238
    return-void
.end method

.method public setBorderColor(I)V
    .locals 1
    .param p1, "color"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    .line 274
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/app/tmyclean/utilities/RoundedImageView;->setBorderColors(Landroid/content/res/ColorStateList;)V

    .line 275
    return-void
.end method

.method public setBorderColors(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "colors"    # Landroid/content/res/ColorStateList;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "colors"
        }
    .end annotation

    .line 282
    iget-object v0, p0, Lcom/app/tmyclean/utilities/RoundedImageView;->mBorderColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 283
    return-void

    .line 286
    :cond_0
    nop

    .line 287
    if-eqz p1, :cond_1

    move-object v0, p1

    goto :goto_0

    :cond_1
    const/high16 v0, -0x1000000

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/app/tmyclean/utilities/RoundedImageView;->mBorderColor:Landroid/content/res/ColorStateList;

    .line 288
    invoke-direct {p0}, Lcom/app/tmyclean/utilities/RoundedImageView;->updateDrawableAttrs()V

    .line 289
    invoke-direct {p0}, Lcom/app/tmyclean/utilities/RoundedImageView;->updateBackgroundDrawableAttrs()V

    .line 290
    iget v0, p0, Lcom/app/tmyclean/utilities/RoundedImageView;->mBorderWidth:I

    if-lez v0, :cond_2

    .line 291
    invoke-virtual {p0}, Lcom/app/tmyclean/utilities/RoundedImageView;->invalidate()V

    .line 293
    :cond_2
    return-void
.end method

.method public setBorderWidth(I)V
    .locals 1
    .param p1, "width"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "width"
        }
    .end annotation

    .line 259
    iget v0, p0, Lcom/app/tmyclean/utilities/RoundedImageView;->mBorderWidth:I

    if-ne v0, p1, :cond_0

    .line 260
    return-void

    .line 263
    :cond_0
    iput p1, p0, Lcom/app/tmyclean/utilities/RoundedImageView;->mBorderWidth:I

    .line 264
    invoke-direct {p0}, Lcom/app/tmyclean/utilities/RoundedImageView;->updateDrawableAttrs()V

    .line 265
    invoke-direct {p0}, Lcom/app/tmyclean/utilities/RoundedImageView;->updateBackgroundDrawableAttrs()V

    .line 266
    invoke-virtual {p0}, Lcom/app/tmyclean/utilities/RoundedImageView;->invalidate()V

    .line 267
    return-void
.end method

.method public setCornerRadius(I)V
    .locals 1
    .param p1, "radius"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "radius"
        }
    .end annotation

    .line 245
    iget v0, p0, Lcom/app/tmyclean/utilities/RoundedImageView;->mCornerRadius:I

    if-ne v0, p1, :cond_0

    .line 246
    return-void

    .line 249
    :cond_0
    iput p1, p0, Lcom/app/tmyclean/utilities/RoundedImageView;->mCornerRadius:I

    .line 250
    invoke-direct {p0}, Lcom/app/tmyclean/utilities/RoundedImageView;->updateDrawableAttrs()V

    .line 251
    invoke-direct {p0}, Lcom/app/tmyclean/utilities/RoundedImageView;->updateBackgroundDrawableAttrs()V

    .line 252
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bm"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bm"
        }
    .end annotation

    .line 157
    const/4 v0, 0x0

    iput v0, p0, Lcom/app/tmyclean/utilities/RoundedImageView;->mResource:I

    .line 158
    invoke-static {p1}, Lcom/app/tmyclean/utilities/RoundedDrawable;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/app/tmyclean/utilities/RoundedDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/app/tmyclean/utilities/RoundedImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 159
    invoke-direct {p0}, Lcom/app/tmyclean/utilities/RoundedImageView;->updateDrawableAttrs()V

    .line 160
    iget-object v0, p0, Lcom/app/tmyclean/utilities/RoundedImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-super {p0, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 161
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "drawable"
        }
    .end annotation

    .line 149
    const/4 v0, 0x0

    iput v0, p0, Lcom/app/tmyclean/utilities/RoundedImageView;->mResource:I

    .line 150
    invoke-static {p1}, Lcom/app/tmyclean/utilities/RoundedDrawable;->fromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/app/tmyclean/utilities/RoundedImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 151
    invoke-direct {p0}, Lcom/app/tmyclean/utilities/RoundedImageView;->updateDrawableAttrs()V

    .line 152
    iget-object v0, p0, Lcom/app/tmyclean/utilities/RoundedImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-super {p0, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 153
    return-void
.end method

.method public setImageResource(I)V
    .locals 1
    .param p1, "resId"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resId"
        }
    .end annotation

    .line 165
    iget v0, p0, Lcom/app/tmyclean/utilities/RoundedImageView;->mResource:I

    if-eq v0, p1, :cond_0

    .line 166
    iput p1, p0, Lcom/app/tmyclean/utilities/RoundedImageView;->mResource:I

    .line 167
    invoke-direct {p0}, Lcom/app/tmyclean/utilities/RoundedImageView;->resolveResource()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/app/tmyclean/utilities/RoundedImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 168
    invoke-direct {p0}, Lcom/app/tmyclean/utilities/RoundedImageView;->updateDrawableAttrs()V

    .line 169
    iget-object v0, p0, Lcom/app/tmyclean/utilities/RoundedImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-super {p0, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 171
    :cond_0
    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uri"
        }
    .end annotation

    .line 174
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageURI(Landroid/net/Uri;)V

    .line 175
    invoke-virtual {p0}, Lcom/app/tmyclean/utilities/RoundedImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/app/tmyclean/utilities/RoundedImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 176
    return-void
.end method

.method public setOval(Z)V
    .locals 0
    .param p1, "oval"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "oval"
        }
    .end annotation

    .line 300
    iput-boolean p1, p0, Lcom/app/tmyclean/utilities/RoundedImageView;->mOval:Z

    .line 301
    invoke-direct {p0}, Lcom/app/tmyclean/utilities/RoundedImageView;->updateDrawableAttrs()V

    .line 302
    invoke-direct {p0}, Lcom/app/tmyclean/utilities/RoundedImageView;->updateBackgroundDrawableAttrs()V

    .line 303
    invoke-virtual {p0}, Lcom/app/tmyclean/utilities/RoundedImageView;->invalidate()V

    .line 304
    return-void
.end method

.method public setRoundBackground(Z)V
    .locals 1
    .param p1, "roundBackground"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "roundBackground"
        }
    .end annotation

    .line 311
    iget-boolean v0, p0, Lcom/app/tmyclean/utilities/RoundedImageView;->mRoundBackground:Z

    if-ne v0, p1, :cond_0

    .line 312
    return-void

    .line 315
    :cond_0
    iput-boolean p1, p0, Lcom/app/tmyclean/utilities/RoundedImageView;->mRoundBackground:Z

    .line 316
    invoke-direct {p0}, Lcom/app/tmyclean/utilities/RoundedImageView;->updateBackgroundDrawableAttrs()V

    .line 317
    invoke-virtual {p0}, Lcom/app/tmyclean/utilities/RoundedImageView;->invalidate()V

    .line 318
    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 2
    .param p1, "scaleType"    # Landroid/widget/ImageView$ScaleType;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scaleType"
        }
    .end annotation

    .line 119
    if-eqz p1, :cond_1

    .line 123
    iget-object v0, p0, Lcom/app/tmyclean/utilities/RoundedImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    if-eq v0, p1, :cond_0

    .line 124
    iput-object p1, p0, Lcom/app/tmyclean/utilities/RoundedImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    .line 126
    sget-object v0, Lcom/app/tmyclean/utilities/RoundedImageView$1;->$SwitchMap$android$widget$ImageView$ScaleType:[I

    invoke-virtual {p1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 137
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0

    .line 134
    :pswitch_0
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-super {p0, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 135
    nop

    .line 141
    :goto_0
    invoke-direct {p0}, Lcom/app/tmyclean/utilities/RoundedImageView;->updateDrawableAttrs()V

    .line 142
    invoke-direct {p0}, Lcom/app/tmyclean/utilities/RoundedImageView;->updateBackgroundDrawableAttrs()V

    .line 143
    invoke-virtual {p0}, Lcom/app/tmyclean/utilities/RoundedImageView;->invalidate()V

    .line 145
    :cond_0
    return-void

    .line 120
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
