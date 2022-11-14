.class final Lcom/onesignal/OSViewUtils$1;
.super Ljava/lang/Object;
.source "OSViewUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/OSViewUtils;->decorViewReady(Landroid/app/Activity;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$listenerKey:Ljava/lang/String;

.field final synthetic val$runnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/onesignal/OSViewUtils$1;->val$listenerKey:Ljava/lang/String;

    iput-object p2, p0, Lcom/onesignal/OSViewUtils$1;->val$runnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/onesignal/OSViewUtils$1;->val$listenerKey:Ljava/lang/String;

    new-instance v1, Lcom/onesignal/OSViewUtils$1$1;

    invoke-direct {v1, p0}, Lcom/onesignal/OSViewUtils$1$1;-><init>(Lcom/onesignal/OSViewUtils$1;)V

    invoke-static {v0, v1}, Lcom/onesignal/ActivityLifecycleHandler;->setActivityAvailableListener(Ljava/lang/String;Lcom/onesignal/ActivityLifecycleHandler$ActivityAvailableListener;)V

    .line 65
    return-void
.end method
