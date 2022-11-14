.class Lcom/onesignal/OSSystemConditionController$1;
.super Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;
.source "OSSystemConditionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/OSSystemConditionController;->isDialogFragmentShowing(Landroid/content/Context;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/onesignal/OSSystemConditionController;

.field final synthetic val$manager:Landroidx/fragment/app/FragmentManager;


# direct methods
.method constructor <init>(Lcom/onesignal/OSSystemConditionController;Landroidx/fragment/app/FragmentManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/onesignal/OSSystemConditionController;

    .line 54
    iput-object p1, p0, Lcom/onesignal/OSSystemConditionController$1;->this$0:Lcom/onesignal/OSSystemConditionController;

    iput-object p2, p0, Lcom/onesignal/OSSystemConditionController$1;->val$manager:Landroidx/fragment/app/FragmentManager;

    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;-><init>()V

    return-void
.end method


# virtual methods
.method public onFragmentDetached(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V
    .locals 1
    .param p1, "fm"    # Landroidx/fragment/app/FragmentManager;
    .param p2, "fragmentDetached"    # Landroidx/fragment/app/Fragment;

    .line 58
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentDetached(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V

    .line 59
    instance-of v0, p2, Landroidx/fragment/app/DialogFragment;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/onesignal/OSSystemConditionController$1;->val$manager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0, p0}, Landroidx/fragment/app/FragmentManager;->unregisterFragmentLifecycleCallbacks(Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;)V

    .line 61
    iget-object v0, p0, Lcom/onesignal/OSSystemConditionController$1;->this$0:Lcom/onesignal/OSSystemConditionController;

    invoke-static {v0}, Lcom/onesignal/OSSystemConditionController;->access$000(Lcom/onesignal/OSSystemConditionController;)Lcom/onesignal/OSSystemConditionController$OSSystemConditionObserver;

    move-result-object v0

    invoke-interface {v0}, Lcom/onesignal/OSSystemConditionController$OSSystemConditionObserver;->systemConditionChanged()V

    .line 63
    :cond_0
    return-void
.end method
