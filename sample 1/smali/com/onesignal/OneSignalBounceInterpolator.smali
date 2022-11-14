.class Lcom/onesignal/OneSignalBounceInterpolator;
.super Ljava/lang/Object;
.source "OneSignalBounceInterpolator.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# instance fields
.field private mAmplitude:D

.field private mFrequency:D


# direct methods
.method constructor <init>(DD)V
    .locals 2
    .param p1, "amplitude"    # D
    .param p3, "frequency"    # D

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lcom/onesignal/OneSignalBounceInterpolator;->mAmplitude:D

    .line 5
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    iput-wide v0, p0, Lcom/onesignal/OneSignalBounceInterpolator;->mFrequency:D

    .line 8
    iput-wide p1, p0, Lcom/onesignal/OneSignalBounceInterpolator;->mAmplitude:D

    .line 9
    iput-wide p3, p0, Lcom/onesignal/OneSignalBounceInterpolator;->mFrequency:D

    .line 10
    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 6
    .param p1, "time"    # F

    .line 13
    neg-float v0, p1

    float-to-double v0, v0

    iget-wide v2, p0, Lcom/onesignal/OneSignalBounceInterpolator;->mAmplitude:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    const-wide v2, 0x4005bf0a8b145769L    # Math.E

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    mul-double v0, v0, v2

    iget-wide v2, p0, Lcom/onesignal/OneSignalBounceInterpolator;->mFrequency:D

    float-to-double v4, p1

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double v0, v0, v2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method
