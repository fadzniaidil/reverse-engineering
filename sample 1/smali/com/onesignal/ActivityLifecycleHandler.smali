.class Lcom/onesignal/ActivityLifecycleHandler;
.super Ljava/lang/Object;
.source "ActivityLifecycleHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onesignal/ActivityLifecycleHandler$KeyboardListener;,
        Lcom/onesignal/ActivityLifecycleHandler$AppFocusRunnable;,
        Lcom/onesignal/ActivityLifecycleHandler$FocusHandlerThread;,
        Lcom/onesignal/ActivityLifecycleHandler$ActivityAvailableListener;
    }
.end annotation


# static fields
.field static curActivity:Landroid/app/Activity;

.field static focusHandlerThread:Lcom/onesignal/ActivityLifecycleHandler$FocusHandlerThread;

.field static nextResumeIsFirstActivity:Z

.field private static sActivityAvailableListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/onesignal/ActivityLifecycleHandler$ActivityAvailableListener;",
            ">;"
        }
    .end annotation
.end field

.field private static sKeyboardListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/onesignal/ActivityLifecycleHandler$KeyboardListener;",
            ">;"
        }
    .end annotation
.end field

.field private static sSystemConditionObservers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/onesignal/OSSystemConditionController$OSSystemConditionObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 60
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/onesignal/ActivityLifecycleHandler;->sActivityAvailableListeners:Ljava/util/Map;

    .line 61
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/onesignal/ActivityLifecycleHandler;->sSystemConditionObservers:Ljava/util/Map;

    .line 62
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/onesignal/ActivityLifecycleHandler;->sKeyboardListeners:Ljava/util/Map;

    .line 63
    new-instance v0, Lcom/onesignal/ActivityLifecycleHandler$FocusHandlerThread;

    invoke-direct {v0}, Lcom/onesignal/ActivityLifecycleHandler$FocusHandlerThread;-><init>()V

    sput-object v0, Lcom/onesignal/ActivityLifecycleHandler;->focusHandlerThread:Lcom/onesignal/ActivityLifecycleHandler$FocusHandlerThread;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$400()Ljava/util/Map;
    .locals 1

    .line 45
    sget-object v0, Lcom/onesignal/ActivityLifecycleHandler;->sActivityAvailableListeners:Ljava/util/Map;

    return-object v0
.end method

.method private static handleFocus()V
    .locals 1

    .line 213
    sget-object v0, Lcom/onesignal/ActivityLifecycleHandler;->focusHandlerThread:Lcom/onesignal/ActivityLifecycleHandler$FocusHandlerThread;

    invoke-virtual {v0}, Lcom/onesignal/ActivityLifecycleHandler$FocusHandlerThread;->hasBackgrounded()Z

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/onesignal/ActivityLifecycleHandler;->nextResumeIsFirstActivity:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 218
    :cond_0
    sget-object v0, Lcom/onesignal/ActivityLifecycleHandler;->focusHandlerThread:Lcom/onesignal/ActivityLifecycleHandler$FocusHandlerThread;

    invoke-virtual {v0}, Lcom/onesignal/ActivityLifecycleHandler$FocusHandlerThread;->stopScheduledRunnable()V

    goto :goto_1

    .line 214
    :cond_1
    :goto_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/onesignal/ActivityLifecycleHandler;->nextResumeIsFirstActivity:Z

    .line 215
    sget-object v0, Lcom/onesignal/ActivityLifecycleHandler;->focusHandlerThread:Lcom/onesignal/ActivityLifecycleHandler$FocusHandlerThread;

    invoke-virtual {v0}, Lcom/onesignal/ActivityLifecycleHandler$FocusHandlerThread;->resetBackgroundState()V

    .line 216
    invoke-static {}, Lcom/onesignal/OneSignal;->onAppFocus()V

    .line 219
    :goto_1
    return-void
.end method

.method private static handleLostFocus()V
    .locals 3

    .line 209
    sget-object v0, Lcom/onesignal/ActivityLifecycleHandler;->focusHandlerThread:Lcom/onesignal/ActivityLifecycleHandler$FocusHandlerThread;

    new-instance v1, Lcom/onesignal/ActivityLifecycleHandler$AppFocusRunnable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/onesignal/ActivityLifecycleHandler$AppFocusRunnable;-><init>(Lcom/onesignal/ActivityLifecycleHandler$1;)V

    invoke-virtual {v0, v1}, Lcom/onesignal/ActivityLifecycleHandler$FocusHandlerThread;->runRunnable(Lcom/onesignal/ActivityLifecycleHandler$AppFocusRunnable;)V

    .line 210
    return-void
.end method

.method private static logCurActivity()V
    .locals 4

    .line 170
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "curActivity is NOW: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/onesignal/ActivityLifecycleHandler;->curActivity:Landroid/app/Activity;

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/onesignal/ActivityLifecycleHandler;->curActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/onesignal/ActivityLifecycleHandler;->curActivity:Landroid/app/Activity;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v2, "null"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 171
    return-void
.end method

.method private static logOrientationChange(I)V
    .locals 4
    .param p0, "orientation"    # I

    .line 175
    const-string v0, ")"

    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    .line 176
    sget-object v1, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Configuration Orientation Change: LANDSCAPE ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/onesignal/OneSignal;->onesignalLog(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    goto :goto_0

    .line 177
    :cond_0
    const/4 v1, 0x1

    if-ne p0, v1, :cond_1

    .line 178
    sget-object v1, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Configuration Orientation Change: PORTRAIT ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/onesignal/OneSignal;->onesignalLog(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 179
    :cond_1
    :goto_0
    return-void
.end method

.method static onActivityCreated(Landroid/app/Activity;)V
    .locals 0
    .param p0, "activity"    # Landroid/app/Activity;

    .line 122
    return-void
.end method

.method static onActivityDestroyed(Landroid/app/Activity;)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;

    .line 158
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityDestroyed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 159
    sget-object v0, Lcom/onesignal/ActivityLifecycleHandler;->sKeyboardListeners:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 161
    sget-object v0, Lcom/onesignal/ActivityLifecycleHandler;->curActivity:Landroid/app/Activity;

    if-ne p0, v0, :cond_0

    .line 162
    const/4 v0, 0x0

    sput-object v0, Lcom/onesignal/ActivityLifecycleHandler;->curActivity:Landroid/app/Activity;

    .line 163
    invoke-static {}, Lcom/onesignal/ActivityLifecycleHandler;->handleLostFocus()V

    .line 166
    :cond_0
    invoke-static {}, Lcom/onesignal/ActivityLifecycleHandler;->logCurActivity()V

    .line 167
    return-void
.end method

.method static onActivityPaused(Landroid/app/Activity;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .line 134
    sget-object v0, Lcom/onesignal/ActivityLifecycleHandler;->curActivity:Landroid/app/Activity;

    if-ne p0, v0, :cond_0

    .line 135
    const/4 v0, 0x0

    sput-object v0, Lcom/onesignal/ActivityLifecycleHandler;->curActivity:Landroid/app/Activity;

    .line 136
    invoke-static {}, Lcom/onesignal/ActivityLifecycleHandler;->handleLostFocus()V

    .line 139
    :cond_0
    invoke-static {}, Lcom/onesignal/ActivityLifecycleHandler;->logCurActivity()V

    .line 140
    return-void
.end method

.method static onActivityResumed(Landroid/app/Activity;)V
    .locals 0
    .param p0, "activity"    # Landroid/app/Activity;

    .line 128
    invoke-static {p0}, Lcom/onesignal/ActivityLifecycleHandler;->setCurActivity(Landroid/app/Activity;)V

    .line 129
    invoke-static {}, Lcom/onesignal/ActivityLifecycleHandler;->logCurActivity()V

    .line 130
    invoke-static {}, Lcom/onesignal/ActivityLifecycleHandler;->handleFocus()V

    .line 131
    return-void
.end method

.method static onActivityStarted(Landroid/app/Activity;)V
    .locals 0
    .param p0, "activity"    # Landroid/app/Activity;

    .line 125
    return-void
.end method

.method static onActivityStopped(Landroid/app/Activity;)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;

    .line 143
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityStopped: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 145
    sget-object v0, Lcom/onesignal/ActivityLifecycleHandler;->curActivity:Landroid/app/Activity;

    if-ne p0, v0, :cond_0

    .line 146
    const/4 v0, 0x0

    sput-object v0, Lcom/onesignal/ActivityLifecycleHandler;->curActivity:Landroid/app/Activity;

    .line 147
    invoke-static {}, Lcom/onesignal/ActivityLifecycleHandler;->handleLostFocus()V

    .line 150
    :cond_0
    sget-object v0, Lcom/onesignal/ActivityLifecycleHandler;->sActivityAvailableListeners:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 151
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/onesignal/ActivityLifecycleHandler$ActivityAvailableListener;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onesignal/ActivityLifecycleHandler$ActivityAvailableListener;

    invoke-virtual {v2}, Lcom/onesignal/ActivityLifecycleHandler$ActivityAvailableListener;->stopped()V

    .line 152
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/onesignal/ActivityLifecycleHandler$ActivityAvailableListener;>;"
    goto :goto_0

    .line 154
    :cond_1
    invoke-static {}, Lcom/onesignal/ActivityLifecycleHandler;->logCurActivity()V

    .line 155
    return-void
.end method

.method static onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p0, "newConfig"    # Landroid/content/res/Configuration;

    .line 115
    sget-object v0, Lcom/onesignal/ActivityLifecycleHandler;->curActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    const/16 v1, 0x80

    invoke-static {v0, v1}, Lcom/onesignal/OSUtils;->hasConfigChangeFlag(Landroid/app/Activity;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    iget v0, p0, Landroid/content/res/Configuration;->orientation:I

    invoke-static {v0}, Lcom/onesignal/ActivityLifecycleHandler;->logOrientationChange(I)V

    .line 117
    invoke-static {}, Lcom/onesignal/ActivityLifecycleHandler;->onOrientationChanged()V

    .line 119
    :cond_0
    return-void
.end method

.method private static onOrientationChanged()V
    .locals 7

    .line 189
    invoke-static {}, Lcom/onesignal/ActivityLifecycleHandler;->handleLostFocus()V

    .line 190
    sget-object v0, Lcom/onesignal/ActivityLifecycleHandler;->sActivityAvailableListeners:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 191
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/onesignal/ActivityLifecycleHandler$ActivityAvailableListener;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onesignal/ActivityLifecycleHandler$ActivityAvailableListener;

    invoke-virtual {v2}, Lcom/onesignal/ActivityLifecycleHandler$ActivityAvailableListener;->stopped()V

    .line 192
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/onesignal/ActivityLifecycleHandler$ActivityAvailableListener;>;"
    goto :goto_0

    .line 195
    :cond_0
    sget-object v0, Lcom/onesignal/ActivityLifecycleHandler;->sActivityAvailableListeners:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 196
    .restart local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/onesignal/ActivityLifecycleHandler$ActivityAvailableListener;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onesignal/ActivityLifecycleHandler$ActivityAvailableListener;

    sget-object v3, Lcom/onesignal/ActivityLifecycleHandler;->curActivity:Landroid/app/Activity;

    invoke-virtual {v2, v3}, Lcom/onesignal/ActivityLifecycleHandler$ActivityAvailableListener;->available(Landroid/app/Activity;)V

    .line 197
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/onesignal/ActivityLifecycleHandler$ActivityAvailableListener;>;"
    goto :goto_1

    .line 199
    :cond_1
    sget-object v0, Lcom/onesignal/ActivityLifecycleHandler;->curActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 200
    .local v0, "treeObserver":Landroid/view/ViewTreeObserver;
    sget-object v1, Lcom/onesignal/ActivityLifecycleHandler;->sSystemConditionObservers:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 201
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/onesignal/OSSystemConditionController$OSSystemConditionObserver;>;"
    new-instance v3, Lcom/onesignal/ActivityLifecycleHandler$KeyboardListener;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/onesignal/OSSystemConditionController$OSSystemConditionObserver;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Lcom/onesignal/ActivityLifecycleHandler$KeyboardListener;-><init>(Lcom/onesignal/OSSystemConditionController$OSSystemConditionObserver;Ljava/lang/String;Lcom/onesignal/ActivityLifecycleHandler$1;)V

    .line 202
    .local v3, "keyboardListener":Lcom/onesignal/ActivityLifecycleHandler$KeyboardListener;
    invoke-virtual {v0, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 203
    sget-object v4, Lcom/onesignal/ActivityLifecycleHandler;->sKeyboardListeners:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/onesignal/OSSystemConditionController$OSSystemConditionObserver;>;"
    .end local v3    # "keyboardListener":Lcom/onesignal/ActivityLifecycleHandler$KeyboardListener;
    goto :goto_2

    .line 205
    :cond_2
    invoke-static {}, Lcom/onesignal/ActivityLifecycleHandler;->handleFocus()V

    .line 206
    return-void
.end method

.method static removeActivityAvailableListener(Ljava/lang/String;)V
    .locals 1
    .param p0, "key"    # Ljava/lang/String;

    .line 89
    sget-object v0, Lcom/onesignal/ActivityLifecycleHandler;->sActivityAvailableListeners:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    return-void
.end method

.method static removeSystemConditionObserver(Ljava/lang/String;)V
    .locals 1
    .param p0, "key"    # Ljava/lang/String;

    .line 84
    sget-object v0, Lcom/onesignal/ActivityLifecycleHandler;->sKeyboardListeners:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lcom/onesignal/ActivityLifecycleHandler;->sSystemConditionObservers:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    return-void
.end method

.method static setActivityAvailableListener(Ljava/lang/String;Lcom/onesignal/ActivityLifecycleHandler$ActivityAvailableListener;)V
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "activityAvailableListener"    # Lcom/onesignal/ActivityLifecycleHandler$ActivityAvailableListener;

    .line 78
    sget-object v0, Lcom/onesignal/ActivityLifecycleHandler;->sActivityAvailableListeners:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Lcom/onesignal/ActivityLifecycleHandler;->curActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 80
    invoke-virtual {p1, v0}, Lcom/onesignal/ActivityLifecycleHandler$ActivityAvailableListener;->available(Landroid/app/Activity;)V

    .line 81
    :cond_0
    return-void
.end method

.method private static setCurActivity(Landroid/app/Activity;)V
    .locals 7
    .param p0, "activity"    # Landroid/app/Activity;

    .line 93
    sput-object p0, Lcom/onesignal/ActivityLifecycleHandler;->curActivity:Landroid/app/Activity;

    .line 94
    sget-object v0, Lcom/onesignal/ActivityLifecycleHandler;->sActivityAvailableListeners:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 95
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/onesignal/ActivityLifecycleHandler$ActivityAvailableListener;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onesignal/ActivityLifecycleHandler$ActivityAvailableListener;

    sget-object v3, Lcom/onesignal/ActivityLifecycleHandler;->curActivity:Landroid/app/Activity;

    invoke-virtual {v2, v3}, Lcom/onesignal/ActivityLifecycleHandler$ActivityAvailableListener;->available(Landroid/app/Activity;)V

    .line 96
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/onesignal/ActivityLifecycleHandler$ActivityAvailableListener;>;"
    goto :goto_0

    .line 99
    :cond_0
    :try_start_0
    sget-object v0, Lcom/onesignal/ActivityLifecycleHandler;->curActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 100
    .local v0, "treeObserver":Landroid/view/ViewTreeObserver;
    sget-object v1, Lcom/onesignal/ActivityLifecycleHandler;->sSystemConditionObservers:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 101
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/onesignal/OSSystemConditionController$OSSystemConditionObserver;>;"
    new-instance v3, Lcom/onesignal/ActivityLifecycleHandler$KeyboardListener;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/onesignal/OSSystemConditionController$OSSystemConditionObserver;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Lcom/onesignal/ActivityLifecycleHandler$KeyboardListener;-><init>(Lcom/onesignal/OSSystemConditionController$OSSystemConditionObserver;Ljava/lang/String;Lcom/onesignal/ActivityLifecycleHandler$1;)V

    .line 102
    .local v3, "keyboardListener":Lcom/onesignal/ActivityLifecycleHandler$KeyboardListener;
    invoke-virtual {v0, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 103
    sget-object v4, Lcom/onesignal/ActivityLifecycleHandler;->sKeyboardListeners:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    nop

    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/onesignal/OSSystemConditionController$OSSystemConditionObserver;>;"
    .end local v3    # "keyboardListener":Lcom/onesignal/ActivityLifecycleHandler$KeyboardListener;
    goto :goto_1

    .line 110
    .end local v0    # "treeObserver":Landroid/view/ViewTreeObserver;
    :cond_1
    goto :goto_2

    .line 105
    :catch_0
    move-exception v0

    .line 109
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 111
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_2
    return-void
.end method

.method static setSystemConditionObserver(Ljava/lang/String;Lcom/onesignal/OSSystemConditionController$OSSystemConditionObserver;)V
    .locals 3
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "systemConditionObserver"    # Lcom/onesignal/OSSystemConditionController$OSSystemConditionObserver;

    .line 68
    sget-object v0, Lcom/onesignal/ActivityLifecycleHandler;->curActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 70
    .local v0, "treeObserver":Landroid/view/ViewTreeObserver;
    new-instance v1, Lcom/onesignal/ActivityLifecycleHandler$KeyboardListener;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p0, v2}, Lcom/onesignal/ActivityLifecycleHandler$KeyboardListener;-><init>(Lcom/onesignal/OSSystemConditionController$OSSystemConditionObserver;Ljava/lang/String;Lcom/onesignal/ActivityLifecycleHandler$1;)V

    .line 71
    .local v1, "keyboardListener":Lcom/onesignal/ActivityLifecycleHandler$KeyboardListener;
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 72
    sget-object v2, Lcom/onesignal/ActivityLifecycleHandler;->sKeyboardListeners:Ljava/util/Map;

    invoke-interface {v2, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .end local v0    # "treeObserver":Landroid/view/ViewTreeObserver;
    .end local v1    # "keyboardListener":Lcom/onesignal/ActivityLifecycleHandler$KeyboardListener;
    :cond_0
    sget-object v0, Lcom/onesignal/ActivityLifecycleHandler;->sSystemConditionObservers:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    return-void
.end method
