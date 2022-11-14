.class Lcom/onesignal/AdvertisingIdProviderGPS;
.super Ljava/lang/Object;
.source "AdvertisingIdProviderGPS.java"

# interfaces
.implements Lcom/onesignal/AdvertisingIdentifierProvider;


# static fields
.field private static lastValue:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getLastValue()Ljava/lang/String;
    .locals 1

    .line 39
    sget-object v0, Lcom/onesignal/AdvertisingIdProviderGPS;->lastValue:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getIdentifier(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p1, "appContext"    # Landroid/content/Context;

    .line 45
    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v0

    .line 46
    .local v0, "adInfo":Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 47
    const-string v1, "OptedOut"

    sput-object v1, Lcom/onesignal/AdvertisingIdProviderGPS;->lastValue:Ljava/lang/String;

    goto :goto_0

    .line 49
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/onesignal/AdvertisingIdProviderGPS;->lastValue:Ljava/lang/String;

    .line 51
    :goto_0
    sget-object v1, Lcom/onesignal/AdvertisingIdProviderGPS;->lastValue:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    .line 52
    .end local v0    # "adInfo":Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    :catchall_0
    move-exception v0

    .line 53
    .local v0, "t":Ljava/lang/Throwable;
    sget-object v1, Lcom/onesignal/OneSignal$LOG_LEVEL;->INFO:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v2, "Error getting Google Ad id: "

    invoke-static {v1, v2, v0}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 61
    .end local v0    # "t":Ljava/lang/Throwable;
    const/4 v0, 0x0

    return-object v0
.end method
