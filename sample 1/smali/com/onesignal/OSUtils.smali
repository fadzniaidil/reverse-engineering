.class Lcom/onesignal/OSUtils;
.super Ljava/lang/Object;
.source "OSUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onesignal/OSUtils$SchemaType;
    }
.end annotation


# static fields
.field private static final HMS_AVAILABLE_SUCCESSFUL:I = 0x0

.field private static final HMS_CORE_SERVICES_PACKAGE:Ljava/lang/String; = "com.huawei.hwid"

.field public static MAX_NETWORK_REQUEST_ATTEMPT_COUNT:I = 0x0

.field static final NO_RETRY_NETWROK_REQUEST_STATUS_CODES:[I

.field public static final UNINITIALIZABLE_STATUS:I = -0x3e7


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 75
    const/4 v0, 0x3

    sput v0, Lcom/onesignal/OSUtils;->MAX_NETWORK_REQUEST_ATTEMPT_COUNT:I

    .line 76
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/onesignal/OSUtils;->NO_RETRY_NETWROK_REQUEST_STATUS_CODES:[I

    return-void

    :array_0
    .array-data 4
        0x191
        0x192
        0x193
        0x194
        0x19a
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static areNotificationsEnabled(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 472
    :try_start_0
    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {v0}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/core/app/NotificationManagerCompat;->areNotificationsEnabled()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 473
    :catchall_0
    move-exception v0

    .line 475
    const/4 v0, 0x1

    return v0
.end method

.method private checkAndroidSupportLibrary(Landroid/content/Context;)Ljava/lang/Integer;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .line 257
    invoke-static {}, Lcom/onesignal/OSUtils;->hasWakefulBroadcastReceiver()Z

    move-result v0

    .line 258
    .local v0, "hasWakefulBroadcastReceiver":Z
    invoke-static {}, Lcom/onesignal/OSUtils;->hasNotificationManagerCompat()Z

    move-result v1

    .line 260
    .local v1, "hasNotificationManagerCompat":Z
    if-nez v0, :cond_0

    if-nez v1, :cond_0

    .line 261
    sget-object v2, Lcom/onesignal/OneSignal$LOG_LEVEL;->FATAL:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v3, "Could not find the Android Support Library. Please make sure it has been correctly added to your project."

    invoke-static {v2, v3}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 262
    const/4 v2, -0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    return-object v2

    .line 265
    :cond_0
    const/4 v2, -0x5

    const-string v3, "The included Android Support Library is to old or incomplete. Please update to the 26.0.0 revision or newer."

    if-eqz v0, :cond_3

    if-nez v1, :cond_1

    goto :goto_0

    .line 272
    :cond_1
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1a

    if-lt v4, v5, :cond_2

    .line 273
    invoke-static {p1}, Lcom/onesignal/OSUtils;->getTargetSdkVersion(Landroid/content/Context;)I

    move-result v4

    if-lt v4, v5, :cond_2

    .line 275
    invoke-static {}, Lcom/onesignal/OSUtils;->hasJobIntentService()Z

    move-result v4

    if-nez v4, :cond_2

    .line 276
    sget-object v4, Lcom/onesignal/OneSignal$LOG_LEVEL;->FATAL:Lcom/onesignal/OneSignal$LOG_LEVEL;

    invoke-static {v4, v3}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 277
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    return-object v2

    .line 281
    :cond_2
    const/4 v2, 0x0

    return-object v2

    .line 266
    :cond_3
    :goto_0
    sget-object v4, Lcom/onesignal/OneSignal$LOG_LEVEL;->FATAL:Lcom/onesignal/OneSignal$LOG_LEVEL;

    invoke-static {v4, v3}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 267
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    return-object v2
.end method

.method static extractStringsFromCollection(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 634
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 635
    .local v0, "result":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-nez p0, :cond_0

    .line 636
    return-object v0

    .line 638
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 639
    .local v2, "value":Ljava/lang/Object;
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 640
    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 641
    .end local v2    # "value":Ljava/lang/Object;
    :cond_1
    goto :goto_0

    .line 642
    :cond_2
    return-object v0
.end method

.method static getCorrectedLanguage()Ljava/lang/String;
    .locals 3

    .line 441
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 444
    .local v0, "lang":Ljava/lang/String;
    const-string v1, "iw"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 445
    const-string v1, "he"

    return-object v1

    .line 446
    :cond_0
    const-string v1, "in"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 447
    const-string v1, "id"

    return-object v1

    .line 448
    :cond_1
    const-string v1, "ji"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 449
    const-string v1, "yi"

    return-object v1

    .line 452
    :cond_2
    const-string v1, "zh"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 453
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 455
    :cond_3
    return-object v0
.end method

.method static getManifestMeta(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "metaName"    # Ljava/lang/String;

    .line 422
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 423
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 424
    .local v1, "bundle":Landroid/os/Bundle;
    invoke-virtual {v1, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v2

    .line 425
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "bundle":Landroid/os/Bundle;
    :catchall_0
    move-exception v0

    .line 426
    .local v0, "t":Ljava/lang/Throwable;
    sget-object v1, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 429
    .end local v0    # "t":Ljava/lang/Throwable;
    const/4 v0, 0x0

    return-object v0
.end method

.method static getResourceString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultStr"    # Ljava/lang/String;

    .line 433
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 434
    .local v0, "resources":Landroid/content/res/Resources;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "string"

    invoke-virtual {v0, p1, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 435
    .local v1, "bodyResId":I
    if-eqz v1, :cond_0

    .line 436
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 437
    :cond_0
    return-object p2
.end method

.method static getSoundUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sound"    # Ljava/lang/String;

    .line 514
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 515
    .local v0, "resources":Landroid/content/res/Resources;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 518
    .local v1, "packageName":Ljava/lang/String;
    invoke-static {p1}, Lcom/onesignal/OSUtils;->isValidResourceName(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "/"

    const-string v4, "android.resource://"

    const-string v5, "raw"

    if-eqz v2, :cond_0

    .line 519
    invoke-virtual {v0, p1, v5, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 520
    .local v2, "soundId":I
    if-eqz v2, :cond_0

    .line 521
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    return-object v3

    .line 524
    .end local v2    # "soundId":I
    :cond_0
    const-string v2, "onesignal_default_sound"

    invoke-virtual {v0, v2, v5, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 525
    .restart local v2    # "soundId":I
    if-eqz v2, :cond_1

    .line 526
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    return-object v3

    .line 528
    :cond_1
    const/4 v3, 0x0

    return-object v3
.end method

.method static getTargetSdkVersion(Landroid/content/Context;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 497
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 498
    .local v0, "packageName":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 500
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 501
    .local v2, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    iget v3, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    .line 502
    .end local v2    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v2

    .line 503
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 506
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/16 v2, 0xf

    return v2
.end method

.method static hasAllHMSLibrariesForPushKit()Z
    .locals 1

    .line 208
    invoke-static {}, Lcom/onesignal/OSUtils;->hasHMSAGConnectLibrary()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/onesignal/OSUtils;->hasHMSPushKitLibrary()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static hasConfigChangeFlag(Landroid/app/Activity;I)Z
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "configChangeFlag"    # I

    .line 622
    const/4 v0, 0x0

    .line 624
    .local v0, "hasFlag":Z
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ActivityInfo;->configChanges:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 625
    .local v1, "configChanges":I
    and-int v2, v1, p1

    .line 626
    .local v2, "flagInt":I
    if-eqz v2, :cond_0

    const/4 v3, 0x1

    :cond_0
    move v0, v3

    .line 629
    .end local v1    # "configChanges":I
    .end local v2    # "flagInt":I
    goto :goto_0

    .line 627
    :catch_0
    move-exception v1

    .line 628
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 630
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_0
    return v0
.end method

.method static hasFCMLibrary()Z
    .locals 2

    .line 144
    :try_start_0
    const-class v0, Lcom/google/firebase/messaging/FirebaseMessaging;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    const/4 v0, 0x1

    return v0

    .line 146
    :catch_0
    move-exception v0

    .line 147
    .local v0, "e":Ljava/lang/NoClassDefFoundError;
    const/4 v1, 0x0

    return v1
.end method

.method private static hasGCMLibrary()Z
    .locals 2

    .line 153
    :try_start_0
    const-class v0, Lcom/google/android/gms/gcm/GoogleCloudMessaging;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    const/4 v0, 0x1

    return v0

    .line 155
    :catch_0
    move-exception v0

    .line 156
    .local v0, "e":Ljava/lang/NoClassDefFoundError;
    const/4 v1, 0x0

    return v1
.end method

.method static hasGMSLocationLibrary()Z
    .locals 2

    .line 162
    :try_start_0
    const-class v0, Lcom/google/android/gms/location/LocationListener;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    const/4 v0, 0x1

    return v0

    .line 164
    :catch_0
    move-exception v0

    .line 165
    .local v0, "e":Ljava/lang/NoClassDefFoundError;
    const/4 v1, 0x0

    return v1
.end method

.method private static hasHMSAGConnectLibrary()Z
    .locals 2

    .line 189
    :try_start_0
    const-class v0, Lcom/huawei/agconnect/config/AGConnectServicesConfig;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    const/4 v0, 0x1

    return v0

    .line 191
    :catch_0
    move-exception v0

    .line 192
    .local v0, "e":Ljava/lang/NoClassDefFoundError;
    const/4 v1, 0x0

    return v1
.end method

.method private static hasHMSAvailabilityLibrary()Z
    .locals 2

    .line 171
    :try_start_0
    const-class v0, Lcom/huawei/hms/api/HuaweiApiAvailability;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    const/4 v0, 0x1

    return v0

    .line 173
    :catch_0
    move-exception v0

    .line 174
    .local v0, "e":Ljava/lang/NoClassDefFoundError;
    const/4 v1, 0x0

    return v1
.end method

.method static hasHMSLocationLibrary()Z
    .locals 2

    .line 198
    :try_start_0
    const-class v0, Lcom/huawei/hms/location/LocationCallback;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    const/4 v0, 0x1

    return v0

    .line 200
    :catch_0
    move-exception v0

    .line 201
    .local v0, "e":Ljava/lang/NoClassDefFoundError;
    const/4 v1, 0x0

    return v1
.end method

.method private static hasHMSPushKitLibrary()Z
    .locals 2

    .line 180
    :try_start_0
    const-class v0, Lcom/huawei/hms/aaid/HmsInstanceId;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    const/4 v0, 0x1

    return v0

    .line 182
    :catch_0
    move-exception v0

    .line 183
    .local v0, "e":Ljava/lang/NoClassDefFoundError;
    const/4 v1, 0x0

    return v1
.end method

.method private static hasJobIntentService()Z
    .locals 2

    .line 250
    :try_start_0
    const-class v0, Landroidx/core/app/JobIntentService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    return v0

    .line 251
    :catchall_0
    move-exception v0

    .line 252
    .local v0, "e":Ljava/lang/Throwable;
    const/4 v1, 0x0

    return v1
.end method

.method private static hasNotificationManagerCompat()Z
    .locals 2

    .line 241
    :try_start_0
    const-class v0, Landroidx/core/app/NotificationManagerCompat;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    return v0

    .line 242
    :catchall_0
    move-exception v0

    .line 243
    .local v0, "e":Ljava/lang/Throwable;
    const/4 v1, 0x0

    return v1
.end method

.method private static hasWakefulBroadcastReceiver()Z
    .locals 2

    .line 232
    :try_start_0
    const-class v0, Landroidx/legacy/content/WakefulBroadcastReceiver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    return v0

    .line 233
    :catchall_0
    move-exception v0

    .line 234
    .local v0, "e":Ljava/lang/Throwable;
    const/4 v1, 0x0

    return v1
.end method

.method static hexDigest(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "digestInstance"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 551
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 552
    .local v0, "digest":Ljava/security/MessageDigest;
    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 553
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 555
    .local v1, "messageDigest":[B
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 556
    .local v2, "hexString":Ljava/lang/StringBuilder;
    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-byte v5, v1, v4

    .line 557
    .local v5, "aMessageDigest":B
    and-int/lit16 v6, v5, 0xff

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    .line 558
    .local v6, "h":Ljava/lang/String;
    :goto_1
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x2

    if-ge v7, v8, :cond_0

    .line 559
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "0"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 560
    :cond_0
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 556
    .end local v5    # "aMessageDigest":B
    .end local v6    # "h":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 562
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method static isAndroidDeviceType()Z
    .locals 2

    .line 382
    new-instance v0, Lcom/onesignal/OSUtils;

    invoke-direct {v0}, Lcom/onesignal/OSUtils;-><init>()V

    invoke-virtual {v0}, Lcom/onesignal/OSUtils;->getDeviceType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method static isFireOSDeviceType()Z
    .locals 2

    .line 386
    new-instance v0, Lcom/onesignal/OSUtils;

    invoke-direct {v0}, Lcom/onesignal/OSUtils;-><init>()V

    invoke-virtual {v0}, Lcom/onesignal/OSUtils;->getDeviceType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static isGMSInstalledAndEnabled()Z
    .locals 1

    .line 299
    const-string v0, "com.google.android.gms"

    invoke-static {v0}, Lcom/onesignal/OSUtils;->packageInstalledAndEnabled(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static isHMSCoreInstalledAndEnabled()Z
    .locals 2

    .line 304
    invoke-static {}, Lcom/huawei/hms/api/HuaweiApiAvailability;->getInstance()Lcom/huawei/hms/api/HuaweiApiAvailability;

    move-result-object v0

    .line 305
    .local v0, "availability":Lcom/huawei/hms/api/HuaweiApiAvailability;
    sget-object v1, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/huawei/hms/api/HuaweiApiAvailability;->isHuaweiMobileServicesAvailable(Landroid/content/Context;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private static isHMSCoreInstalledAndEnabledFallback()Z
    .locals 1

    .line 312
    const-string v0, "com.huawei.hwid"

    invoke-static {v0}, Lcom/onesignal/OSUtils;->packageInstalledAndEnabled(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static isHuaweiDeviceType()Z
    .locals 2

    .line 390
    new-instance v0, Lcom/onesignal/OSUtils;

    invoke-direct {v0}, Lcom/onesignal/OSUtils;-><init>()V

    invoke-virtual {v0}, Lcom/onesignal/OSUtils;->getDeviceType()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static isRunningOnMainThread()Z
    .locals 2

    .line 479
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static isValidEmail(Ljava/lang/String;)Z
    .locals 3
    .param p0, "email"    # Ljava/lang/String;

    .line 459
    if-nez p0, :cond_0

    .line 460
    const/4 v0, 0x0

    return v0

    .line 462
    :cond_0
    const-string v0, "^[a-zA-Z0-9.!#$%&\'*+/=?^_`{|}~-]+@((\\[[0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3}\\])|(([a-zA-Z\\-0-9]+\\.)+[a-zA-Z]{2,}))$"

    .line 463
    .local v0, "emRegex":Ljava/lang/String;
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 464
    .local v1, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    return v2
.end method

.method static isValidResourceName(Ljava/lang/String;)Z
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 510
    if-eqz p0, :cond_0

    const-string v0, "^[0-9]"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static jsonStringToBundle(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 5
    .param p0, "data"    # Ljava/lang/String;

    .line 647
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 648
    .local v0, "jsonObject":Lorg/json/JSONObject;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 649
    .local v1, "bundle":Landroid/os/Bundle;
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 650
    .local v2, "iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 651
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 652
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 653
    .local v4, "value":Ljava/lang/String;
    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 654
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    goto :goto_0

    .line 655
    :cond_0
    return-object v1

    .line 656
    .end local v0    # "jsonObject":Lorg/json/JSONObject;
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v2    # "iterator":Ljava/util/Iterator;
    :catch_0
    move-exception v0

    .line 657
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 658
    const/4 v1, 0x0

    return-object v1
.end method

.method static newConcurrentSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/Set<",
            "TT;>;"
        }
    .end annotation

    .line 607
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method static newStringSetFromJSONArray(Lorg/json/JSONArray;)Ljava/util/Set;
    .locals 3
    .param p0, "jsonArray"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 612
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 614
    .local v0, "stringSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 615
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 614
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 618
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method private static openURLInBrowser(Landroid/net/Uri;)V
    .locals 3
    .param p0, "uri"    # Landroid/net/Uri;

    .line 578
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/onesignal/OSUtils$SchemaType;->fromString(Ljava/lang/String;)Lcom/onesignal/OSUtils$SchemaType;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 579
    .local v0, "type":Lcom/onesignal/OSUtils$SchemaType;
    :goto_0
    if-nez v0, :cond_1

    .line 580
    sget-object v0, Lcom/onesignal/OSUtils$SchemaType;->HTTP:Lcom/onesignal/OSUtils$SchemaType;

    .line 581
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 582
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 586
    :cond_1
    sget-object v1, Lcom/onesignal/OSUtils$1;->$SwitchMap$com$onesignal$OSUtils$SchemaType:[I

    invoke-virtual {v0}, Lcom/onesignal/OSUtils$SchemaType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 594
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .local v1, "intent":Landroid/content/Intent;
    goto :goto_1

    .line 588
    .end local v1    # "intent":Landroid/content/Intent;
    :pswitch_0
    const-string v1, "android.intent.action.MAIN"

    const-string v2, "android.intent.category.APP_BROWSER"

    invoke-static {v1, v2}, Landroid/content/Intent;->makeMainSelectorActivity(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 589
    .restart local v1    # "intent":Landroid/content/Intent;
    invoke-virtual {v1, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 590
    nop

    .line 597
    :goto_1
    const/high16 v2, 0x58080000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 602
    sget-object v2, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 603
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method static openURLInBrowser(Ljava/lang/String;)V
    .locals 1
    .param p0, "url"    # Ljava/lang/String;

    .line 574
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/onesignal/OSUtils;->openURLInBrowser(Landroid/net/Uri;)V

    .line 575
    return-void
.end method

.method private static packageInstalledAndEnabled(Ljava/lang/String;)Z
    .locals 3
    .param p0, "packageName"    # Ljava/lang/String;

    .line 286
    :try_start_0
    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 287
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const/16 v1, 0x80

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 288
    .local v1, "info":Landroid/content/pm/PackageInfo;
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v2, v2, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 289
    .end local v0    # "pm":Landroid/content/pm/PackageManager;
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 290
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    return v1
.end method

.method static parseVibrationPattern(Lorg/json/JSONObject;)[J
    .locals 6
    .param p0, "gcmBundle"    # Lorg/json/JSONObject;

    .line 533
    :try_start_0
    const-string v0, "vib_pt"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 535
    .local v0, "patternObj":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 536
    new-instance v1, Lorg/json/JSONArray;

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .local v1, "jsonVibArray":Lorg/json/JSONArray;
    goto :goto_0

    .line 538
    .end local v1    # "jsonVibArray":Lorg/json/JSONArray;
    :cond_0
    move-object v1, v0

    check-cast v1, Lorg/json/JSONArray;

    .line 540
    .restart local v1    # "jsonVibArray":Lorg/json/JSONArray;
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    new-array v2, v2, [J

    .line 541
    .local v2, "longArray":[J
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 542
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->optLong(I)J

    move-result-wide v4

    aput-wide v4, v2, v3
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 541
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 544
    .end local v3    # "i":I
    :cond_1
    return-object v2

    .line 545
    .end local v0    # "patternObj":Ljava/lang/Object;
    .end local v1    # "jsonVibArray":Lorg/json/JSONArray;
    .end local v2    # "longArray":[J
    :catch_0
    move-exception v0

    .line 547
    const/4 v0, 0x0

    return-object v0
.end method

.method static runOnMainThreadDelayed(Ljava/lang/Runnable;I)V
    .locals 3
    .param p0, "runnable"    # Ljava/lang/Runnable;
    .param p1, "delay"    # I

    .line 492
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 493
    .local v0, "handler":Landroid/os/Handler;
    int-to-long v1, p1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 494
    return-void
.end method

.method static runOnMainUIThread(Ljava/lang/Runnable;)V
    .locals 2
    .param p0, "runnable"    # Ljava/lang/Runnable;

    .line 483
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 484
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 486
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 487
    .local v0, "handler":Landroid/os/Handler;
    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 489
    .end local v0    # "handler":Landroid/os/Handler;
    :goto_0
    return-void
.end method

.method static shouldLogMissingAppIdError(Ljava/lang/String;)Z
    .locals 2
    .param p0, "appId"    # Ljava/lang/String;

    .line 663
    if-eqz p0, :cond_0

    .line 664
    const/4 v0, 0x0

    return v0

    .line 667
    :cond_0
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->INFO:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v1, "OneSignal was not initialized, ensure to always initialize OneSignal from the onCreate of your Application class."

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 669
    const/4 v0, 0x1

    return v0
.end method

.method public static shouldRetryNetworkRequest(I)Z
    .locals 5
    .param p0, "statusCode"    # I

    .line 101
    sget-object v0, Lcom/onesignal/OSUtils;->NO_RETRY_NETWROK_REQUEST_STATUS_CODES:[I

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget v4, v0, v3

    .line 102
    .local v4, "code":I
    if-ne p0, v4, :cond_0

    .line 103
    return v2

    .line 101
    .end local v4    # "code":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 105
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method static sleep(I)V
    .locals 2
    .param p0, "ms"    # I

    .line 567
    int-to-long v0, p0

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 570
    goto :goto_0

    .line 568
    :catch_0
    move-exception v0

    .line 569
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 571
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_0
    return-void
.end method

.method private supportsADM()Z
    .locals 2

    .line 319
    :try_start_0
    const-string v0, "com.amazon.device.messaging.ADM"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 320
    const/4 v0, 0x1

    return v0

    .line 321
    :catch_0
    move-exception v0

    .line 322
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    const/4 v1, 0x0

    return v1
.end method

.method private supportsGooglePush()Z
    .locals 1

    .line 337
    invoke-static {}, Lcom/onesignal/OSUtils;->hasFCMLibrary()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/onesignal/OSUtils;->hasGCMLibrary()Z

    move-result v0

    if-nez v0, :cond_0

    .line 338
    const/4 v0, 0x0

    return v0

    .line 341
    :cond_0
    invoke-static {}, Lcom/onesignal/OSUtils;->isGMSInstalledAndEnabled()Z

    move-result v0

    return v0
.end method

.method private supportsHMS()Z
    .locals 1

    .line 328
    invoke-static {}, Lcom/onesignal/OSUtils;->hasHMSAvailabilityLibrary()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/onesignal/OSUtils;->hasAllHMSLibrariesForPushKit()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 332
    :cond_0
    invoke-static {}, Lcom/onesignal/OSUtils;->isHMSCoreInstalledAndEnabled()Z

    move-result v0

    return v0

    .line 329
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method checkForGooglePushLibrary()Ljava/lang/Integer;
    .locals 4

    .line 212
    invoke-static {}, Lcom/onesignal/OSUtils;->hasFCMLibrary()Z

    move-result v0

    .line 213
    .local v0, "hasFCMLibrary":Z
    invoke-static {}, Lcom/onesignal/OSUtils;->hasGCMLibrary()Z

    move-result v1

    .line 215
    .local v1, "hasGCMLibrary":Z
    if-nez v0, :cond_0

    if-nez v1, :cond_0

    .line 216
    sget-object v2, Lcom/onesignal/OneSignal$LOG_LEVEL;->FATAL:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v3, "The Firebase FCM library is missing! Please make sure to include it in your project."

    invoke-static {v2, v3}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 217
    const/4 v2, -0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    return-object v2

    .line 220
    :cond_0
    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    .line 221
    sget-object v2, Lcom/onesignal/OneSignal$LOG_LEVEL;->WARN:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v3, "GCM Library detected, please upgrade to Firebase FCM library as GCM is deprecated!"

    invoke-static {v2, v3}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 223
    :cond_1
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 224
    sget-object v2, Lcom/onesignal/OneSignal$LOG_LEVEL;->WARN:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v3, "Both GCM & FCM Libraries detected! Please remove the deprecated GCM library."

    invoke-static {v2, v3}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 226
    :cond_2
    const/4 v2, 0x0

    return-object v2
.end method

.method getCarrierName()Ljava/lang/String;
    .locals 4

    .line 409
    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 412
    .local v1, "manager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v2

    .line 413
    .local v2, "carrierName":Ljava/lang/String;
    const-string v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    return-object v0

    .line 414
    .end local v1    # "manager":Landroid/telephony/TelephonyManager;
    .end local v2    # "carrierName":Ljava/lang/String;
    :catchall_0
    move-exception v1

    .line 415
    .local v1, "t":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 416
    return-object v0
.end method

.method getDeviceType()I
    .locals 3

    .line 357
    invoke-direct {p0}, Lcom/onesignal/OSUtils;->supportsADM()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 358
    const/4 v0, 0x2

    return v0

    .line 360
    :cond_0
    invoke-direct {p0}, Lcom/onesignal/OSUtils;->supportsGooglePush()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 361
    return v1

    .line 364
    :cond_1
    invoke-direct {p0}, Lcom/onesignal/OSUtils;->supportsHMS()Z

    move-result v0

    const/16 v2, 0xd

    if-eqz v0, :cond_2

    .line 365
    return v2

    .line 370
    :cond_2
    invoke-static {}, Lcom/onesignal/OSUtils;->isGMSInstalledAndEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 371
    return v1

    .line 373
    :cond_3
    invoke-static {}, Lcom/onesignal/OSUtils;->isHMSCoreInstalledAndEnabledFallback()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 374
    return v2

    .line 378
    :cond_4
    return v1
.end method

.method getNetType()Ljava/lang/Integer;
    .locals 5

    .line 394
    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 395
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 397
    .local v1, "netInfo":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_2

    .line 398
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    .line 399
    .local v2, "networkType":I
    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    const/16 v4, 0x9

    if-ne v2, v4, :cond_0

    goto :goto_0

    .line 401
    :cond_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    return-object v3

    .line 400
    :cond_1
    :goto_0
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    return-object v3

    .line 404
    .end local v2    # "networkType":I
    :cond_2
    const/4 v2, 0x0

    return-object v2
.end method

.method initializationChecker(Landroid/content/Context;Ljava/lang/String;)I
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "oneSignalAppId"    # Ljava/lang/String;

    .line 109
    const/4 v0, 0x1

    .line 110
    .local v0, "subscribableStatus":I
    invoke-virtual {p0}, Lcom/onesignal/OSUtils;->getDeviceType()I

    move-result v1

    .line 114
    .local v1, "deviceType":I
    :try_start_0
    invoke-static {p2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    nop

    .line 120
    const-string v2, "b2f7f966-d8cc-11e4-bed1-df8f05be55ba"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 121
    const-string v2, "5eb5a37e-b458-11e3-ac11-000c2940e62c"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 122
    :cond_0
    sget-object v2, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v3, "OneSignal Example AppID detected, please update to your app\'s id found on OneSignal.com"

    invoke-static {v2, v3}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 124
    :cond_1
    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 125
    invoke-virtual {p0}, Lcom/onesignal/OSUtils;->checkForGooglePushLibrary()Ljava/lang/Integer;

    move-result-object v2

    .line 126
    .local v2, "pushErrorType":Ljava/lang/Integer;
    if-eqz v2, :cond_2

    .line 127
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 130
    .end local v2    # "pushErrorType":Ljava/lang/Integer;
    :cond_2
    invoke-direct {p0, p1}, Lcom/onesignal/OSUtils;->checkAndroidSupportLibrary(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v2

    .line 131
    .local v2, "supportErrorType":Ljava/lang/Integer;
    if-eqz v2, :cond_3

    .line 132
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 134
    :cond_3
    return v0

    .line 115
    .end local v2    # "supportErrorType":Ljava/lang/Integer;
    :catchall_0
    move-exception v2

    .line 116
    .local v2, "t":Ljava/lang/Throwable;
    sget-object v3, Lcom/onesignal/OneSignal$LOG_LEVEL;->FATAL:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v4, "OneSignal AppId format is invalid.\nExample: \'b2f7f966-d8cc-11e4-bed1-df8f05be55ba\'\n"

    invoke-static {v3, v4, v2}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 117
    const/16 v3, -0x3e7

    return v3
.end method
