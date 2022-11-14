.class final Lcom/google/android/gms/measurement/internal/zzy;
.super Lcom/google/android/gms/measurement/internal/zzjv;
.source "com.google.android.gms:play-services-measurement@@18.0.2"


# instance fields
.field private zzb:Ljava/lang/String;

.field private zzc:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private zzd:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/gms/measurement/internal/zzt;",
            ">;"
        }
    .end annotation
.end field

.field private zze:Ljava/lang/Long;

.field private zzf:Ljava/lang/Long;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzkd;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzjv;-><init>(Lcom/google/android/gms/measurement/internal/zzkd;)V

    return-void
.end method

.method private final zzc(Ljava/lang/Integer;)Lcom/google/android/gms/measurement/internal/zzt;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzy;->zzd:Ljava/util/Map;

    .line 1
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzy;->zzd:Ljava/util/Map;

    .line 2
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/measurement/internal/zzt;

    return-object p1

    :cond_0
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzt;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzy;->zzb:Ljava/lang/String;

    const/4 v2, 0x0

    .line 3
    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzt;-><init>(Lcom/google/android/gms/measurement/internal/zzy;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzs;)V

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzy;->zzd:Ljava/util/Map;

    .line 4
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private final zzd(II)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzy;->zzd:Ljava/util/Map;

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/measurement/internal/zzt;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzt;->zzc(Lcom/google/android/gms/measurement/internal/zzt;)Ljava/util/BitSet;

    move-result-object p1

    .line 2
    invoke-virtual {p1, p2}, Ljava/util/BitSet;->get(I)Z

    move-result p1

    return p1
.end method


# virtual methods
.method protected final zzaz()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method final zzb(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/Long;Ljava/lang/Long;)Ljava/util/List;
    .locals 64
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/zzdb;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/zzdu;",
            ">;",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/zzcx;",
            ">;"
        }
    .end annotation

    .line 1
    move-object/from16 v10, p0

    const-string v11, "current_results"

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static/range {p3 .. p3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p1

    iput-object v0, v10, Lcom/google/android/gms/measurement/internal/zzy;->zzb:Ljava/lang/String;

    new-instance v0, Ljava/util/HashSet;

    .line 4
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, v10, Lcom/google/android/gms/measurement/internal/zzy;->zzc:Ljava/util/Set;

    .line 5
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object v0, v10, Lcom/google/android/gms/measurement/internal/zzy;->zzd:Ljava/util/Map;

    move-object/from16 v0, p4

    iput-object v0, v10, Lcom/google/android/gms/measurement/internal/zzy;->zze:Ljava/lang/Long;

    move-object/from16 v0, p5

    iput-object v0, v10, Lcom/google/android/gms/measurement/internal/zzy;->zzf:Ljava/lang/Long;

    .line 6
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzdb;

    .line 7
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzdb;->zzd()Ljava/lang/String;

    move-result-object v1

    const-string v2, "_s"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .line 42
    :cond_1
    const/4 v1, 0x0

    .line 8
    :goto_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzlo;->zzb()Z

    iget-object v0, v10, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfl;->zzc()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v0

    iget-object v2, v10, Lcom/google/android/gms/measurement/internal/zzy;->zzb:Ljava/lang/String;

    .line 10
    sget-object v3, Lcom/google/android/gms/measurement/internal/zzdw;->zzaa:Lcom/google/android/gms/measurement/internal/zzdv;

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/zzae;->zzn(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdv;)Z

    move-result v14

    .line 11
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzlo;->zzb()Z

    iget-object v0, v10, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfl;->zzc()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v0

    iget-object v2, v10, Lcom/google/android/gms/measurement/internal/zzy;->zzb:Ljava/lang/String;

    sget-object v3, Lcom/google/android/gms/measurement/internal/zzdw;->zzZ:Lcom/google/android/gms/measurement/internal/zzdv;

    .line 13
    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/zzae;->zzn(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdv;)Z

    move-result v15

    if-eqz v1, :cond_2

    iget-object v0, v10, Lcom/google/android/gms/measurement/internal/zzju;->zza:Lcom/google/android/gms/measurement/internal/zzkd;

    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzi()Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object v2

    iget-object v3, v10, Lcom/google/android/gms/measurement/internal/zzy;->zzb:Ljava/lang/String;

    .line 15
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzjv;->zzX()V

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzge;->zzg()V

    .line 16
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    new-instance v0, Landroid/content/ContentValues;

    .line 17
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 18
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "current_session_count"

    invoke-virtual {v0, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 15
    :try_start_0
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzai;->zze()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    new-array v5, v13, [Ljava/lang/String;

    aput-object v3, v5, v12

    const-string v6, "events"

    const-string v7, "app_id = ?"

    .line 19
    invoke-virtual {v4, v6, v0, v7, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 42
    :catch_0
    move-exception v0

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 20
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v2

    .line 21
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzei;->zzb()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v2

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzei;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 22
    const-string v4, "Error resetting session-scoped event counts. appId"

    invoke-virtual {v2, v4, v3, v0}, Lcom/google/android/gms/measurement/internal/zzeg;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 23
    :cond_2
    :goto_1
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    const-string v9, "Failed to merge filter. appId"

    const-string v8, "Database error querying filters. appId"

    const-string v16, "data"

    const-string v7, "audience_id"

    const/4 v6, 0x2

    if-eqz v15, :cond_9

    if-eqz v14, :cond_9

    iget-object v0, v10, Lcom/google/android/gms/measurement/internal/zzju;->zza:Lcom/google/android/gms/measurement/internal/zzkd;

    .line 24
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzi()Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object v2

    iget-object v3, v10, Lcom/google/android/gms/measurement/internal/zzy;->zzb:Ljava/lang/String;

    .line 25
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    new-instance v4, Landroidx/collection/ArrayMap;

    .line 26
    invoke-direct {v4}, Landroidx/collection/ArrayMap;-><init>()V

    .line 27
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzai;->zze()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v17

    :try_start_1
    new-array v0, v6, [Ljava/lang/String;

    aput-object v7, v0, v12

    aput-object v16, v0, v13

    new-array v5, v13, [Ljava/lang/String;

    aput-object v3, v5, v12

    const-string v18, "event_filters"

    const-string v20, "app_id=?"

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    .line 28
    move-object/from16 v19, v0

    move-object/from16 v21, v5

    invoke-virtual/range {v17 .. v24}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 29
    :try_start_2
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_7

    :goto_2
    nop

    .line 30
    invoke-interface {v5, v13}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 31
    :try_start_3
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzbw;->zzn()Lcom/google/android/gms/internal/measurement/zzbv;

    move-result-object v13

    invoke-static {v13, v0}, Lcom/google/android/gms/measurement/internal/zzkf;->zzt(Lcom/google/android/gms/internal/measurement/zziw;[B)Lcom/google/android/gms/internal/measurement/zziw;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzbv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzho;->zzaA()Lcom/google/android/gms/internal/measurement/zzhs;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzbw;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 35
    :try_start_4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzbw;->zzg()Z

    move-result v13

    if-nez v13, :cond_3

    goto :goto_4

    .line 64
    :cond_3
    nop

    .line 36
    invoke-interface {v5, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 37
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v4, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/List;

    if-nez v17, :cond_4

    new-instance v12, Ljava/util/ArrayList;

    .line 38
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 39
    invoke-interface {v4, v13, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 40
    :cond_4
    move-object/from16 v12, v17

    :goto_3
    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 48
    :catch_1
    move-exception v0

    iget-object v12, v2, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 32
    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v12

    .line 33
    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzei;->zzb()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v12

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzei;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    .line 34
    invoke-virtual {v12, v9, v13, v0}, Lcom/google/android/gms/measurement/internal/zzeg;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 41
    :goto_4
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez v0, :cond_6

    if-eqz v5, :cond_5

    .line 42
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    goto :goto_5

    .line 64
    :cond_5
    nop

    .line 42
    :goto_5
    move-object v12, v4

    goto :goto_a

    .line 41
    :cond_6
    const/4 v12, 0x0

    const/4 v13, 0x1

    goto :goto_2

    .line 43
    :cond_7
    :try_start_5
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v5, :cond_9

    .line 42
    :goto_6
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    goto :goto_9

    .line 48
    :catchall_0
    move-exception v0

    goto :goto_8

    :catch_2
    move-exception v0

    goto :goto_7

    .line 42
    :catchall_1
    move-exception v0

    const/4 v5, 0x0

    goto :goto_8

    .line 22
    :catch_3
    move-exception v0

    const/4 v5, 0x0

    :goto_7
    :try_start_6
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 44
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v2

    .line 45
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzei;->zzb()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v2

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzei;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 46
    invoke-virtual {v2, v8, v3, v0}, Lcom/google/android/gms/measurement/internal/zzeg;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 47
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-eqz v5, :cond_9

    .line 42
    goto :goto_6

    .line 61
    :catchall_2
    move-exception v0

    .line 42
    :goto_8
    if-eqz v5, :cond_8

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 48
    :cond_8
    throw v0

    .line 42
    :cond_9
    :goto_9
    move-object v12, v0

    :goto_a
    iget-object v0, v10, Lcom/google/android/gms/measurement/internal/zzju;->zza:Lcom/google/android/gms/measurement/internal/zzkd;

    .line 49
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzi()Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object v2

    iget-object v3, v10, Lcom/google/android/gms/measurement/internal/zzy;->zzb:Ljava/lang/String;

    .line 50
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzjv;->zzX()V

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzge;->zzg()V

    .line 51
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 50
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzai;->zze()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v17

    :try_start_7
    new-array v0, v6, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v7, v0, v4

    const/4 v5, 0x1

    aput-object v11, v0, v5

    new-array v13, v5, [Ljava/lang/String;

    aput-object v3, v13, v4

    const-string v18, "audience_filter_values"

    const-string v20, "app_id=?"

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    .line 52
    move-object/from16 v19, v0

    move-object/from16 v21, v13

    invoke-virtual/range {v17 .. v24}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 53
    :try_start_8
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_b

    .line 65
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0
    :try_end_8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8 .. :try_end_8} :catch_6
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    if-eqz v4, :cond_a

    .line 64
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 71
    :cond_a
    move-object v13, v0

    move-object/from16 v20, v7

    goto/16 :goto_e

    .line 90
    :cond_b
    :try_start_9
    new-instance v5, Landroidx/collection/ArrayMap;

    .line 54
    invoke-direct {v5}, Landroidx/collection/ArrayMap;-><init>()V

    :goto_b
    nop

    .line 55
    const/4 v13, 0x0

    invoke-interface {v4, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 56
    const/4 v13, 0x1

    invoke-interface {v4, v13}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0
    :try_end_9
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9 .. :try_end_9} :catch_6
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 57
    :try_start_a
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzdq;->zzk()Lcom/google/android/gms/internal/measurement/zzdp;

    move-result-object v13

    invoke-static {v13, v0}, Lcom/google/android/gms/measurement/internal/zzkf;->zzt(Lcom/google/android/gms/internal/measurement/zziw;[B)Lcom/google/android/gms/internal/measurement/zziw;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzdp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzho;->zzaA()Lcom/google/android/gms/internal/measurement/zzhs;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzdq;
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a .. :try_end_a} :catch_6
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 62
    :try_start_b
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v5, v13, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v19, v5

    move-object/from16 v20, v7

    goto :goto_c

    .line 96
    :catch_4
    move-exception v0

    iget-object v13, v2, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 58
    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v13

    .line 59
    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzei;->zzb()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v13

    const-string v6, "Failed to merge filter results. appId, audienceId, error"

    move-object/from16 v19, v5

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzei;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5
    :try_end_b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_b .. :try_end_b} :catch_6
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 60
    move-object/from16 v20, v7

    :try_start_c
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 61
    invoke-virtual {v13, v6, v5, v7, v0}, Lcom/google/android/gms/measurement/internal/zzeg;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 63
    :goto_c
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c .. :try_end_c} :catch_5
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    if-nez v0, :cond_d

    if-eqz v4, :cond_c

    .line 64
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 71
    :cond_c
    move-object/from16 v13, v19

    goto :goto_e

    .line 63
    :cond_d
    move-object/from16 v5, v19

    move-object/from16 v7, v20

    const/4 v6, 0x2

    goto :goto_b

    .line 70
    :catch_5
    move-exception v0

    goto :goto_d

    :catchall_3
    move-exception v0

    move-object v5, v4

    goto/16 :goto_4c

    :catch_6
    move-exception v0

    move-object/from16 v20, v7

    goto :goto_d

    .line 64
    :catchall_4
    move-exception v0

    const/4 v5, 0x0

    goto/16 :goto_4c

    .line 34
    :catch_7
    move-exception v0

    move-object/from16 v20, v7

    const/4 v4, 0x0

    :goto_d
    :try_start_d
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 66
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v2

    .line 67
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzei;->zzb()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v2

    const-string v5, "Database error querying filter results. appId"

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzei;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 68
    invoke-virtual {v2, v5, v3, v0}, Lcom/google/android/gms/measurement/internal/zzeg;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 69
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_e

    if-eqz v4, :cond_e

    .line 64
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 71
    :cond_e
    move-object v13, v0

    :goto_e
    invoke-interface {v13}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    move-object v12, v8

    move-object/from16 v29, v9

    move-object/from16 v28, v20

    const/4 v13, 0x0

    goto/16 :goto_26

    .line 174
    :cond_f
    new-instance v2, Ljava/util/HashSet;

    .line 72
    invoke-interface {v13}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    if-eqz v1, :cond_1f

    iget-object v1, v10, Lcom/google/android/gms/measurement/internal/zzy;->zzb:Ljava/lang/String;

    .line 73
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 74
    invoke-static {v13}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Landroidx/collection/ArrayMap;

    .line 75
    invoke-direct {v3}, Landroidx/collection/ArrayMap;-><init>()V

    .line 76
    invoke-interface {v13}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    goto/16 :goto_17

    .line 129
    :cond_10
    iget-object v0, v10, Lcom/google/android/gms/measurement/internal/zzju;->zza:Lcom/google/android/gms/measurement/internal/zzkd;

    .line 77
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzi()Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object v4

    .line 78
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzjv;->zzX()V

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzge;->zzg()V

    .line 79
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    new-instance v0, Landroidx/collection/ArrayMap;

    .line 80
    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    .line 78
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzai;->zze()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    const/4 v6, 0x2

    :try_start_e
    new-array v7, v6, [Ljava/lang/String;

    const/16 v17, 0x0

    aput-object v1, v7, v17

    const/16 v17, 0x1

    aput-object v1, v7, v17

    const-string v6, "select audience_id, filter_id from event_filters where app_id = ? and session_scoped = 1 UNION select audience_id, filter_id from property_filters where app_id = ? and session_scoped = 1;"

    .line 81
    invoke-virtual {v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5
    :try_end_e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_e .. :try_end_e} :catch_9
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    .line 82
    :try_start_f
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_14

    :cond_11
    nop

    .line 83
    const/4 v6, 0x0

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 84
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    if-nez v7, :cond_12

    new-instance v7, Ljava/util/ArrayList;

    .line 85
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 86
    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f

    .line 117
    :cond_12
    nop

    .line 86
    :goto_f
    nop

    .line 87
    const/4 v6, 0x1

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 88
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6
    :try_end_f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_f .. :try_end_f} :catch_8
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    if-nez v6, :cond_11

    if-eqz v5, :cond_13

    .line 90
    :goto_10
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    goto :goto_12

    .line 117
    :cond_13
    goto :goto_12

    .line 91
    :cond_14
    :try_start_10
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0
    :try_end_10
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_10 .. :try_end_10} :catch_8
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    if-eqz v5, :cond_15

    .line 90
    goto :goto_10

    .line 96
    :catchall_5
    move-exception v0

    goto/16 :goto_18

    :catch_8
    move-exception v0

    goto :goto_11

    .line 90
    :catchall_6
    move-exception v0

    const/4 v5, 0x0

    goto/16 :goto_18

    .line 189
    :catch_9
    move-exception v0

    const/4 v5, 0x0

    :goto_11
    :try_start_11
    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 92
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v4

    .line 93
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzei;->zzb()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v4

    const-string v6, "Database error querying scoped filters. appId"

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzei;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 94
    invoke-virtual {v4, v6, v1, v0}, Lcom/google/android/gms/measurement/internal/zzeg;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 95
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    if-eqz v5, :cond_15

    .line 90
    goto :goto_10

    .line 97
    :cond_15
    :goto_12
    invoke-interface {v13}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 98
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v13, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/measurement/zzdq;

    .line 99
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    if-eqz v7, :cond_1c

    .line 100
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v17

    if-eqz v17, :cond_16

    move-object/from16 v17, v0

    move-object/from16 v19, v1

    goto/16 :goto_16

    .line 101
    :cond_16
    iget-object v5, v10, Lcom/google/android/gms/measurement/internal/zzju;->zza:Lcom/google/android/gms/measurement/internal/zzkd;

    .line 102
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzkd;->zzn()Lcom/google/android/gms/measurement/internal/zzkf;

    move-result-object v5

    .line 103
    move-object/from16 v17, v0

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzdq;->zzc()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v5, v0, v7}, Lcom/google/android/gms/measurement/internal/zzkf;->zzo(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 104
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1b

    .line 105
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzhs;->zzbu()Lcom/google/android/gms/internal/measurement/zzho;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzdp;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzdp;->zzd()Lcom/google/android/gms/internal/measurement/zzdp;

    invoke-virtual {v5, v0}, Lcom/google/android/gms/internal/measurement/zzdp;->zzc(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzdp;

    iget-object v0, v10, Lcom/google/android/gms/measurement/internal/zzju;->zza:Lcom/google/android/gms/measurement/internal/zzkd;

    .line 106
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzn()Lcom/google/android/gms/measurement/internal/zzkf;

    move-result-object v0

    .line 107
    move-object/from16 v19, v1

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzdq;->zza()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1, v7}, Lcom/google/android/gms/measurement/internal/zzkf;->zzo(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 108
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzdp;->zzb()Lcom/google/android/gms/internal/measurement/zzdp;

    invoke-virtual {v5, v0}, Lcom/google/android/gms/internal/measurement/zzdp;->zza(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzdp;

    const/4 v0, 0x0

    .line 109
    :goto_14
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzdq;->zzf()I

    move-result v1

    if-ge v0, v1, :cond_18

    .line 110
    invoke-virtual {v6, v0}, Lcom/google/android/gms/internal/measurement/zzdq;->zzg(I)Lcom/google/android/gms/internal/measurement/zzcz;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzcz;->zzb()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 111
    invoke-interface {v7, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 112
    invoke-virtual {v5, v0}, Lcom/google/android/gms/internal/measurement/zzdp;->zzf(I)Lcom/google/android/gms/internal/measurement/zzdp;

    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    :cond_18
    const/4 v0, 0x0

    .line 113
    :goto_15
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzdq;->zzi()I

    move-result v1

    if-ge v0, v1, :cond_1a

    .line 114
    invoke-virtual {v6, v0}, Lcom/google/android/gms/internal/measurement/zzdq;->zzj(I)Lcom/google/android/gms/internal/measurement/zzds;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzds;->zzb()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 115
    invoke-interface {v7, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 116
    invoke-virtual {v5, v0}, Lcom/google/android/gms/internal/measurement/zzdp;->zzh(I)Lcom/google/android/gms/internal/measurement/zzdp;

    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 117
    :cond_1a
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzho;->zzaA()Lcom/google/android/gms/internal/measurement/zzhs;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzdq;

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    goto/16 :goto_13

    .line 104
    :cond_1b
    move-object/from16 v19, v1

    move-object/from16 v0, v17

    goto/16 :goto_13

    .line 99
    :cond_1c
    move-object/from16 v17, v0

    move-object/from16 v19, v1

    .line 101
    :goto_16
    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    goto/16 :goto_13

    .line 117
    :cond_1d
    nop

    .line 118
    :goto_17
    move-object v0, v3

    goto :goto_19

    .line 61
    :catchall_7
    move-exception v0

    .line 90
    :goto_18
    if-eqz v5, :cond_1e

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 96
    :cond_1e
    throw v0

    .line 90
    :cond_1f
    move-object v0, v13

    .line 118
    :goto_19
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_1a
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v19

    .line 119
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzdq;

    new-instance v5, Ljava/util/BitSet;

    .line 120
    invoke-direct {v5}, Ljava/util/BitSet;-><init>()V

    new-instance v6, Ljava/util/BitSet;

    .line 121
    invoke-direct {v6}, Ljava/util/BitSet;-><init>()V

    new-instance v7, Landroidx/collection/ArrayMap;

    .line 122
    invoke-direct {v7}, Landroidx/collection/ArrayMap;-><init>()V

    if-eqz v1, :cond_23

    .line 123
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzdq;->zzf()I

    move-result v2

    if-nez v2, :cond_20

    goto :goto_1d

    .line 136
    :cond_20
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzdq;->zze()Ljava/util/List;

    move-result-object v2

    .line 124
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_21
    :goto_1b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzcz;

    .line 125
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzcz;->zza()Z

    move-result v4

    if-eqz v4, :cond_21

    .line 126
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzcz;->zzb()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 127
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzcz;->zzc()Z

    move-result v21

    if-eqz v21, :cond_22

    .line 128
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzcz;->zzd()J

    move-result-wide v21

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    goto :goto_1c

    .line 129
    :cond_22
    const/4 v3, 0x0

    :goto_1c
    invoke-interface {v7, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1b

    .line 123
    :cond_23
    :goto_1d
    new-instance v4, Landroidx/collection/ArrayMap;

    .line 130
    invoke-direct {v4}, Landroidx/collection/ArrayMap;-><init>()V

    if-eqz v1, :cond_27

    .line 131
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzdq;->zzi()I

    move-result v2

    if-nez v2, :cond_24

    move-object/from16 v22, v0

    goto :goto_1f

    .line 156
    :cond_24
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzdq;->zzh()Ljava/util/List;

    move-result-object v2

    .line 132
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_26

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzds;

    .line 133
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzds;->zza()Z

    move-result v21

    if-eqz v21, :cond_25

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzds;->zzd()I

    move-result v21

    if-lez v21, :cond_25

    .line 134
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzds;->zzb()I

    move-result v21

    move-object/from16 v22, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 135
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzds;->zzd()I

    move-result v21

    move-object/from16 v23, v2

    add-int/lit8 v2, v21, -0x1

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/measurement/zzds;->zze(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 136
    invoke-interface {v4, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, v22

    move-object/from16 v2, v23

    goto :goto_1e

    .line 133
    :cond_25
    move-object/from16 v22, v0

    move-object/from16 v23, v2

    goto :goto_1e

    .line 132
    :cond_26
    move-object/from16 v22, v0

    goto :goto_1f

    .line 130
    :cond_27
    move-object/from16 v22, v0

    .line 131
    :goto_1f
    if-eqz v1, :cond_2b

    const/4 v0, 0x0

    .line 137
    :goto_20
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzdq;->zzb()I

    move-result v2

    mul-int/lit8 v2, v2, 0x40

    if-ge v0, v2, :cond_2a

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzdq;->zza()Ljava/util/List;

    move-result-object v2

    .line 138
    invoke-static {v2, v0}, Lcom/google/android/gms/measurement/internal/zzkf;->zzm(Ljava/util/List;I)Z

    move-result v2

    if-eqz v2, :cond_28

    iget-object v2, v10, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 139
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v2

    .line 140
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzei;->zzk()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v2

    .line 141
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v21, v8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v23, v9

    const-string v9, "Filter already evaluated. audience ID, filter ID"

    invoke-virtual {v2, v9, v3, v8}, Lcom/google/android/gms/measurement/internal/zzeg;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 142
    invoke-virtual {v6, v0}, Ljava/util/BitSet;->set(I)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzdq;->zzc()Ljava/util/List;

    move-result-object v2

    .line 143
    invoke-static {v2, v0}, Lcom/google/android/gms/measurement/internal/zzkf;->zzm(Ljava/util/List;I)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 145
    invoke-virtual {v5, v0}, Ljava/util/BitSet;->set(I)V

    goto :goto_21

    .line 138
    :cond_28
    move-object/from16 v21, v8

    move-object/from16 v23, v9

    .line 144
    :cond_29
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v7, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    :goto_21
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v8, v21

    move-object/from16 v9, v23

    goto :goto_20

    .line 137
    :cond_2a
    move-object/from16 v21, v8

    move-object/from16 v23, v9

    goto :goto_22

    .line 131
    :cond_2b
    move-object/from16 v21, v8

    move-object/from16 v23, v9

    .line 146
    :goto_22
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v13, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/google/android/gms/internal/measurement/zzdq;

    if-eqz v15, :cond_30

    if-eqz v14, :cond_30

    .line 147
    invoke-interface {v12, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_30

    iget-object v1, v10, Lcom/google/android/gms/measurement/internal/zzy;->zzf:Ljava/lang/Long;

    if-eqz v1, :cond_30

    iget-object v1, v10, Lcom/google/android/gms/measurement/internal/zzy;->zze:Ljava/lang/Long;

    if-nez v1, :cond_2c

    goto :goto_25

    .line 148
    :cond_2c
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2d
    :goto_23
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzbw;

    .line 149
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzbw;->zzb()I

    move-result v2

    iget-object v3, v10, Lcom/google/android/gms/measurement/internal/zzy;->zzf:Ljava/lang/Long;

    .line 150
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    const-wide/16 v26, 0x3e8

    div-long v24, v24, v26

    .line 151
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzbw;->zzj()Z

    move-result v1

    if-eqz v1, :cond_2e

    iget-object v1, v10, Lcom/google/android/gms/measurement/internal/zzy;->zze:Ljava/lang/Long;

    .line 152
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    div-long v24, v24, v26

    goto :goto_24

    .line 156
    :cond_2e
    nop

    .line 153
    :goto_24
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v7, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 154
    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    :cond_2f
    invoke-interface {v4, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 156
    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v4, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_23

    .line 147
    :cond_30
    :goto_25
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzt;

    iget-object v3, v10, Lcom/google/android/gms/measurement/internal/zzy;->zzb:Ljava/lang/String;

    const/4 v9, 0x0

    .line 157
    move-object v1, v0

    move-object/from16 v2, p0

    move-object/from16 v24, v4

    move-object v4, v8

    const/4 v8, 0x0

    move-object/from16 v28, v20

    move-object/from16 v18, v12

    move-object/from16 p1, v13

    move-object/from16 v12, v21

    move-object v13, v8

    move-object/from16 v8, v24

    move-object/from16 v29, v23

    invoke-direct/range {v1 .. v9}, Lcom/google/android/gms/measurement/internal/zzt;-><init>(Lcom/google/android/gms/measurement/internal/zzy;Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzdq;Ljava/util/BitSet;Ljava/util/BitSet;Ljava/util/Map;Ljava/util/Map;Lcom/google/android/gms/measurement/internal/zzs;)V

    iget-object v1, v10, Lcom/google/android/gms/measurement/internal/zzy;->zzd:Ljava/util/Map;

    .line 158
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v13, p1

    move-object v8, v12

    move-object/from16 v12, v18

    move-object/from16 v0, v22

    move-object/from16 v9, v29

    goto/16 :goto_1a

    .line 118
    :cond_31
    move-object v12, v8

    move-object/from16 v29, v9

    move-object/from16 v28, v20

    const/4 v13, 0x0

    .line 159
    :goto_26
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const-string v1, "Skipping failed audience ID"

    if-eqz v0, :cond_32

    move-object/from16 v26, v11

    goto/16 :goto_38

    .line 238
    :cond_32
    new-instance v2, Lcom/google/android/gms/measurement/internal/zzu;

    .line 160
    invoke-direct {v2, v10, v13}, Lcom/google/android/gms/measurement/internal/zzu;-><init>(Lcom/google/android/gms/measurement/internal/zzy;Lcom/google/android/gms/measurement/internal/zzs;)V

    new-instance v3, Landroidx/collection/ArrayMap;

    .line 161
    invoke-direct {v3}, Landroidx/collection/ArrayMap;-><init>()V

    .line 162
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_27
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_41

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzdb;

    iget-object v5, v10, Lcom/google/android/gms/measurement/internal/zzy;->zzb:Ljava/lang/String;

    .line 163
    invoke-virtual {v2, v5, v0}, Lcom/google/android/gms/measurement/internal/zzu;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzdb;)Lcom/google/android/gms/internal/measurement/zzdb;

    move-result-object v5

    if-eqz v5, :cond_40

    iget-object v6, v10, Lcom/google/android/gms/measurement/internal/zzju;->zza:Lcom/google/android/gms/measurement/internal/zzkd;

    .line 164
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzkd;->zzi()Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object v6

    iget-object v7, v10, Lcom/google/android/gms/measurement/internal/zzy;->zzb:Ljava/lang/String;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzdb;->zzd()Ljava/lang/String;

    move-result-object v8

    .line 165
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzdb;->zzd()Ljava/lang/String;

    move-result-object v9

    .line 166
    invoke-virtual {v6, v7, v9}, Lcom/google/android/gms/measurement/internal/zzai;->zzf(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzao;

    move-result-object v9

    if-nez v9, :cond_33

    iget-object v9, v6, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 167
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v9

    .line 168
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzei;->zze()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v9

    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/zzei;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    iget-object v6, v6, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 169
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzfl;->zzm()Lcom/google/android/gms/measurement/internal/zzed;

    move-result-object v6

    .line 170
    invoke-virtual {v6, v8}, Lcom/google/android/gms/measurement/internal/zzed;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 171
    const-string v8, "Event aggregate wasn\'t created during raw event logging. appId, event"

    invoke-virtual {v9, v8, v14, v6}, Lcom/google/android/gms/measurement/internal/zzeg;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v6, Lcom/google/android/gms/measurement/internal/zzao;

    move-object/from16 v30, v6

    .line 172
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzdb;->zzd()Ljava/lang/String;

    move-result-object v32

    const-wide/16 v33, 0x1

    const-wide/16 v35, 0x1

    const-wide/16 v37, 0x1

    .line 173
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzdb;->zzf()J

    move-result-wide v39

    const-wide/16 v41, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

    move-object/from16 v31, v7

    invoke-direct/range {v30 .. v46}, Lcom/google/android/gms/measurement/internal/zzao;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    goto :goto_28

    .line 196
    :cond_33
    new-instance v6, Lcom/google/android/gms/measurement/internal/zzao;

    move-object/from16 v47, v6

    iget-object v0, v9, Lcom/google/android/gms/measurement/internal/zzao;->zza:Ljava/lang/String;

    move-object/from16 v48, v0

    iget-object v0, v9, Lcom/google/android/gms/measurement/internal/zzao;->zzb:Ljava/lang/String;

    move-object/from16 v49, v0

    iget-wide v7, v9, Lcom/google/android/gms/measurement/internal/zzao;->zzc:J

    const-wide/16 v14, 0x1

    add-long v50, v7, v14

    iget-wide v7, v9, Lcom/google/android/gms/measurement/internal/zzao;->zzd:J

    add-long v52, v7, v14

    iget-wide v7, v9, Lcom/google/android/gms/measurement/internal/zzao;->zze:J

    add-long v54, v7, v14

    iget-wide v7, v9, Lcom/google/android/gms/measurement/internal/zzao;->zzf:J

    move-wide/from16 v56, v7

    iget-wide v7, v9, Lcom/google/android/gms/measurement/internal/zzao;->zzg:J

    move-wide/from16 v58, v7

    iget-object v0, v9, Lcom/google/android/gms/measurement/internal/zzao;->zzh:Ljava/lang/Long;

    move-object/from16 v60, v0

    iget-object v0, v9, Lcom/google/android/gms/measurement/internal/zzao;->zzi:Ljava/lang/Long;

    move-object/from16 v61, v0

    iget-object v0, v9, Lcom/google/android/gms/measurement/internal/zzao;->zzj:Ljava/lang/Long;

    move-object/from16 v62, v0

    iget-object v0, v9, Lcom/google/android/gms/measurement/internal/zzao;->zzk:Ljava/lang/Boolean;

    move-object/from16 v63, v0

    .line 174
    invoke-direct/range {v47 .. v63}, Lcom/google/android/gms/measurement/internal/zzao;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    .line 173
    :goto_28
    iget-object v0, v10, Lcom/google/android/gms/measurement/internal/zzju;->zza:Lcom/google/android/gms/measurement/internal/zzkd;

    .line 175
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzi()Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object v0

    .line 176
    invoke-virtual {v0, v6}, Lcom/google/android/gms/measurement/internal/zzai;->zzh(Lcom/google/android/gms/measurement/internal/zzao;)V

    iget-wide v7, v6, Lcom/google/android/gms/measurement/internal/zzao;->zzc:J

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzdb;->zzd()Ljava/lang/String;

    move-result-object v9

    .line 177
    invoke-interface {v3, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_3a

    iget-object v0, v10, Lcom/google/android/gms/measurement/internal/zzju;->zza:Lcom/google/android/gms/measurement/internal/zzkd;

    .line 178
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzi()Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object v14

    iget-object v15, v10, Lcom/google/android/gms/measurement/internal/zzy;->zzb:Ljava/lang/String;

    .line 179
    invoke-virtual {v14}, Lcom/google/android/gms/measurement/internal/zzjv;->zzX()V

    invoke-virtual {v14}, Lcom/google/android/gms/measurement/internal/zzge;->zzg()V

    .line 180
    invoke-static {v15}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 181
    invoke-static {v9}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    new-instance v13, Landroidx/collection/ArrayMap;

    .line 182
    invoke-direct {v13}, Landroidx/collection/ArrayMap;-><init>()V

    .line 179
    invoke-virtual {v14}, Lcom/google/android/gms/measurement/internal/zzai;->zze()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v17

    move-object/from16 v25, v2

    const/4 v2, 0x2

    :try_start_12
    new-array v0, v2, [Ljava/lang/String;
    :try_end_12
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_12 .. :try_end_12} :catch_10
    .catchall {:try_start_12 .. :try_end_12} :catchall_9

    move-object/from16 v2, v28

    const/16 v18, 0x0

    :try_start_13
    aput-object v2, v0, v18

    const/16 v19, 0x1

    aput-object v16, v0, v19
    :try_end_13
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_13 .. :try_end_13} :catch_f
    .catchall {:try_start_13 .. :try_end_13} :catchall_9

    move-object/from16 p2, v4

    move-object/from16 v26, v11

    const/4 v4, 0x2

    :try_start_14
    new-array v11, v4, [Ljava/lang/String;

    aput-object v15, v11, v18

    aput-object v9, v11, v19

    const-string v18, "event_filters"

    const-string v20, "app_id=? AND event_name=?"

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    .line 183
    move-object/from16 v19, v0

    move-object/from16 v21, v11

    invoke-virtual/range {v17 .. v24}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_14
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_14 .. :try_end_14} :catch_e
    .catchall {:try_start_14 .. :try_end_14} :catchall_9

    .line 184
    :try_start_15
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_37

    :goto_29
    nop

    .line 185
    const/4 v11, 0x1

    invoke-interface {v4, v11}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0
    :try_end_15
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_15 .. :try_end_15} :catch_d
    .catchall {:try_start_15 .. :try_end_15} :catchall_8

    .line 186
    :try_start_16
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzbw;->zzn()Lcom/google/android/gms/internal/measurement/zzbv;

    move-result-object v11

    invoke-static {v11, v0}, Lcom/google/android/gms/measurement/internal/zzkf;->zzt(Lcom/google/android/gms/internal/measurement/zziw;[B)Lcom/google/android/gms/internal/measurement/zziw;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzbv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzho;->zzaA()Lcom/google/android/gms/internal/measurement/zzhs;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzbw;
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_16 .. :try_end_16} :catch_d
    .catchall {:try_start_16 .. :try_end_16} :catchall_8

    .line 190
    const/4 v11, 0x0

    :try_start_17
    invoke-interface {v4, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 191
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v13, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/List;
    :try_end_17
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_17 .. :try_end_17} :catch_d
    .catchall {:try_start_17 .. :try_end_17} :catchall_8

    if-nez v17, :cond_34

    move-object/from16 v28, v2

    :try_start_18
    new-instance v2, Ljava/util/ArrayList;

    .line 192
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 193
    invoke-interface {v13, v11, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2a

    .line 215
    :cond_34
    move-object/from16 v28, v2

    move-object/from16 v2, v17

    .line 194
    :goto_2a
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v17, v13

    move-object/from16 v13, v29

    goto :goto_2b

    .line 302
    :catch_a
    move-exception v0

    move-object/from16 v28, v2

    iget-object v2, v14, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 187
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v2

    .line 188
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzei;->zzb()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v2

    invoke-static {v15}, Lcom/google/android/gms/measurement/internal/zzei;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11
    :try_end_18
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_18 .. :try_end_18} :catch_b
    .catchall {:try_start_18 .. :try_end_18} :catchall_8

    .line 189
    move-object/from16 v17, v13

    move-object/from16 v13, v29

    :try_start_19
    invoke-virtual {v2, v13, v11, v0}, Lcom/google/android/gms/measurement/internal/zzeg;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 195
    :goto_2b
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_19
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_19 .. :try_end_19} :catch_c
    .catchall {:try_start_19 .. :try_end_19} :catchall_8

    if-nez v0, :cond_36

    if-eqz v4, :cond_35

    .line 196
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    goto :goto_2c

    .line 215
    :cond_35
    nop

    .line 202
    :goto_2c
    move-object/from16 v0, v17

    goto :goto_32

    .line 195
    :cond_36
    move-object/from16 v29, v13

    move-object/from16 v13, v17

    move-object/from16 v2, v28

    goto :goto_29

    .line 302
    :catch_b
    move-exception v0

    goto :goto_2e

    .line 197
    :cond_37
    move-object/from16 v28, v2

    move-object/from16 v13, v29

    :try_start_1a
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0
    :try_end_1a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1a .. :try_end_1a} :catch_c
    .catchall {:try_start_1a .. :try_end_1a} :catchall_8

    if-eqz v4, :cond_38

    .line 196
    :goto_2d
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    goto :goto_32

    .line 302
    :catch_c
    move-exception v0

    goto :goto_31

    :catchall_8
    move-exception v0

    move-object v5, v4

    goto :goto_33

    :catch_d
    move-exception v0

    move-object/from16 v28, v2

    :goto_2e
    move-object/from16 v13, v29

    goto :goto_31

    .line 231
    :catch_e
    move-exception v0

    move-object/from16 v28, v2

    goto :goto_30

    :catch_f
    move-exception v0

    move-object/from16 v28, v2

    goto :goto_2f

    .line 196
    :catchall_9
    move-exception v0

    const/4 v5, 0x0

    goto :goto_33

    .line 231
    :catch_10
    move-exception v0

    :goto_2f
    move-object/from16 p2, v4

    move-object/from16 v26, v11

    :goto_30
    move-object/from16 v13, v29

    const/4 v4, 0x0

    :goto_31
    :try_start_1b
    iget-object v2, v14, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 198
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v2

    .line 199
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzei;->zzb()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v2

    invoke-static {v15}, Lcom/google/android/gms/measurement/internal/zzei;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    .line 200
    invoke-virtual {v2, v12, v11, v0}, Lcom/google/android/gms/measurement/internal/zzeg;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 201
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_a

    if-eqz v4, :cond_38

    .line 196
    goto :goto_2d

    .line 202
    :cond_38
    :goto_32
    invoke-interface {v3, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_34

    .line 61
    :catchall_a
    move-exception v0

    move-object v5, v4

    .line 196
    :goto_33
    if-eqz v5, :cond_39

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 302
    :cond_39
    throw v0

    .line 177
    :cond_3a
    move-object/from16 v25, v2

    move-object/from16 p2, v4

    move-object/from16 v26, v11

    move-object/from16 v13, v29

    .line 203
    :goto_34
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_35
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v9, v10, Lcom/google/android/gms/measurement/internal/zzy;->zzc:Ljava/util/Set;

    .line 204
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v9, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3b

    iget-object v4, v10, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 205
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v4

    .line 206
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzei;->zzk()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v4

    invoke-virtual {v4, v1, v11}, Lcom/google/android/gms/measurement/internal/zzeg;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_35

    .line 207
    :cond_3b
    invoke-interface {v0, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 208
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    const/4 v11, 0x1

    :goto_36
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_3d

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/internal/measurement/zzbw;

    new-instance v14, Lcom/google/android/gms/measurement/internal/zzv;

    iget-object v15, v10, Lcom/google/android/gms/measurement/internal/zzy;->zzb:Ljava/lang/String;

    .line 209
    invoke-direct {v14, v10, v15, v4, v11}, Lcom/google/android/gms/measurement/internal/zzv;-><init>(Lcom/google/android/gms/measurement/internal/zzy;Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zzbw;)V

    iget-object v15, v10, Lcom/google/android/gms/measurement/internal/zzy;->zze:Ljava/lang/Long;

    move-object/from16 v27, v0

    iget-object v0, v10, Lcom/google/android/gms/measurement/internal/zzy;->zzf:Ljava/lang/Long;

    .line 210
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzbw;->zzb()I

    move-result v11

    invoke-direct {v10, v4, v11}, Lcom/google/android/gms/measurement/internal/zzy;->zzd(II)Z

    move-result v24

    .line 211
    move-object/from16 v17, v14

    move-object/from16 v18, v15

    move-object/from16 v19, v0

    move-object/from16 v20, v5

    move-wide/from16 v21, v7

    move-object/from16 v23, v6

    invoke-virtual/range {v17 .. v24}, Lcom/google/android/gms/measurement/internal/zzv;->zzd(Ljava/lang/Long;Ljava/lang/Long;Lcom/google/android/gms/internal/measurement/zzdb;JLcom/google/android/gms/measurement/internal/zzao;Z)Z

    move-result v11

    if-eqz v11, :cond_3c

    .line 212
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v10, v0}, Lcom/google/android/gms/measurement/internal/zzy;->zzc(Ljava/lang/Integer;)Lcom/google/android/gms/measurement/internal/zzt;

    move-result-object v0

    .line 213
    invoke-virtual {v0, v14}, Lcom/google/android/gms/measurement/internal/zzt;->zza(Lcom/google/android/gms/measurement/internal/zzw;)V

    move-object/from16 v0, v27

    goto :goto_36

    :cond_3c
    iget-object v0, v10, Lcom/google/android/gms/measurement/internal/zzy;->zzc:Ljava/util/Set;

    .line 214
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v0, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_37

    .line 208
    :cond_3d
    move-object/from16 v27, v0

    .line 214
    :goto_37
    if-nez v11, :cond_3e

    iget-object v0, v10, Lcom/google/android/gms/measurement/internal/zzy;->zzc:Ljava/util/Set;

    .line 215
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v27

    goto/16 :goto_35

    .line 214
    :cond_3e
    move-object/from16 v0, v27

    goto/16 :goto_35

    .line 203
    :cond_3f
    move-object/from16 v4, p2

    move-object/from16 v29, v13

    move-object/from16 v2, v25

    move-object/from16 v11, v26

    const/4 v13, 0x0

    goto/16 :goto_27

    .line 163
    :cond_40
    move-object/from16 v25, v2

    move-object/from16 p2, v4

    move-object/from16 v26, v11

    move-object/from16 v13, v29

    const/4 v13, 0x0

    goto/16 :goto_27

    .line 162
    :cond_41
    move-object/from16 v26, v11

    .line 216
    :goto_38
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_42

    goto/16 :goto_49

    .line 297
    :cond_42
    new-instance v2, Landroidx/collection/ArrayMap;

    .line 217
    invoke-direct {v2}, Landroidx/collection/ArrayMap;-><init>()V

    .line 218
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_43
    :goto_39
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_54

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzdu;

    .line 219
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzdu;->zzc()Ljava/lang/String;

    move-result-object v5

    .line 220
    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_4a

    iget-object v0, v10, Lcom/google/android/gms/measurement/internal/zzju;->zza:Lcom/google/android/gms/measurement/internal/zzkd;

    .line 221
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzi()Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object v6

    iget-object v7, v10, Lcom/google/android/gms/measurement/internal/zzy;->zzb:Ljava/lang/String;

    .line 222
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzjv;->zzX()V

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzge;->zzg()V

    .line 223
    invoke-static {v7}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 224
    invoke-static {v5}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    new-instance v8, Landroidx/collection/ArrayMap;

    .line 225
    invoke-direct {v8}, Landroidx/collection/ArrayMap;-><init>()V

    .line 222
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzai;->zze()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v17

    const/4 v9, 0x2

    :try_start_1c
    new-array v0, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v28, v0, v9

    const/4 v11, 0x1

    aput-object v16, v0, v11

    const/4 v13, 0x2

    new-array v14, v13, [Ljava/lang/String;

    aput-object v7, v14, v9

    aput-object v5, v14, v11

    const-string v18, "property_filters"

    const-string v20, "app_id=? AND property_name=?"

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    .line 226
    move-object/from16 v19, v0

    move-object/from16 v21, v14

    invoke-virtual/range {v17 .. v24}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9
    :try_end_1c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1c .. :try_end_1c} :catch_14
    .catchall {:try_start_1c .. :try_end_1c} :catchall_c

    .line 227
    :try_start_1d
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_47

    :cond_44
    nop

    .line 228
    const/4 v11, 0x1

    invoke-interface {v9, v11}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0
    :try_end_1d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1d .. :try_end_1d} :catch_13
    .catchall {:try_start_1d .. :try_end_1d} :catchall_b

    .line 229
    :try_start_1e
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzcf;->zzi()Lcom/google/android/gms/internal/measurement/zzce;

    move-result-object v13

    invoke-static {v13, v0}, Lcom/google/android/gms/measurement/internal/zzkf;->zzt(Lcom/google/android/gms/internal/measurement/zziw;[B)Lcom/google/android/gms/internal/measurement/zziw;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzce;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzho;->zzaA()Lcom/google/android/gms/internal/measurement/zzhs;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzcf;
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_11
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1e .. :try_end_1e} :catch_13
    .catchall {:try_start_1e .. :try_end_1e} :catchall_b

    .line 232
    const/4 v13, 0x0

    :try_start_1f
    invoke-interface {v9, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 233
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v8, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/List;

    if-nez v15, :cond_45

    new-instance v15, Ljava/util/ArrayList;

    .line 234
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 235
    invoke-interface {v8, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3a

    .line 273
    :cond_45
    nop

    .line 236
    :goto_3a
    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3b

    .line 301
    :catch_11
    move-exception v0

    const/4 v13, 0x0

    iget-object v14, v6, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 230
    invoke-virtual {v14}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v14

    .line 231
    invoke-virtual {v14}, Lcom/google/android/gms/measurement/internal/zzei;->zzb()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v14

    const-string v15, "Failed to merge filter"

    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/zzei;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v14, v15, v11, v0}, Lcom/google/android/gms/measurement/internal/zzeg;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 237
    :goto_3b
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_1f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1f .. :try_end_1f} :catch_12
    .catchall {:try_start_1f .. :try_end_1f} :catchall_b

    if-nez v0, :cond_44

    if-eqz v9, :cond_46

    .line 238
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_3c

    .line 273
    :cond_46
    nop

    .line 244
    :goto_3c
    move-object v0, v8

    goto :goto_3f

    .line 239
    :cond_47
    const/4 v13, 0x0

    :try_start_20
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0
    :try_end_20
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_20 .. :try_end_20} :catch_12
    .catchall {:try_start_20 .. :try_end_20} :catchall_b

    if-eqz v9, :cond_48

    .line 238
    :goto_3d
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_3f

    .line 301
    :catch_12
    move-exception v0

    goto :goto_3e

    :catchall_b
    move-exception v0

    move-object v5, v9

    goto :goto_40

    :catch_13
    move-exception v0

    const/4 v13, 0x0

    goto :goto_3e

    .line 238
    :catchall_c
    move-exception v0

    const/4 v5, 0x0

    goto :goto_40

    .line 300
    :catch_14
    move-exception v0

    const/4 v13, 0x0

    const/4 v9, 0x0

    :goto_3e
    :try_start_21
    iget-object v6, v6, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 240
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v6

    .line 241
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzei;->zzb()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v6

    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/zzei;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 242
    invoke-virtual {v6, v12, v7, v0}, Lcom/google/android/gms/measurement/internal/zzeg;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 243
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_d

    if-eqz v9, :cond_48

    .line 238
    goto :goto_3d

    .line 244
    :cond_48
    :goto_3f
    invoke-interface {v2, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_41

    .line 61
    :catchall_d
    move-exception v0

    move-object v5, v9

    .line 238
    :goto_40
    if-eqz v5, :cond_49

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 301
    :cond_49
    throw v0

    .line 220
    :cond_4a
    const/4 v13, 0x0

    .line 245
    :goto_41
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_42
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_43

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v7, v10, Lcom/google/android/gms/measurement/internal/zzy;->zzc:Ljava/util/Set;

    .line 246
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4b

    iget-object v0, v10, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 275
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v0

    .line 276
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzei;->zzk()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v0

    invoke-virtual {v0, v1, v8}, Lcom/google/android/gms/measurement/internal/zzeg;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_39

    .line 247
    :cond_4b
    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 248
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    const/4 v8, 0x1

    :goto_43
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_52

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/measurement/zzcf;

    iget-object v9, v10, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 249
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v9

    .line 250
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzei;->zzn()Ljava/lang/String;

    move-result-object v9

    .line 251
    const/4 v11, 0x2

    invoke-static {v9, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_4d

    iget-object v9, v10, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 252
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v9

    .line 253
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzei;->zzk()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v9

    .line 254
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    .line 255
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzcf;->zza()Z

    move-result v15

    if-eqz v15, :cond_4c

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzcf;->zzb()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    goto :goto_44

    .line 273
    :cond_4c
    const/4 v15, 0x0

    .line 255
    :goto_44
    iget-object v11, v10, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 256
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzfl;->zzm()Lcom/google/android/gms/measurement/internal/zzed;

    move-result-object v11

    .line 257
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzcf;->zzc()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Lcom/google/android/gms/measurement/internal/zzed;->zze(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 258
    const-string v13, "Evaluating filter. audience, filter, property"

    invoke-virtual {v9, v13, v14, v15, v11}, Lcom/google/android/gms/measurement/internal/zzeg;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v9, v10, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 259
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v9

    .line 260
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzei;->zzk()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v9

    iget-object v11, v10, Lcom/google/android/gms/measurement/internal/zzju;->zza:Lcom/google/android/gms/measurement/internal/zzkd;

    .line 261
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzkd;->zzn()Lcom/google/android/gms/measurement/internal/zzkf;

    move-result-object v11

    .line 262
    invoke-virtual {v11, v8}, Lcom/google/android/gms/measurement/internal/zzkf;->zzj(Lcom/google/android/gms/internal/measurement/zzcf;)Ljava/lang/String;

    move-result-object v11

    const-string v13, "Filter definition"

    invoke-virtual {v9, v13, v11}, Lcom/google/android/gms/measurement/internal/zzeg;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 263
    :cond_4d
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzcf;->zza()Z

    move-result v9

    if-eqz v9, :cond_50

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzcf;->zzb()I

    move-result v9

    const/16 v11, 0x100

    if-le v9, v11, :cond_4e

    goto :goto_45

    .line 274
    :cond_4e
    new-instance v9, Lcom/google/android/gms/measurement/internal/zzx;

    iget-object v11, v10, Lcom/google/android/gms/measurement/internal/zzy;->zzb:Ljava/lang/String;

    .line 264
    invoke-direct {v9, v10, v11, v6, v8}, Lcom/google/android/gms/measurement/internal/zzx;-><init>(Lcom/google/android/gms/measurement/internal/zzy;Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zzcf;)V

    iget-object v11, v10, Lcom/google/android/gms/measurement/internal/zzy;->zze:Ljava/lang/Long;

    iget-object v13, v10, Lcom/google/android/gms/measurement/internal/zzy;->zzf:Ljava/lang/Long;

    .line 265
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzcf;->zzb()I

    move-result v8

    invoke-direct {v10, v6, v8}, Lcom/google/android/gms/measurement/internal/zzy;->zzd(II)Z

    move-result v8

    .line 266
    invoke-virtual {v9, v11, v13, v4, v8}, Lcom/google/android/gms/measurement/internal/zzx;->zzd(Ljava/lang/Long;Ljava/lang/Long;Lcom/google/android/gms/internal/measurement/zzdu;Z)Z

    move-result v8

    if-eqz v8, :cond_4f

    .line 267
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/google/android/gms/measurement/internal/zzy;->zzc(Ljava/lang/Integer;)Lcom/google/android/gms/measurement/internal/zzt;

    move-result-object v11

    .line 268
    invoke-virtual {v11, v9}, Lcom/google/android/gms/measurement/internal/zzt;->zza(Lcom/google/android/gms/measurement/internal/zzw;)V

    const/4 v13, 0x0

    goto/16 :goto_43

    :cond_4f
    iget-object v7, v10, Lcom/google/android/gms/measurement/internal/zzy;->zzc:Ljava/util/Set;

    .line 273
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_47

    .line 263
    :cond_50
    :goto_45
    iget-object v7, v10, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 269
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v7

    .line 270
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzei;->zze()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v7

    iget-object v9, v10, Lcom/google/android/gms/measurement/internal/zzy;->zzb:Ljava/lang/String;

    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/zzei;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .line 271
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzcf;->zza()Z

    move-result v11

    if-eqz v11, :cond_51

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzcf;->zzb()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    goto :goto_46

    .line 274
    :cond_51
    const/4 v8, 0x0

    .line 271
    :goto_46
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 272
    const-string v11, "Invalid property filter ID. appId, id"

    invoke-virtual {v7, v11, v9, v8}, Lcom/google/android/gms/measurement/internal/zzeg;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_48

    .line 273
    :cond_52
    :goto_47
    if-nez v8, :cond_53

    .line 272
    :goto_48
    iget-object v7, v10, Lcom/google/android/gms/measurement/internal/zzy;->zzc:Ljava/util/Set;

    .line 274
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v7, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x0

    goto/16 :goto_42

    .line 273
    :cond_53
    const/4 v13, 0x0

    goto/16 :goto_42

    .line 216
    :cond_54
    :goto_49
    new-instance v1, Ljava/util/ArrayList;

    .line 277
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, v10, Lcom/google/android/gms/measurement/internal/zzy;->zzd:Ljava/util/Map;

    .line 278
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    iget-object v2, v10, Lcom/google/android/gms/measurement/internal/zzy;->zzc:Ljava/util/Set;

    .line 279
    invoke-interface {v0, v2}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 280
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_56

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v3, v10, Lcom/google/android/gms/measurement/internal/zzy;->zzd:Ljava/util/Map;

    .line 281
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/measurement/internal/zzt;

    .line 282
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    invoke-virtual {v3, v0}, Lcom/google/android/gms/measurement/internal/zzt;->zzb(I)Lcom/google/android/gms/internal/measurement/zzcx;

    move-result-object v0

    .line 284
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, v10, Lcom/google/android/gms/measurement/internal/zzju;->zza:Lcom/google/android/gms/measurement/internal/zzkd;

    .line 285
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzkd;->zzi()Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object v3

    iget-object v5, v10, Lcom/google/android/gms/measurement/internal/zzy;->zzb:Ljava/lang/String;

    .line 286
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzcx;->zzc()Lcom/google/android/gms/internal/measurement/zzdq;

    move-result-object v0

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzjv;->zzX()V

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzge;->zzg()V

    .line 287
    invoke-static {v5}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 288
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzgb;->zzbp()[B

    move-result-object v0

    new-instance v6, Landroid/content/ContentValues;

    .line 290
    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 291
    const-string v7, "app_id"

    invoke-virtual {v6, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    move-object/from16 v7, v28

    invoke-virtual {v6, v7, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 293
    move-object/from16 v4, v26

    invoke-virtual {v6, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 286
    :try_start_22
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzai;->zze()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v8, "audience_filter_values"
    :try_end_22
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_22 .. :try_end_22} :catch_16

    const/4 v9, 0x5

    .line 294
    const/4 v11, 0x0

    :try_start_23
    invoke-virtual {v0, v8, v11, v6, v9}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v8

    const-wide/16 v12, -0x1

    cmp-long v0, v8, v12

    if-nez v0, :cond_55

    iget-object v0, v3, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 295
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v0

    .line 296
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzei;->zzb()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v0

    const-string v6, "Failed to insert filter results (got -1). appId"

    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzei;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .line 297
    invoke-virtual {v0, v6, v8}, Lcom/google/android/gms/measurement/internal/zzeg;->zzb(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_23
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_23 .. :try_end_23} :catch_15

    move-object/from16 v26, v4

    move-object/from16 v28, v7

    goto :goto_4a

    .line 294
    :cond_55
    move-object/from16 v26, v4

    move-object/from16 v28, v7

    goto/16 :goto_4a

    .line 70
    :catch_15
    move-exception v0

    goto :goto_4b

    :catch_16
    move-exception v0

    const/4 v11, 0x0

    :goto_4b
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 298
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v3

    .line 299
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzei;->zzb()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v3

    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzei;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 300
    const-string v6, "Error storing filter results. appId"

    invoke-virtual {v3, v6, v5, v0}, Lcom/google/android/gms/measurement/internal/zzeg;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v26, v4

    move-object/from16 v28, v7

    goto/16 :goto_4a

    .line 297
    :cond_56
    return-object v1

    .line 61
    :catchall_e
    move-exception v0

    move-object v5, v4

    .line 64
    :goto_4c
    if-eqz v5, :cond_57

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 70
    :cond_57
    goto :goto_4e

    :goto_4d
    throw v0

    :goto_4e
    goto :goto_4d
.end method
