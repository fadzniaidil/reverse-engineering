.class Lcom/onesignal/OSSystemConditionController;
.super Ljava/lang/Object;
.source "OSSystemConditionController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onesignal/OSSystemConditionController$OSSystemConditionObserver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final systemConditionObserver:Lcom/onesignal/OSSystemConditionController$OSSystemConditionObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    const-class v0, Lcom/onesignal/OSSystemConditionController;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/onesignal/OSSystemConditionController;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/onesignal/OSSystemConditionController$OSSystemConditionObserver;)V
    .locals 0
    .param p1, "systemConditionObserver"    # Lcom/onesignal/OSSystemConditionController$OSSystemConditionObserver;

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/onesignal/OSSystemConditionController;->systemConditionObserver:Lcom/onesignal/OSSystemConditionController$OSSystemConditionObserver;

    .line 25
    return-void
.end method

.method static synthetic access$000(Lcom/onesignal/OSSystemConditionController;)Lcom/onesignal/OSSystemConditionController$OSSystemConditionObserver;
    .locals 1
    .param p0, "x0"    # Lcom/onesignal/OSSystemConditionController;

    .line 13
    iget-object v0, p0, Lcom/onesignal/OSSystemConditionController;->systemConditionObserver:Lcom/onesignal/OSSystemConditionController$OSSystemConditionObserver;

    return-object v0
.end method


# virtual methods
.method isDialogFragmentShowing(Landroid/content/Context;)Z
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoClassDefFoundError;
        }
    .end annotation

    .line 52
    instance-of v0, p1, Landroidx/appcompat/app/AppCompatActivity;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 53
    move-object v0, p1

    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 54
    .local v0, "manager":Landroidx/fragment/app/FragmentManager;
    new-instance v2, Lcom/onesignal/OSSystemConditionController$1;

    invoke-direct {v2, p0, v0}, Lcom/onesignal/OSSystemConditionController$1;-><init>(Lcom/onesignal/OSSystemConditionController;Landroidx/fragment/app/FragmentManager;)V

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroidx/fragment/app/FragmentManager;->registerFragmentLifecycleCallbacks(Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;Z)V

    .line 66
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v2

    .line 67
    .local v2, "fragments":Ljava/util/List;, "Ljava/util/List<Landroidx/fragment/app/Fragment;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    .line 68
    .local v4, "size":I
    if-lez v4, :cond_1

    .line 70
    add-int/lit8 v5, v4, -0x1

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/fragment/app/Fragment;

    .line 71
    .local v5, "fragment":Landroidx/fragment/app/Fragment;
    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->isVisible()Z

    move-result v6

    if-eqz v6, :cond_0

    instance-of v6, v5, Landroidx/fragment/app/DialogFragment;

    if-eqz v6, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 77
    .end local v0    # "manager":Landroidx/fragment/app/FragmentManager;
    .end local v2    # "fragments":Ljava/util/List;, "Ljava/util/List<Landroidx/fragment/app/Fragment;>;"
    .end local v4    # "size":I
    .end local v5    # "fragment":Landroidx/fragment/app/Fragment;
    :cond_1
    return v1
.end method

.method systemConditionsAvailable()Z
    .locals 4

    .line 28
    sget-object v0, Lcom/onesignal/ActivityLifecycleHandler;->curActivity:Landroid/app/Activity;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 29
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->WARN:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v2, "OSSystemConditionObserver curActivity null"

    invoke-static {v0, v2}, Lcom/onesignal/OneSignal;->onesignalLog(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 30
    return v1

    .line 34
    :cond_0
    :try_start_0
    sget-object v0, Lcom/onesignal/ActivityLifecycleHandler;->curActivity:Landroid/app/Activity;

    invoke-virtual {p0, v0}, Lcom/onesignal/OSSystemConditionController;->isDialogFragmentShowing(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 35
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->WARN:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v2, "OSSystemConditionObserver dialog fragment detected"

    invoke-static {v0, v2}, Lcom/onesignal/OneSignal;->onesignalLog(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    return v1

    .line 40
    :cond_1
    goto :goto_0

    .line 38
    :catch_0
    move-exception v0

    .line 39
    .local v0, "exception":Ljava/lang/NoClassDefFoundError;
    sget-object v1, Lcom/onesignal/OneSignal$LOG_LEVEL;->INFO:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AppCompatActivity is not used in this app, skipping \'isDialogFragmentShowing\' check: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/onesignal/OneSignal;->onesignalLog(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 42
    .end local v0    # "exception":Ljava/lang/NoClassDefFoundError;
    :goto_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    sget-object v1, Lcom/onesignal/ActivityLifecycleHandler;->curActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/onesignal/OSViewUtils;->isKeyboardUp(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    .line 43
    .local v0, "keyboardUp":Z
    if-eqz v0, :cond_2

    .line 44
    sget-object v1, Lcom/onesignal/OSSystemConditionController;->TAG:Ljava/lang/String;

    iget-object v2, p0, Lcom/onesignal/OSSystemConditionController;->systemConditionObserver:Lcom/onesignal/OSSystemConditionController$OSSystemConditionObserver;

    invoke-static {v1, v2}, Lcom/onesignal/ActivityLifecycleHandler;->setSystemConditionObserver(Ljava/lang/String;Lcom/onesignal/OSSystemConditionController$OSSystemConditionObserver;)V

    .line 45
    sget-object v1, Lcom/onesignal/OneSignal$LOG_LEVEL;->WARN:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v2, "OSSystemConditionObserver keyboard up detected"

    invoke-static {v1, v2}, Lcom/onesignal/OneSignal;->onesignalLog(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 47
    :cond_2
    xor-int/lit8 v1, v0, 0x1

    return v1
.end method
