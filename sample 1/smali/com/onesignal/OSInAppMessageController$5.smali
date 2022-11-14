.class Lcom/onesignal/OSInAppMessageController$5;
.super Ljava/lang/Object;
.source "OSInAppMessageController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/OSInAppMessageController;->showAlertDialogMessage(Lcom/onesignal/OSInAppMessage;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/onesignal/OSInAppMessageController;

.field final synthetic val$inAppMessage:Lcom/onesignal/OSInAppMessage;

.field final synthetic val$prompts:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/onesignal/OSInAppMessageController;Lcom/onesignal/OSInAppMessage;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/onesignal/OSInAppMessageController;

    .line 361
    iput-object p1, p0, Lcom/onesignal/OSInAppMessageController$5;->this$0:Lcom/onesignal/OSInAppMessageController;

    iput-object p2, p0, Lcom/onesignal/OSInAppMessageController$5;->val$inAppMessage:Lcom/onesignal/OSInAppMessage;

    iput-object p3, p0, Lcom/onesignal/OSInAppMessageController$5;->val$prompts:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 363
    iget-object v0, p0, Lcom/onesignal/OSInAppMessageController$5;->this$0:Lcom/onesignal/OSInAppMessageController;

    iget-object v1, p0, Lcom/onesignal/OSInAppMessageController$5;->val$inAppMessage:Lcom/onesignal/OSInAppMessage;

    iget-object v2, p0, Lcom/onesignal/OSInAppMessageController$5;->val$prompts:Ljava/util/List;

    invoke-static {v0, v1, v2}, Lcom/onesignal/OSInAppMessageController;->access$500(Lcom/onesignal/OSInAppMessageController;Lcom/onesignal/OSInAppMessage;Ljava/util/List;)V

    .line 364
    return-void
.end method
