.class Lcom/onesignal/ActivityLifecycleHandler$KeyboardListener;
.super Ljava/lang/Object;
.source "ActivityLifecycleHandler.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onesignal/ActivityLifecycleHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "KeyboardListener"
.end annotation


# instance fields
.field private final key:Ljava/lang/String;

.field private final observer:Lcom/onesignal/OSSystemConditionController$OSSystemConditionObserver;


# direct methods
.method private constructor <init>(Lcom/onesignal/OSSystemConditionController$OSSystemConditionObserver;Ljava/lang/String;)V
    .locals 0
    .param p1, "observer"    # Lcom/onesignal/OSSystemConditionController$OSSystemConditionObserver;
    .param p2, "key"    # Ljava/lang/String;

    .line 279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 280
    iput-object p1, p0, Lcom/onesignal/ActivityLifecycleHandler$KeyboardListener;->observer:Lcom/onesignal/OSSystemConditionController$OSSystemConditionObserver;

    .line 281
    iput-object p2, p0, Lcom/onesignal/ActivityLifecycleHandler$KeyboardListener;->key:Ljava/lang/String;

    .line 282
    return-void
.end method

.method synthetic constructor <init>(Lcom/onesignal/OSSystemConditionController$OSSystemConditionObserver;Ljava/lang/String;Lcom/onesignal/ActivityLifecycleHandler$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/onesignal/OSSystemConditionController$OSSystemConditionObserver;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Lcom/onesignal/ActivityLifecycleHandler$1;

    .line 274
    invoke-direct {p0, p1, p2}, Lcom/onesignal/ActivityLifecycleHandler$KeyboardListener;-><init>(Lcom/onesignal/OSSystemConditionController$OSSystemConditionObserver;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 4

    .line 286
    new-instance v0, Ljava/lang/ref/WeakReference;

    sget-object v1, Lcom/onesignal/ActivityLifecycleHandler;->curActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/onesignal/OSViewUtils;->isKeyboardUp(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    .line 287
    .local v0, "keyboardUp":Z
    if-nez v0, :cond_2

    .line 288
    sget-object v1, Lcom/onesignal/ActivityLifecycleHandler;->curActivity:Landroid/app/Activity;

    if-eqz v1, :cond_1

    .line 289
    sget-object v1, Lcom/onesignal/ActivityLifecycleHandler;->curActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 290
    .local v1, "treeObserver":Landroid/view/ViewTreeObserver;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-ge v2, v3, :cond_0

    .line 291
    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0

    .line 293
    :cond_0
    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 296
    .end local v1    # "treeObserver":Landroid/view/ViewTreeObserver;
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/onesignal/ActivityLifecycleHandler$KeyboardListener;->key:Ljava/lang/String;

    invoke-static {v1}, Lcom/onesignal/ActivityLifecycleHandler;->removeSystemConditionObserver(Ljava/lang/String;)V

    .line 297
    iget-object v1, p0, Lcom/onesignal/ActivityLifecycleHandler$KeyboardListener;->observer:Lcom/onesignal/OSSystemConditionController$OSSystemConditionObserver;

    invoke-interface {v1}, Lcom/onesignal/OSSystemConditionController$OSSystemConditionObserver;->systemConditionChanged()V

    .line 299
    :cond_2
    return-void
.end method
