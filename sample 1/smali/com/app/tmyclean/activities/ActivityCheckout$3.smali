.class Lcom/app/tmyclean/activities/ActivityCheckout$3;
.super Ljava/lang/Object;
.source "ActivityCheckout.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/app/tmyclean/activities/ActivityCheckout;->getSpinnerData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener<",
        "Ljava/lang/String;",
        ">;"
    }
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

    .line 213
    iput-object p1, p0, Lcom/app/tmyclean/activities/ActivityCheckout$3;->this$0:Lcom/app/tmyclean/activities/ActivityCheckout;

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

    .line 213
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/app/tmyclean/activities/ActivityCheckout$3;->onResponse(Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;)V
    .locals 3
    .param p1, "response"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "response"
        }
    .end annotation

    .line 216
    const/4 v0, 0x0

    .line 218
    .local v0, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 219
    iget-object v1, p0, Lcom/app/tmyclean/activities/ActivityCheckout$3;->this$0:Lcom/app/tmyclean/activities/ActivityCheckout;

    const-string v2, "result"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/app/tmyclean/activities/ActivityCheckout;->access$002(Lcom/app/tmyclean/activities/ActivityCheckout;Lorg/json/JSONArray;)Lorg/json/JSONArray;

    .line 220
    iget-object v1, p0, Lcom/app/tmyclean/activities/ActivityCheckout$3;->this$0:Lcom/app/tmyclean/activities/ActivityCheckout;

    invoke-static {v1}, Lcom/app/tmyclean/activities/ActivityCheckout;->access$000(Lcom/app/tmyclean/activities/ActivityCheckout;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/app/tmyclean/activities/ActivityCheckout;->access$100(Lcom/app/tmyclean/activities/ActivityCheckout;Lorg/json/JSONArray;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    goto :goto_0

    .line 221
    :catch_0
    move-exception v1

    .line 222
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 225
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_0
    iget-object v1, p0, Lcom/app/tmyclean/activities/ActivityCheckout$3;->this$0:Lcom/app/tmyclean/activities/ActivityCheckout;

    invoke-static {v1}, Lcom/app/tmyclean/activities/ActivityCheckout;->access$300(Lcom/app/tmyclean/activities/ActivityCheckout;)Landroid/widget/Spinner;

    move-result-object v1

    new-instance v2, Lcom/app/tmyclean/activities/ActivityCheckout$3$1;

    invoke-direct {v2, p0}, Lcom/app/tmyclean/activities/ActivityCheckout$3$1;-><init>(Lcom/app/tmyclean/activities/ActivityCheckout$3;)V

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 237
    return-void
.end method
