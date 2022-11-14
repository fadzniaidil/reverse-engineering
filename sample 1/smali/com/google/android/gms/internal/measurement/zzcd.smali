.class public final Lcom/google/android/gms/internal/measurement/zzcd;
.super Lcom/google/android/gms/internal/measurement/zzhs;
.source "com.google.android.gms:play-services-measurement@@18.0.2"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zziy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/zzhs<",
        "Lcom/google/android/gms/internal/measurement/zzcd;",
        "Lcom/google/android/gms/internal/measurement/zzbz;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/zziy;"
    }
.end annotation


# static fields
.field private static final zzj:Lcom/google/android/gms/internal/measurement/zzcd;


# instance fields
.field private zza:I

.field private zze:I

.field private zzf:Z

.field private zzg:Ljava/lang/String;

.field private zzh:Ljava/lang/String;

.field private zzi:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzcd;

    .line 1
    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzcd;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzcd;->zzj:Lcom/google/android/gms/internal/measurement/zzcd;

    const-class v1, Lcom/google/android/gms/internal/measurement/zzcd;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/zzhs;->zzby(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/zzhs;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzhs;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzcd;->zzg:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzcd;->zzh:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzcd;->zzi:Ljava/lang/String;

    return-void
.end method

.method public static zzk()Lcom/google/android/gms/internal/measurement/zzcd;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzcd;->zzj:Lcom/google/android/gms/internal/measurement/zzcd;

    return-object v0
.end method

.method static synthetic zzm()Lcom/google/android/gms/internal/measurement/zzcd;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzcd;->zzj:Lcom/google/android/gms/internal/measurement/zzcd;

    return-object v0
.end method


# virtual methods
.method public final zza()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzcd;->zza:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/measurement/zzcc;
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzcd;->zze:I

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzcc;->zza(I)Lcom/google/android/gms/internal/measurement/zzcc;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzcc;->zza:Lcom/google/android/gms/internal/measurement/zzcc;

    :cond_0
    return-object v0
.end method

.method public final zzc()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzcd;->zza:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzd()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzcd;->zzf:Z

    return v0
.end method

.method public final zze()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzcd;->zza:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzf()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzcd;->zzg:Ljava/lang/String;

    return-object v0
.end method

.method public final zzg()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzcd;->zza:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzh()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzcd;->zzh:Ljava/lang/String;

    return-object v0
.end method

.method public final zzi()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzcd;->zza:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzj()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzcd;->zzi:Ljava/lang/String;

    return-object v0
.end method

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
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzcd;->zzj:Lcom/google/android/gms/internal/measurement/zzcd;

    return-object p1

    .line 5
    :pswitch_2
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzbz;

    .line 4
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/measurement/zzbz;-><init>(Lcom/google/android/gms/internal/measurement/zzbs;)V

    return-object p1

    .line 1
    :pswitch_3
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzcd;

    .line 5
    invoke-direct {p1}, Lcom/google/android/gms/internal/measurement/zzcd;-><init>()V

    return-object p1

    .line 0
    :pswitch_4
    const/4 p1, 0x7

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zza"

    aput-object v0, p1, p2

    const-string p2, "zze"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzcc;->zzb()Lcom/google/android/gms/internal/measurement/zzhw;

    move-result-object p3

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "zzf"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "zzg"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "zzh"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "zzi"

    aput-object p3, p1, p2

    sget-object p2, Lcom/google/android/gms/internal/measurement/zzcd;->zzj:Lcom/google/android/gms/internal/measurement/zzcd;

    .line 3
    const-string p3, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0000\u0000\u0001\u100c\u0000\u0002\u1007\u0001\u0003\u1008\u0002\u0004\u1008\u0003\u0005\u1008\u0004"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/measurement/zzcd;->zzbz(Lcom/google/android/gms/internal/measurement/zzix;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

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
