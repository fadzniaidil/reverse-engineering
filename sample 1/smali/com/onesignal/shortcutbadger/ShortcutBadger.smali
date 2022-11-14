.class public final Lcom/onesignal/shortcutbadger/ShortcutBadger;
.super Ljava/lang/Object;
.source "ShortcutBadger.java"


# static fields
.field private static final BADGERS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/onesignal/shortcutbadger/Badger;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final LOG_TAG:Ljava/lang/String; = "ShortcutBadger"

.field private static final SUPPORTED_CHECK_ATTEMPTS:I = 0x3

.field private static sComponentName:Landroid/content/ComponentName;

.field private static final sCounterSupportedLock:Ljava/lang/Object;

.field private static volatile sIsBadgeCounterSupported:Ljava/lang/Boolean;

.field private static sShortcutBadger:Lcom/onesignal/shortcutbadger/Badger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 41
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/onesignal/shortcutbadger/ShortcutBadger;->BADGERS:Ljava/util/List;

    .line 44
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lcom/onesignal/shortcutbadger/ShortcutBadger;->sCounterSupportedLock:Ljava/lang/Object;

    .line 47
    const-class v1, Lcom/onesignal/shortcutbadger/impl/AdwHomeBadger;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    const-class v1, Lcom/onesignal/shortcutbadger/impl/ApexHomeBadger;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    const-class v1, Lcom/onesignal/shortcutbadger/impl/NewHtcHomeBadger;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    const-class v1, Lcom/onesignal/shortcutbadger/impl/NovaHomeBadger;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    const-class v1, Lcom/onesignal/shortcutbadger/impl/SonyHomeBadger;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    const-class v1, Lcom/onesignal/shortcutbadger/impl/AsusHomeBadger;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    const-class v1, Lcom/onesignal/shortcutbadger/impl/HuaweiHomeBadger;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    const-class v1, Lcom/onesignal/shortcutbadger/impl/OPPOHomeBader;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    const-class v1, Lcom/onesignal/shortcutbadger/impl/SamsungHomeBadger;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    const-class v1, Lcom/onesignal/shortcutbadger/impl/ZukHomeBadger;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    const-class v1, Lcom/onesignal/shortcutbadger/impl/VivoHomeBadger;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    const-class v1, Lcom/onesignal/shortcutbadger/impl/EverythingMeHomeBadger;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 236
    return-void
.end method

.method public static applyCount(Landroid/content/Context;I)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "badgeCount"    # I

    .line 73
    :try_start_0
    invoke-static {p0, p1}, Lcom/onesignal/shortcutbadger/ShortcutBadger;->applyCountOrThrow(Landroid/content/Context;I)V
    :try_end_0
    .catch Lcom/onesignal/shortcutbadger/ShortcutBadgeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    const/4 v0, 0x1

    return v0

    .line 75
    :catch_0
    move-exception v0

    .line 76
    .local v0, "e":Lcom/onesignal/shortcutbadger/ShortcutBadgeException;
    const/4 v1, 0x3

    const-string v2, "ShortcutBadger"

    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 77
    const-string v1, "Unable to execute badge"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 79
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public static applyCountOrThrow(Landroid/content/Context;I)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "badgeCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/onesignal/shortcutbadger/ShortcutBadgeException;
        }
    .end annotation

    .line 90
    sget-object v0, Lcom/onesignal/shortcutbadger/ShortcutBadger;->sShortcutBadger:Lcom/onesignal/shortcutbadger/Badger;

    if-nez v0, :cond_1

    .line 91
    invoke-static {p0}, Lcom/onesignal/shortcutbadger/ShortcutBadger;->initBadger(Landroid/content/Context;)Z

    move-result v0

    .line 93
    .local v0, "launcherReady":Z
    if-eqz v0, :cond_0

    goto :goto_0

    .line 94
    :cond_0
    new-instance v1, Lcom/onesignal/shortcutbadger/ShortcutBadgeException;

    const-string v2, "No default launcher available"

    invoke-direct {v1, v2}, Lcom/onesignal/shortcutbadger/ShortcutBadgeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 98
    .end local v0    # "launcherReady":Z
    :cond_1
    :goto_0
    :try_start_0
    sget-object v0, Lcom/onesignal/shortcutbadger/ShortcutBadger;->sShortcutBadger:Lcom/onesignal/shortcutbadger/Badger;

    sget-object v1, Lcom/onesignal/shortcutbadger/ShortcutBadger;->sComponentName:Landroid/content/ComponentName;

    invoke-interface {v0, p0, v1, p1}, Lcom/onesignal/shortcutbadger/Badger;->executeBadge(Landroid/content/Context;Landroid/content/ComponentName;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    nop

    .line 102
    return-void

    .line 99
    :catch_0
    move-exception v0

    .line 100
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/onesignal/shortcutbadger/ShortcutBadgeException;

    const-string v2, "Unable to execute badge"

    invoke-direct {v1, v2, v0}, Lcom/onesignal/shortcutbadger/ShortcutBadgeException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method public static applyNotification(Landroid/content/Context;Landroid/app/Notification;I)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "notification"    # Landroid/app/Notification;
    .param p2, "badgeCount"    # I

    .line 173
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "Xiaomi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "extraNotification"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 176
    .local v0, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 177
    .local v1, "extraNotification":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "setMessageCount"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 178
    .local v2, "method":Ljava/lang/reflect/Method;
    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    nop

    .end local v0    # "field":Ljava/lang/reflect/Field;
    .end local v1    # "extraNotification":Ljava/lang/Object;
    .end local v2    # "method":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 179
    :catch_0
    move-exception v0

    .line 180
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x3

    const-string v2, "ShortcutBadger"

    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 181
    const-string v1, "Unable to execute badge"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 185
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method private static initBadger(Landroid/content/Context;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .line 190
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 191
    .local v0, "launchIntent":Landroid/content/Intent;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 192
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to find launch intent for package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ShortcutBadger"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    return v1

    .line 196
    :cond_0
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    sput-object v2, Lcom/onesignal/shortcutbadger/ShortcutBadger;->sComponentName:Landroid/content/ComponentName;

    .line 198
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 199
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "android.intent.category.HOME"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 200
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/high16 v4, 0x10000

    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    .line 202
    .local v3, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v3, :cond_8

    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "resolver"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto/16 :goto_4

    .line 205
    :cond_1
    iget-object v1, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 207
    .local v1, "currentHomePackage":Ljava/lang/String;
    sget-object v4, Lcom/onesignal/shortcutbadger/ShortcutBadger;->BADGERS:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Class;

    .line 208
    .local v5, "badger":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/onesignal/shortcutbadger/Badger;>;"
    const/4 v6, 0x0

    .line 210
    .local v6, "shortcutBadger":Lcom/onesignal/shortcutbadger/Badger;
    :try_start_0
    invoke-virtual {v5}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/onesignal/shortcutbadger/Badger;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v6, v7

    .line 212
    goto :goto_1

    .line 211
    :catch_0
    move-exception v7

    .line 213
    :goto_1
    if-eqz v6, :cond_2

    invoke-interface {v6}, Lcom/onesignal/shortcutbadger/Badger;->getSupportLaunchers()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 214
    sput-object v6, Lcom/onesignal/shortcutbadger/ShortcutBadger;->sShortcutBadger:Lcom/onesignal/shortcutbadger/Badger;

    .line 215
    goto :goto_2

    .line 217
    .end local v5    # "badger":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/onesignal/shortcutbadger/Badger;>;"
    .end local v6    # "shortcutBadger":Lcom/onesignal/shortcutbadger/Badger;
    :cond_2
    goto :goto_0

    .line 219
    :cond_3
    :goto_2
    sget-object v4, Lcom/onesignal/shortcutbadger/ShortcutBadger;->sShortcutBadger:Lcom/onesignal/shortcutbadger/Badger;

    if-nez v4, :cond_7

    .line 220
    sget-object v4, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v5, "ZUK"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 221
    new-instance v4, Lcom/onesignal/shortcutbadger/impl/ZukHomeBadger;

    invoke-direct {v4}, Lcom/onesignal/shortcutbadger/impl/ZukHomeBadger;-><init>()V

    sput-object v4, Lcom/onesignal/shortcutbadger/ShortcutBadger;->sShortcutBadger:Lcom/onesignal/shortcutbadger/Badger;

    goto :goto_3

    .line 222
    :cond_4
    sget-object v4, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v5, "OPPO"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 223
    new-instance v4, Lcom/onesignal/shortcutbadger/impl/OPPOHomeBader;

    invoke-direct {v4}, Lcom/onesignal/shortcutbadger/impl/OPPOHomeBader;-><init>()V

    sput-object v4, Lcom/onesignal/shortcutbadger/ShortcutBadger;->sShortcutBadger:Lcom/onesignal/shortcutbadger/Badger;

    goto :goto_3

    .line 224
    :cond_5
    sget-object v4, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v5, "VIVO"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 225
    new-instance v4, Lcom/onesignal/shortcutbadger/impl/VivoHomeBadger;

    invoke-direct {v4}, Lcom/onesignal/shortcutbadger/impl/VivoHomeBadger;-><init>()V

    sput-object v4, Lcom/onesignal/shortcutbadger/ShortcutBadger;->sShortcutBadger:Lcom/onesignal/shortcutbadger/Badger;

    goto :goto_3

    .line 227
    :cond_6
    new-instance v4, Lcom/onesignal/shortcutbadger/impl/DefaultBadger;

    invoke-direct {v4}, Lcom/onesignal/shortcutbadger/impl/DefaultBadger;-><init>()V

    sput-object v4, Lcom/onesignal/shortcutbadger/ShortcutBadger;->sShortcutBadger:Lcom/onesignal/shortcutbadger/Badger;

    .line 230
    :cond_7
    :goto_3
    const/4 v4, 0x1

    return v4

    .line 203
    .end local v1    # "currentHomePackage":Ljava/lang/String;
    :cond_8
    :goto_4
    return v1
.end method

.method public static isBadgeCounterSupported(Landroid/content/Context;)Z
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .line 131
    sget-object v0, Lcom/onesignal/shortcutbadger/ShortcutBadger;->sIsBadgeCounterSupported:Ljava/lang/Boolean;

    if-nez v0, :cond_3

    .line 132
    sget-object v0, Lcom/onesignal/shortcutbadger/ShortcutBadger;->sCounterSupportedLock:Ljava/lang/Object;

    monitor-enter v0

    .line 134
    :try_start_0
    sget-object v1, Lcom/onesignal/shortcutbadger/ShortcutBadger;->sIsBadgeCounterSupported:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_2

    .line 135
    const/4 v1, 0x0

    .line 136
    .local v1, "lastErrorMessage":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v3, 0x3

    const/4 v4, 0x0

    if-ge v2, v3, :cond_1

    .line 138
    :try_start_1
    const-string v5, "ShortcutBadger"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Checking if platform supports badge counters, attempt "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "%d/%d."

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    add-int/lit8 v9, v2, 0x1

    .line 139
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v9, 0x1

    aput-object v3, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 138
    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    invoke-static {p0}, Lcom/onesignal/shortcutbadger/ShortcutBadger;->initBadger(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 141
    sget-object v3, Lcom/onesignal/shortcutbadger/ShortcutBadger;->sShortcutBadger:Lcom/onesignal/shortcutbadger/Badger;

    sget-object v5, Lcom/onesignal/shortcutbadger/ShortcutBadger;->sComponentName:Landroid/content/ComponentName;

    invoke-interface {v3, p0, v5, v4}, Lcom/onesignal/shortcutbadger/Badger;->executeBadge(Landroid/content/Context;Landroid/content/ComponentName;I)V

    .line 142
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    sput-object v3, Lcom/onesignal/shortcutbadger/ShortcutBadger;->sIsBadgeCounterSupported:Ljava/lang/Boolean;

    .line 143
    const-string v3, "ShortcutBadger"

    const-string v5, "Badge counter is supported in this platform."

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    goto :goto_2

    .line 146
    :cond_0
    const-string v3, "Failed to initialize the badge counter."
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v3

    .line 153
    goto :goto_1

    .line 148
    :catch_0
    move-exception v3

    .line 152
    .local v3, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    .line 136
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 156
    .end local v2    # "i":I
    :cond_1
    :goto_2
    sget-object v2, Lcom/onesignal/shortcutbadger/ShortcutBadger;->sIsBadgeCounterSupported:Ljava/lang/Boolean;

    if-nez v2, :cond_2

    .line 157
    const-string v2, "ShortcutBadger"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Badge counter seems not supported for this platform: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    sput-object v2, Lcom/onesignal/shortcutbadger/ShortcutBadger;->sIsBadgeCounterSupported:Ljava/lang/Boolean;

    .line 162
    .end local v1    # "lastErrorMessage":Ljava/lang/String;
    :cond_2
    monitor-exit v0

    goto :goto_3

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 164
    :cond_3
    :goto_3
    sget-object v0, Lcom/onesignal/shortcutbadger/ShortcutBadger;->sIsBadgeCounterSupported:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static removeCount(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 111
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/onesignal/shortcutbadger/ShortcutBadger;->applyCount(Landroid/content/Context;I)Z

    move-result v0

    return v0
.end method

.method public static removeCountOrThrow(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/onesignal/shortcutbadger/ShortcutBadgeException;
        }
    .end annotation

    .line 120
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/onesignal/shortcutbadger/ShortcutBadger;->applyCountOrThrow(Landroid/content/Context;I)V

    .line 121
    return-void
.end method
