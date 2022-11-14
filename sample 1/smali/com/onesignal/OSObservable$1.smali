.class Lcom/onesignal/OSObservable$1;
.super Ljava/lang/Object;
.source "OSObservable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/OSObservable;->notifyChange(Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/onesignal/OSObservable;

.field final synthetic val$method:Ljava/lang/reflect/Method;

.field final synthetic val$state:Ljava/lang/Object;

.field final synthetic val$strongRefObserver:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/onesignal/OSObservable;Ljava/lang/reflect/Method;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "this$0"    # Lcom/onesignal/OSObservable;

    .line 82
    .local p0, "this":Lcom/onesignal/OSObservable$1;, "Lcom/onesignal/OSObservable$1;"
    iput-object p1, p0, Lcom/onesignal/OSObservable$1;->this$0:Lcom/onesignal/OSObservable;

    iput-object p2, p0, Lcom/onesignal/OSObservable$1;->val$method:Ljava/lang/reflect/Method;

    iput-object p3, p0, Lcom/onesignal/OSObservable$1;->val$strongRefObserver:Ljava/lang/Object;

    iput-object p4, p0, Lcom/onesignal/OSObservable$1;->val$state:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 86
    .local p0, "this":Lcom/onesignal/OSObservable$1;, "Lcom/onesignal/OSObservable$1;"
    :try_start_0
    iget-object v0, p0, Lcom/onesignal/OSObservable$1;->val$method:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/onesignal/OSObservable$1;->val$strongRefObserver:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/onesignal/OSObservable$1;->val$state:Ljava/lang/Object;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 89
    :catch_0
    move-exception v0

    .line 90
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1

    .line 87
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v0

    .line 88
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .line 91
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :goto_0
    nop

    .line 92
    :goto_1
    return-void
.end method
