.class public final Lcom/google/android/gms/internal/measurement/zzdo;
.super Lcom/google/android/gms/internal/measurement/zzhs;
.source "com.google.android.gms:play-services-measurement@@18.0.2"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zziy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/zzhs<",
        "Lcom/google/android/gms/internal/measurement/zzdo;",
        "Lcom/google/android/gms/internal/measurement/zzdk;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/zziy;"
    }
.end annotation


# static fields
.field private static final zzg:Lcom/google/android/gms/internal/measurement/zzdo;


# instance fields
.field private zza:I

.field private zze:I

.field private zzf:Lcom/google/android/gms/internal/measurement/zzhz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzhz<",
            "Lcom/google/android/gms/internal/measurement/zzdd;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzdo;

    .line 1
    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzdo;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzdo;->zzg:Lcom/google/android/gms/internal/measurement/zzdo;

    const-class v1, Lcom/google/android/gms/internal/measurement/zzdo;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/zzhs;->zzby(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/zzhs;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzhs;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzdo;->zze:I

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzdo;->zzbE()Lcom/google/android/gms/internal/measurement/zzhz;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzdo;->zzf:Lcom/google/android/gms/internal/measurement/zzhz;

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/measurement/zzdk;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzdo;->zzg:Lcom/google/android/gms/internal/measurement/zzdo;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhs;->zzbt()Lcom/google/android/gms/internal/measurement/zzho;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzdk;

    return-object v0
.end method

.method static synthetic zzb()Lcom/google/android/gms/internal/measurement/zzdo;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzdo;->zzg:Lcom/google/android/gms/internal/measurement/zzdo;

    return-object v0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/measurement/zzdo;Lcom/google/android/gms/internal/measurement/zzdd;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzdo;->zzf:Lcom/google/android/gms/internal/measurement/zzhz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzhz;->zza()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzhs;->zzbF(Lcom/google/android/gms/internal/measurement/zzhz;)Lcom/google/android/gms/internal/measurement/zzhz;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzdo;->zzf:Lcom/google/android/gms/internal/measurement/zzhz;

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzdo;->zzf:Lcom/google/android/gms/internal/measurement/zzhz;

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/measurement/zzhz;->add(Ljava/lang/Object;)Z

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
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzdo;->zzg:Lcom/google/android/gms/internal/measurement/zzdo;

    return-object p1

    .line 5
    :pswitch_2
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzdk;

    .line 4
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/measurement/zzdk;-><init>(Lcom/google/android/gms/internal/measurement/zzcs;)V

    return-object p1

    .line 1
    :pswitch_3
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzdo;

    .line 5
    invoke-direct {p1}, Lcom/google/android/gms/internal/measurement/zzdo;-><init>()V

    return-object p1

    .line 0
    :pswitch_4
    const/4 p1, 0x5

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zza"

    aput-object v0, p1, p2

    const-string p2, "zze"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzdn;->zzb()Lcom/google/android/gms/internal/measurement/zzhw;

    move-result-object p3

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "zzf"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-class p3, Lcom/google/android/gms/internal/measurement/zzdd;

    aput-object p3, p1, p2

    sget-object p2, Lcom/google/android/gms/internal/measurement/zzdo;->zzg:Lcom/google/android/gms/internal/measurement/zzdo;

    .line 3
    const-string p3, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u100c\u0000\u0002\u001b"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/measurement/zzdo;->zzbz(Lcom/google/android/gms/internal/measurement/zzix;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

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
