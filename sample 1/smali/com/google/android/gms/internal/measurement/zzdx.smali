.class public final Lcom/google/android/gms/internal/measurement/zzdx;
.super Lcom/google/android/gms/internal/measurement/zzhs;
.source "com.google.android.gms:play-services-measurement@@18.0.2"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zziy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/zzhs<",
        "Lcom/google/android/gms/internal/measurement/zzdx;",
        "Lcom/google/android/gms/internal/measurement/zzdw;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/zziy;"
    }
.end annotation


# static fields
.field private static final zze:Lcom/google/android/gms/internal/measurement/zzdx;


# instance fields
.field private zza:Lcom/google/android/gms/internal/measurement/zzhz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzhz<",
            "Lcom/google/android/gms/internal/measurement/zzdz;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzdx;

    .line 1
    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzdx;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzdx;->zze:Lcom/google/android/gms/internal/measurement/zzdx;

    const-class v1, Lcom/google/android/gms/internal/measurement/zzdx;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/zzhs;->zzby(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/zzhs;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzhs;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzdx;->zzbE()Lcom/google/android/gms/internal/measurement/zzhz;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzdx;->zza:Lcom/google/android/gms/internal/measurement/zzhz;

    return-void
.end method

.method static synthetic zza()Lcom/google/android/gms/internal/measurement/zzdx;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzdx;->zze:Lcom/google/android/gms/internal/measurement/zzdx;

    return-object v0
.end method


# virtual methods
.method protected final zzl(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    add-int/lit8 p1, p1, -0x1

    const/4 p2, 0x0

    const/4 p3, 0x1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    return-object p2

    .line 1
    :pswitch_1
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzdx;->zze:Lcom/google/android/gms/internal/measurement/zzdx;

    return-object p1

    .line 4
    :pswitch_2
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzdw;

    .line 3
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/measurement/zzdw;-><init>(Lcom/google/android/gms/internal/measurement/zzdv;)V

    return-object p1

    .line 1
    :pswitch_3
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzdx;

    .line 4
    invoke-direct {p1}, Lcom/google/android/gms/internal/measurement/zzdx;-><init>()V

    return-object p1

    .line 0
    :pswitch_4
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zza"

    aput-object v0, p1, p2

    const-class p2, Lcom/google/android/gms/internal/measurement/zzdz;

    aput-object p2, p1, p3

    sget-object p2, Lcom/google/android/gms/internal/measurement/zzdx;->zze:Lcom/google/android/gms/internal/measurement/zzdx;

    .line 2
    const-string p3, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/measurement/zzdx;->zzbz(Lcom/google/android/gms/internal/measurement/zzix;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_5
    nop

    .line 1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
