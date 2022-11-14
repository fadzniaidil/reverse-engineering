.class Lcom/onesignal/BadgeCountUpdater;
.super Ljava/lang/Object;
.source "BadgeCountUpdater.java"


# static fields
.field private static badgesEnabled:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    const/4 v0, -0x1

    sput v0, Lcom/onesignal/BadgeCountUpdater;->badgesEnabled:I

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static areBadgeSettingsEnabled(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .line 51
    sget v0, Lcom/onesignal/BadgeCountUpdater;->badgesEnabled:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    .line 52
    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 55
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 56
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 57
    .local v3, "bundle":Landroid/os/Bundle;
    if-eqz v3, :cond_3

    .line 58
    const-string v4, "com.onesignal.BadgeCount"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 59
    .local v4, "defaultStr":Ljava/lang/String;
    const-string v5, "DISABLE"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x0

    goto :goto_0

    :cond_2
    const/4 v5, 0x1

    :goto_0
    sput v5, Lcom/onesignal/BadgeCountUpdater;->badgesEnabled:I

    .line 60
    .end local v4    # "defaultStr":Ljava/lang/String;
    goto :goto_1

    .line 62
    :cond_3
    sput v2, Lcom/onesignal/BadgeCountUpdater;->badgesEnabled:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "bundle":Landroid/os/Bundle;
    :goto_1
    goto :goto_2

    .line 63
    :catch_0
    move-exception v0

    .line 64
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sput v1, Lcom/onesignal/BadgeCountUpdater;->badgesEnabled:I

    .line 65
    sget-object v3, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v4, "Error reading meta-data tag \'com.onesignal.BadgeCount\'. Disabling badge setting."

    invoke-static {v3, v4, v0}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 68
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_2
    sget v0, Lcom/onesignal/BadgeCountUpdater;->badgesEnabled:I

    if-ne v0, v2, :cond_4

    const/4 v1, 0x1

    :cond_4
    return v1
.end method

.method private static areBadgesEnabled(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 72
    invoke-static {p0}, Lcom/onesignal/BadgeCountUpdater;->areBadgeSettingsEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/onesignal/OSUtils;->areNotificationsEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static update(Lcom/onesignal/OneSignalDb;Landroid/content/Context;)V
    .locals 2
    .param p0, "db"    # Lcom/onesignal/OneSignalDb;
    .param p1, "context"    # Landroid/content/Context;

    .line 76
    invoke-static {p1}, Lcom/onesignal/BadgeCountUpdater;->areBadgesEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 77
    return-void

    .line 79
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 80
    invoke-static {p1}, Lcom/onesignal/BadgeCountUpdater;->updateStandard(Landroid/content/Context;)V

    goto :goto_0

    .line 82
    :cond_1
    invoke-static {p0, p1}, Lcom/onesignal/BadgeCountUpdater;->updateFallback(Lcom/onesignal/OneSignalDb;Landroid/content/Context;)V

    .line 83
    :goto_0
    return-void
.end method

.method static updateCount(ILandroid/content/Context;)V
    .locals 1
    .param p0, "count"    # I
    .param p1, "context"    # Landroid/content/Context;

    .line 118
    invoke-static {p1}, Lcom/onesignal/BadgeCountUpdater;->areBadgeSettingsEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 119
    return-void

    .line 122
    :cond_0
    :try_start_0
    invoke-static {p1, p0}, Lcom/onesignal/shortcutbadger/ShortcutBadger;->applyCountOrThrow(Landroid/content/Context;I)V
    :try_end_0
    .catch Lcom/onesignal/shortcutbadger/ShortcutBadgeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    goto :goto_0

    .line 123
    :catch_0
    move-exception v0

    .line 129
    :goto_0
    return-void
.end method

.method private static updateFallback(Lcom/onesignal/OneSignalDb;Landroid/content/Context;)V
    .locals 10
    .param p0, "db"    # Lcom/onesignal/OneSignalDb;
    .param p1, "context"    # Landroid/content/Context;

    .line 100
    nop

    .line 103
    invoke-static {}, Lcom/onesignal/OneSignalDbHelper;->recentUninteractedWithNotificationsWhere()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v9, Lcom/onesignal/NotificationLimitManager;->MAX_NUMBER_OF_NOTIFICATIONS_STR:Ljava/lang/String;

    .line 100
    const-string v2, "notification"

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    invoke-interface/range {v1 .. v9}, Lcom/onesignal/OneSignalDb;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 111
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 112
    .local v1, "notificationCount":I
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 114
    invoke-static {v1, p1}, Lcom/onesignal/BadgeCountUpdater;->updateCount(ILandroid/content/Context;)V

    .line 115
    return-void
.end method

.method private static updateStandard(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .line 87
    invoke-static {p0}, Lcom/onesignal/OneSignalNotificationManager;->getActiveNotifications(Landroid/content/Context;)[Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    .line 89
    .local v0, "activeNotifs":[Landroid/service/notification/StatusBarNotification;
    const/4 v1, 0x0

    .line 90
    .local v1, "runningCount":I
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 91
    .local v4, "activeNotif":Landroid/service/notification/StatusBarNotification;
    invoke-static {v4}, Lcom/onesignal/NotificationLimitManager;->isGroupSummary(Landroid/service/notification/StatusBarNotification;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 92
    goto :goto_1

    .line 93
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 90
    .end local v4    # "activeNotif":Landroid/service/notification/StatusBarNotification;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 96
    :cond_1
    invoke-static {v1, p0}, Lcom/onesignal/BadgeCountUpdater;->updateCount(ILandroid/content/Context;)V

    .line 97
    return-void
.end method
