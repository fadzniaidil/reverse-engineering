.class Lcom/app/tmyclean/activities/ActivityCheckout$8;
.super Ljava/lang/Object;
.source "ActivityCheckout.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/app/tmyclean/activities/ActivityCheckout;->requestAction()V
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

    .line 363
    iput-object p1, p0, Lcom/app/tmyclean/activities/ActivityCheckout$8;->this$0:Lcom/app/tmyclean/activities/ActivityCheckout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 3
    .param p1, "volleyError"    # Lcom/android/volley/VolleyError;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "volleyError"
        }
    .end annotation

    .line 366
    iget-object v0, p0, Lcom/app/tmyclean/activities/ActivityCheckout$8;->this$0:Lcom/app/tmyclean/activities/ActivityCheckout;

    iget-object v0, v0, Lcom/app/tmyclean/activities/ActivityCheckout;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 367
    iget-object v0, p0, Lcom/app/tmyclean/activities/ActivityCheckout$8;->this$0:Lcom/app/tmyclean/activities/ActivityCheckout;

    invoke-virtual {v0}, Lcom/app/tmyclean/activities/ActivityCheckout;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 368
    return-void
.end method
