.class public final Lcom/google/android/gms/internal/measurement/zzeg;
.super Lcom/google/android/gms/internal/measurement/zzhs;
.source "com.google.android.gms:play-services-measurement@@18.0.2"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zziy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/zzhs<",
        "Lcom/google/android/gms/internal/measurement/zzeg;",
        "Lcom/google/android/gms/internal/measurement/zzec;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/zziy;"
    }
.end annotation


# static fields
.field private static final zzk:Lcom/google/android/gms/internal/measurement/zzeg;


# instance fields
.field private zza:I

.field private zze:I

.field private zzf:Lcom/google/android/gms/internal/measurement/zzhz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzhz<",
            "Lcom/google/android/gms/internal/measurement/zzeg;",
            ">;"
        }
    .end annotation
.end field

.field private zzg:Ljava/lang/String;

.field private zzh:Ljava/lang/String;

.field private zzi:Z

.field private zzj:D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzeg;

    .line 1
    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzeg;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzeg;->zzk:Lcom/google/android/gms/internal/measurement/zzeg;

    const-class v1, Lcom/google/android/gms/internal/measurement/zzeg;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/zzhs;->zzby(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/zzhs;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzhs;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzeg;->zzbE()Lcom/google/android/gms/internal/measurement/zzhz;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzeg;->zzf:Lcom/google/android/gms/internal/measurement/zzhz;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzeg;->zzg:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzeg;->zzh:Ljava/lang/String;

    return-void
.end method

.method static synthetic zza()Lcom/google/android/gms/internal/measurement/zzeg;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzeg;->zzk:Lcom/google/android/gms/internal/measurement/zzeg;

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
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzeg;->zzk:Lcom/google/android/gms/internal/measurement/zzeg;

    return-object p1

    .line 5
    :pswitch_2
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzec;

    .line 4
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/measurement/zzec;-><init>(Lcom/google/android/gms/internal/measurement/zzdv;)V

    return-object p1

    .line 1
    :pswitch_3
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzeg;

    .line 5
    invoke-direct {p1}, Lcom/google/android/gms/internal/measurement/zzeg;-><init>()V

    return-object p1

    .line 0
    :pswitch_4
    const/16 p1, 0x9

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zza"

    aput-object v0, p1, p2

    const-string p2, "zze"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzef;->zzb()Lcom/google/android/gms/internal/measurement/zzhw;

    move-result-object p3

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "zzf"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-class p3, Lcom/google/android/gms/internal/measurement/zzeg;

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "zzg"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "zzh"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-string p3, "zzi"

    aput-object p3, p1, p2

    const/16 p2, 0x8

    const-string p3, "zzj"

    aput-object p3, p1, p2

    sget-object p2, Lcom/google/android/gms/internal/measurement/zzeg;->zzk:Lcom/google/android/gms/internal/measurement/zzeg;

    .line 3
    const-string p3, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0001\u0000\u0001\u100c\u0000\u0002\u001b\u0003\u1008\u0001\u0004\u1008\u0002\u0005\u1007\u0003\u0006\u1000\u0004"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/measurement/zzeg;->zzbz(Lcom/google/android/gms/internal/measurement/zzix;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_5
    nop

    .line 1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    nop

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
