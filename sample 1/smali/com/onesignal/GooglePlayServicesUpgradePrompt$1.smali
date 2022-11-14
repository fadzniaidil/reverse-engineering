.class final Lcom/onesignal/GooglePlayServicesUpgradePrompt$1;
.super Ljava/lang/Object;
.source "GooglePlayServicesUpgradePrompt.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/GooglePlayServicesUpgradePrompt;->showUpdateGPSDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 46
    sget-object v0, Lcom/onesignal/ActivityLifecycleHandler;->curActivity:Landroid/app/Activity;

    .line 47
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_1

    sget-object v1, Lcom/onesignal/OneSignal;->mInitBuilder:Lcom/onesignal/OneSignal$Builder;

    iget-boolean v1, v1, Lcom/onesignal/OneSignal$Builder;->mDisableGmsMissingPrompt:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 51
    :cond_0
    const-string v1, "onesignal_gms_missing_alert_text"

    const-string v2, "To receive push notifications please press \'Update\' to enable \'Google Play services\'."

    invoke-static {v0, v1, v2}, Lcom/onesignal/OSUtils;->getResourceString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 52
    .local v1, "alertBodyText":Ljava/lang/String;
    const-string v2, "onesignal_gms_missing_alert_button_update"

    const-string v3, "Update"

    invoke-static {v0, v2, v3}, Lcom/onesignal/OSUtils;->getResourceString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 53
    .local v2, "alertButtonUpdate":Ljava/lang/String;
    const-string v3, "onesignal_gms_missing_alert_button_skip"

    const-string v4, "Skip"

    invoke-static {v0, v3, v4}, Lcom/onesignal/OSUtils;->getResourceString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 54
    .local v3, "alertButtonSkip":Ljava/lang/String;
    const-string v4, "onesignal_gms_missing_alert_button_close"

    const-string v5, "Close"

    invoke-static {v0, v4, v5}, Lcom/onesignal/OSUtils;->getResourceString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 56
    .local v4, "alertButtonClose":Ljava/lang/String;
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 57
    .local v5, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v5, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    new-instance v7, Lcom/onesignal/GooglePlayServicesUpgradePrompt$1$2;

    invoke-direct {v7, p0, v0}, Lcom/onesignal/GooglePlayServicesUpgradePrompt$1$2;-><init>(Lcom/onesignal/GooglePlayServicesUpgradePrompt$1;Landroid/app/Activity;)V

    invoke-virtual {v6, v2, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    new-instance v7, Lcom/onesignal/GooglePlayServicesUpgradePrompt$1$1;

    invoke-direct {v7, p0}, Lcom/onesignal/GooglePlayServicesUpgradePrompt$1$1;-><init>(Lcom/onesignal/GooglePlayServicesUpgradePrompt$1;)V

    .line 62
    invoke-virtual {v6, v3, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const/4 v7, 0x0

    .line 69
    invoke-virtual {v6, v4, v7}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    .line 70
    return-void

    .line 48
    .end local v1    # "alertBodyText":Ljava/lang/String;
    .end local v2    # "alertButtonUpdate":Ljava/lang/String;
    .end local v3    # "alertButtonSkip":Ljava/lang/String;
    .end local v4    # "alertButtonClose":Ljava/lang/String;
    .end local v5    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_1
    :goto_0
    return-void
.end method
