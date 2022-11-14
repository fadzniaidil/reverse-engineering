.class Lcom/app/tmyclean/activities/ActivityCheckout$9;
.super Lcom/android/volley/toolbox/StringRequest;
.source "ActivityCheckout.java"


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
.method constructor <init>(Lcom/app/tmyclean/activities/ActivityCheckout;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/app/tmyclean/activities/ActivityCheckout;
    .param p2, "method"    # I
    .param p3, "url"    # Ljava/lang/String;
    .param p5, "errorListener"    # Lcom/android/volley/Response$ErrorListener;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "this$0",
            "method",
            "url",
            "listener",
            "errorListener"
        }
    .end annotation

    .line 369
    .local p4, "listener":Lcom/android/volley/Response$Listener;, "Lcom/android/volley/Response$Listener<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/app/tmyclean/activities/ActivityCheckout$9;->this$0:Lcom/app/tmyclean/activities/ActivityCheckout;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/volley/toolbox/StringRequest;-><init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    return-void
.end method


# virtual methods
.method protected getParams()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 375
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 376
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/app/tmyclean/activities/ActivityCheckout$9;->this$0:Lcom/app/tmyclean/activities/ActivityCheckout;

    invoke-static {v1}, Lcom/app/tmyclean/activities/ActivityCheckout;->access$400(Lcom/app/tmyclean/activities/ActivityCheckout;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "code"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/app/tmyclean/activities/ActivityCheckout$9;->this$0:Lcom/app/tmyclean/activities/ActivityCheckout;

    iget-object v2, v2, Lcom/app/tmyclean/activities/ActivityCheckout;->str_name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " IC "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/app/tmyclean/activities/ActivityCheckout$9;->this$0:Lcom/app/tmyclean/activities/ActivityCheckout;

    iget-object v2, v2, Lcom/app/tmyclean/activities/ActivityCheckout;->str_email:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "name"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    iget-object v1, p0, Lcom/app/tmyclean/activities/ActivityCheckout$9;->this$0:Lcom/app/tmyclean/activities/ActivityCheckout;

    iget-object v1, v1, Lcom/app/tmyclean/activities/ActivityCheckout;->str_email:Ljava/lang/String;

    const-string v2, "email"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    iget-object v1, p0, Lcom/app/tmyclean/activities/ActivityCheckout$9;->this$0:Lcom/app/tmyclean/activities/ActivityCheckout;

    iget-object v1, v1, Lcom/app/tmyclean/activities/ActivityCheckout;->str_phone:Ljava/lang/String;

    const-string v2, "phone"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    iget-object v1, p0, Lcom/app/tmyclean/activities/ActivityCheckout$9;->this$0:Lcom/app/tmyclean/activities/ActivityCheckout;

    iget-object v1, v1, Lcom/app/tmyclean/activities/ActivityCheckout;->str_address:Ljava/lang/String;

    const-string v2, "address"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    iget-object v1, p0, Lcom/app/tmyclean/activities/ActivityCheckout$9;->this$0:Lcom/app/tmyclean/activities/ActivityCheckout;

    iget-object v1, v1, Lcom/app/tmyclean/activities/ActivityCheckout;->str_shipping:Ljava/lang/String;

    const-string v2, "shipping"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    iget-object v1, p0, Lcom/app/tmyclean/activities/ActivityCheckout$9;->this$0:Lcom/app/tmyclean/activities/ActivityCheckout;

    iget-object v1, v1, Lcom/app/tmyclean/activities/ActivityCheckout;->str_order_list:Ljava/lang/String;

    const-string v2, "order_list"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    iget-object v1, p0, Lcom/app/tmyclean/activities/ActivityCheckout$9;->this$0:Lcom/app/tmyclean/activities/ActivityCheckout;

    iget-object v1, v1, Lcom/app/tmyclean/activities/ActivityCheckout;->str_order_total:Ljava/lang/String;

    const-string v2, "order_total"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    iget-object v1, p0, Lcom/app/tmyclean/activities/ActivityCheckout$9;->this$0:Lcom/app/tmyclean/activities/ActivityCheckout;

    iget-object v1, v1, Lcom/app/tmyclean/activities/ActivityCheckout;->str_sid:Ljava/lang/String;

    const-string v2, "sid"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    const-string v1, "app"

    const-string v2, "yellow"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    const-string v1, "player_id"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/app/tmyclean/activities/ActivityCheckout$9;->this$0:Lcom/app/tmyclean/activities/ActivityCheckout;

    iget-object v2, v2, Lcom/app/tmyclean/activities/ActivityCheckout;->str_date:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/app/tmyclean/activities/ActivityCheckout$9;->this$0:Lcom/app/tmyclean/activities/ActivityCheckout;

    iget-object v2, v2, Lcom/app/tmyclean/activities/ActivityCheckout;->str_time:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "booking"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    const-string v1, "server_url"

    const-string v2, "https://yapks.online/maid4u_888a"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    return-object v0
.end method
