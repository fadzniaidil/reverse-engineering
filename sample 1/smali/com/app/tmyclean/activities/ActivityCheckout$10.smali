.class Lcom/app/tmyclean/activities/ActivityCheckout$10;
.super Ljava/lang/Object;
.source "ActivityCheckout.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/app/tmyclean/activities/ActivityCheckout;->dialogSuccessOrder()V
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

    .line 565
    iput-object p1, p0, Lcom/app/tmyclean/activities/ActivityCheckout$10;->this$0:Lcom/app/tmyclean/activities/ActivityCheckout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
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

    .line 567
    iget-object v0, p0, Lcom/app/tmyclean/activities/ActivityCheckout$10;->this$0:Lcom/app/tmyclean/activities/ActivityCheckout;

    iget-object v0, v0, Lcom/app/tmyclean/activities/ActivityCheckout;->dbhelper:Lcom/app/tmyclean/utilities/DBHelper;

    iget-object v1, p0, Lcom/app/tmyclean/activities/ActivityCheckout$10;->this$0:Lcom/app/tmyclean/activities/ActivityCheckout;

    invoke-static {v1}, Lcom/app/tmyclean/activities/ActivityCheckout;->access$400(Lcom/app/tmyclean/activities/ActivityCheckout;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/app/tmyclean/activities/ActivityCheckout$10;->this$0:Lcom/app/tmyclean/activities/ActivityCheckout;

    iget-object v2, v2, Lcom/app/tmyclean/activities/ActivityCheckout;->str_order_list:Ljava/lang/String;

    iget-object v3, p0, Lcom/app/tmyclean/activities/ActivityCheckout$10;->this$0:Lcom/app/tmyclean/activities/ActivityCheckout;

    iget-object v3, v3, Lcom/app/tmyclean/activities/ActivityCheckout;->str_order_total:Ljava/lang/String;

    iget-object v4, p0, Lcom/app/tmyclean/activities/ActivityCheckout$10;->this$0:Lcom/app/tmyclean/activities/ActivityCheckout;

    iget-object v4, v4, Lcom/app/tmyclean/activities/ActivityCheckout;->date:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/app/tmyclean/utilities/DBHelper;->addDataHistory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    iget-object v0, p0, Lcom/app/tmyclean/activities/ActivityCheckout$10;->this$0:Lcom/app/tmyclean/activities/ActivityCheckout;

    iget-object v0, v0, Lcom/app/tmyclean/activities/ActivityCheckout;->dbhelper:Lcom/app/tmyclean/utilities/DBHelper;

    invoke-virtual {v0}, Lcom/app/tmyclean/utilities/DBHelper;->deleteAllData()V

    .line 570
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/app/tmyclean/activities/ActivityCheckout$10;->this$0:Lcom/app/tmyclean/activities/ActivityCheckout;

    invoke-virtual {v1}, Lcom/app/tmyclean/activities/ActivityCheckout;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/app/tmyclean/activities/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 571
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x24000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 572
    iget-object v1, p0, Lcom/app/tmyclean/activities/ActivityCheckout$10;->this$0:Lcom/app/tmyclean/activities/ActivityCheckout;

    invoke-virtual {v1, v0}, Lcom/app/tmyclean/activities/ActivityCheckout;->startActivity(Landroid/content/Intent;)V

    .line 573
    return-void
.end method
