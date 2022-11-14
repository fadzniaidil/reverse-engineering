.class public final Lcom/google/android/gms/measurement/internal/zzaa;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "com.google.android.gms:play-services-measurement-impl@@18.0.2"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/measurement/internal/zzaa;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public zza:Ljava/lang/String;

.field public zzb:Ljava/lang/String;

.field public zzc:Lcom/google/android/gms/measurement/internal/zzkg;

.field public zzd:J

.field public zze:Z

.field public zzf:Ljava/lang/String;

.field public final zzg:Lcom/google/android/gms/measurement/internal/zzas;

.field public zzh:J

.field public zzi:Lcom/google/android/gms/measurement/internal/zzas;

.field public final zzj:J

.field public final zzk:Lcom/google/android/gms/measurement/internal/zzas;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzab;

    invoke-direct {v0}, Lcom/google/android/gms/measurement/internal/zzab;-><init>()V

    sput-object v0, Lcom/google/android/gms/measurement/internal/zzaa;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzaa;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzaa;->zza:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzaa;->zza:Ljava/lang/String;

    .line 4
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzaa;->zzb:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzaa;->zzb:Ljava/lang/String;

    .line 5
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzaa;->zzc:Lcom/google/android/gms/measurement/internal/zzkg;

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzaa;->zzc:Lcom/google/android/gms/measurement/internal/zzkg;

    .line 6
    iget-wide v0, p1, Lcom/google/android/gms/measurement/internal/zzaa;->zzd:J

    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzaa;->zzd:J

    .line 7
    iget-boolean v0, p1, Lcom/google/android/gms/measurement/internal/zzaa;->zze:Z

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzaa;->zze:Z

    .line 8
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzaa;->zzf:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzaa;->zzf:Ljava/lang/String;

    .line 9
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzaa;->zzg:Lcom/google/android/gms/measurement/internal/zzas;

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzaa;->zzg:Lcom/google/android/gms/measurement/internal/zzas;

    .line 10
    iget-wide v0, p1, Lcom/google/android/gms/measurement/internal/zzaa;->zzh:J

    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzaa;->zzh:J

    .line 11
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzaa;->zzi:Lcom/google/android/gms/measurement/internal/zzas;

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzaa;->zzi:Lcom/google/android/gms/measurement/internal/zzas;

    .line 12
    iget-wide v0, p1, Lcom/google/android/gms/measurement/internal/zzaa;->zzj:J

    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzaa;->zzj:J

    .line 13
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzaa;->zzk:Lcom/google/android/gms/measurement/internal/zzas;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzaa;->zzk:Lcom/google/android/gms/measurement/internal/zzas;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzkg;JZLjava/lang/String;Lcom/google/android/gms/measurement/internal/zzas;JLcom/google/android/gms/measurement/internal/zzas;JLcom/google/android/gms/measurement/internal/zzas;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzaa;->zza:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzaa;->zzb:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzaa;->zzc:Lcom/google/android/gms/measurement/internal/zzkg;

    iput-wide p4, p0, Lcom/google/android/gms/measurement/internal/zzaa;->zzd:J

    iput-boolean p6, p0, Lcom/google/android/gms/measurement/internal/zzaa;->zze:Z

    iput-object p7, p0, Lcom/google/android/gms/measurement/internal/zzaa;->zzf:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/gms/measurement/internal/zzaa;->zzg:Lcom/google/android/gms/measurement/internal/zzas;

    iput-wide p9, p0, Lcom/google/android/gms/measurement/internal/zzaa;->zzh:J

    iput-object p11, p0, Lcom/google/android/gms/measurement/internal/zzaa;->zzi:Lcom/google/android/gms/measurement/internal/zzas;

    iput-wide p12, p0, Lcom/google/android/gms/measurement/internal/zzaa;->zzj:J

    iput-object p14, p0, Lcom/google/android/gms/measurement/internal/zzaa;->zzk:Lcom/google/android/gms/measurement/internal/zzas;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzaa;->zza:Ljava/lang/String;

    .line 2
    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzaa;->zzb:Ljava/lang/String;

    .line 3
    const/4 v2, 0x3

    invoke-static {p1, v2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzaa;->zzc:Lcom/google/android/gms/measurement/internal/zzkg;

    .line 4
    const/4 v2, 0x4

    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/zzaa;->zzd:J

    .line 5
    const/4 v4, 0x5

    invoke-static {p1, v4, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeLong(Landroid/os/Parcel;IJ)V

    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zzaa;->zze:Z

    .line 6
    const/4 v2, 0x6

    invoke-static {p1, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzaa;->zzf:Ljava/lang/String;

    .line 7
    const/4 v2, 0x7

    invoke-static {p1, v2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzaa;->zzg:Lcom/google/android/gms/measurement/internal/zzas;

    .line 8
    const/16 v2, 0x8

    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/zzaa;->zzh:J

    .line 9
    const/16 v4, 0x9

    invoke-static {p1, v4, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeLong(Landroid/os/Parcel;IJ)V

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzaa;->zzi:Lcom/google/android/gms/measurement/internal/zzas;

    .line 10
    const/16 v2, 0xa

    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/zzaa;->zzj:J

    .line 11
    const/16 v4, 0xb

    invoke-static {p1, v4, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeLong(Landroid/os/Parcel;IJ)V

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzaa;->zzk:Lcom/google/android/gms/measurement/internal/zzas;

    .line 12
    const/16 v2, 0xc

    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 13
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method
