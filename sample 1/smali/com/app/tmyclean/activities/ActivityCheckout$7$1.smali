.class Lcom/app/tmyclean/activities/ActivityCheckout$7$1;
.super Ljava/lang/Object;
.source "ActivityCheckout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/app/tmyclean/activities/ActivityCheckout$7;->onResponse(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/app/tmyclean/activities/ActivityCheckout$7;


# direct methods
.method constructor <init>(Lcom/app/tmyclean/activities/ActivityCheckout$7;)V
    .locals 0
    .param p1, "this$1"    # Lcom/app/tmyclean/activities/ActivityCheckout$7;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    .line 353
    iput-object p1, p0, Lcom/app/tmyclean/activities/ActivityCheckout$7$1;->this$1:Lcom/app/tmyclean/activities/ActivityCheckout$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 356
    iget-object v0, p0, Lcom/app/tmyclean/activities/ActivityCheckout$7$1;->this$1:Lcom/app/tmyclean/activities/ActivityCheckout$7;

    iget-object v0, v0, Lcom/app/tmyclean/activities/ActivityCheckout$7;->this$0:Lcom/app/tmyclean/activities/ActivityCheckout;

    iget-object v0, v0, Lcom/app/tmyclean/activities/ActivityCheckout;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 357
    iget-object v0, p0, Lcom/app/tmyclean/activities/ActivityCheckout$7$1;->this$1:Lcom/app/tmyclean/activities/ActivityCheckout$7;

    iget-object v0, v0, Lcom/app/tmyclean/activities/ActivityCheckout$7;->this$0:Lcom/app/tmyclean/activities/ActivityCheckout;

    invoke-virtual {v0}, Lcom/app/tmyclean/activities/ActivityCheckout;->dialogSuccessOrder()V

    .line 358
    return-void
.end method
