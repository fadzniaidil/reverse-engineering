.class Lcom/onesignal/AndroidSupportV4Compat$ActivityCompat;
.super Ljava/lang/Object;
.source "AndroidSupportV4Compat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onesignal/AndroidSupportV4Compat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ActivityCompat"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V
    .locals 0
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "permissions"    # [Ljava/lang/String;
    .param p2, "requestCode"    # I

    .line 70
    invoke-static {p0, p1, p2}, Lcom/onesignal/AndroidSupportV4Compat$ActivityCompatApi23;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 71
    return-void
.end method

.method static shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "permission"    # Ljava/lang/String;

    .line 74
    invoke-static {p0, p1}, Lcom/onesignal/AndroidSupportV4Compat$ActivityCompatApi23;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
