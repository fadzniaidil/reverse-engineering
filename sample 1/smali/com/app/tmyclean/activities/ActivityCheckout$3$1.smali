.class Lcom/app/tmyclean/activities/ActivityCheckout$3$1;
.super Ljava/lang/Object;
.source "ActivityCheckout.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/app/tmyclean/activities/ActivityCheckout$3;->onResponse(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/app/tmyclean/activities/ActivityCheckout$3;


# direct methods
.method constructor <init>(Lcom/app/tmyclean/activities/ActivityCheckout$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/app/tmyclean/activities/ActivityCheckout$3;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    .line 225
    iput-object p1, p0, Lcom/app/tmyclean/activities/ActivityCheckout$3$1;->this$1:Lcom/app/tmyclean/activities/ActivityCheckout$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "i"    # I
    .param p4, "l"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "adapterView",
            "view",
            "i",
            "l"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 228
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/app/tmyclean/activities/ActivityCheckout$3$1;->this$1:Lcom/app/tmyclean/activities/ActivityCheckout$3;

    iget-object v0, v0, Lcom/app/tmyclean/activities/ActivityCheckout$3;->this$0:Lcom/app/tmyclean/activities/ActivityCheckout;

    iget-object v0, v0, Lcom/app/tmyclean/activities/ActivityCheckout;->edt_shipping:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/app/tmyclean/activities/ActivityCheckout$3$1;->this$1:Lcom/app/tmyclean/activities/ActivityCheckout$3;

    iget-object v1, v1, Lcom/app/tmyclean/activities/ActivityCheckout$3;->this$0:Lcom/app/tmyclean/activities/ActivityCheckout;

    invoke-static {v1, p3}, Lcom/app/tmyclean/activities/ActivityCheckout;->access$200(Lcom/app/tmyclean/activities/ActivityCheckout;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 229
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adapterView"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    .line 234
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
