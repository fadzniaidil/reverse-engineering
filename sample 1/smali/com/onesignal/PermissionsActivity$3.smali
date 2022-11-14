.class Lcom/onesignal/PermissionsActivity$3;
.super Ljava/lang/Object;
.source "PermissionsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/PermissionsActivity;->showLocationPermissionSettings()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/onesignal/PermissionsActivity;


# direct methods
.method constructor <init>(Lcom/onesignal/PermissionsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/onesignal/PermissionsActivity;

    .line 138
    iput-object p1, p0, Lcom/onesignal/PermissionsActivity$3;->this$0:Lcom/onesignal/PermissionsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 140
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 141
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/onesignal/PermissionsActivity$3;->this$0:Lcom/onesignal/PermissionsActivity;

    invoke-virtual {v2}, Lcom/onesignal/PermissionsActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 142
    iget-object v1, p0, Lcom/onesignal/PermissionsActivity$3;->this$0:Lcom/onesignal/PermissionsActivity;

    invoke-virtual {v1, v0}, Lcom/onesignal/PermissionsActivity;->startActivity(Landroid/content/Intent;)V

    .line 143
    sget-object v1, Lcom/onesignal/OneSignal$PromptActionResult;->PERMISSION_DENIED:Lcom/onesignal/OneSignal$PromptActionResult;

    const/4 v2, 0x1

    invoke-static {v2, v1}, Lcom/onesignal/LocationController;->sendAndClearPromptHandlers(ZLcom/onesignal/OneSignal$PromptActionResult;)V

    .line 144
    return-void
.end method
