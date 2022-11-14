.class Lcom/onesignal/TrackGooglePurchase;
.super Ljava/lang/Object;
.source "TrackGooglePurchase.java"


# static fields
.field private static IInAppBillingServiceClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static iapEnabled:I


# instance fields
.field private appContext:Landroid/content/Context;

.field private getPurchasesMethod:Ljava/lang/reflect/Method;

.field private getSkuDetailsMethod:Ljava/lang/reflect/Method;

.field private isWaitingForPurchasesRequest:Z

.field private mIInAppBillingService:Ljava/lang/Object;

.field private mServiceConn:Landroid/content/ServiceConnection;

.field private newAsExisting:Z

.field private purchaseTokens:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    const/16 v0, -0x63

    sput v0, Lcom/onesignal/TrackGooglePurchase;->iapEnabled:I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "activity"    # Landroid/content/Context;

    .line 64
    const-string v0, "GTPlayerPurchases"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/onesignal/TrackGooglePurchase;->newAsExisting:Z

    .line 62
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/onesignal/TrackGooglePurchase;->isWaitingForPurchasesRequest:Z

    .line 65
    iput-object p1, p0, Lcom/onesignal/TrackGooglePurchase;->appContext:Landroid/content/Context;

    .line 67
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/onesignal/TrackGooglePurchase;->purchaseTokens:Ljava/util/ArrayList;

    .line 69
    :try_start_0
    const-string v3, "purchaseTokens"

    const-string v4, "[]"

    invoke-static {v0, v3, v4}, Lcom/onesignal/OneSignalPrefs;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 72
    .local v3, "purchaseTokensString":Ljava/lang/String;
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 73
    .local v4, "jsonPurchaseTokens":Lorg/json/JSONArray;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_0

    .line 74
    iget-object v6, p0, Lcom/onesignal/TrackGooglePurchase;->purchaseTokens:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 75
    .end local v5    # "i":I
    :cond_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-nez v5, :cond_1

    const/4 v2, 0x1

    :cond_1
    iput-boolean v2, p0, Lcom/onesignal/TrackGooglePurchase;->newAsExisting:Z

    .line 76
    if-eqz v2, :cond_2

    .line 77
    const-string v2, "ExistingPurchases"

    invoke-static {v0, v2, v1}, Lcom/onesignal/OneSignalPrefs;->getBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/onesignal/TrackGooglePurchase;->newAsExisting:Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    .end local v3    # "purchaseTokensString":Ljava/lang/String;
    .end local v4    # "jsonPurchaseTokens":Lorg/json/JSONArray;
    :cond_2
    goto :goto_1

    .line 79
    :catch_0
    move-exception v0

    .line 80
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 83
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_1
    invoke-virtual {p0}, Lcom/onesignal/TrackGooglePurchase;->trackIAP()V

    .line 84
    return-void
.end method

.method static CanTrack(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 87
    sget v0, Lcom/onesignal/TrackGooglePurchase;->iapEnabled:I

    const/16 v1, -0x63

    if-ne v0, v1, :cond_0

    .line 88
    const-string v0, "com.android.vending.BILLING"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/onesignal/TrackGooglePurchase;->iapEnabled:I

    .line 90
    :cond_0
    const/4 v0, 0x0

    :try_start_0
    sget v1, Lcom/onesignal/TrackGooglePurchase;->iapEnabled:I

    if-nez v1, :cond_1

    .line 91
    const-string v1, "com.android.vending.billing.IInAppBillingService"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/onesignal/TrackGooglePurchase;->IInAppBillingServiceClass:Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    :cond_1
    nop

    .line 97
    sget v1, Lcom/onesignal/TrackGooglePurchase;->iapEnabled:I

    if-nez v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0

    .line 92
    :catchall_0
    move-exception v1

    .line 93
    .local v1, "t":Ljava/lang/Throwable;
    sput v0, Lcom/onesignal/TrackGooglePurchase;->iapEnabled:I

    .line 94
    return v0
.end method

.method private QueryBoughtItems()V
    .locals 2

    .line 134
    iget-boolean v0, p0, Lcom/onesignal/TrackGooglePurchase;->isWaitingForPurchasesRequest:Z

    if-eqz v0, :cond_0

    .line 135
    return-void

    .line 137
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/onesignal/TrackGooglePurchase$2;

    invoke-direct {v1, p0}, Lcom/onesignal/TrackGooglePurchase$2;-><init>(Lcom/onesignal/TrackGooglePurchase;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 182
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 183
    return-void
.end method

.method static synthetic access$002(I)I
    .locals 0
    .param p0, "x0"    # I

    .line 48
    sput p0, Lcom/onesignal/TrackGooglePurchase;->iapEnabled:I

    return p0
.end method

.method static synthetic access$100(Lcom/onesignal/TrackGooglePurchase;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/onesignal/TrackGooglePurchase;

    .line 48
    iget-object v0, p0, Lcom/onesignal/TrackGooglePurchase;->mIInAppBillingService:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/onesignal/TrackGooglePurchase;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lcom/onesignal/TrackGooglePurchase;
    .param p1, "x1"    # Ljava/util/ArrayList;
    .param p2, "x2"    # Ljava/util/ArrayList;

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/onesignal/TrackGooglePurchase;->sendPurchases(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$102(Lcom/onesignal/TrackGooglePurchase;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/onesignal/TrackGooglePurchase;
    .param p1, "x1"    # Ljava/lang/Object;

    .line 48
    iput-object p1, p0, Lcom/onesignal/TrackGooglePurchase;->mIInAppBillingService:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/onesignal/TrackGooglePurchase;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/onesignal/TrackGooglePurchase;
    .param p1, "x1"    # Z

    .line 48
    iput-boolean p1, p0, Lcom/onesignal/TrackGooglePurchase;->newAsExisting:Z

    return p1
.end method

.method static synthetic access$200(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 1
    .param p0, "x0"    # Ljava/lang/Class;

    .line 48
    invoke-static {p0}, Lcom/onesignal/TrackGooglePurchase;->getAsInterfaceMethod(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/onesignal/TrackGooglePurchase;)V
    .locals 0
    .param p0, "x0"    # Lcom/onesignal/TrackGooglePurchase;

    .line 48
    invoke-direct {p0}, Lcom/onesignal/TrackGooglePurchase;->QueryBoughtItems()V

    return-void
.end method

.method static synthetic access$402(Lcom/onesignal/TrackGooglePurchase;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/onesignal/TrackGooglePurchase;
    .param p1, "x1"    # Z

    .line 48
    iput-boolean p1, p0, Lcom/onesignal/TrackGooglePurchase;->isWaitingForPurchasesRequest:Z

    return p1
.end method

.method static synthetic access$500(Lcom/onesignal/TrackGooglePurchase;)Ljava/lang/reflect/Method;
    .locals 1
    .param p0, "x0"    # Lcom/onesignal/TrackGooglePurchase;

    .line 48
    iget-object v0, p0, Lcom/onesignal/TrackGooglePurchase;->getPurchasesMethod:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static synthetic access$502(Lcom/onesignal/TrackGooglePurchase;Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;
    .locals 0
    .param p0, "x0"    # Lcom/onesignal/TrackGooglePurchase;
    .param p1, "x1"    # Ljava/lang/reflect/Method;

    .line 48
    iput-object p1, p0, Lcom/onesignal/TrackGooglePurchase;->getPurchasesMethod:Ljava/lang/reflect/Method;

    return-object p1
.end method

.method static synthetic access$600()Ljava/lang/Class;
    .locals 1

    .line 48
    sget-object v0, Lcom/onesignal/TrackGooglePurchase;->IInAppBillingServiceClass:Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic access$700(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 1
    .param p0, "x0"    # Ljava/lang/Class;

    .line 48
    invoke-static {p0}, Lcom/onesignal/TrackGooglePurchase;->getGetPurchasesMethod(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/onesignal/TrackGooglePurchase;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/onesignal/TrackGooglePurchase;

    .line 48
    iget-object v0, p0, Lcom/onesignal/TrackGooglePurchase;->appContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/onesignal/TrackGooglePurchase;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/onesignal/TrackGooglePurchase;

    .line 48
    iget-object v0, p0, Lcom/onesignal/TrackGooglePurchase;->purchaseTokens:Ljava/util/ArrayList;

    return-object v0
.end method

.method private static getAsInterfaceMethod(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 8
    .param p0, "clazz"    # Ljava/lang/Class;

    .line 251
    invoke-virtual {p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 252
    .local v4, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    .line 253
    .local v5, "args":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v6, v5

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    aget-object v6, v5, v2

    const-class v7, Landroid/os/IBinder;

    if-ne v6, v7, :cond_0

    .line 254
    return-object v4

    .line 251
    .end local v4    # "method":Ljava/lang/reflect/Method;
    .end local v5    # "args":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 257
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getGetPurchasesMethod(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 8
    .param p0, "clazz"    # Ljava/lang/Class;

    .line 261
    invoke-virtual {p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 262
    .local v4, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    .line 263
    .local v5, "args":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v6, v5

    const/4 v7, 0x4

    if-ne v6, v7, :cond_0

    aget-object v6, v5, v2

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v6, v7, :cond_0

    const/4 v6, 0x1

    aget-object v6, v5, v6

    const-class v7, Ljava/lang/String;

    if-ne v6, v7, :cond_0

    const/4 v6, 0x2

    aget-object v6, v5, v6

    const-class v7, Ljava/lang/String;

    if-ne v6, v7, :cond_0

    const/4 v6, 0x3

    aget-object v6, v5, v6

    const-class v7, Ljava/lang/String;

    if-ne v6, v7, :cond_0

    .line 265
    return-object v4

    .line 261
    .end local v4    # "method":Ljava/lang/reflect/Method;
    .end local v5    # "args":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 268
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getGetSkuDetailsMethod(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 9
    .param p0, "clazz"    # Ljava/lang/Class;

    .line 272
    invoke-virtual {p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 273
    .local v4, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    .line 274
    .local v5, "args":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v6

    .line 276
    .local v6, "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    array-length v7, v5

    const/4 v8, 0x4

    if-ne v7, v8, :cond_0

    aget-object v7, v5, v2

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v7, v8, :cond_0

    const/4 v7, 0x1

    aget-object v7, v5, v7

    const-class v8, Ljava/lang/String;

    if-ne v7, v8, :cond_0

    const/4 v7, 0x2

    aget-object v7, v5, v7

    const-class v8, Ljava/lang/String;

    if-ne v7, v8, :cond_0

    const/4 v7, 0x3

    aget-object v7, v5, v7

    const-class v8, Landroid/os/Bundle;

    if-ne v7, v8, :cond_0

    const-class v7, Landroid/os/Bundle;

    if-ne v6, v7, :cond_0

    .line 279
    return-object v4

    .line 272
    .end local v4    # "method":Ljava/lang/reflect/Method;
    .end local v5    # "args":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v6    # "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 282
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private sendPurchases(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 187
    .local p1, "skusToAdd":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p2, "newPurchaseTokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_0
    iget-object v0, p0, Lcom/onesignal/TrackGooglePurchase;->getSkuDetailsMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 188
    sget-object v0, Lcom/onesignal/TrackGooglePurchase;->IInAppBillingServiceClass:Ljava/lang/Class;

    invoke-static {v0}, Lcom/onesignal/TrackGooglePurchase;->getGetSkuDetailsMethod(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/onesignal/TrackGooglePurchase;->getSkuDetailsMethod:Ljava/lang/reflect/Method;

    .line 189
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 192
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 193
    .local v0, "querySkus":Landroid/os/Bundle;
    const-string v2, "ITEM_ID_LIST"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 194
    iget-object v2, p0, Lcom/onesignal/TrackGooglePurchase;->getSkuDetailsMethod:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lcom/onesignal/TrackGooglePurchase;->mIInAppBillingService:Ljava/lang/Object;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v5

    iget-object v5, p0, Lcom/onesignal/TrackGooglePurchase;->appContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v1, 0x2

    const-string v5, "inapp"

    aput-object v5, v4, v1

    aput-object v0, v4, v6

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 196
    .local v1, "skuDetails":Landroid/os/Bundle;
    const-string v2, "RESPONSE_CODE"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 197
    .local v2, "response":I
    if-nez v2, :cond_4

    .line 198
    const-string v3, "DETAILS_LIST"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 199
    .local v3, "responseList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 201
    .local v4, "currentSkus":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/json/JSONObject;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 202
    .local v6, "thisResponse":Ljava/lang/String;
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 203
    .local v7, "object":Lorg/json/JSONObject;
    const-string v8, "productId"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 204
    .local v8, "sku":Ljava/lang/String;
    new-instance v9, Ljava/math/BigDecimal;

    const-string v10, "price_amount_micros"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 205
    .local v9, "price":Ljava/math/BigDecimal;
    new-instance v10, Ljava/math/BigDecimal;

    const v11, 0xf4240

    invoke-direct {v10, v11}, Ljava/math/BigDecimal;-><init>(I)V

    invoke-virtual {v9, v10}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v10

    move-object v9, v10

    .line 207
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    .line 208
    .local v10, "jsonItem":Lorg/json/JSONObject;
    const-string v11, "sku"

    invoke-virtual {v10, v11, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 209
    const-string v11, "iso"

    const-string v12, "price_currency_code"

    invoke-virtual {v7, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 210
    const-string v11, "amount"

    invoke-virtual {v9}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 211
    invoke-interface {v4, v8, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    nop

    .end local v6    # "thisResponse":Ljava/lang/String;
    .end local v7    # "object":Lorg/json/JSONObject;
    .end local v8    # "sku":Ljava/lang/String;
    .end local v9    # "price":Ljava/math/BigDecimal;
    goto :goto_0

    .line 214
    .end local v10    # "jsonItem":Lorg/json/JSONObject;
    :cond_1
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 215
    .local v5, "purchasesToReport":Lorg/json/JSONArray;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 216
    .local v7, "sku":Ljava/lang/String;
    invoke-interface {v4, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 217
    goto :goto_1

    .line 218
    :cond_2
    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v5, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 219
    nop

    .end local v7    # "sku":Ljava/lang/String;
    goto :goto_1

    .line 222
    :cond_3
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-lez v6, :cond_4

    .line 223
    new-instance v6, Lcom/onesignal/TrackGooglePurchase$3;

    invoke-direct {v6, p0, p2}, Lcom/onesignal/TrackGooglePurchase$3;-><init>(Lcom/onesignal/TrackGooglePurchase;Ljava/util/ArrayList;)V

    .line 242
    .local v6, "restResponseHandler":Lcom/onesignal/OneSignalRestClient$ResponseHandler;
    iget-boolean v7, p0, Lcom/onesignal/TrackGooglePurchase;->newAsExisting:Z

    invoke-static {v5, v7, v6}, Lcom/onesignal/OneSignal;->sendPurchases(Lorg/json/JSONArray;ZLcom/onesignal/OneSignalRestClient$ResponseHandler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 247
    .end local v0    # "querySkus":Landroid/os/Bundle;
    .end local v1    # "skuDetails":Landroid/os/Bundle;
    .end local v2    # "response":I
    .end local v3    # "responseList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4    # "currentSkus":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/json/JSONObject;>;"
    .end local v5    # "purchasesToReport":Lorg/json/JSONArray;
    .end local v6    # "restResponseHandler":Lcom/onesignal/OneSignalRestClient$ResponseHandler;
    :cond_4
    goto :goto_2

    .line 245
    :catchall_0
    move-exception v0

    .line 246
    .local v0, "t":Ljava/lang/Throwable;
    sget-object v1, Lcom/onesignal/OneSignal$LOG_LEVEL;->WARN:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v2, "Failed to track IAP purchases"

    invoke-static {v1, v2, v0}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 248
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_2
    return-void
.end method


# virtual methods
.method trackIAP()V
    .locals 4

    .line 101
    iget-object v0, p0, Lcom/onesignal/TrackGooglePurchase;->mServiceConn:Landroid/content/ServiceConnection;

    if-nez v0, :cond_0

    .line 102
    new-instance v0, Lcom/onesignal/TrackGooglePurchase$1;

    invoke-direct {v0, p0}, Lcom/onesignal/TrackGooglePurchase$1;-><init>(Lcom/onesignal/TrackGooglePurchase;)V

    iput-object v0, p0, Lcom/onesignal/TrackGooglePurchase;->mServiceConn:Landroid/content/ServiceConnection;

    .line 125
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.vending.billing.InAppBillingService.BIND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 126
    .local v0, "serviceIntent":Landroid/content/Intent;
    const-string v1, "com.android.vending"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 128
    iget-object v1, p0, Lcom/onesignal/TrackGooglePurchase;->appContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/onesignal/TrackGooglePurchase;->mServiceConn:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .end local v0    # "serviceIntent":Landroid/content/Intent;
    goto :goto_0

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/onesignal/TrackGooglePurchase;->mIInAppBillingService:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 130
    invoke-direct {p0}, Lcom/onesignal/TrackGooglePurchase;->QueryBoughtItems()V

    goto :goto_1

    .line 129
    :cond_1
    :goto_0
    nop

    .line 131
    :goto_1
    return-void
.end method
