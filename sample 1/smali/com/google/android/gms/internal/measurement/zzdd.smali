.class public final Lcom/google/android/gms/internal/measurement/zzdd;
.super Lcom/google/android/gms/internal/measurement/zzhs;
.source "com.google.android.gms:play-services-measurement@@18.0.2"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zziy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/zzhs<",
        "Lcom/google/android/gms/internal/measurement/zzdd;",
        "Lcom/google/android/gms/internal/measurement/zzdc;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/zziy;"
    }
.end annotation


# static fields
.field private static final zzg:Lcom/google/android/gms/internal/measurement/zzdd;


# instance fields
.field private zza:I

.field private zze:Ljava/lang/String;

.field private zzf:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzdd;

    .line 1
    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzdd;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzdd;->zzg:Lcom/google/android/gms/internal/measurement/zzdd;

    const-class v1, Lcom/google/android/gms/internal/measurement/zzdd;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/zzhs;->zzby(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/zzhs;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzhs;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzdd;->zze:Ljava/lang/String;

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/measurement/zzdc;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzdd;->zzg:Lcom/google/android/gms/internal/measurement/zzdd;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhs;->zzbt()Lcom/google/android/gms/internal/measurement/zzho;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzdc;

    return-object v0
.end method

.method static synthetic zzb()Lcom/google/android/gms/internal/measurement/zzdd;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzdd;->zzg:Lcom/google/android/gms/internal/measurement/zzdd;

    return-object v0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/measurement/zzdd;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzdd;->zza:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzdd;->zza:I

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzdd;->zze:Ljava/lang/String;

    return-void
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/measurement/zzdd;J)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzdd;->zza:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzdd;->zza:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/measurement/zzdd;->zzf:J

    return-void
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
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzdd;->zzg:Lcom/google/android/gms/internal/measurement/zzdd;

    return-object p1

    .line 4
    :pswitch_2
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzdc;

    .line 3
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/measurement/zzdc;-><init>(Lcom/google/android/gms/internal/measurement/zzcs;)V

    return-object p1

    .line 1
    :pswitch_3
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzdd;

    .line 4
    invoke-direct {p1}, Lcom/google/android/gms/internal/measurement/zzdd;-><init>()V

    return-object p1

    .line 0
    :pswitch_4
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zza"

    aput-object v0, p1, p2

    const-string p2, "zze"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "zzf"

    aput-object p3, p1, p2

    sget-object p2, Lcom/google/android/gms/internal/measurement/zzdd;->zzg:Lcom/google/android/gms/internal/measurement/zzdd;

    .line 2
    const-string p3, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u1008\u0000\u0002\u1002\u0001"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/measurement/zzdd;->zzbz(Lcom/google/android/gms/internal/measurement/zzix;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

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
