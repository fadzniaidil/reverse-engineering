.class Lcom/onesignal/OSViewUtils;
.super Ljava/lang/Object;
.source "OSViewUtils.java"


# static fields
.field private static final MARGIN_ERROR_PX_SIZE:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    const/16 v0, 0x18

    invoke-static {v0}, Lcom/onesignal/OSViewUtils;->dpToPx(I)I

    move-result v0

    sput v0, Lcom/onesignal/OSViewUtils;->MARGIN_ERROR_PX_SIZE:I

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static decorViewReady(Landroid/app/Activity;Ljava/lang/Runnable;)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "decorViewReady:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, "listenerKey":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/onesignal/OSViewUtils$1;

    invoke-direct {v2, v0, p1}, Lcom/onesignal/OSViewUtils$1;-><init>(Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 67
    return-void
.end method

.method static dpToPx(I)I
    .locals 2
    .param p0, "dp"    # I

    .line 120
    int-to-float v0, p0

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private static getDisplaySizeY(Landroid/app/Activity;)I
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;

    .line 114
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 115
    .local v0, "point":Landroid/graphics/Point;
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 116
    iget v1, v0, Landroid/graphics/Point;->y:I

    return v1
.end method

.method static getWindowHeight(Landroid/app/Activity;)I
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;

    .line 82
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 83
    invoke-static {p0}, Lcom/onesignal/OSViewUtils;->getWindowHeightAPI23Plus(Landroid/app/Activity;)I

    move-result v0

    return v0

    .line 84
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 85
    invoke-static {p0}, Lcom/onesignal/OSViewUtils;->getWindowHeightLollipop(Landroid/app/Activity;)I

    move-result v0

    return v0

    .line 87
    :cond_1
    invoke-static {p0}, Lcom/onesignal/OSViewUtils;->getDisplaySizeY(Landroid/app/Activity;)I

    move-result v0

    return v0
.end method

.method private static getWindowHeightAPI23Plus(Landroid/app/Activity;)I
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;

    .line 93
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 95
    .local v0, "decorView":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v1

    .line 96
    .local v1, "windowInsets":Landroid/view/WindowInsets;
    if-nez v1, :cond_0

    .line 97
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    return v2

    .line 99
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 100
    invoke-virtual {v1}, Landroid/view/WindowInsets;->getStableInsetBottom()I

    move-result v3

    sub-int/2addr v2, v3

    .line 101
    invoke-virtual {v1}, Landroid/view/WindowInsets;->getStableInsetTop()I

    move-result v3

    sub-int/2addr v2, v3

    .line 99
    return v2
.end method

.method private static getWindowHeightLollipop(Landroid/app/Activity;)I
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;

    .line 106
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 107
    invoke-static {p0}, Lcom/onesignal/OSViewUtils;->getWindowVisibleDisplayFrame(Landroid/app/Activity;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    return v0

    .line 110
    :cond_0
    invoke-static {p0}, Lcom/onesignal/OSViewUtils;->getDisplaySizeY(Landroid/app/Activity;)I

    move-result v0

    return v0
.end method

.method private static getWindowVisibleDisplayFrame(Landroid/app/Activity;)Landroid/graphics/Rect;
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;

    .line 70
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 71
    .local v0, "rect":Landroid/graphics/Rect;
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 72
    return-object v0
.end method

.method static getWindowWidth(Landroid/app/Activity;)I
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .line 76
    invoke-static {p0}, Lcom/onesignal/OSViewUtils;->getWindowVisibleDisplayFrame(Landroid/app/Activity;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    return v0
.end method

.method static isActivityFullyReady(Landroid/app/Activity;)Z
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;

    .line 127
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 128
    .local v0, "hasToken":Z
    :goto_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-ge v3, v4, :cond_1

    .line 129
    return v0

    .line 131
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    .line 132
    .local v3, "decorView":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v4

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    .line 134
    .local v4, "insetsAttached":Z
    :goto_1
    if-eqz v0, :cond_3

    if-eqz v4, :cond_3

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    return v1
.end method

.method static isKeyboardUp(Ljava/lang/ref/WeakReference;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;)Z"
        }
    .end annotation

    .line 27
    .local p0, "activityWeakReference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/Activity;>;"
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 28
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 29
    .local v1, "visibleBounds":Landroid/graphics/Rect;
    const/4 v2, 0x0

    .line 30
    .local v2, "view":Landroid/view/View;
    const/4 v3, 0x0

    .line 32
    .local v3, "isOpen":Z
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 33
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    .line 34
    .local v4, "window":Landroid/view/Window;
    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    .line 35
    invoke-virtual {v2, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 36
    invoke-virtual {v4}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 39
    .end local v4    # "window":Landroid/view/Window;
    :cond_0
    if-eqz v2, :cond_2

    .line 40
    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    .line 41
    .local v4, "heightDiff":I
    sget v5, Lcom/onesignal/OSViewUtils;->MARGIN_ERROR_PX_SIZE:I

    if-le v4, v5, :cond_1

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_0
    move v3, v5

    .line 44
    .end local v4    # "heightDiff":I
    :cond_2
    return v3
.end method
