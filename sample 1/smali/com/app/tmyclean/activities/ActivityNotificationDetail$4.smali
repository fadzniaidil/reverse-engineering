.class Lcom/app/tmyclean/activities/ActivityNotificationDetail$4;
.super Ljava/lang/Object;
.source "ActivityNotificationDetail.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/app/tmyclean/activities/ActivityNotificationDetail;->makeJsonObjectRequest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/app/tmyclean/activities/ActivityNotificationDetail;


# direct methods
.method constructor <init>(Lcom/app/tmyclean/activities/ActivityNotificationDetail;)V
    .locals 0
    .param p1, "this$0"    # Lcom/app/tmyclean/activities/ActivityNotificationDetail;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 185
    iput-object p1, p0, Lcom/app/tmyclean/activities/ActivityNotificationDetail$4;->this$0:Lcom/app/tmyclean/activities/ActivityNotificationDetail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "response"
        }
    .end annotation

    .line 185
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/app/tmyclean/activities/ActivityNotificationDetail$4;->onResponse(Lorg/json/JSONObject;)V

    return-void
.end method

.method public onResponse(Lorg/json/JSONObject;)V
    .locals 5
    .param p1, "response"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "response"
        }
    .end annotation

    .line 188
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "INFO"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    const/16 v0, 0x8

    :try_start_0
    iget-object v1, p0, Lcom/app/tmyclean/activities/ActivityNotificationDetail$4;->this$0:Lcom/app/tmyclean/activities/ActivityNotificationDetail;

    const-string v2, "product_name"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/app/tmyclean/activities/ActivityNotificationDetail;->access$202(Lcom/app/tmyclean/activities/ActivityNotificationDetail;Ljava/lang/String;)Ljava/lang/String;

    .line 193
    iget-object v1, p0, Lcom/app/tmyclean/activities/ActivityNotificationDetail$4;->this$0:Lcom/app/tmyclean/activities/ActivityNotificationDetail;

    const-string v2, "product_image"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/app/tmyclean/activities/ActivityNotificationDetail;->access$302(Lcom/app/tmyclean/activities/ActivityNotificationDetail;Ljava/lang/String;)Ljava/lang/String;

    .line 194
    iget-object v1, p0, Lcom/app/tmyclean/activities/ActivityNotificationDetail$4;->this$0:Lcom/app/tmyclean/activities/ActivityNotificationDetail;

    const-string v2, "product_price"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/app/tmyclean/activities/ActivityNotificationDetail;->access$402(Lcom/app/tmyclean/activities/ActivityNotificationDetail;D)D

    .line 195
    iget-object v1, p0, Lcom/app/tmyclean/activities/ActivityNotificationDetail$4;->this$0:Lcom/app/tmyclean/activities/ActivityNotificationDetail;

    const-string v2, "product_description"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/app/tmyclean/activities/ActivityNotificationDetail;->access$502(Lcom/app/tmyclean/activities/ActivityNotificationDetail;Ljava/lang/String;)Ljava/lang/String;

    .line 196
    iget-object v1, p0, Lcom/app/tmyclean/activities/ActivityNotificationDetail$4;->this$0:Lcom/app/tmyclean/activities/ActivityNotificationDetail;

    const-string v2, "product_quantity"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/app/tmyclean/activities/ActivityNotificationDetail;->access$602(Lcom/app/tmyclean/activities/ActivityNotificationDetail;I)I

    .line 197
    iget-object v1, p0, Lcom/app/tmyclean/activities/ActivityNotificationDetail$4;->this$0:Lcom/app/tmyclean/activities/ActivityNotificationDetail;

    const-string v2, "product_status"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/app/tmyclean/activities/ActivityNotificationDetail;->access$702(Lcom/app/tmyclean/activities/ActivityNotificationDetail;Ljava/lang/String;)Ljava/lang/String;

    .line 198
    iget-object v1, p0, Lcom/app/tmyclean/activities/ActivityNotificationDetail$4;->this$0:Lcom/app/tmyclean/activities/ActivityNotificationDetail;

    const-string v2, "currency_code"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/app/tmyclean/activities/ActivityNotificationDetail;->access$802(Lcom/app/tmyclean/activities/ActivityNotificationDetail;Ljava/lang/String;)Ljava/lang/String;

    .line 199
    iget-object v1, p0, Lcom/app/tmyclean/activities/ActivityNotificationDetail$4;->this$0:Lcom/app/tmyclean/activities/ActivityNotificationDetail;

    const-string v2, "category_name"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/app/tmyclean/activities/ActivityNotificationDetail;->access$002(Lcom/app/tmyclean/activities/ActivityNotificationDetail;Ljava/lang/String;)Ljava/lang/String;

    .line 201
    iget-object v1, p0, Lcom/app/tmyclean/activities/ActivityNotificationDetail$4;->this$0:Lcom/app/tmyclean/activities/ActivityNotificationDetail;

    invoke-virtual {v1}, Lcom/app/tmyclean/activities/ActivityNotificationDetail;->displayData()V

    .line 203
    iget-object v1, p0, Lcom/app/tmyclean/activities/ActivityNotificationDetail$4;->this$0:Lcom/app/tmyclean/activities/ActivityNotificationDetail;

    invoke-static {v1}, Lcom/app/tmyclean/activities/ActivityNotificationDetail;->access$900(Lcom/app/tmyclean/activities/ActivityNotificationDetail;)Landroid/widget/RelativeLayout;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 204
    iget-object v1, p0, Lcom/app/tmyclean/activities/ActivityNotificationDetail$4;->this$0:Lcom/app/tmyclean/activities/ActivityNotificationDetail;

    invoke-static {v1}, Lcom/app/tmyclean/activities/ActivityNotificationDetail;->access$1000(Lcom/app/tmyclean/activities/ActivityNotificationDetail;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    goto :goto_0

    .line 206
    :catch_0
    move-exception v1

    .line 207
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 208
    iget-object v2, p0, Lcom/app/tmyclean/activities/ActivityNotificationDetail$4;->this$0:Lcom/app/tmyclean/activities/ActivityNotificationDetail;

    invoke-virtual {v2}, Lcom/app/tmyclean/activities/ActivityNotificationDetail;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 209
    iget-object v2, p0, Lcom/app/tmyclean/activities/ActivityNotificationDetail$4;->this$0:Lcom/app/tmyclean/activities/ActivityNotificationDetail;

    invoke-static {v2}, Lcom/app/tmyclean/activities/ActivityNotificationDetail;->access$900(Lcom/app/tmyclean/activities/ActivityNotificationDetail;)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 210
    iget-object v2, p0, Lcom/app/tmyclean/activities/ActivityNotificationDetail$4;->this$0:Lcom/app/tmyclean/activities/ActivityNotificationDetail;

    invoke-static {v2}, Lcom/app/tmyclean/activities/ActivityNotificationDetail;->access$1000(Lcom/app/tmyclean/activities/ActivityNotificationDetail;)Landroid/widget/ProgressBar;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 212
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_0
    return-void
.end method
