.class Lcom/onesignal/OneSignalSyncServiceUtils$SyncRunnable$1;
.super Ljava/lang/Object;
.source "OneSignalSyncServiceUtils.java"

# interfaces
.implements Lcom/onesignal/LocationController$LocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/OneSignalSyncServiceUtils$SyncRunnable;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/onesignal/OneSignalSyncServiceUtils$SyncRunnable;

.field final synthetic val$queue:Ljava/util/concurrent/BlockingQueue;


# direct methods
.method constructor <init>(Lcom/onesignal/OneSignalSyncServiceUtils$SyncRunnable;Ljava/util/concurrent/BlockingQueue;)V
    .locals 0
    .param p1, "this$0"    # Lcom/onesignal/OneSignalSyncServiceUtils$SyncRunnable;

    .line 243
    iput-object p1, p0, Lcom/onesignal/OneSignalSyncServiceUtils$SyncRunnable$1;->this$0:Lcom/onesignal/OneSignalSyncServiceUtils$SyncRunnable;

    iput-object p2, p0, Lcom/onesignal/OneSignalSyncServiceUtils$SyncRunnable$1;->val$queue:Ljava/util/concurrent/BlockingQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getType()Lcom/onesignal/LocationController$PermissionType;
    .locals 1

    .line 246
    sget-object v0, Lcom/onesignal/LocationController$PermissionType;->SYNC_SERVICE:Lcom/onesignal/LocationController$PermissionType;

    return-object v0
.end method

.method public onComplete(Lcom/onesignal/LocationController$LocationPoint;)V
    .locals 2
    .param p1, "point"    # Lcom/onesignal/LocationController$LocationPoint;

    .line 251
    if-eqz p1, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 252
    .local v0, "object":Ljava/lang/Object;
    :goto_0
    iget-object v1, p0, Lcom/onesignal/OneSignalSyncServiceUtils$SyncRunnable$1;->val$queue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 253
    return-void
.end method
