.class Lcom/onesignal/GMSLocationController$GoogleApiClientListener;
.super Ljava/lang/Object;
.source "GMSLocationController.java"

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onesignal/GMSLocationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GoogleApiClientListener"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/onesignal/GMSLocationController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/onesignal/GMSLocationController$1;

    .line 120
    invoke-direct {p0}, Lcom/onesignal/GMSLocationController$GoogleApiClientListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 123
    sget-object v0, Lcom/onesignal/LocationController;->syncLock:Ljava/lang/Object;

    monitor-enter v0

    .line 124
    const/4 v1, 0x0

    :try_start_0
    sput-boolean v1, Lcom/onesignal/PermissionsActivity;->answered:Z

    .line 126
    invoke-static {}, Lcom/onesignal/GMSLocationController;->access$200()Lcom/onesignal/GoogleApiClientCompatProxy;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/onesignal/GMSLocationController;->access$200()Lcom/onesignal/GoogleApiClientCompatProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onesignal/GoogleApiClientCompatProxy;->realInstance()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 129
    :cond_0
    sget-object v1, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LocationController GoogleApiClientListener onConnected lastLocation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/onesignal/LocationController;->lastLocation:Landroid/location/Location;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 130
    sget-object v1, Lcom/onesignal/LocationController;->lastLocation:Landroid/location/Location;

    if-nez v1, :cond_1

    .line 131
    invoke-static {}, Lcom/onesignal/GMSLocationController;->access$200()Lcom/onesignal/GoogleApiClientCompatProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onesignal/GoogleApiClientCompatProxy;->realInstance()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    invoke-static {v1}, Lcom/onesignal/GMSLocationController$FusedLocationApiWrapper;->getLastLocation(Lcom/google/android/gms/common/api/GoogleApiClient;)Landroid/location/Location;

    move-result-object v1

    sput-object v1, Lcom/onesignal/LocationController;->lastLocation:Landroid/location/Location;

    .line 132
    sget-object v1, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LocationController GoogleApiClientListener lastLocation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/onesignal/LocationController;->lastLocation:Landroid/location/Location;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 133
    sget-object v1, Lcom/onesignal/LocationController;->lastLocation:Landroid/location/Location;

    if-eqz v1, :cond_1

    .line 134
    sget-object v1, Lcom/onesignal/LocationController;->lastLocation:Landroid/location/Location;

    invoke-static {v1}, Lcom/onesignal/LocationController;->fireCompleteForLocation(Landroid/location/Location;)V

    .line 137
    :cond_1
    new-instance v1, Lcom/onesignal/GMSLocationController$LocationUpdateListener;

    invoke-static {}, Lcom/onesignal/GMSLocationController;->access$200()Lcom/onesignal/GoogleApiClientCompatProxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onesignal/GoogleApiClientCompatProxy;->realInstance()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/onesignal/GMSLocationController$LocationUpdateListener;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    sput-object v1, Lcom/onesignal/GMSLocationController;->locationUpdateListener:Lcom/onesignal/GMSLocationController$LocationUpdateListener;

    .line 138
    monitor-exit v0

    .line 139
    return-void

    .line 127
    :cond_2
    :goto_0
    monitor-exit v0

    return-void

    .line 138
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 0
    .param p1, "connectionResult"    # Lcom/google/android/gms/common/ConnectionResult;

    .line 148
    invoke-static {}, Lcom/onesignal/GMSLocationController;->fireFailedComplete()V

    .line 149
    return-void
.end method

.method public onConnectionSuspended(I)V
    .locals 0
    .param p1, "i"    # I

    .line 143
    invoke-static {}, Lcom/onesignal/GMSLocationController;->fireFailedComplete()V

    .line 144
    return-void
.end method
