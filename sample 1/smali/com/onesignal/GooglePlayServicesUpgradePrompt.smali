.class Lcom/onesignal/GooglePlayServicesUpgradePrompt;
.super Ljava/lang/Object;
.source "GooglePlayServicesUpgradePrompt.java"


# static fields
.field private static final PLAY_SERVICES_RESOLUTION_REQUEST:I = 0x2328


# direct methods
.method constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static OpenPlayStoreToApp(Landroid/app/Activity;)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;

    .line 77
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v0

    .line 78
    .local v0, "apiAvailability":Lcom/google/android/gms/common/GoogleApiAvailability;
    sget-object v1, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v1

    .line 80
    .local v1, "resultCode":I
    const/16 v2, 0x2328

    .line 81
    invoke-virtual {v0, p0, v1, v2}, Lcom/google/android/gms/common/GoogleApiAvailability;->getErrorResolutionPendingIntent(Landroid/content/Context;II)Landroid/app/PendingIntent;

    move-result-object v2

    .line 86
    .local v2, "pendingIntent":Landroid/app/PendingIntent;
    if-eqz v2, :cond_0

    .line 87
    invoke-virtual {v2}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    .end local v0    # "apiAvailability":Lcom/google/android/gms/common/GoogleApiAvailability;
    .end local v1    # "resultCode":I
    .end local v2    # "pendingIntent":Landroid/app/PendingIntent;
    :cond_0
    goto :goto_0

    .line 88
    :catch_0
    move-exception v0

    .line 89
    .local v0, "e":Landroid/app/PendingIntent$CanceledException;
    invoke-virtual {v0}, Landroid/app/PendingIntent$CanceledException;->printStackTrace()V

    .line 91
    .end local v0    # "e":Landroid/app/PendingIntent$CanceledException;
    :goto_0
    return-void
.end method

.method static synthetic access$000(Landroid/app/Activity;)V
    .locals 0
    .param p0, "x0"    # Landroid/app/Activity;

    .line 14
    invoke-static {p0}, Lcom/onesignal/GooglePlayServicesUpgradePrompt;->OpenPlayStoreToApp(Landroid/app/Activity;)V

    return-void
.end method

.method private static isGooglePlayStoreInstalled()Z
    .locals 4

    .line 19
    :try_start_0
    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 20
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const-string v1, "com.google.android.gms"

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 21
    .local v1, "info":Landroid/content/pm/PackageInfo;
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 22
    .local v2, "label":Ljava/lang/String;
    const-string v3, "Market"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/lit8 v3, v3, 0x1

    return v3

    .line 23
    .end local v0    # "pm":Landroid/content/pm/PackageManager;
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    .end local v2    # "label":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 27
    const/4 v0, 0x0

    return v0
.end method

.method static showUpdateGPSDialog()V
    .locals 3

    .line 31
    invoke-static {}, Lcom/onesignal/OSUtils;->isAndroidDeviceType()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/onesignal/GooglePlayServicesUpgradePrompt;->isGooglePlayStoreInstalled()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 34
    :cond_0
    sget-object v0, Lcom/onesignal/OneSignalPrefs;->PREFS_ONESIGNAL:Ljava/lang/String;

    const/4 v1, 0x0

    .line 35
    const-string v2, "GT_DO_NOT_SHOW_MISSING_GPS"

    invoke-static {v0, v2, v1}, Lcom/onesignal/OneSignalPrefs;->getBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    .line 40
    .local v0, "userSelectedSkip":Z
    if-eqz v0, :cond_1

    .line 41
    return-void

    .line 43
    :cond_1
    new-instance v1, Lcom/onesignal/GooglePlayServicesUpgradePrompt$1;

    invoke-direct {v1}, Lcom/onesignal/GooglePlayServicesUpgradePrompt$1;-><init>()V

    invoke-static {v1}, Lcom/onesignal/OSUtils;->runOnMainUIThread(Ljava/lang/Runnable;)V

    .line 72
    return-void

    .line 32
    .end local v0    # "userSelectedSkip":Z
    :cond_2
    :goto_0
    return-void
.end method
