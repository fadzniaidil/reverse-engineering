.class Lcom/onesignal/ActivityLifecycleHandler$AppFocusRunnable;
.super Ljava/lang/Object;
.source "ActivityLifecycleHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onesignal/ActivityLifecycleHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AppFocusRunnable"
.end annotation


# instance fields
.field private backgrounded:Z

.field private completed:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/onesignal/ActivityLifecycleHandler$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/onesignal/ActivityLifecycleHandler$1;

    .line 258
    invoke-direct {p0}, Lcom/onesignal/ActivityLifecycleHandler$AppFocusRunnable;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/onesignal/ActivityLifecycleHandler$AppFocusRunnable;)Z
    .locals 1
    .param p0, "x0"    # Lcom/onesignal/ActivityLifecycleHandler$AppFocusRunnable;

    .line 258
    iget-boolean v0, p0, Lcom/onesignal/ActivityLifecycleHandler$AppFocusRunnable;->backgrounded:Z

    return v0
.end method

.method static synthetic access$202(Lcom/onesignal/ActivityLifecycleHandler$AppFocusRunnable;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/onesignal/ActivityLifecycleHandler$AppFocusRunnable;
    .param p1, "x1"    # Z

    .line 258
    iput-boolean p1, p0, Lcom/onesignal/ActivityLifecycleHandler$AppFocusRunnable;->backgrounded:Z

    return p1
.end method

.method static synthetic access$300(Lcom/onesignal/ActivityLifecycleHandler$AppFocusRunnable;)Z
    .locals 1
    .param p0, "x0"    # Lcom/onesignal/ActivityLifecycleHandler$AppFocusRunnable;

    .line 258
    iget-boolean v0, p0, Lcom/onesignal/ActivityLifecycleHandler$AppFocusRunnable;->completed:Z

    return v0
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 262
    sget-object v0, Lcom/onesignal/ActivityLifecycleHandler;->curActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 263
    return-void

    .line 265
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/onesignal/ActivityLifecycleHandler$AppFocusRunnable;->backgrounded:Z

    .line 266
    invoke-static {}, Lcom/onesignal/ActivityLifecycleHandler;->access$400()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 267
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/onesignal/ActivityLifecycleHandler$ActivityAvailableListener;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onesignal/ActivityLifecycleHandler$ActivityAvailableListener;

    invoke-virtual {v3}, Lcom/onesignal/ActivityLifecycleHandler$ActivityAvailableListener;->lostFocus()V

    .line 268
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/onesignal/ActivityLifecycleHandler$ActivityAvailableListener;>;"
    goto :goto_0

    .line 269
    :cond_1
    invoke-static {}, Lcom/onesignal/OneSignal;->onAppLostFocus()V

    .line 270
    iput-boolean v0, p0, Lcom/onesignal/ActivityLifecycleHandler$AppFocusRunnable;->completed:Z

    .line 271
    return-void
.end method
