.class final Lcom/onesignal/OneSignal$22;
.super Ljava/lang/Object;
.source "OneSignal.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/OneSignal;->clearOneSignalNotifications()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 2630
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .line 2633
    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/onesignal/OneSignalNotificationManager;->getNotificationManager(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    .line 2635
    .local v0, "notificationManager":Landroid/app/NotificationManager;
    sget-object v1, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/onesignal/OneSignalDbHelper;->getInstance(Landroid/content/Context;)Lcom/onesignal/OneSignalDbHelper;

    move-result-object v1

    .line 2636
    .local v1, "dbHelper":Lcom/onesignal/OneSignalDbHelper;
    const/4 v10, 0x1

    new-array v4, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "android_notification_id"

    aput-object v12, v4, v11

    .line 2638
    .local v4, "retColumn":[Ljava/lang/String;
    const-string v3, "notification"

    const-string v5, "dismissed = 0 AND opened = 0"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, v1

    invoke-virtual/range {v2 .. v9}, Lcom/onesignal/OneSignalDbHelper;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 2649
    .local v2, "cursor":Landroid/database/Cursor;
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2651
    :cond_0
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 2652
    .local v3, "existingId":I
    invoke-virtual {v0, v3}, Landroid/app/NotificationManager;->cancel(I)V

    .line 2653
    .end local v3    # "existingId":I
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2657
    :cond_1
    const-string v3, "opened = 0"

    .line 2658
    .local v3, "whereStr":Ljava/lang/String;
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 2659
    .local v5, "values":Landroid/content/ContentValues;
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "dismissed"

    invoke-virtual {v5, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2660
    const/4 v6, 0x0

    const-string v7, "notification"

    invoke-virtual {v1, v7, v5, v3, v6}, Lcom/onesignal/OneSignalDbHelper;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2662
    sget-object v6, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {v11, v6}, Lcom/onesignal/BadgeCountUpdater;->updateCount(ILandroid/content/Context;)V

    .line 2664
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 2665
    return-void
.end method
