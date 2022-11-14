.class public Lcom/onesignal/shortcutbadger/impl/OPPOHomeBader;
.super Ljava/lang/Object;
.source "OPPOHomeBader.java"

# interfaces
.implements Lcom/onesignal/shortcutbadger/Badger;


# static fields
.field private static final INTENT_ACTION:Ljava/lang/String; = "com.oppo.unsettledevent"

.field private static final INTENT_EXTRA_BADGEUPGRADE_COUNT:Ljava/lang/String; = "app_badge_count"

.field private static final INTENT_EXTRA_BADGE_COUNT:Ljava/lang/String; = "number"

.field private static final INTENT_EXTRA_BADGE_UPGRADENUMBER:Ljava/lang/String; = "upgradeNumber"

.field private static final INTENT_EXTRA_PACKAGENAME:Ljava/lang/String; = "pakeageName"

.field private static final PROVIDER_CONTENT_URI:Ljava/lang/String; = "content://com.android.badge/badge"

.field private static ROMVERSION:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    const/4 v0, -0x1

    sput v0, Lcom/onesignal/shortcutbadger/impl/OPPOHomeBader;->ROMVERSION:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private checkObjExists(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .line 154
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private executeClassLoad(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "cls"    # Ljava/lang/Class;
    .param p2, "str"    # Ljava/lang/String;
    .param p3, "clsArr"    # [Ljava/lang/Class;
    .param p4, "objArr"    # [Ljava/lang/Object;

    .line 108
    const/4 v0, 0x0

    .line 109
    .local v0, "obj":Ljava/lang/Object;
    if-eqz p1, :cond_0

    invoke-direct {p0, p2}, Lcom/onesignal/shortcutbadger/impl/OPPOHomeBader;->checkObjExists(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 110
    invoke-direct {p0, p1, p2, p3}, Lcom/onesignal/shortcutbadger/impl/OPPOHomeBader;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 111
    .local v1, "method":Ljava/lang/reflect/Method;
    if-eqz v1, :cond_0

    .line 112
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 114
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v1, v2, p4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 119
    :goto_0
    goto :goto_1

    .line 117
    :catch_0
    move-exception v2

    .line 118
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1

    .line 115
    .end local v2    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v2

    .line 116
    .local v2, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    goto :goto_0

    .line 122
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :cond_0
    :goto_1
    return-object v0
.end method

.method private getClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .line 144
    const/4 v0, 0x0

    .line 146
    .local v0, "cls":Ljava/lang/Class;
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 148
    goto :goto_0

    .line 147
    :catch_0
    move-exception v1

    .line 149
    :goto_0
    return-object v0
.end method

.method private getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 4
    .param p1, "cls"    # Ljava/lang/Class;
    .param p2, "str"    # Ljava/lang/String;
    .param p3, "clsArr"    # [Ljava/lang/Class;

    .line 126
    const/4 v0, 0x0

    .line 127
    .local v0, "method":Ljava/lang/reflect/Method;
    if-eqz p1, :cond_2

    invoke-direct {p0, p2}, Lcom/onesignal/shortcutbadger/impl/OPPOHomeBader;->checkObjExists(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 131
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    .line 132
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    .line 133
    invoke-virtual {p1, p2, p3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 134
    :catch_0
    move-exception v1

    .line 136
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {p1, p2, p3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object v2

    .line 137
    :catch_1
    move-exception v2

    .line 138
    .local v2, "e2":Ljava/lang/Exception;
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {p0, v3, p2, p3}, Lcom/onesignal/shortcutbadger/impl/OPPOHomeBader;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    goto :goto_0

    :cond_1
    move-object v3, v0

    :goto_0
    return-object v3

    .line 128
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "e2":Ljava/lang/Exception;
    :cond_2
    :goto_1
    return-object v0
.end method

.method private getSupportVersion()I
    .locals 4

    .line 77
    sget v0, Lcom/onesignal/shortcutbadger/impl/OPPOHomeBader;->ROMVERSION:I

    .line 78
    .local v0, "i":I
    if-ltz v0, :cond_0

    .line 79
    sget v1, Lcom/onesignal/shortcutbadger/impl/OPPOHomeBader;->ROMVERSION:I

    return v1

    .line 82
    :cond_0
    :try_start_0
    const-string v1, "com.color.os.ColorBuild"

    invoke-direct {p0, v1}, Lcom/onesignal/shortcutbadger/impl/OPPOHomeBader;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getColorOSVERSION"

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3, v3}, Lcom/onesignal/shortcutbadger/impl/OPPOHomeBader;->executeClassLoad(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 85
    goto :goto_0

    .line 83
    :catch_0
    move-exception v1

    .line 84
    .local v1, "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    .line 86
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    if-nez v0, :cond_4

    .line 88
    :try_start_1
    const-string v1, "ro.build.version.opporom"

    invoke-direct {p0, v1}, Lcom/onesignal/shortcutbadger/impl/OPPOHomeBader;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 89
    .local v1, "str":Ljava/lang/String;
    const-string v2, "V1.4"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 90
    const/4 v2, 0x3

    return v2

    .line 92
    :cond_1
    const-string v2, "V2.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 93
    const/4 v2, 0x4

    return v2

    .line 95
    :cond_2
    const-string v2, "V2.1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v2, :cond_3

    .line 96
    const/4 v2, 0x5

    return v2

    .line 100
    .end local v1    # "str":Ljava/lang/String;
    :cond_3
    goto :goto_1

    .line 98
    :catch_1
    move-exception v1

    .line 102
    :cond_4
    :goto_1
    sput v0, Lcom/onesignal/shortcutbadger/impl/OPPOHomeBader;->ROMVERSION:I

    .line 103
    return v0
.end method

.method private getSystemProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "propName"    # Ljava/lang/String;

    .line 160
    const/4 v0, 0x0

    .line 162
    .local v0, "input":Ljava/io/BufferedReader;
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getprop "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    .line 163
    .local v1, "p":Ljava/lang/Process;
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v4, 0x400

    invoke-direct {v2, v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    move-object v0, v2

    .line 164
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 165
    .local v2, "line":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    .end local v1    # "p":Ljava/lang/Process;
    invoke-static {v0}, Lcom/onesignal/shortcutbadger/util/CloseHelper;->closeQuietly(Ljava/io/Closeable;)V

    .line 170
    nop

    .line 171
    return-object v2

    .line 169
    .end local v2    # "line":Ljava/lang/String;
    :catchall_0
    move-exception v1

    invoke-static {v0}, Lcom/onesignal/shortcutbadger/util/CloseHelper;->closeQuietly(Ljava/io/Closeable;)V

    throw v1

    .line 166
    :catch_0
    move-exception v1

    .line 167
    .local v1, "ex":Ljava/io/IOException;
    const/4 v2, 0x0

    .line 169
    invoke-static {v0}, Lcom/onesignal/shortcutbadger/util/CloseHelper;->closeQuietly(Ljava/io/Closeable;)V

    .line 167
    return-object v2
.end method


# virtual methods
.method public executeBadge(Landroid/content/Context;Landroid/content/ComponentName;I)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "componentName"    # Landroid/content/ComponentName;
    .param p3, "badgeCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/onesignal/shortcutbadger/ShortcutBadgeException;
        }
    .end annotation

    .line 48
    if-nez p3, :cond_0

    .line 49
    const/4 p3, -0x1

    .line 51
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.oppo.unsettledevent"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 52
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pakeageName"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 53
    const-string v1, "number"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 54
    const-string v1, "upgradeNumber"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 55
    invoke-static {p1, v0}, Lcom/onesignal/shortcutbadger/util/BroadcastHelper;->canResolveBroadcast(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 56
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 58
    :cond_1
    invoke-direct {p0}, Lcom/onesignal/shortcutbadger/impl/OPPOHomeBader;->getSupportVersion()I

    move-result v1

    .line 59
    .local v1, "version":I
    const/4 v2, 0x6

    if-ne v1, v2, :cond_2

    .line 61
    :try_start_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 62
    .local v2, "extras":Landroid/os/Bundle;
    const-string v3, "app_badge_count"

    invoke-virtual {v2, v3, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 63
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "content://com.android.badge/badge"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const-string v5, "setAppBadgeCount"

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6, v2}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    nop

    .end local v2    # "extras":Landroid/os/Bundle;
    goto :goto_0

    .line 64
    :catchall_0
    move-exception v2

    .line 65
    .local v2, "th":Ljava/lang/Throwable;
    new-instance v3, Lcom/onesignal/shortcutbadger/ShortcutBadgeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unable to resolve intent: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/onesignal/shortcutbadger/ShortcutBadgeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 69
    .end local v1    # "version":I
    .end local v2    # "th":Ljava/lang/Throwable;
    :cond_2
    :goto_0
    return-void
.end method

.method public getSupportLaunchers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 73
    const-string v0, "com.oppo.launcher"

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
