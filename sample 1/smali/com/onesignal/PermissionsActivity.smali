.class public Lcom/onesignal/PermissionsActivity;
.super Landroid/app/Activity;
.source "PermissionsActivity.java"


# static fields
.field private static final DELAY_TIME_CALLBACK_CALL:I = 0x1f4

.field private static final REQUEST_LOCATION:I = 0x2

.field private static final REQUEST_SETTINGS:I = 0x3

.field private static final TAG:Ljava/lang/String;

.field private static activityAvailableListener:Lcom/onesignal/ActivityLifecycleHandler$ActivityAvailableListener;

.field static answered:Z

.field static fallbackToSettings:Z

.field static neverAskAgainClicked:Z

.field static waiting:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    const-class v0, Lcom/onesignal/PermissionsActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/onesignal/PermissionsActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/onesignal/PermissionsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/onesignal/PermissionsActivity;

    .line 43
    invoke-direct {p0}, Lcom/onesignal/PermissionsActivity;->attemptToShowLocationPermissionSettings()V

    return-void
.end method

.method private attemptToShowLocationPermissionSettings()V
    .locals 1

    .line 128
    sget-boolean v0, Lcom/onesignal/PermissionsActivity;->fallbackToSettings:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/onesignal/PermissionsActivity;->neverAskAgainClicked:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/onesignal/LocationController;->requestPermission:Ljava/lang/String;

    .line 130
    invoke-static {p0, v0}, Lcom/onesignal/AndroidSupportV4Compat$ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 131
    invoke-direct {p0}, Lcom/onesignal/PermissionsActivity;->showLocationPermissionSettings()V

    .line 132
    :cond_0
    return-void
.end method

.method private requestPermission()V
    .locals 3

    .line 82
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    .line 83
    invoke-virtual {p0}, Lcom/onesignal/PermissionsActivity;->finish()V

    .line 84
    sget v0, Lcom/onesignal/R$anim;->onesignal_fade_in:I

    sget v1, Lcom/onesignal/R$anim;->onesignal_fade_out:I

    invoke-virtual {p0, v0, v1}, Lcom/onesignal/PermissionsActivity;->overridePendingTransition(II)V

    .line 85
    return-void

    .line 88
    :cond_0
    sget-boolean v0, Lcom/onesignal/PermissionsActivity;->waiting:Z

    if-nez v0, :cond_1

    .line 89
    const/4 v0, 0x1

    sput-boolean v0, Lcom/onesignal/PermissionsActivity;->waiting:Z

    .line 90
    sget-object v1, Lcom/onesignal/LocationController;->requestPermission:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/onesignal/AndroidSupportV4Compat$ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v1

    xor-int/2addr v1, v0

    sput-boolean v1, Lcom/onesignal/PermissionsActivity;->neverAskAgainClicked:Z

    .line 91
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    sget-object v2, Lcom/onesignal/LocationController;->requestPermission:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Lcom/onesignal/AndroidSupportV4Compat$ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 93
    :cond_1
    return-void
.end method

.method private showLocationPermissionSettings()V
    .locals 3

    .line 135
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v1, Lcom/onesignal/ActivityLifecycleHandler;->curActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/onesignal/R$string;->location_not_available_title:I

    .line 136
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/onesignal/R$string;->location_not_available_open_settings_message:I

    .line 137
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/onesignal/R$string;->location_not_available_open_settings_option:I

    new-instance v2, Lcom/onesignal/PermissionsActivity$3;

    invoke-direct {v2, p0}, Lcom/onesignal/PermissionsActivity$3;-><init>(Lcom/onesignal/PermissionsActivity;)V

    .line 138
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/onesignal/PermissionsActivity$2;

    invoke-direct {v1, p0}, Lcom/onesignal/PermissionsActivity$2;-><init>(Lcom/onesignal/PermissionsActivity;)V

    .line 146
    const v2, 0x1040009

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 152
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 153
    return-void
.end method

.method static startPrompt(Z)V
    .locals 2
    .param p0, "fallbackCondition"    # Z

    .line 156
    sget-boolean v0, Lcom/onesignal/PermissionsActivity;->waiting:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/onesignal/PermissionsActivity;->answered:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 159
    :cond_0
    sput-boolean p0, Lcom/onesignal/PermissionsActivity;->fallbackToSettings:Z

    .line 160
    new-instance v0, Lcom/onesignal/PermissionsActivity$4;

    invoke-direct {v0}, Lcom/onesignal/PermissionsActivity$4;-><init>()V

    sput-object v0, Lcom/onesignal/PermissionsActivity;->activityAvailableListener:Lcom/onesignal/ActivityLifecycleHandler$ActivityAvailableListener;

    .line 172
    sget-object v1, Lcom/onesignal/PermissionsActivity;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/onesignal/ActivityLifecycleHandler;->setActivityAvailableListener(Ljava/lang/String;Lcom/onesignal/ActivityLifecycleHandler$ActivityAvailableListener;)V

    .line 173
    return-void

    .line 157
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 57
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    invoke-static {p0}, Lcom/onesignal/OneSignal;->setAppContext(Landroid/content/Context;)V

    .line 64
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 65
    const-string v1, "android:hasCurrentPermissionsRequest"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    const/4 v0, 0x1

    sput-boolean v0, Lcom/onesignal/PermissionsActivity;->waiting:Z

    goto :goto_0

    .line 68
    :cond_0
    invoke-direct {p0}, Lcom/onesignal/PermissionsActivity;->requestPermission()V

    .line 69
    :goto_0
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 73
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 75
    invoke-static {}, Lcom/onesignal/OneSignal;->isInitDone()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    invoke-direct {p0}, Lcom/onesignal/PermissionsActivity;->requestPermission()V

    .line 77
    :cond_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .line 97
    const/4 v0, 0x1

    sput-boolean v0, Lcom/onesignal/PermissionsActivity;->answered:Z

    .line 98
    const/4 v0, 0x0

    sput-boolean v0, Lcom/onesignal/PermissionsActivity;->waiting:Z

    .line 106
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 107
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/onesignal/PermissionsActivity$1;

    invoke-direct {v1, p0, p3}, Lcom/onesignal/PermissionsActivity$1;-><init>(Lcom/onesignal/PermissionsActivity;[I)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 122
    :cond_0
    sget-object v0, Lcom/onesignal/PermissionsActivity;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/onesignal/ActivityLifecycleHandler;->removeActivityAvailableListener(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p0}, Lcom/onesignal/PermissionsActivity;->finish()V

    .line 124
    sget v0, Lcom/onesignal/R$anim;->onesignal_fade_in:I

    sget v1, Lcom/onesignal/R$anim;->onesignal_fade_out:I

    invoke-virtual {p0, v0, v1}, Lcom/onesignal/PermissionsActivity;->overridePendingTransition(II)V

    .line 125
    return-void
.end method
