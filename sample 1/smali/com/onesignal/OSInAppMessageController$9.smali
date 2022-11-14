.class Lcom/onesignal/OSInAppMessageController$9;
.super Ljava/lang/Object;
.source "OSInAppMessageController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/OSInAppMessageController;->persistInAppMessage(Lcom/onesignal/OSInAppMessage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/onesignal/OSInAppMessageController;

.field final synthetic val$message:Lcom/onesignal/OSInAppMessage;


# direct methods
.method constructor <init>(Lcom/onesignal/OSInAppMessageController;Lcom/onesignal/OSInAppMessage;)V
    .locals 0
    .param p1, "this$0"    # Lcom/onesignal/OSInAppMessageController;

    .line 625
    iput-object p1, p0, Lcom/onesignal/OSInAppMessageController$9;->this$0:Lcom/onesignal/OSInAppMessageController;

    iput-object p2, p0, Lcom/onesignal/OSInAppMessageController$9;->val$message:Lcom/onesignal/OSInAppMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 628
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 629
    iget-object v0, p0, Lcom/onesignal/OSInAppMessageController$9;->this$0:Lcom/onesignal/OSInAppMessageController;

    invoke-static {v0}, Lcom/onesignal/OSInAppMessageController;->access$700(Lcom/onesignal/OSInAppMessageController;)Lcom/onesignal/OSInAppMessageRepository;

    move-result-object v0

    iget-object v1, p0, Lcom/onesignal/OSInAppMessageController$9;->val$message:Lcom/onesignal/OSInAppMessage;

    invoke-virtual {v0, v1}, Lcom/onesignal/OSInAppMessageRepository;->saveInAppMessage(Lcom/onesignal/OSInAppMessage;)V

    .line 630
    return-void
.end method
