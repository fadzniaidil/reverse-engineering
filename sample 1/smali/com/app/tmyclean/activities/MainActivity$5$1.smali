.class Lcom/app/tmyclean/activities/MainActivity$5$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/app/tmyclean/activities/MainActivity$5;->onResponse(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/app/tmyclean/activities/MainActivity$5;

.field final synthetic val$currency_code:Ljava/lang/String;

.field final synthetic val$tax:Ljava/lang/Double;


# direct methods
.method constructor <init>(Lcom/app/tmyclean/activities/MainActivity$5;Ljava/lang/Double;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/app/tmyclean/activities/MainActivity$5;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$1",
            "val$tax",
            "val$currency_code"
        }
    .end annotation

    .line 310
    iput-object p1, p0, Lcom/app/tmyclean/activities/MainActivity$5$1;->this$1:Lcom/app/tmyclean/activities/MainActivity$5;

    iput-object p2, p0, Lcom/app/tmyclean/activities/MainActivity$5$1;->val$tax:Ljava/lang/Double;

    iput-object p3, p0, Lcom/app/tmyclean/activities/MainActivity$5$1;->val$currency_code:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 313
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/app/tmyclean/activities/MainActivity$5$1;->this$1:Lcom/app/tmyclean/activities/MainActivity$5;

    iget-object v1, v1, Lcom/app/tmyclean/activities/MainActivity$5;->this$0:Lcom/app/tmyclean/activities/MainActivity;

    invoke-virtual {v1}, Lcom/app/tmyclean/activities/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/app/tmyclean/activities/ActivityCart;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 314
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/app/tmyclean/activities/MainActivity$5$1;->val$tax:Ljava/lang/Double;

    const-string v2, "tax"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 315
    iget-object v1, p0, Lcom/app/tmyclean/activities/MainActivity$5$1;->val$currency_code:Ljava/lang/String;

    const-string v2, "currency_code"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 316
    iget-object v1, p0, Lcom/app/tmyclean/activities/MainActivity$5$1;->this$1:Lcom/app/tmyclean/activities/MainActivity$5;

    iget-object v1, v1, Lcom/app/tmyclean/activities/MainActivity$5;->this$0:Lcom/app/tmyclean/activities/MainActivity;

    invoke-virtual {v1, v0}, Lcom/app/tmyclean/activities/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 317
    return-void
.end method
