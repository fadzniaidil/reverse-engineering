.class Lcom/onesignal/TrackAmazonPurchase;
.super Ljava/lang/Object;
.source "TrackAmazonPurchase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onesignal/TrackAmazonPurchase$OSPurchasingListener;
    }
.end annotation


# instance fields
.field private canTrack:Z

.field private context:Landroid/content/Context;

.field private listenerHandlerField:Ljava/lang/reflect/Field;

.field private listenerHandlerObject:Ljava/lang/Object;

.field private osPurchasingListener:Lcom/onesignal/TrackAmazonPurchase$OSPurchasingListener;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/onesignal/TrackAmazonPurchase;->canTrack:Z

    .line 63
    iput-object p1, p0, Lcom/onesignal/TrackAmazonPurchase;->context:Landroid/content/Context;

    .line 67
    :try_start_0
    const-string v1, "com.amazon.device.iap.internal.d"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 68
    .local v1, "listenerHandlerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v2, "d"

    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/onesignal/TrackAmazonPurchase;->listenerHandlerObject:Ljava/lang/Object;

    .line 69
    const-string v0, "f"

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Lcom/onesignal/TrackAmazonPurchase;->listenerHandlerField:Ljava/lang/reflect/Field;

    .line 70
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 72
    new-instance v0, Lcom/onesignal/TrackAmazonPurchase$OSPurchasingListener;

    invoke-direct {v0, p0, v3}, Lcom/onesignal/TrackAmazonPurchase$OSPurchasingListener;-><init>(Lcom/onesignal/TrackAmazonPurchase;Lcom/onesignal/TrackAmazonPurchase$1;)V

    iput-object v0, p0, Lcom/onesignal/TrackAmazonPurchase;->osPurchasingListener:Lcom/onesignal/TrackAmazonPurchase$OSPurchasingListener;

    .line 73
    iget-object v3, p0, Lcom/onesignal/TrackAmazonPurchase;->listenerHandlerField:Ljava/lang/reflect/Field;

    iget-object v4, p0, Lcom/onesignal/TrackAmazonPurchase;->listenerHandlerObject:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/device/iap/PurchasingListener;

    iput-object v3, v0, Lcom/onesignal/TrackAmazonPurchase$OSPurchasingListener;->orgPurchasingListener:Lcom/amazon/device/iap/PurchasingListener;

    .line 75
    iput-boolean v2, p0, Lcom/onesignal/TrackAmazonPurchase;->canTrack:Z

    .line 76
    invoke-direct {p0}, Lcom/onesignal/TrackAmazonPurchase;->setListener()V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "listenerHandlerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_0

    .line 86
    :catch_0
    move-exception v0

    .line 87
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    invoke-static {v0}, Lcom/onesignal/TrackAmazonPurchase;->logAmazonIAPListenerError(Ljava/lang/Exception;)V

    goto :goto_1

    .line 84
    .end local v0    # "e":Ljava/lang/NoSuchFieldException;
    :catch_1
    move-exception v0

    .line 85
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    invoke-static {v0}, Lcom/onesignal/TrackAmazonPurchase;->logAmazonIAPListenerError(Ljava/lang/Exception;)V

    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    goto :goto_0

    .line 82
    :catch_2
    move-exception v0

    .line 83
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-static {v0}, Lcom/onesignal/TrackAmazonPurchase;->logAmazonIAPListenerError(Ljava/lang/Exception;)V

    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    goto :goto_0

    .line 80
    :catch_3
    move-exception v0

    .line 81
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-static {v0}, Lcom/onesignal/TrackAmazonPurchase;->logAmazonIAPListenerError(Ljava/lang/Exception;)V

    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    goto :goto_0

    .line 78
    :catch_4
    move-exception v0

    .line 79
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    invoke-static {v0}, Lcom/onesignal/TrackAmazonPurchase;->logAmazonIAPListenerError(Ljava/lang/Exception;)V

    .line 88
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :goto_0
    nop

    .line 89
    :goto_1
    return-void
.end method

.method private static logAmazonIAPListenerError(Ljava/lang/Exception;)V
    .locals 2
    .param p0, "e"    # Ljava/lang/Exception;

    .line 92
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v1, "Error adding Amazon IAP listener."

    invoke-static {v0, v1, p0}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 93
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 94
    return-void
.end method

.method private setListener()V
    .locals 2

    .line 97
    iget-object v0, p0, Lcom/onesignal/TrackAmazonPurchase;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/onesignal/TrackAmazonPurchase;->osPurchasingListener:Lcom/onesignal/TrackAmazonPurchase$OSPurchasingListener;

    invoke-static {v0, v1}, Lcom/amazon/device/iap/PurchasingService;->registerListener(Landroid/content/Context;Lcom/amazon/device/iap/PurchasingListener;)V

    .line 98
    return-void
.end method


# virtual methods
.method checkListener()V
    .locals 2

    .line 101
    iget-boolean v0, p0, Lcom/onesignal/TrackAmazonPurchase;->canTrack:Z

    if-nez v0, :cond_0

    .line 102
    return-void

    .line 104
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/onesignal/TrackAmazonPurchase;->listenerHandlerField:Ljava/lang/reflect/Field;

    iget-object v1, p0, Lcom/onesignal/TrackAmazonPurchase;->listenerHandlerObject:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/device/iap/PurchasingListener;

    .line 105
    .local v0, "curPurchasingListener":Lcom/amazon/device/iap/PurchasingListener;
    iget-object v1, p0, Lcom/onesignal/TrackAmazonPurchase;->osPurchasingListener:Lcom/onesignal/TrackAmazonPurchase$OSPurchasingListener;

    if-eq v0, v1, :cond_1

    .line 106
    iput-object v0, v1, Lcom/onesignal/TrackAmazonPurchase$OSPurchasingListener;->orgPurchasingListener:Lcom/amazon/device/iap/PurchasingListener;

    .line 107
    invoke-direct {p0}, Lcom/onesignal/TrackAmazonPurchase;->setListener()V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    .end local v0    # "curPurchasingListener":Lcom/amazon/device/iap/PurchasingListener;
    :cond_1
    goto :goto_0

    .line 109
    :catch_0
    move-exception v0

    .line 110
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .line 112
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :goto_0
    return-void
.end method
