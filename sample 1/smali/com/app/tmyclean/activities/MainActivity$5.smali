.class Lcom/app/tmyclean/activities/MainActivity$5;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/app/tmyclean/activities/MainActivity;->makeJsonObjectRequest()V
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
.field final synthetic this$0:Lcom/app/tmyclean/activities/MainActivity;


# direct methods
.method constructor <init>(Lcom/app/tmyclean/activities/MainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/app/tmyclean/activities/MainActivity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 301
    iput-object p1, p0, Lcom/app/tmyclean/activities/MainActivity$5;->this$0:Lcom/app/tmyclean/activities/MainActivity;

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

    .line 301
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/app/tmyclean/activities/MainActivity$5;->onResponse(Lorg/json/JSONObject;)V

    return-void
.end method

.method public onResponse(Lorg/json/JSONObject;)V
    .locals 4
    .param p1, "response"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "response"
        }
    .end annotation

    .line 304
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "INFO"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    :try_start_0
    const-string v0, "tax"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 307
    .local v0, "tax":Ljava/lang/Double;
    const-string v1, "currency_code"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 309
    .local v1, "currency_code":Ljava/lang/String;
    iget-object v2, p0, Lcom/app/tmyclean/activities/MainActivity$5;->this$0:Lcom/app/tmyclean/activities/MainActivity;

    const v3, 0x7f08004f

    invoke-virtual {v2, v3}, Lcom/app/tmyclean/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    .line 310
    .local v2, "btn_cart":Landroid/widget/ImageButton;
    new-instance v3, Lcom/app/tmyclean/activities/MainActivity$5$1;

    invoke-direct {v3, p0, v0, v1}, Lcom/app/tmyclean/activities/MainActivity$5$1;-><init>(Lcom/app/tmyclean/activities/MainActivity$5;Ljava/lang/Double;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 323
    .end local v0    # "tax":Ljava/lang/Double;
    .end local v1    # "currency_code":Ljava/lang/String;
    .end local v2    # "btn_cart":Landroid/widget/ImageButton;
    goto :goto_0

    .line 320
    :catch_0
    move-exception v0

    .line 321
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 322
    iget-object v1, p0, Lcom/app/tmyclean/activities/MainActivity$5;->this$0:Lcom/app/tmyclean/activities/MainActivity;

    invoke-virtual {v1}, Lcom/app/tmyclean/activities/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 324
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_0
    return-void
.end method
