.class Lcom/onesignal/HMSLocationController$LocationUpdateListener;
.super Lcom/huawei/hms/location/LocationCallback;
.source "HMSLocationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onesignal/HMSLocationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LocationUpdateListener"
.end annotation


# instance fields
.field private huaweiFusedLocationProviderClient:Lcom/huawei/hms/location/FusedLocationProviderClient;


# direct methods
.method constructor <init>(Lcom/huawei/hms/location/FusedLocationProviderClient;)V
    .locals 0
    .param p1, "huaweiFusedLocationProviderClient"    # Lcom/huawei/hms/location/FusedLocationProviderClient;

    .line 111
    invoke-direct {p0}, Lcom/huawei/hms/location/LocationCallback;-><init>()V

    .line 112
    iput-object p1, p0, Lcom/onesignal/HMSLocationController$LocationUpdateListener;->huaweiFusedLocationProviderClient:Lcom/huawei/hms/location/FusedLocationProviderClient;

    .line 113
    invoke-direct {p0}, Lcom/onesignal/HMSLocationController$LocationUpdateListener;->init()V

    .line 114
    return-void
.end method

.method private init()V
    .locals 7

    .line 117
    const-wide/32 v0, 0x8b290

    .line 118
    .local v0, "updateInterval":J
    invoke-static {}, Lcom/onesignal/OneSignal;->isForeground()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 119
    const-wide/32 v0, 0x41eb0

    .line 121
    :cond_0
    invoke-static {}, Lcom/huawei/hms/location/LocationRequest;->create()Lcom/huawei/hms/location/LocationRequest;

    move-result-object v2

    .line 122
    invoke-virtual {v2, v0, v1}, Lcom/huawei/hms/location/LocationRequest;->setFastestInterval(J)Lcom/huawei/hms/location/LocationRequest;

    move-result-object v2

    .line 123
    invoke-virtual {v2, v0, v1}, Lcom/huawei/hms/location/LocationRequest;->setInterval(J)Lcom/huawei/hms/location/LocationRequest;

    move-result-object v2

    long-to-double v3, v0

    const-wide/high16 v5, 0x3ff8000000000000L    # 1.5

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v5

    double-to-long v3, v3

    .line 124
    invoke-virtual {v2, v3, v4}, Lcom/huawei/hms/location/LocationRequest;->setMaxWaitTime(J)Lcom/huawei/hms/location/LocationRequest;

    move-result-object v2

    const/16 v3, 0x66

    .line 125
    invoke-virtual {v2, v3}, Lcom/huawei/hms/location/LocationRequest;->setPriority(I)Lcom/huawei/hms/location/LocationRequest;

    move-result-object v2

    .line 127
    .local v2, "locationRequest":Lcom/huawei/hms/location/LocationRequest;
    sget-object v3, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v4, "HMSLocationController Huawei LocationServices requestLocationUpdates!"

    invoke-static {v3, v4}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 128
    iget-object v3, p0, Lcom/onesignal/HMSLocationController$LocationUpdateListener;->huaweiFusedLocationProviderClient:Lcom/huawei/hms/location/FusedLocationProviderClient;

    sget-object v4, Lcom/onesignal/LocationController;->locationHandlerThread:Lcom/onesignal/LocationController$LocationHandlerThread;

    invoke-virtual {v4}, Lcom/onesignal/LocationController$LocationHandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-virtual {v3, v2, p0, v4}, Lcom/huawei/hms/location/FusedLocationProviderClient;->requestLocationUpdates(Lcom/huawei/hms/location/LocationRequest;Lcom/huawei/hms/location/LocationCallback;Landroid/os/Looper;)Lcom/huawei/hmf/tasks/Task;

    .line 129
    return-void
.end method


# virtual methods
.method public onLocationResult(Lcom/huawei/hms/location/LocationResult;)V
    .locals 3
    .param p1, "locationResult"    # Lcom/huawei/hms/location/LocationResult;

    .line 133
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HMSLocationController onLocationResult: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 134
    if-eqz p1, :cond_0

    .line 135
    invoke-virtual {p1}, Lcom/huawei/hms/location/LocationResult;->getLastLocation()Landroid/location/Location;

    move-result-object v0

    sput-object v0, Lcom/onesignal/LocationController;->lastLocation:Landroid/location/Location;

    .line 136
    :cond_0
    return-void
.end method
