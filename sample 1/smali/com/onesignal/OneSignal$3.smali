.class final Lcom/onesignal/OneSignal$3;
.super Ljava/lang/Object;
.source "OneSignal.java"

# interfaces
.implements Lcom/onesignal/LocationController$LocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/OneSignal;->startLocationUpdate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 970
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getType()Lcom/onesignal/LocationController$PermissionType;
    .locals 1

    .line 973
    sget-object v0, Lcom/onesignal/LocationController$PermissionType;->STARTUP:Lcom/onesignal/LocationController$PermissionType;

    return-object v0
.end method

.method public onComplete(Lcom/onesignal/LocationController$LocationPoint;)V
    .locals 1
    .param p1, "point"    # Lcom/onesignal/LocationController$LocationPoint;

    .line 977
    invoke-static {p1}, Lcom/onesignal/OneSignal;->access$602(Lcom/onesignal/LocationController$LocationPoint;)Lcom/onesignal/LocationController$LocationPoint;

    .line 978
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/onesignal/OneSignal;->access$702(Z)Z

    .line 979
    invoke-static {}, Lcom/onesignal/OneSignal;->access$800()V

    .line 980
    return-void
.end method
