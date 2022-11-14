.class Lcom/onesignal/PermissionsActivity$2;
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

    .line 146
    iput-object p1, p0, Lcom/onesignal/PermissionsActivity$2;->this$0:Lcom/onesignal/PermissionsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 149
    sget-object v0, Lcom/onesignal/OneSignal$PromptActionResult;->PERMISSION_DENIED:Lcom/onesignal/OneSignal$PromptActionResult;

    const/4 v1, 0x1

    invoke-static {v1, v0}, Lcom/onesignal/LocationController;->sendAndClearPromptHandlers(ZLcom/onesignal/OneSignal$PromptActionResult;)V

    .line 150
    return-void
.end method
