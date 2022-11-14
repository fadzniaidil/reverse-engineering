.class Lcom/app/tmyclean/activities/ActivityCart$1;
.super Ljava/lang/Object;
.source "ActivityCart.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/app/tmyclean/activities/ActivityCart;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/app/tmyclean/activities/ActivityCart;


# direct methods
.method constructor <init>(Lcom/app/tmyclean/activities/ActivityCart;)V
    .locals 0
    .param p1, "this$0"    # Lcom/app/tmyclean/activities/ActivityCart;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 94
    iput-object p1, p0, Lcom/app/tmyclean/activities/ActivityCart$1;->this$0:Lcom/app/tmyclean/activities/ActivityCart;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lcom/app/tmyclean/activities/ActivityCart$1;->this$0:Lcom/app/tmyclean/activities/ActivityCart;

    iget-object v0, v0, Lcom/app/tmyclean/activities/ActivityCart;->dbhelper:Lcom/app/tmyclean/utilities/DBHelper;

    invoke-virtual {v0}, Lcom/app/tmyclean/utilities/DBHelper;->close()V

    .line 98
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/app/tmyclean/activities/ActivityCart$1;->this$0:Lcom/app/tmyclean/activities/ActivityCart;

    const-class v2, Lcom/app/tmyclean/activities/ActivityCheckout;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 99
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/app/tmyclean/activities/ActivityCart$1;->this$0:Lcom/app/tmyclean/activities/ActivityCart;

    iget-wide v1, v1, Lcom/app/tmyclean/activities/ActivityCart;->str_tax:D

    const-string v3, "tax"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    .line 100
    iget-object v1, p0, Lcom/app/tmyclean/activities/ActivityCart$1;->this$0:Lcom/app/tmyclean/activities/ActivityCart;

    iget-object v1, v1, Lcom/app/tmyclean/activities/ActivityCart;->str_currency_code:Ljava/lang/String;

    const-string v2, "currency_code"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    iget-object v1, p0, Lcom/app/tmyclean/activities/ActivityCart$1;->this$0:Lcom/app/tmyclean/activities/ActivityCart;

    invoke-virtual {v1, v0}, Lcom/app/tmyclean/activities/ActivityCart;->startActivity(Landroid/content/Intent;)V

    .line 102
    return-void
.end method
