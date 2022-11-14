.class final Lcom/onesignal/OneSignal$23;
.super Ljava/lang/Object;
.source "OneSignal.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/OneSignal;->cancelNotification(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$id:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 2686
    iput p1, p0, Lcom/onesignal/OneSignal$23;->val$id:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 2689
    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/onesignal/OneSignalDbHelper;->getInstance(Landroid/content/Context;)Lcom/onesignal/OneSignalDbHelper;

    move-result-object v0

    .line 2690
    .local v0, "dbHelper":Lcom/onesignal/OneSignalDbHelper;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android_notification_id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/onesignal/OneSignal$23;->val$id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "opened"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " = 0 AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "dismissed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " = 0"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2694
    .local v1, "whereStr":Ljava/lang/String;
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 2695
    .local v3, "values":Landroid/content/ContentValues;
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2697
    const-string v2, "notification"

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/onesignal/OneSignalDbHelper;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 2699
    .local v2, "records":I
    if-lez v2, :cond_0

    .line 2700
    sget-object v4, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    iget v5, p0, Lcom/onesignal/OneSignal$23;->val$id:I

    invoke-static {v4, v0, v5}, Lcom/onesignal/NotificationSummaryManager;->updatePossibleDependentSummaryOnDismiss(Landroid/content/Context;Lcom/onesignal/OneSignalDb;I)V

    .line 2701
    :cond_0
    sget-object v4, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {v0, v4}, Lcom/onesignal/BadgeCountUpdater;->update(Lcom/onesignal/OneSignalDb;Landroid/content/Context;)V

    .line 2703
    sget-object v4, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/onesignal/OneSignalNotificationManager;->getNotificationManager(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v4

    .line 2704
    .local v4, "notificationManager":Landroid/app/NotificationManager;
    iget v5, p0, Lcom/onesignal/OneSignal$23;->val$id:I

    invoke-virtual {v4, v5}, Landroid/app/NotificationManager;->cancel(I)V

    .line 2705
    return-void
.end method
