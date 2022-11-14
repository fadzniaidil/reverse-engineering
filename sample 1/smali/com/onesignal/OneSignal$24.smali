.class final Lcom/onesignal/OneSignal$24;
.super Ljava/lang/Object;
.source "OneSignal.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/OneSignal;->cancelGroupedNotifications(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$group:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 2727
    iput-object p1, p0, Lcom/onesignal/OneSignal$24;->val$group:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .line 2730
    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/onesignal/OneSignalNotificationManager;->getNotificationManager(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    .line 2732
    .local v0, "notificationManager":Landroid/app/NotificationManager;
    sget-object v1, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/onesignal/OneSignalDbHelper;->getInstance(Landroid/content/Context;)Lcom/onesignal/OneSignalDbHelper;

    move-result-object v1

    .line 2734
    .local v1, "dbHelper":Lcom/onesignal/OneSignalDbHelper;
    const/4 v10, 0x1

    new-array v4, v10, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v11, "android_notification_id"

    aput-object v11, v4, v2

    .line 2736
    .local v4, "retColumn":[Ljava/lang/String;
    new-array v3, v10, [Ljava/lang/String;

    iget-object v5, p0, Lcom/onesignal/OneSignal$24;->val$group:Ljava/lang/String;

    aput-object v5, v3, v2

    move-object v12, v3

    .line 2738
    .local v12, "whereArgs":[Ljava/lang/String;
    const-string v13, "group_id = ? AND dismissed = 0 AND opened = 0"

    .line 2742
    .local v13, "whereStr":Ljava/lang/String;
    const-string v3, "notification"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, v1

    move-object v5, v13

    move-object v6, v12

    invoke-virtual/range {v2 .. v9}, Lcom/onesignal/OneSignalDbHelper;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 2749
    .local v2, "cursor":Landroid/database/Cursor;
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2750
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 2751
    .local v3, "notificationId":I
    const/4 v5, -0x1

    if-eq v3, v5, :cond_0

    .line 2752
    invoke-virtual {v0, v3}, Landroid/app/NotificationManager;->cancel(I)V

    .line 2753
    .end local v3    # "notificationId":I
    :cond_0
    goto :goto_0

    .line 2754
    :cond_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 2756
    const-string v3, "group_id = ? AND opened = 0 AND dismissed = 0"

    .line 2760
    .end local v13    # "whereStr":Ljava/lang/String;
    .local v3, "whereStr":Ljava/lang/String;
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 2761
    .local v5, "values":Landroid/content/ContentValues;
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "dismissed"

    invoke-virtual {v5, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2763
    const-string v6, "notification"

    invoke-virtual {v1, v6, v5, v3, v12}, Lcom/onesignal/OneSignalDbHelper;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2764
    sget-object v6, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {v1, v6}, Lcom/onesignal/BadgeCountUpdater;->update(Lcom/onesignal/OneSignalDb;Landroid/content/Context;)V

    .line 2765
    return-void
.end method
