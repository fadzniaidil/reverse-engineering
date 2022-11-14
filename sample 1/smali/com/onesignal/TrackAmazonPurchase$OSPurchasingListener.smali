.class Lcom/onesignal/TrackAmazonPurchase$OSPurchasingListener;
.super Ljava/lang/Object;
.source "TrackAmazonPurchase.java"

# interfaces
.implements Lcom/amazon/device/iap/PurchasingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onesignal/TrackAmazonPurchase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OSPurchasingListener"
.end annotation


# instance fields
.field private currentMarket:Ljava/lang/String;

.field private lastRequestId:Lcom/amazon/device/iap/model/RequestId;

.field orgPurchasingListener:Lcom/amazon/device/iap/PurchasingListener;

.field final synthetic this$0:Lcom/onesignal/TrackAmazonPurchase;


# direct methods
.method private constructor <init>(Lcom/onesignal/TrackAmazonPurchase;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/onesignal/TrackAmazonPurchase$OSPurchasingListener;->this$0:Lcom/onesignal/TrackAmazonPurchase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/onesignal/TrackAmazonPurchase;Lcom/onesignal/TrackAmazonPurchase$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/onesignal/TrackAmazonPurchase;
    .param p2, "x1"    # Lcom/onesignal/TrackAmazonPurchase$1;

    .line 114
    invoke-direct {p0, p1}, Lcom/onesignal/TrackAmazonPurchase$OSPurchasingListener;-><init>(Lcom/onesignal/TrackAmazonPurchase;)V

    return-void
.end method

.method private marketToCurrencyCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "market"    # Ljava/lang/String;

    .line 121
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    goto/16 :goto_0

    :sswitch_0
    const-string v0, "US"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_1
    const-string v0, "JP"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_2
    const-string v0, "IT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_3
    const-string v0, "GB"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_4
    const-string v0, "FR"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_5
    const-string v0, "ES"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_6
    const-string v0, "DE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_7
    const-string v0, "CA"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_8
    const-string v0, "BR"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_1

    :sswitch_9
    const-string v0, "AU"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 141
    const-string v0, ""

    return-object v0

    .line 138
    :pswitch_0
    const-string v0, "AUD"

    return-object v0

    .line 136
    :pswitch_1
    const-string v0, "BRL"

    return-object v0

    .line 134
    :pswitch_2
    const-string v0, "CDN"

    return-object v0

    .line 132
    :pswitch_3
    const-string v0, "JPY"

    return-object v0

    .line 130
    :pswitch_4
    const-string v0, "EUR"

    return-object v0

    .line 125
    :pswitch_5
    const-string v0, "GBP"

    return-object v0

    .line 123
    :pswitch_6
    const-string v0, "USD"

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x834 -> :sswitch_9
        0x850 -> :sswitch_8
        0x85e -> :sswitch_7
        0x881 -> :sswitch_6
        0x8ae -> :sswitch_5
        0x8cc -> :sswitch_4
        0x8db -> :sswitch_3
        0x92b -> :sswitch_2
        0x946 -> :sswitch_1
        0xa9e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public onProductDataResponse(Lcom/amazon/device/iap/model/ProductDataResponse;)V
    .locals 8
    .param p1, "response"    # Lcom/amazon/device/iap/model/ProductDataResponse;

    .line 146
    iget-object v0, p0, Lcom/onesignal/TrackAmazonPurchase$OSPurchasingListener;->lastRequestId:Lcom/amazon/device/iap/model/RequestId;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/amazon/device/iap/model/RequestId;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amazon/device/iap/model/ProductDataResponse;->getRequestId()Lcom/amazon/device/iap/model/RequestId;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/device/iap/model/RequestId;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 148
    :try_start_0
    sget-object v0, Lcom/onesignal/TrackAmazonPurchase$1;->$SwitchMap$com$amazon$device$iap$model$ProductDataResponse$RequestStatus:[I

    invoke-virtual {p1}, Lcom/amazon/device/iap/model/ProductDataResponse;->getRequestStatus()Lcom/amazon/device/iap/model/ProductDataResponse$RequestStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/device/iap/model/ProductDataResponse$RequestStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 150
    :pswitch_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 151
    .local v0, "purchasesToReport":Lorg/json/JSONArray;
    invoke-virtual {p1}, Lcom/amazon/device/iap/model/ProductDataResponse;->getProductData()Ljava/util/Map;

    move-result-object v1

    .line 152
    .local v1, "products":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/amazon/device/iap/model/Product;>;"
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 153
    .local v3, "key":Ljava/lang/String;
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/device/iap/model/Product;

    .line 155
    .local v4, "product":Lcom/amazon/device/iap/model/Product;
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 156
    .local v5, "jsonItem":Lorg/json/JSONObject;
    const-string v6, "sku"

    invoke-virtual {v4}, Lcom/amazon/device/iap/model/Product;->getSku()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 157
    const-string v6, "iso"

    iget-object v7, p0, Lcom/onesignal/TrackAmazonPurchase$OSPurchasingListener;->currentMarket:Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/onesignal/TrackAmazonPurchase$OSPurchasingListener;->marketToCurrencyCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 159
    invoke-virtual {v4}, Lcom/amazon/device/iap/model/Product;->getPrice()Ljava/lang/String;

    move-result-object v6

    .line 160
    .local v6, "price":Ljava/lang/String;
    const-string v7, "^[0-9]"

    invoke-virtual {v6, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 161
    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    move-object v6, v7

    .line 162
    :cond_0
    const-string v7, "amount"

    invoke-virtual {v5, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 164
    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 165
    nop

    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "product":Lcom/amazon/device/iap/model/Product;
    .end local v5    # "jsonItem":Lorg/json/JSONObject;
    .end local v6    # "price":Ljava/lang/String;
    goto :goto_0

    .line 166
    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lcom/onesignal/OneSignal;->sendPurchases(Lorg/json/JSONArray;ZLcom/onesignal/OneSignalRestClient$ResponseHandler;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 169
    .end local v0    # "purchasesToReport":Lorg/json/JSONArray;
    .end local v1    # "products":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/amazon/device/iap/model/Product;>;"
    :catch_0
    move-exception v0

    .line 170
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 171
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_1
    goto :goto_2

    .line 172
    :cond_2
    iget-object v0, p0, Lcom/onesignal/TrackAmazonPurchase$OSPurchasingListener;->orgPurchasingListener:Lcom/amazon/device/iap/PurchasingListener;

    if-eqz v0, :cond_3

    .line 173
    invoke-interface {v0, p1}, Lcom/amazon/device/iap/PurchasingListener;->onProductDataResponse(Lcom/amazon/device/iap/model/ProductDataResponse;)V

    .line 174
    :cond_3
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onPurchaseResponse(Lcom/amazon/device/iap/model/PurchaseResponse;)V
    .locals 3
    .param p1, "response"    # Lcom/amazon/device/iap/model/PurchaseResponse;

    .line 178
    invoke-virtual {p1}, Lcom/amazon/device/iap/model/PurchaseResponse;->getRequestStatus()Lcom/amazon/device/iap/model/PurchaseResponse$RequestStatus;

    move-result-object v0

    .line 180
    .local v0, "status":Lcom/amazon/device/iap/model/PurchaseResponse$RequestStatus;
    sget-object v1, Lcom/amazon/device/iap/model/PurchaseResponse$RequestStatus;->SUCCESSFUL:Lcom/amazon/device/iap/model/PurchaseResponse$RequestStatus;

    if-ne v0, v1, :cond_0

    .line 181
    invoke-virtual {p1}, Lcom/amazon/device/iap/model/PurchaseResponse;->getUserData()Lcom/amazon/device/iap/model/UserData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/device/iap/model/UserData;->getMarketplace()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/onesignal/TrackAmazonPurchase$OSPurchasingListener;->currentMarket:Ljava/lang/String;

    .line 183
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 184
    .local v1, "productSkus":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p1}, Lcom/amazon/device/iap/model/PurchaseResponse;->getReceipt()Lcom/amazon/device/iap/model/Receipt;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/device/iap/model/Receipt;->getSku()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 185
    invoke-static {v1}, Lcom/amazon/device/iap/PurchasingService;->getProductData(Ljava/util/Set;)Lcom/amazon/device/iap/model/RequestId;

    move-result-object v2

    iput-object v2, p0, Lcom/onesignal/TrackAmazonPurchase$OSPurchasingListener;->lastRequestId:Lcom/amazon/device/iap/model/RequestId;

    .line 188
    .end local v1    # "productSkus":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_0
    iget-object v1, p0, Lcom/onesignal/TrackAmazonPurchase$OSPurchasingListener;->orgPurchasingListener:Lcom/amazon/device/iap/PurchasingListener;

    if-eqz v1, :cond_1

    .line 189
    invoke-interface {v1, p1}, Lcom/amazon/device/iap/PurchasingListener;->onPurchaseResponse(Lcom/amazon/device/iap/model/PurchaseResponse;)V

    .line 190
    :cond_1
    return-void
.end method

.method public onPurchaseUpdatesResponse(Lcom/amazon/device/iap/model/PurchaseUpdatesResponse;)V
    .locals 1
    .param p1, "response"    # Lcom/amazon/device/iap/model/PurchaseUpdatesResponse;

    .line 194
    iget-object v0, p0, Lcom/onesignal/TrackAmazonPurchase$OSPurchasingListener;->orgPurchasingListener:Lcom/amazon/device/iap/PurchasingListener;

    if-eqz v0, :cond_0

    .line 195
    invoke-interface {v0, p1}, Lcom/amazon/device/iap/PurchasingListener;->onPurchaseUpdatesResponse(Lcom/amazon/device/iap/model/PurchaseUpdatesResponse;)V

    .line 196
    :cond_0
    return-void
.end method

.method public onUserDataResponse(Lcom/amazon/device/iap/model/UserDataResponse;)V
    .locals 1
    .param p1, "response"    # Lcom/amazon/device/iap/model/UserDataResponse;

    .line 200
    iget-object v0, p0, Lcom/onesignal/TrackAmazonPurchase$OSPurchasingListener;->orgPurchasingListener:Lcom/amazon/device/iap/PurchasingListener;

    if-eqz v0, :cond_0

    .line 201
    invoke-interface {v0, p1}, Lcom/amazon/device/iap/PurchasingListener;->onUserDataResponse(Lcom/amazon/device/iap/model/UserDataResponse;)V

    .line 202
    :cond_0
    return-void
.end method
