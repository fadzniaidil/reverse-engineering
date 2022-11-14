.class Lcom/onesignal/GMSLocationController$FusedLocationApiWrapper;
.super Ljava/lang/Object;
.source "GMSLocationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onesignal/GMSLocationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FusedLocationApiWrapper"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getLastLocation(Lcom/google/android/gms/common/api/GoogleApiClient;)Landroid/location/Location;
    .locals 2
    .param p0, "googleApiClient"    # Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 201
    sget-object v0, Lcom/onesignal/GMSLocationController;->syncLock:Ljava/lang/Object;

    monitor-enter v0

    .line 202
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 203
    sget-object v1, Lcom/google/android/gms/location/LocationServices;->FusedLocationApi:Lcom/google/android/gms/location/FusedLocationProviderApi;

    invoke-interface {v1, p0}, Lcom/google/android/gms/location/FusedLocationProviderApi;->getLastLocation(Lcom/google/android/gms/common/api/GoogleApiClient;)Landroid/location/Location;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 204
    :cond_0
    monitor-exit v0

    .line 205
    const/4 v0, 0x0

    return-object v0

    .line 204
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static requestLocationUpdates(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/LocationListener;)V
    .locals 3
    .param p0, "googleApiClient"    # Lcom/google/android/gms/common/api/GoogleApiClient;
    .param p1, "locationRequest"    # Lcom/google/android/gms/location/LocationRequest;
    .param p2, "locationListener"    # Lcom/google/android/gms/location/LocationListener;

    .line 190
    :try_start_0
    sget-object v0, Lcom/onesignal/GMSLocationController;->syncLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 191
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 192
    sget-object v1, Lcom/google/android/gms/location/LocationServices;->FusedLocationApi:Lcom/google/android/gms/location/FusedLocationProviderApi;

    invoke-interface {v1, p0, p1, p2}, Lcom/google/android/gms/location/FusedLocationProviderApi;->requestLocationUpdates(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/LocationListener;)Lcom/google/android/gms/common/api/PendingResult;

    .line 193
    :cond_0
    monitor-exit v0

    .line 196
    goto :goto_0

    .line 193
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p0    # "googleApiClient":Lcom/google/android/gms/common/api/GoogleApiClient;
    .end local p1    # "locationRequest":Lcom/google/android/gms/location/LocationRequest;
    .end local p2    # "locationListener":Lcom/google/android/gms/location/LocationListener;
    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 194
    .restart local p0    # "googleApiClient":Lcom/google/android/gms/common/api/GoogleApiClient;
    .restart local p1    # "locationRequest":Lcom/google/android/gms/location/LocationRequest;
    .restart local p2    # "locationListener":Lcom/google/android/gms/location/LocationListener;
    :catchall_1
    move-exception v0

    .line 195
    .local v0, "t":Ljava/lang/Throwable;
    sget-object v1, Lcom/onesignal/OneSignal$LOG_LEVEL;->WARN:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v2, "FusedLocationApi.requestLocationUpdates failed!"

    invoke-static {v1, v2, v0}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 197
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method
