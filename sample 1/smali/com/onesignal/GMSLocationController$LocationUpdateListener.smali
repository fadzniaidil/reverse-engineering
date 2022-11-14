.class Lcom/onesignal/GMSLocationController$LocationUpdateListener;
.super Ljava/lang/Object;
.source "GMSLocationController.java"

# interfaces
.implements Lcom/google/android/gms/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onesignal/GMSLocationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LocationUpdateListener"
.end annotation


# instance fields
.field private googleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 0
    .param p1, "googleApiClient"    # Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    iput-object p1, p0, Lcom/onesignal/GMSLocationController$LocationUpdateListener;->googleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 159
    invoke-direct {p0}, Lcom/onesignal/GMSLocationController$LocationUpdateListener;->init()V

    .line 160
    return-void
.end method

.method private init()V
    .locals 7

    .line 163
    const-wide/32 v0, 0x8b290

    .line 164
    .local v0, "updateInterval":J
    invoke-static {}, Lcom/onesignal/OneSignal;->isForeground()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 165
    const-wide/32 v0, 0x41eb0

    .line 167
    :cond_0
    iget-object v2, p0, Lcom/onesignal/GMSLocationController$LocationUpdateListener;->googleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v2, :cond_1

    .line 168
    invoke-static {}, Lcom/google/android/gms/location/LocationRequest;->create()Lcom/google/android/gms/location/LocationRequest;

    move-result-object v2

    .line 169
    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/location/LocationRequest;->setFastestInterval(J)Lcom/google/android/gms/location/LocationRequest;

    move-result-object v2

    .line 170
    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/location/LocationRequest;->setInterval(J)Lcom/google/android/gms/location/LocationRequest;

    move-result-object v2

    long-to-double v3, v0

    const-wide/high16 v5, 0x3ff8000000000000L    # 1.5

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v5

    double-to-long v3, v3

    .line 171
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/location/LocationRequest;->setMaxWaitTime(J)Lcom/google/android/gms/location/LocationRequest;

    move-result-object v2

    const/16 v3, 0x66

    .line 172
    invoke-virtual {v2, v3}, Lcom/google/android/gms/location/LocationRequest;->setPriority(I)Lcom/google/android/gms/location/LocationRequest;

    move-result-object v2

    .line 174
    .local v2, "locationRequest":Lcom/google/android/gms/location/LocationRequest;
    sget-object v3, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v4, "GMSLocationController GoogleApiClient requestLocationUpdates!"

    invoke-static {v3, v4}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 175
    iget-object v3, p0, Lcom/onesignal/GMSLocationController$LocationUpdateListener;->googleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-static {v3, v2, p0}, Lcom/onesignal/GMSLocationController$FusedLocationApiWrapper;->requestLocationUpdates(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/LocationListener;)V

    .line 177
    .end local v2    # "locationRequest":Lcom/google/android/gms/location/LocationRequest;
    :cond_1
    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 3
    .param p1, "location"    # Landroid/location/Location;

    .line 181
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GMSLocationController onLocationChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 182
    sput-object p1, Lcom/onesignal/LocationController;->lastLocation:Landroid/location/Location;

    .line 183
    return-void
.end method
