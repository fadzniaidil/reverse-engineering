.class Lcom/app/tmyclean/activities/ActivityCheckout$6;
.super Ljava/lang/Object;
.source "ActivityCheckout.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/app/tmyclean/activities/ActivityCheckout;->getValueFromEditText()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/app/tmyclean/activities/ActivityCheckout;


# direct methods
.method constructor <init>(Lcom/app/tmyclean/activities/ActivityCheckout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/app/tmyclean/activities/ActivityCheckout;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 324
    iput-object p1, p0, Lcom/app/tmyclean/activities/ActivityCheckout$6;->this$0:Lcom/app/tmyclean/activities/ActivityCheckout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dialog",
            "which"
        }
    .end annotation

    .line 327
    iget-object v0, p0, Lcom/app/tmyclean/activities/ActivityCheckout$6;->this$0:Lcom/app/tmyclean/activities/ActivityCheckout;

    invoke-virtual {v0}, Lcom/app/tmyclean/activities/ActivityCheckout;->requestAction()V

    .line 329
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/app/tmyclean/activities/ActivityCheckout$6;->this$0:Lcom/app/tmyclean/activities/ActivityCheckout;

    invoke-virtual {v1}, Lcom/app/tmyclean/activities/ActivityCheckout;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/app/tmyclean/activities/ActivityPay;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 330
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/app/tmyclean/activities/ActivityCheckout$6;->this$0:Lcom/app/tmyclean/activities/ActivityCheckout;

    iget-object v1, v1, Lcom/app/tmyclean/activities/ActivityCheckout;->str_shipping:Ljava/lang/String;

    const-string v2, "bank"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 331
    iget-object v1, p0, Lcom/app/tmyclean/activities/ActivityCheckout$6;->this$0:Lcom/app/tmyclean/activities/ActivityCheckout;

    invoke-virtual {v1, v0}, Lcom/app/tmyclean/activities/ActivityCheckout;->startActivity(Landroid/content/Intent;)V

    .line 332
    return-void
.end method
