.class public Lcom/app/tmyclean/utilities/RoundedDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "RoundedDrawable.java"


# static fields
.field public static final DEFAULT_BORDER_COLOR:I = -0x1000000

.field public static final TAG:Ljava/lang/String; = "RoundedDrawable"


# instance fields
.field private final mBitmapHeight:I

.field private final mBitmapPaint:Landroid/graphics/Paint;

.field private final mBitmapRect:Landroid/graphics/RectF;

.field private final mBitmapShader:Landroid/graphics/BitmapShader;

.field private final mBitmapWidth:I

.field private mBorderColor:Landroid/content/res/ColorStateList;

.field private final mBorderPaint:Landroid/graphics/Paint;

.field private final mBorderRect:Landroid/graphics/RectF;

.field private mBorderWidth:F

.field private final mBounds:Landroid/graphics/RectF;

.field private mCornerRadius:F

.field private final mDrawableRect:Landroid/graphics/RectF;

.field private mOval:Z

.field private mScaleType:Landroid/widget/ImageView$ScaleType;

.field private final mShaderMatrix:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 6
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bitmap"
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 27
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/app/tmyclean/utilities/RoundedDrawable;->mBounds:Landroid/graphics/RectF;

    .line 28
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/app/tmyclean/utilities/RoundedDrawable;->mDrawableRect:Landroid/graphics/RectF;

    .line 29
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/app/tmyclean/utilities/RoundedDrawable;->mBitmapRect:Landroid/graphics/RectF;

    .line 34
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/app/tmyclean/utilities/RoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    .line 36
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/app/tmyclean/utilities/RoundedDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    .line 38
    const/4 v2, 0x0

    iput v2, p0, Lcom/app/tmyclean/utilities/RoundedDrawable;->mCornerRadius:F

    .line 39
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/app/tmyclean/utilities/RoundedDrawable;->mOval:Z

    .line 40
    iput v2, p0, Lcom/app/tmyclean/utilities/RoundedDrawable;->mBorderWidth:F

    .line 41
    const/high16 v3, -0x1000000

    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    iput-object v4, p0, Lcom/app/tmyclean/utilities/RoundedDrawable;->mBorderColor:Landroid/content/res/ColorStateList;

    .line 42
    sget-object v4, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    iput-object v4, p0, Lcom/app/tmyclean/utilities/RoundedDrawable;->mScaleType:Landroid/widget/ImageView$ScaleType;

    .line 46
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iput v4, p0, Lcom/app/tmyclean/utilities/RoundedDrawable;->mBitmapWidth:I

    .line 47
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    iput v5, p0, Lcom/app/tmyclean/utilities/RoundedDrawable;->mBitmapHeight:I

    .line 48
    int-to-float v4, v4

    int-to-float v5, v5

    invoke-virtual {v0, v2, v2, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 50
    new-instance v0, Landroid/graphics/BitmapShader;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v4, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, p1, v2, v4}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/app/tmyclean/utilities/RoundedDrawable;->mBitmapShader:Landroid/graphics/BitmapShader;

    .line 51
    invoke-virtual {v0, v1}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 53
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/app/tmyclean/utilities/RoundedDrawable;->mBitmapPaint:Landroid/graphics/Paint;

    .line 54
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 55
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 56
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 58
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/app/tmyclean/utilities/RoundedDrawable;->mBorderPaint:Landroid/graphics/Paint;

    .line 59
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 60
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 61
    iget-object v1, p0, Lcom/app/tmyclean/utilities/RoundedDrawable;->mBorderColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lcom/app/tmyclean/utilities/RoundedDrawable;->getState()[I

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 62
    iget v1, p0, Lcom/app/tmyclean/utilities/RoundedDrawable;->mBorderWidth:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 63
    return-void
.end method

.method public static drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "drawable"
        }
    .end annotation

    .line 102
    instance-of v0, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 103
    move-object v0, p0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 107
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 108
    .local v0, "width":I
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 110
    .local v1, "height":I
    :try_start_0
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 111
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 112
    .local v3, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v3}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    invoke-virtual {v3}, Landroid/graphics/Canvas;->getHeight()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {p0, v6, v6, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 113
    invoke-virtual {p0, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    .end local v3    # "canvas":Landroid/graphics/Canvas;
    goto :goto_0

    .line 114
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v2

    .line 115
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 116
    const/4 v3, 0x0

    move-object v2, v3

    .line 119
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-object v2
.end method

.method public static fromBitmap(Landroid/graphics/Bitmap;)Lcom/app/tmyclean/utilities/RoundedDrawable;
    .locals 1
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bitmap"
        }
    .end annotation

    .line 66
    if-eqz p0, :cond_0

    .line 67
    new-instance v0, Lcom/app/tmyclean/utilities/RoundedDrawable;

    invoke-direct {v0, p0}, Lcom/app/tmyclean/utilities/RoundedDrawable;-><init>(Landroid/graphics/Bitmap;)V

    return-object v0

    .line 69
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static fromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "drawable"
        }
    .end annotation

    .line 74
    if-eqz p0, :cond_4

    .line 75
    instance-of v0, p0, Lcom/app/tmyclean/utilities/RoundedDrawable;

    if-eqz v0, :cond_0

    .line 77
    return-object p0

    .line 78
    :cond_0
    instance-of v0, p0, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v0, :cond_2

    .line 79
    move-object v0, p0

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    .line 80
    .local v0, "ld":Landroid/graphics/drawable/LayerDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v1

    .line 83
    .local v1, "num":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 84
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 85
    .local v3, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/LayerDrawable;->getId(I)I

    move-result v4

    invoke-static {v3}, Lcom/app/tmyclean/utilities/RoundedDrawable;->fromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/graphics/drawable/LayerDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    .line 83
    .end local v3    # "d":Landroid/graphics/drawable/Drawable;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 87
    .end local v2    # "i":I
    :cond_1
    return-object v0

    .line 91
    .end local v0    # "ld":Landroid/graphics/drawable/LayerDrawable;
    .end local v1    # "num":I
    :cond_2
    invoke-static {p0}, Lcom/app/tmyclean/utilities/RoundedDrawable;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 92
    .local v0, "bm":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_3

    .line 93
    new-instance v1, Lcom/app/tmyclean/utilities/RoundedDrawable;

    invoke-direct {v1, v0}, Lcom/app/tmyclean/utilities/RoundedDrawable;-><init>(Landroid/graphics/Bitmap;)V

    return-object v1

    .line 95
    :cond_3
    const-string v1, "RoundedDrawable"

    const-string v2, "Failed to create bitmap from drawable!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    :cond_4
    return-object p0
.end method

.method private updateShaderMatrix()V
    .locals 7

    .line 143
    sget-object v0, Lcom/app/tmyclean/utilities/RoundedDrawable$1;->$SwitchMap$android$widget$ImageView$ScaleType:[I

    iget-object v1, p0, Lcom/app/tmyclean/utilities/RoundedDrawable;->mScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/high16 v2, 0x3f000000    # 0.5f

    const/high16 v3, 0x40000000    # 2.0f

    packed-switch v0, :pswitch_data_0

    .line 199
    :pswitch_0
    iget-object v0, p0, Lcom/app/tmyclean/utilities/RoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/app/tmyclean/utilities/RoundedDrawable;->mBitmapRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 200
    iget-object v0, p0, Lcom/app/tmyclean/utilities/RoundedDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/app/tmyclean/utilities/RoundedDrawable;->mBitmapRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/app/tmyclean/utilities/RoundedDrawable;->mBounds:Landroid/graphics/RectF;

    sget-object v4, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v1, v2, v4}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 201
    iget-object v0, p0, Lcom/app/tmyclean/utilities/RoundedDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/app/tmyclean/utilities/RoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 202
    iget-object v0, p0, Lcom/app/tmyclean/utilities/RoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/app/tmyclean/utilities/RoundedDrawable;->mBorderWidth:F

    div-float v2, v1, v3

    div-float/2addr v1, v3

    invoke-virtual {v0, v2, v1}, Landroid/graphics/RectF;->inset(FF)V

    .line 203
    iget-object v0, p0, Lcom/app/tmyclean/utilities/RoundedDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/app/tmyclean/utilities/RoundedDrawable;->mBitmapRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/app/tmyclean/utilities/RoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    sget-object v3, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 204
    goto/16 :goto_2

    .line 223
    :pswitch_1
    iget-object v0, p0, Lcom/app/tmyclean/utilities/RoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/app/tmyclean/utilities/RoundedDrawable;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {v0, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 224
    iget-object v0, p0, Lcom/app/tmyclean/utilities/RoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    iget v2, p0, Lcom/app/tmyclean/utilities/RoundedDrawable;->mBorderWidth:F

    div-float v4, v2, v3

    div-float/2addr v2, v3

    invoke-virtual {v0, v4, v2}, Landroid/graphics/RectF;->inset(FF)V

    .line 225
    iget-object v0, p0, Lcom/app/tmyclean/utilities/RoundedDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 226
    iget-object v0, p0, Lcom/app/tmyclean/utilities/RoundedDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/app/tmyclean/utilities/RoundedDrawable;->mBitmapRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/app/tmyclean/utilities/RoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    sget-object v3, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto/16 :goto_2

    .line 215
    :pswitch_2
    iget-object v0, p0, Lcom/app/tmyclean/utilities/RoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/app/tmyclean/utilities/RoundedDrawable;->mBitmapRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 216
    iget-object v0, p0, Lcom/app/tmyclean/utilities/RoundedDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/app/tmyclean/utilities/RoundedDrawable;->mBitmapRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/app/tmyclean/utilities/RoundedDrawable;->mBounds:Landroid/graphics/RectF;

    sget-object v4, Landroid/graphics/Matrix$ScaleToFit;->START:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v1, v2, v4}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 217
    iget-object v0, p0, Lcom/app/tmyclean/utilities/RoundedDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/app/tmyclean/utilities/RoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 218
    iget-object v0, p0, Lcom/app/tmyclean/utilities/RoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/app/tmyclean/utilities/RoundedDrawable;->mBorderWidth:F

    div-float v2, v1, v3

    div-float/2addr v1, v3

    invoke-virtual {v0, v2, v1}, Landroid/graphics/RectF;->inset(FF)V

    .line 219
    iget-object v0, p0, Lcom/app/tmyclean/utilities/RoundedDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/app/tmyclean/utilities/RoundedDrawable;->mBitmapRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/app/tmyclean/utilities/RoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    sget-object v3, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 220
    goto/16 :goto_2

    .line 207
    :pswitch_3
    iget-object v0, p0, Lcom/app/tmyclean/utilities/RoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/app/tmyclean/utilities/RoundedDrawable;->mBitmapRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 208
    iget-object v0, p0, Lcom/app/tmyclean/utilities/RoundedDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/app/tmyclean/utilities/RoundedDrawable;->mBitmapRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/app/tmyclean/utilities/RoundedDrawable;->mBounds:Landroid/graphics/RectF;

    sget-object v4, Landroid/graphics/Matrix$ScaleToFit;->END:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v1, v2, v4}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 209
    iget-object v0, p0, Lcom/app/tmyclean/utilities/RoundedDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/app/tmyclean/utilities/RoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 210
    iget-object v0, p0, Lcom/app/tmyclean/utilities/RoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/app/tmyclean/utilities/RoundedDrawable;->mBorderWidth:F

    div-float v2, v1, v3

    div-float/2addr v1, v3

    invoke-virtual {v0, v2, v1}, Landroid/graphics/RectF;->inset(FF)V

    .line 211
    iget-object v0, p0, Lcom/app/tmyclean/utilities/RoundedDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/app/tmyclean/utilities/RoundedDrawable;->mBitmapRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/app/tmyclean/utilities/RoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    sget-object v3, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 212
    goto/16 :goto_2

    .line 176
    :pswitch_4
    iget-object v0, p0, Lcom/app/tmyclean/utilities/RoundedDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 178
    iget v0, p0, Lcom/app/tmyclean/utilities/RoundedDrawable;->mBitmapWidth:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/app/tmyclean/utilities/RoundedDrawable;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/app/tmyclean/utilities/RoundedDrawable;->mBitmapHeight:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/app/tmyclean/utilities/RoundedDrawable;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 179
    const/high16 v0, 0x3f800000    # 1.0f

    .local v0, "scale":F
    goto :goto_0

    .line 181
    .end local v0    # "scale":F
    :cond_0
    iget-object v0, p0, Lcom/app/tmyclean/utilities/RoundedDrawable;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget v1, p0, Lcom/app/tmyclean/utilities/RoundedDrawable;->mBitmapWidth:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/app/tmyclean/utilities/RoundedDrawable;->mBounds:Landroid/graphics/RectF;

    .line 182
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    iget v4, p0, Lcom/app/tmyclean/utilities/RoundedDrawable;->mBitmapHeight:I

    int-to-float v4, v4

    div-float/2addr v1, v4

    .line 181
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 185
    .restart local v0    # "scale":F
    :goto_0
    iget-object v1, p0, Lcom/app/tmyclean/utilities/RoundedDrawable;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget v4, p0, Lcom/app/tmyclean/utilities/RoundedDrawable;->mBitmapWidth:I

    int-to-float v4, v4

    mul-float v4, v4, v0

    sub-float/2addr v1, v4

    mul-float v1, v1, v2

    add-float/2addr v1, v2

    float-to-int v1, v1

    int-to-float v1, v1

    .line 186
    .local v1, "dx":F
    iget-object v4, p0, Lcom/app/tmyclean/utilities/RoundedDrawable;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    iget v5, p0, Lcom/app/tmyclean/utilities/RoundedDrawable;->mBitmapHeight:I

    int-to-float v5, v5

    mul-float v5, v5, v0

    sub-float/2addr v4, v5

    mul-float v4, v4, v2

    add-float/2addr v4, v2

    float-to-int v2, v4

    int-to-float v2, v2

    .line 188
    .local v2, "dy":F
    iget-object v4, p0, Lcom/app/tmyclean/utilities/RoundedDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v0, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 189
    iget-object v4, p0, Lcom/app/tmyclean/utilities/RoundedDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 191
    iget-object v4, p0, Lcom/app/tmyclean/utilities/RoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/app/tmyclean/utilities/RoundedDrawable;->mBitmapRect:Landroid/graphics/RectF;

    invoke-virtual {v4, v5}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 192
    iget-object v4, p0, Lcom/app/tmyclean/utilities/RoundedDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    iget-object v5, p0, Lcom/app/tmyclean/utilities/RoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 193
    iget-object v4, p0, Lcom/app/tmyclean/utilities/RoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    iget v5, p0, Lcom/app/tmyclean/utilities/RoundedDrawable;->mBorderWidth:F

    div-float v6, v5, v3

    div-float/2addr v5, v3

    invoke-virtual {v4, v6, v5}, Landroid/graphics/RectF;->inset(FF)V

    .line 194
    iget-object v3, p0, Lcom/app/tmyclean/utilities/RoundedDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/app/tmyclean/utilities/RoundedDrawable;->mBitmapRect:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/app/tmyclean/utilities/RoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    sget-object v6, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v3, v4, v5, v6}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 195
    goto/16 :goto_2

    .line 154
    .end local v0    # "scale":F
    .end local v1    # "dx":F
    .end local v2    # "dy":F
    :pswitch_5
    iget-object v0, p0, Lcom/app/tmyclean/utilities/RoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/app/tmyclean/utilities/RoundedDrawable;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {v0, v4}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 155
    iget-object v0, p0, Lcom/app/tmyclean/utilities/RoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    iget v4, p0, Lcom/app/tmyclean/utilities/RoundedDrawable;->mBorderWidth:F

    div-float v5, v4, v3

    div-float/2addr v4, v3

    invoke-virtual {v0, v5, v4}, Landroid/graphics/RectF;->inset(FF)V

    .line 157
    iget-object v0, p0, Lcom/app/tmyclean/utilities/RoundedDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 159
    const/4 v0, 0x0

    .line 160
    .local v0, "dx":F
    const/4 v1, 0x0

    .line 162
    .local v1, "dy":F
    iget v3, p0, Lcom/app/tmyclean/utilities/RoundedDrawable;->mBitmapWidth:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/app/tmyclean/utilities/RoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    mul-float v3, v3, v4

    iget-object v4, p0, Lcom/app/tmyclean/utilities/RoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    iget v5, p0, Lcom/app/tmyclean/utilities/RoundedDrawable;->mBitmapHeight:I

    int-to-float v5, v5

    mul-float v4, v4, v5

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    .line 163
    iget-object v3, p0, Lcom/app/tmyclean/utilities/RoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    iget v4, p0, Lcom/app/tmyclean/utilities/RoundedDrawable;->mBitmapHeight:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 164
    .local v3, "scale":F
    iget-object v4, p0, Lcom/app/tmyclean/utilities/RoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    iget v5, p0, Lcom/app/tmyclean/utilities/RoundedDrawable;->mBitmapWidth:I

    int-to-float v5, v5

    mul-float v5, v5, v3

    sub-float/2addr v4, v5

    mul-float v0, v4, v2

    goto :goto_1

    .line 166
    .end local v3    # "scale":F
    :cond_1
    iget-object v3, p0, Lcom/app/tmyclean/utilities/RoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget v4, p0, Lcom/app/tmyclean/utilities/RoundedDrawable;->mBitmapWidth:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 167
    .restart local v3    # "scale":F
    iget-object v4, p0, Lcom/app/tmyclean/utilities/RoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    iget v5, p0, Lcom/app/tmyclean/utilities/RoundedDrawable;->mBitmapHeight:I

    int-to-float v5, v5

    mul-float v5, v5, v3

    sub-float/2addr v4, v5

    mul-float v1, v4, v2

    .line 170
    :goto_1
    iget-object v4, p0, Lcom/app/tmyclean/utilities/RoundedDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v3, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 171
    iget-object v4, p0, Lcom/app/tmyclean/utilities/RoundedDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    add-float v5, v0, v2

    float-to-int v5, v5

    int-to-float v5, v5

    iget v6, p0, Lcom/app/tmyclean/utilities/RoundedDrawable;->mBorderWidth:F

    add-float/2addr v5, v6

    add-float/2addr v2, v1

    float-to-int v2, v2

    int-to-float v2, v2

    add-float/2addr v2, v6

    invoke-virtual {v4, v5, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 173
    goto :goto_2

    .line 145
    .end local v0    # "dx":F
    .end local v1    # "dy":F
    .end local v3    # "scale":F
    :pswitch_6
    iget-object v0, p0, Lcom/app/tmyclean/utilities/RoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/app/tmyclean/utilities/RoundedDrawable;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {v0, v4}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 146
    iget-object v0, p0, Lcom/app/tmyclean/utilities/RoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    iget v4, p0, Lcom/app/tmyclean/utilities/RoundedDrawable;->mBorderWidth:F

    div-float v5, v4, v3

    div-float/2addr v4, v3

    invoke-virtual {v0, v5, v4}, Landroid/graphics/RectF;->inset(FF)V

    .line 148
    iget-object v0, p0, Lcom/app/tmyclean/utilities/RoundedDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 149
    iget-object v0, p0, Lcom/app/tmyclean/utilities/RoundedDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/app/tmyclean/utilities/RoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget v3, p0, Lcom/app/tmyclean/utilities/RoundedDrawable;->mBitmapWidth:I

    int-to-float v3, v3

    sub-float/2addr v1, v3

    mul-float v1, v1, v2

    add-float/2addr v1, v2

    float-to-int v1, v1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/app/tmyclean/utilities/RoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    .line 150
    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    iget v4, p0, Lcom/app/tmyclean/utilities/RoundedDrawable;->mBitmapHeight:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    mul-float v3, v3, v2

    add-float/2addr v3, v2

    float-to-int v2, v3

    int-to-float v2, v2

    .line 149
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 151
    nop

    .line 230
    :goto_2
    iget-object v0, p0, Lcom/app/tmyclean/utilities/RoundedDrawable;->mDrawableRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/app/tmyclean/utilities/RoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 231
    iget-object v0, p0, Lcom/app/tmyclean/utilities/RoundedDrawable;->mBitmapShader:Landroid/graphics/BitmapShader;

    iget-object v1, p0, Lcom/app/tmyclean/utilities/RoundedDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 232
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    .line 246
    iget-boolean v0, p0, Lcom/app/tmyclean/utilities/RoundedDrawable;->mOval:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 247
    iget v0, p0, Lcom/app/tmyclean/utilities/RoundedDrawable;->mBorderWidth:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/app/tmyclean/utilities/RoundedDrawable;->mDrawableRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/app/tmyclean/utilities/RoundedDrawable;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 249
    iget-object v0, p0, Lcom/app/tmyclean/utilities/RoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/app/tmyclean/utilities/RoundedDrawable;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/app/tmyclean/utilities/RoundedDrawable;->mDrawableRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/app/tmyclean/utilities/RoundedDrawable;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 254
    :cond_1
    iget v0, p0, Lcom/app/tmyclean/utilities/RoundedDrawable;->mBorderWidth:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 255
    iget-object v0, p0, Lcom/app/tmyclean/utilities/RoundedDrawable;->mDrawableRect:Landroid/graphics/RectF;

    iget v2, p0, Lcom/app/tmyclean/utilities/RoundedDrawable;->mCornerRadius:F

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iget v3, p0, Lcom/app/tmyclean/utilities/RoundedDrawable;->mCornerRadius:F

    .line 256
    invoke-static {v3, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iget-object v3, p0, Lcom/app/tmyclean/utilities/RoundedDrawable;->mBitmapPaint:Landroid/graphics/Paint;

    .line 255
    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 257
    iget-object v0, p0, Lcom/app/tmyclean/utilities/RoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/app/tmyclean/utilities/RoundedDrawable;->mCornerRadius:F

    iget-object v2, p0, Lcom/app/tmyclean/utilities/RoundedDrawable;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 259
    :cond_2
    iget-object v0, p0, Lcom/app/tmyclean/utilities/RoundedDrawable;->mDrawableRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/app/tmyclean/utilities/RoundedDrawable;->mCornerRadius:F

    iget-object v2, p0, Lcom/app/tmyclean/utilities/RoundedDrawable;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 262
    :goto_0
    return-void
.end method

.method public getBorderColor()I
    .locals 1

    .line 321
    iget-object v0, p0, Lcom/app/tmyclean/utilities/RoundedDrawable;->mBorderColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    return v0
.end method

.method public getBorderColors()Landroid/content/res/ColorStateList;
    .locals 1

    .line 329
    iget-object v0, p0, Lcom/app/tmyclean/utilities/RoundedDrawable;->mBorderColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getBorderWidth()F
    .locals 1

    .line 311
    iget v0, p0, Lcom/app/tmyclean/utilities/RoundedDrawable;->mBorderWidth:F

    return v0
.end method

.method public getCornerRadius()F
    .locals 1

    .line 302
    iget v0, p0, Lcom/app/tmyclean/utilities/RoundedDrawable;->mCornerRadius:F

    return v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 298
    iget v0, p0, Lcom/app/tmyclean/utilities/RoundedDrawable;->mBitmapHeight:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 293
    iget v0, p0, Lcom/app/tmyclean/utilities/RoundedDrawable;->mBitmapWidth:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .line 266
    const/4 v0, -0x3

    return v0
.end method

.method public getScaleType()Landroid/widget/ImageView$ScaleType;
    .locals 1

    .line 348
    iget-object v0, p0, Lcom/app/tmyclean/utilities/RoundedDrawable;->mScaleType:Landroid/widget/ImageView$ScaleType;

    return-object v0
.end method

.method public isOval()Z
    .locals 1

    .line 339
    iget-boolean v0, p0, Lcom/app/tmyclean/utilities/RoundedDrawable;->mOval:Z

    return v0
.end method

.method public isStateful()Z
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/app/tmyclean/utilities/RoundedDrawable;->mBorderColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bounds"
        }
    .end annotation

    .line 236
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 238
    iget-object v0, p0, Lcom/app/tmyclean/utilities/RoundedDrawable;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 240
    invoke-direct {p0}, Lcom/app/tmyclean/utilities/RoundedDrawable;->updateShaderMatrix()V

    .line 241
    return-void
.end method

.method protected onStateChange([I)Z
    .locals 2
    .param p1, "state"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 129
    iget-object v0, p0, Lcom/app/tmyclean/utilities/RoundedDrawable;->mBorderColor:Landroid/content/res/ColorStateList;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 130
    .local v0, "newColor":I
    iget-object v1, p0, Lcom/app/tmyclean/utilities/RoundedDrawable;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 131
    iget-object v1, p0, Lcom/app/tmyclean/utilities/RoundedDrawable;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 132
    const/4 v1, 0x1

    return v1

    .line 134
    :cond_0
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onStateChange([I)Z

    move-result v1

    return v1
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "alpha"
        }
    .end annotation

    .line 271
    iget-object v0, p0, Lcom/app/tmyclean/utilities/RoundedDrawable;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 272
    invoke-virtual {p0}, Lcom/app/tmyclean/utilities/RoundedDrawable;->invalidateSelf()V

    .line 273
    return-void
.end method

.method public setBorderColor(I)Lcom/app/tmyclean/utilities/RoundedDrawable;
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

    .line 325
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/app/tmyclean/utilities/RoundedDrawable;->setBorderColors(Landroid/content/res/ColorStateList;)Lcom/app/tmyclean/utilities/RoundedDrawable;

    move-result-object v0

    return-object v0
.end method

.method public setBorderColors(Landroid/content/res/ColorStateList;)Lcom/app/tmyclean/utilities/RoundedDrawable;
    .locals 4
    .param p1, "colors"    # Landroid/content/res/ColorStateList;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "colors"
        }
    .end annotation

    .line 333
    if-eqz p1, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/app/tmyclean/utilities/RoundedDrawable;->mBorderColor:Landroid/content/res/ColorStateList;

    .line 334
    iget-object v1, p0, Lcom/app/tmyclean/utilities/RoundedDrawable;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/app/tmyclean/utilities/RoundedDrawable;->getState()[I

    move-result-object v2

    const/high16 v3, -0x1000000

    invoke-virtual {v0, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 335
    return-object p0
.end method

.method public setBorderWidth(I)Lcom/app/tmyclean/utilities/RoundedDrawable;
    .locals 2
    .param p1, "width"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "width"
        }
    .end annotation

    .line 315
    int-to-float v0, p1

    iput v0, p0, Lcom/app/tmyclean/utilities/RoundedDrawable;->mBorderWidth:F

    .line 316
    iget-object v1, p0, Lcom/app/tmyclean/utilities/RoundedDrawable;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 317
    return-object p0
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "cf"    # Landroid/graphics/ColorFilter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cf"
        }
    .end annotation

    .line 277
    iget-object v0, p0, Lcom/app/tmyclean/utilities/RoundedDrawable;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 278
    invoke-virtual {p0}, Lcom/app/tmyclean/utilities/RoundedDrawable;->invalidateSelf()V

    .line 279
    return-void
.end method

.method public setCornerRadius(F)Lcom/app/tmyclean/utilities/RoundedDrawable;
    .locals 0
    .param p1, "radius"    # F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "radius"
        }
    .end annotation

    .line 306
    iput p1, p0, Lcom/app/tmyclean/utilities/RoundedDrawable;->mCornerRadius:F

    .line 307
    return-object p0
.end method

.method public setDither(Z)V
    .locals 1
    .param p1, "dither"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dither"
        }
    .end annotation

    .line 282
    iget-object v0, p0, Lcom/app/tmyclean/utilities/RoundedDrawable;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 283
    invoke-virtual {p0}, Lcom/app/tmyclean/utilities/RoundedDrawable;->invalidateSelf()V

    .line 284
    return-void
.end method

.method public setFilterBitmap(Z)V
    .locals 1
    .param p1, "filter"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "filter"
        }
    .end annotation

    .line 287
    iget-object v0, p0, Lcom/app/tmyclean/utilities/RoundedDrawable;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 288
    invoke-virtual {p0}, Lcom/app/tmyclean/utilities/RoundedDrawable;->invalidateSelf()V

    .line 289
    return-void
.end method

.method public setOval(Z)Lcom/app/tmyclean/utilities/RoundedDrawable;
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

    .line 343
    iput-boolean p1, p0, Lcom/app/tmyclean/utilities/RoundedDrawable;->mOval:Z

    .line 344
    return-object p0
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)Lcom/app/tmyclean/utilities/RoundedDrawable;
    .locals 1
    .param p1, "scaleType"    # Landroid/widget/ImageView$ScaleType;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scaleType"
        }
    .end annotation

    .line 352
    if-nez p1, :cond_0

    .line 353
    sget-object p1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    .line 355
    :cond_0
    iget-object v0, p0, Lcom/app/tmyclean/utilities/RoundedDrawable;->mScaleType:Landroid/widget/ImageView$ScaleType;

    if-eq v0, p1, :cond_1

    .line 356
    iput-object p1, p0, Lcom/app/tmyclean/utilities/RoundedDrawable;->mScaleType:Landroid/widget/ImageView$ScaleType;

    .line 357
    invoke-direct {p0}, Lcom/app/tmyclean/utilities/RoundedDrawable;->updateShaderMatrix()V

    .line 359
    :cond_1
    return-object p0
.end method

.method public toBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 363
    invoke-static {p0}, Lcom/app/tmyclean/utilities/RoundedDrawable;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
