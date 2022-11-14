.class Lcom/onesignal/TrackGooglePurchase$2;
.super Ljava/lang/Object;
.source "TrackGooglePurchase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/TrackGooglePurchase;->QueryBoughtItems()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/onesignal/TrackGooglePurchase;


# direct methods
.method constructor <init>(Lcom/onesignal/TrackGooglePurchase;)V
    .locals 0
    .param p1, "this$0"    # Lcom/onesignal/TrackGooglePurchase;

    .line 137
    iput-object p1, p0, Lcom/onesignal/TrackGooglePurchase$2;->this$0:Lcom/onesignal/TrackGooglePurchase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .line 139
    iget-object v0, p0, Lcom/onesignal/TrackGooglePurchase$2;->this$0:Lcom/onesignal/TrackGooglePurchase;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/onesignal/TrackGooglePurchase;->access$402(Lcom/onesignal/TrackGooglePurchase;Z)Z

    .line 141
    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/onesignal/TrackGooglePurchase$2;->this$0:Lcom/onesignal/TrackGooglePurchase;

    invoke-static {v2}, Lcom/onesignal/TrackGooglePurchase;->access$500(Lcom/onesignal/TrackGooglePurchase;)Ljava/lang/reflect/Method;

    move-result-object v2

    if-nez v2, :cond_0

    .line 142
    iget-object v2, p0, Lcom/onesignal/TrackGooglePurchase$2;->this$0:Lcom/onesignal/TrackGooglePurchase;

    invoke-static {}, Lcom/onesignal/TrackGooglePurchase;->access$600()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Lcom/onesignal/TrackGooglePurchase;->access$700(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/onesignal/TrackGooglePurchase;->access$502(Lcom/onesignal/TrackGooglePurchase;Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;

    .line 143
    iget-object v2, p0, Lcom/onesignal/TrackGooglePurchase$2;->this$0:Lcom/onesignal/TrackGooglePurchase;

    invoke-static {v2}, Lcom/onesignal/TrackGooglePurchase;->access$500(Lcom/onesignal/TrackGooglePurchase;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 146
    :cond_0
    iget-object v2, p0, Lcom/onesignal/TrackGooglePurchase$2;->this$0:Lcom/onesignal/TrackGooglePurchase;

    invoke-static {v2}, Lcom/onesignal/TrackGooglePurchase;->access$500(Lcom/onesignal/TrackGooglePurchase;)Ljava/lang/reflect/Method;

    move-result-object v2

    iget-object v3, p0, Lcom/onesignal/TrackGooglePurchase$2;->this$0:Lcom/onesignal/TrackGooglePurchase;

    invoke-static {v3}, Lcom/onesignal/TrackGooglePurchase;->access$100(Lcom/onesignal/TrackGooglePurchase;)Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v0

    iget-object v6, p0, Lcom/onesignal/TrackGooglePurchase$2;->this$0:Lcom/onesignal/TrackGooglePurchase;

    invoke-static {v6}, Lcom/onesignal/TrackGooglePurchase;->access$800(Lcom/onesignal/TrackGooglePurchase;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v1

    const/4 v1, 0x2

    const-string v6, "inapp"

    aput-object v6, v4, v1

    const/4 v1, 0x0

    aput-object v1, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 147
    .local v1, "ownedItems":Landroid/os/Bundle;
    const-string v2, "RESPONSE_CODE"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_4

    .line 148
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 149
    .local v2, "skusToAdd":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 151
    .local v3, "newPurchaseTokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v4, "INAPP_PURCHASE_ITEM_LIST"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 152
    .local v4, "ownedSkus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v5, "INAPP_PURCHASE_DATA_LIST"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 154
    .local v5, "purchaseDataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_2

    .line 155
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 156
    .local v7, "purchaseData":Ljava/lang/String;
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 157
    .local v8, "sku":Ljava/lang/String;
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 158
    .local v9, "itemPurchased":Lorg/json/JSONObject;
    const-string v10, "purchaseToken"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 160
    .local v10, "purchaseToken":Ljava/lang/String;
    iget-object v11, p0, Lcom/onesignal/TrackGooglePurchase$2;->this$0:Lcom/onesignal/TrackGooglePurchase;

    invoke-static {v11}, Lcom/onesignal/TrackGooglePurchase;->access$900(Lcom/onesignal/TrackGooglePurchase;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 161
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    .end local v7    # "purchaseData":Ljava/lang/String;
    .end local v8    # "sku":Ljava/lang/String;
    .end local v9    # "itemPurchased":Lorg/json/JSONObject;
    .end local v10    # "purchaseToken":Ljava/lang/String;
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 166
    .end local v6    # "i":I
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_3

    .line 167
    iget-object v6, p0, Lcom/onesignal/TrackGooglePurchase$2;->this$0:Lcom/onesignal/TrackGooglePurchase;

    invoke-static {v6, v2, v3}, Lcom/onesignal/TrackGooglePurchase;->access$1000(Lcom/onesignal/TrackGooglePurchase;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_1

    .line 168
    :cond_3
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_4

    .line 169
    iget-object v6, p0, Lcom/onesignal/TrackGooglePurchase$2;->this$0:Lcom/onesignal/TrackGooglePurchase;

    invoke-static {v6, v0}, Lcom/onesignal/TrackGooglePurchase;->access$1102(Lcom/onesignal/TrackGooglePurchase;Z)Z

    .line 171
    const-string v6, "GTPlayerPurchases"

    const-string v7, "ExistingPurchases"

    invoke-static {v6, v7, v0}, Lcom/onesignal/OneSignalPrefs;->saveBool(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    .end local v1    # "ownedItems":Landroid/os/Bundle;
    .end local v2    # "skusToAdd":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "newPurchaseTokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4    # "ownedSkus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5    # "purchaseDataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_4
    :goto_1
    goto :goto_2

    .line 177
    :catchall_0
    move-exception v1

    .line 178
    .local v1, "e":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 180
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_2
    iget-object v1, p0, Lcom/onesignal/TrackGooglePurchase$2;->this$0:Lcom/onesignal/TrackGooglePurchase;

    invoke-static {v1, v0}, Lcom/onesignal/TrackGooglePurchase;->access$402(Lcom/onesignal/TrackGooglePurchase;Z)Z

    .line 181
    return-void
.end method
