.class Lcom/app/tmyclean/activities/ActivityNotificationDetail$8;
.super Ljava/lang/Object;
.source "ActivityNotificationDetail.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/app/tmyclean/activities/ActivityNotificationDetail;->inputDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/app/tmyclean/activities/ActivityNotificationDetail;

.field final synthetic val$edtQuantity:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/app/tmyclean/activities/ActivityNotificationDetail;Landroid/widget/EditText;)V
    .locals 0
    .param p1, "this$0"    # Lcom/app/tmyclean/activities/ActivityNotificationDetail;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$edtQuantity"
        }
    .end annotation

    .line 324
    iput-object p1, p0, Lcom/app/tmyclean/activities/ActivityNotificationDetail$8;->this$0:Lcom/app/tmyclean/activities/ActivityNotificationDetail;

    iput-object p2, p0, Lcom/app/tmyclean/activities/ActivityNotificationDetail$8;->val$edtQuantity:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 12
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dialog",
            "whichButton"
        }
    .end annotation

    .line 326
    iget-object v0, p0, Lcom/app/tmyclean/activities/ActivityNotificationDetail$8;->val$edtQuantity:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 327
    .local v0, "temp":Ljava/lang/String;
    const/4 v1, 0x0

    .line 329
    .local v1, "quantity":I
    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 331
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 333
    const/4 v2, 0x0

    if-gtz v1, :cond_0

    .line 334
    iget-object v3, p0, Lcom/app/tmyclean/activities/ActivityNotificationDetail$8;->this$0:Lcom/app/tmyclean/activities/ActivityNotificationDetail;

    invoke-virtual {v3}, Lcom/app/tmyclean/activities/ActivityNotificationDetail;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0f0076

    invoke-static {v3, v4, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 335
    :cond_0
    iget-object v3, p0, Lcom/app/tmyclean/activities/ActivityNotificationDetail$8;->this$0:Lcom/app/tmyclean/activities/ActivityNotificationDetail;

    invoke-static {v3}, Lcom/app/tmyclean/activities/ActivityNotificationDetail;->access$600(Lcom/app/tmyclean/activities/ActivityNotificationDetail;)I

    move-result v3

    if-le v1, v3, :cond_1

    .line 336
    iget-object v3, p0, Lcom/app/tmyclean/activities/ActivityNotificationDetail$8;->this$0:Lcom/app/tmyclean/activities/ActivityNotificationDetail;

    invoke-virtual {v3}, Lcom/app/tmyclean/activities/ActivityNotificationDetail;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0f0077

    invoke-static {v3, v4, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 340
    :cond_1
    sget-object v2, Lcom/app/tmyclean/activities/ActivityNotificationDetail;->dbhelper:Lcom/app/tmyclean/utilities/DBHelper;

    iget-object v3, p0, Lcom/app/tmyclean/activities/ActivityNotificationDetail$8;->this$0:Lcom/app/tmyclean/activities/ActivityNotificationDetail;

    iget-wide v3, v3, Lcom/app/tmyclean/activities/ActivityNotificationDetail;->product_id:J

    invoke-virtual {v2, v3, v4}, Lcom/app/tmyclean/utilities/DBHelper;->isDataExist(J)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 341
    sget-object v3, Lcom/app/tmyclean/activities/ActivityNotificationDetail;->dbhelper:Lcom/app/tmyclean/utilities/DBHelper;

    iget-object v2, p0, Lcom/app/tmyclean/activities/ActivityNotificationDetail$8;->this$0:Lcom/app/tmyclean/activities/ActivityNotificationDetail;

    iget-wide v4, v2, Lcom/app/tmyclean/activities/ActivityNotificationDetail;->product_id:J

    iget-object v2, p0, Lcom/app/tmyclean/activities/ActivityNotificationDetail$8;->this$0:Lcom/app/tmyclean/activities/ActivityNotificationDetail;

    invoke-static {v2}, Lcom/app/tmyclean/activities/ActivityNotificationDetail;->access$400(Lcom/app/tmyclean/activities/ActivityNotificationDetail;)D

    move-result-wide v6

    int-to-double v8, v1

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v7, v6, v8

    move v6, v1

    invoke-virtual/range {v3 .. v8}, Lcom/app/tmyclean/utilities/DBHelper;->updateData(JID)V

    goto :goto_0

    .line 343
    :cond_2
    sget-object v3, Lcom/app/tmyclean/activities/ActivityNotificationDetail;->dbhelper:Lcom/app/tmyclean/utilities/DBHelper;

    iget-object v2, p0, Lcom/app/tmyclean/activities/ActivityNotificationDetail$8;->this$0:Lcom/app/tmyclean/activities/ActivityNotificationDetail;

    iget-wide v4, v2, Lcom/app/tmyclean/activities/ActivityNotificationDetail;->product_id:J

    iget-object v2, p0, Lcom/app/tmyclean/activities/ActivityNotificationDetail$8;->this$0:Lcom/app/tmyclean/activities/ActivityNotificationDetail;

    invoke-static {v2}, Lcom/app/tmyclean/activities/ActivityNotificationDetail;->access$200(Lcom/app/tmyclean/activities/ActivityNotificationDetail;)Ljava/lang/String;

    move-result-object v6

    iget-object v2, p0, Lcom/app/tmyclean/activities/ActivityNotificationDetail$8;->this$0:Lcom/app/tmyclean/activities/ActivityNotificationDetail;

    invoke-static {v2}, Lcom/app/tmyclean/activities/ActivityNotificationDetail;->access$400(Lcom/app/tmyclean/activities/ActivityNotificationDetail;)D

    move-result-wide v7

    int-to-double v9, v1

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v8, v7, v9

    iget-object v2, p0, Lcom/app/tmyclean/activities/ActivityNotificationDetail$8;->this$0:Lcom/app/tmyclean/activities/ActivityNotificationDetail;

    invoke-static {v2}, Lcom/app/tmyclean/activities/ActivityNotificationDetail;->access$800(Lcom/app/tmyclean/activities/ActivityNotificationDetail;)Ljava/lang/String;

    move-result-object v10

    iget-object v2, p0, Lcom/app/tmyclean/activities/ActivityNotificationDetail$8;->this$0:Lcom/app/tmyclean/activities/ActivityNotificationDetail;

    invoke-static {v2}, Lcom/app/tmyclean/activities/ActivityNotificationDetail;->access$300(Lcom/app/tmyclean/activities/ActivityNotificationDetail;)Ljava/lang/String;

    move-result-object v11

    move v7, v1

    invoke-virtual/range {v3 .. v11}, Lcom/app/tmyclean/utilities/DBHelper;->addData(JLjava/lang/String;IDLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 348
    :cond_3
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 350
    :goto_0
    return-void
.end method
