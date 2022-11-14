.class public Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;
.super Ljava/lang/Object;
.source "SQLiteEventStore.java"

# interfaces
.implements Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStore;
.implements Lcom/google/android/datatransport/runtime/synchronization/SynchronizationGuard;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$Metadata;,
        Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$Function;,
        Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$Producer;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# static fields
.field private static final LOCK_RETRY_BACK_OFF_MILLIS:I = 0x32

.field private static final LOG_TAG:Ljava/lang/String; = "SQLiteEventStore"

.field static final MAX_RETRIES:I = 0x10

.field private static final PROTOBUF_ENCODING:Lcom/google/android/datatransport/Encoding;


# instance fields
.field private final config:Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStoreConfig;

.field private final monotonicClock:Lcom/google/android/datatransport/runtime/time/Clock;

.field private final schemaManager:Lcom/google/android/datatransport/runtime/scheduling/persistence/SchemaManager;

.field private final wallClock:Lcom/google/android/datatransport/runtime/time/Clock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 60
    const-string v0, "proto"

    invoke-static {v0}, Lcom/google/android/datatransport/Encoding;->of(Ljava/lang/String;)Lcom/google/android/datatransport/Encoding;

    move-result-object v0

    sput-object v0, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->PROTOBUF_ENCODING:Lcom/google/android/datatransport/Encoding;

    return-void
.end method

.method constructor <init>(Lcom/google/android/datatransport/runtime/time/Clock;Lcom/google/android/datatransport/runtime/time/Clock;Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStoreConfig;Lcom/google/android/datatransport/runtime/scheduling/persistence/SchemaManager;)V
    .locals 0
    .param p1, "wallClock"    # Lcom/google/android/datatransport/runtime/time/Clock;
    .param p2, "clock"    # Lcom/google/android/datatransport/runtime/time/Clock;
    .param p3, "config"    # Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStoreConfig;
    .param p4, "schemaManager"    # Lcom/google/android/datatransport/runtime/scheduling/persistence/SchemaManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p4, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->schemaManager:Lcom/google/android/datatransport/runtime/scheduling/persistence/SchemaManager;

    .line 75
    iput-object p1, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->wallClock:Lcom/google/android/datatransport/runtime/time/Clock;

    .line 76
    iput-object p2, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->monotonicClock:Lcom/google/android/datatransport/runtime/time/Clock;

    .line 77
    iput-object p3, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->config:Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStoreConfig;

    .line 78
    return-void
.end method

.method private ensureBeginTransaction(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 537
    invoke-static {p1}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$$Lambda$18;->lambdaFactory$(Landroid/database/sqlite/SQLiteDatabase;)Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$Producer;

    move-result-object v0

    invoke-static {}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$$Lambda$19;->lambdaFactory$()Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$Function;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->retryIfDbLocked(Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$Producer;Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$Function;)Ljava/lang/Object;

    .line 545
    return-void
.end method

.method private ensureTransportContext(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/datatransport/runtime/TransportContext;)J
    .locals 5
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "transportContext"    # Lcom/google/android/datatransport/runtime/TransportContext;

    .line 159
    invoke-direct {p0, p1, p2}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->getTransportContextId(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/datatransport/runtime/TransportContext;)Ljava/lang/Long;

    move-result-object v0

    .line 160
    .local v0, "existingId":Ljava/lang/Long;
    if-eqz v0, :cond_0

    .line 161
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    return-wide v1

    .line 164
    :cond_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 165
    .local v1, "record":Landroid/content/ContentValues;
    invoke-virtual {p2}, Lcom/google/android/datatransport/runtime/TransportContext;->getBackendName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "backend_name"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    invoke-virtual {p2}, Lcom/google/android/datatransport/runtime/TransportContext;->getPriority()Lcom/google/android/datatransport/Priority;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/datatransport/runtime/util/PriorityMapping;->toInt(Lcom/google/android/datatransport/Priority;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "priority"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 167
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "next_request_ms"

    invoke-virtual {v1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 168
    invoke-virtual {p2}, Lcom/google/android/datatransport/runtime/TransportContext;->getExtras()[B

    move-result-object v3

    if-eqz v3, :cond_1

    .line 169
    invoke-virtual {p2}, Lcom/google/android/datatransport/runtime/TransportContext;->getExtras()[B

    move-result-object v3

    invoke-static {v3, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    const-string v3, "extras"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    :cond_1
    const/4 v2, 0x0

    const-string v3, "transport_contexts"

    invoke-virtual {p1, v3, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    return-wide v2
.end method

.method private getPageCount()J
    .locals 2

    .line 603
    invoke-virtual {p0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->getDb()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "PRAGMA page_count"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J

    move-result-wide v0

    return-wide v0
.end method

.method private getPageSize()J
    .locals 2

    .line 595
    invoke-virtual {p0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->getDb()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "PRAGMA page_size"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J

    move-result-wide v0

    return-wide v0
.end method

.method private getTransportContextId(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/datatransport/runtime/TransportContext;)Ljava/lang/Long;
    .locals 14
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "transportContext"    # Lcom/google/android/datatransport/runtime/TransportContext;

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "backend_name = ? and priority = ?"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 178
    .local v0, "selection":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    .line 181
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/datatransport/runtime/TransportContext;->getBackendName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 182
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/datatransport/runtime/TransportContext;->getPriority()Lcom/google/android/datatransport/Priority;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/datatransport/runtime/util/PriorityMapping;->toInt(Lcom/google/android/datatransport/Priority;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    .line 180
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 184
    .local v1, "selectionArgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/datatransport/runtime/TransportContext;->getExtras()[B

    move-result-object v2

    if-eqz v2, :cond_0

    .line 185
    const-string v2, " and extras = ?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/datatransport/runtime/TransportContext;->getExtras()[B

    move-result-object v2

    invoke-static {v2, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    :cond_0
    new-array v8, v5, [Ljava/lang/String;

    const-string v2, "_id"

    aput-object v2, v8, v4

    .line 193
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-array v2, v4, [Ljava/lang/String;

    .line 194
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 190
    const-string v7, "transport_contexts"

    move-object v6, p1

    invoke-virtual/range {v6 .. v13}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    invoke-static {}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$$Lambda$6;->lambdaFactory$()Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$Function;

    move-result-object v3

    .line 189
    invoke-static {v2, v3}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->tryWithCursor(Landroid/database/Cursor;Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$Function;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    return-object v2
.end method

.method private inTransaction(Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$Function;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$Function<",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "TT;>;)TT;"
        }
    .end annotation

    .line 561
    .local p1, "function":Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$Function;, "Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$Function<Landroid/database/sqlite/SQLiteDatabase;TT;>;"
    invoke-virtual {p0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->getDb()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 562
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 564
    :try_start_0
    invoke-interface {p1, v0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 565
    .local v1, "result":Ljava/lang/Object;, "TT;"
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 566
    nop

    .line 568
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 566
    return-object v1

    .line 568
    .end local v1    # "result":Ljava/lang/Object;, "TT;"
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 569
    throw v1
.end method

.method private isStorageAtLimit()Z
    .locals 5

    .line 583
    invoke-direct {p0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->getPageCount()J

    move-result-wide v0

    invoke-direct {p0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->getPageSize()J

    move-result-wide v2

    mul-long v0, v0, v2

    .line 585
    .local v0, "byteSize":J
    iget-object v2, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->config:Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStoreConfig;

    invoke-virtual {v2}, Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStoreConfig;->getMaxStorageSizeInBytes()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method private join(Ljava/util/List;Ljava/util/Map;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/datatransport/runtime/scheduling/persistence/PersistedEvent;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/util/Set<",
            "Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$Metadata;",
            ">;>;)",
            "Ljava/util/List<",
            "Lcom/google/android/datatransport/runtime/scheduling/persistence/PersistedEvent;",
            ">;"
        }
    .end annotation

    .line 496
    .local p1, "events":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/datatransport/runtime/scheduling/persistence/PersistedEvent;>;"
    .local p2, "metadataIndex":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/util/Set<Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$Metadata;>;>;"
    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .line 497
    .local v0, "iterator":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/google/android/datatransport/runtime/scheduling/persistence/PersistedEvent;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 498
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/datatransport/runtime/scheduling/persistence/PersistedEvent;

    .line 499
    .local v1, "current":Lcom/google/android/datatransport/runtime/scheduling/persistence/PersistedEvent;
    invoke-virtual {v1}, Lcom/google/android/datatransport/runtime/scheduling/persistence/PersistedEvent;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 500
    goto :goto_0

    .line 502
    :cond_0
    invoke-virtual {v1}, Lcom/google/android/datatransport/runtime/scheduling/persistence/PersistedEvent;->getEvent()Lcom/google/android/datatransport/runtime/EventInternal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/datatransport/runtime/EventInternal;->toBuilder()Lcom/google/android/datatransport/runtime/EventInternal$Builder;

    move-result-object v2

    .line 504
    .local v2, "newEvent":Lcom/google/android/datatransport/runtime/EventInternal$Builder;
    invoke-virtual {v1}, Lcom/google/android/datatransport/runtime/scheduling/persistence/PersistedEvent;->getId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$Metadata;

    .line 505
    .local v4, "metadata":Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$Metadata;
    iget-object v5, v4, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$Metadata;->key:Ljava/lang/String;

    iget-object v6, v4, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$Metadata;->value:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Lcom/google/android/datatransport/runtime/EventInternal$Builder;->addMetadata(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/datatransport/runtime/EventInternal$Builder;

    .line 506
    .end local v4    # "metadata":Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$Metadata;
    goto :goto_1

    .line 507
    :cond_1
    nop

    .line 508
    invoke-virtual {v1}, Lcom/google/android/datatransport/runtime/scheduling/persistence/PersistedEvent;->getId()J

    move-result-wide v3

    invoke-virtual {v1}, Lcom/google/android/datatransport/runtime/scheduling/persistence/PersistedEvent;->getTransportContext()Lcom/google/android/datatransport/runtime/TransportContext;

    move-result-object v5

    invoke-virtual {v2}, Lcom/google/android/datatransport/runtime/EventInternal$Builder;->build()Lcom/google/android/datatransport/runtime/EventInternal;

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Lcom/google/android/datatransport/runtime/scheduling/persistence/PersistedEvent;->create(JLcom/google/android/datatransport/runtime/TransportContext;Lcom/google/android/datatransport/runtime/EventInternal;)Lcom/google/android/datatransport/runtime/scheduling/persistence/PersistedEvent;

    move-result-object v3

    .line 507
    invoke-interface {v0, v3}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    .line 509
    .end local v1    # "current":Lcom/google/android/datatransport/runtime/scheduling/persistence/PersistedEvent;
    .end local v2    # "newEvent":Lcom/google/android/datatransport/runtime/EventInternal$Builder;
    goto :goto_0

    .line 510
    :cond_2
    return-object p1
.end method

.method static synthetic lambda$cleanUp$10(JLandroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Integer;
    .locals 3
    .param p0, "oneWeekAgo"    # J
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 341
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "events"

    const-string v2, "timestamp_ms < ?"

    invoke-virtual {p2, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$clearDb$11(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;
    .locals 4
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 353
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "events"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 354
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "transport_contexts"

    invoke-virtual {p0, v1, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 355
    return-object v3
.end method

.method static synthetic lambda$ensureBeginTransaction$15(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;
    .locals 1
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 539
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 540
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic lambda$ensureBeginTransaction$16(Ljava/lang/Throwable;)Ljava/lang/Object;
    .locals 2
    .param p0, "ex"    # Ljava/lang/Throwable;

    .line 543
    new-instance v0, Lcom/google/android/datatransport/runtime/synchronization/SynchronizationException;

    const-string v1, "Timed out while trying to acquire the lock."

    invoke-direct {v0, v1, p0}, Lcom/google/android/datatransport/runtime/synchronization/SynchronizationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method static synthetic lambda$getDb$0(Ljava/lang/Throwable;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 2
    .param p0, "ex"    # Ljava/lang/Throwable;

    .line 85
    new-instance v0, Lcom/google/android/datatransport/runtime/synchronization/SynchronizationException;

    const-string v1, "Timed out while trying to open db."

    invoke-direct {v0, v1, p0}, Lcom/google/android/datatransport/runtime/synchronization/SynchronizationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method static synthetic lambda$getNextCallTime$4(Landroid/database/Cursor;)Ljava/lang/Long;
    .locals 2
    .param p0, "cursor"    # Landroid/database/Cursor;

    .line 256
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 257
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 259
    :cond_0
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$getTransportContextId$2(Landroid/database/Cursor;)Ljava/lang/Long;
    .locals 2
    .param p0, "cursor"    # Landroid/database/Cursor;

    .line 199
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 200
    const/4 v0, 0x0

    return-object v0

    .line 202
    :cond_0
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$hasPendingEventsFor$5(Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;Lcom/google/android/datatransport/runtime/TransportContext;Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Boolean;
    .locals 5
    .param p0, "this"    # Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;
    .param p1, "transportContext"    # Lcom/google/android/datatransport/runtime/TransportContext;
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 267
    invoke-direct {p0, p2, p1}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->getTransportContextId(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/datatransport/runtime/TransportContext;)Ljava/lang/Long;

    move-result-object v0

    .line 268
    .local v0, "contextId":Ljava/lang/Long;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 269
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    .line 271
    :cond_0
    nop

    .line 272
    invoke-virtual {p0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->getDb()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    .line 275
    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    .line 273
    const-string v1, "SELECT 1 FROM events WHERE context_id = ? LIMIT 1"

    invoke-virtual {v2, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-static {}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$$Lambda$21;->lambdaFactory$()Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$Function;

    move-result-object v2

    .line 271
    invoke-static {v1, v2}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->tryWithCursor(Landroid/database/Cursor;Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$Function;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    return-object v1
.end method

.method static synthetic lambda$loadActiveContexts$8(Landroid/database/Cursor;)Ljava/util/List;
    .locals 3
    .param p0, "cursor"    # Landroid/database/Cursor;

    .line 324
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 325
    .local v0, "results":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/datatransport/runtime/TransportContext;>;"
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 326
    nop

    .line 327
    invoke-static {}, Lcom/google/android/datatransport/runtime/TransportContext;->builder()Lcom/google/android/datatransport/runtime/TransportContext$Builder;

    move-result-object v1

    const/4 v2, 0x1

    .line 328
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/datatransport/runtime/TransportContext$Builder;->setBackendName(Ljava/lang/String;)Lcom/google/android/datatransport/runtime/TransportContext$Builder;

    move-result-object v1

    const/4 v2, 0x2

    .line 329
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Lcom/google/android/datatransport/runtime/util/PriorityMapping;->valueOf(I)Lcom/google/android/datatransport/Priority;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/datatransport/runtime/TransportContext$Builder;->setPriority(Lcom/google/android/datatransport/Priority;)Lcom/google/android/datatransport/runtime/TransportContext$Builder;

    move-result-object v1

    const/4 v2, 0x3

    .line 330
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->maybeBase64Decode(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/datatransport/runtime/TransportContext$Builder;->setExtras([B)Lcom/google/android/datatransport/runtime/TransportContext$Builder;

    move-result-object v1

    .line 331
    invoke-virtual {v1}, Lcom/google/android/datatransport/runtime/TransportContext$Builder;->build()Lcom/google/android/datatransport/runtime/TransportContext;

    move-result-object v1

    .line 326
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 333
    :cond_0
    return-object v0
.end method

.method static synthetic lambda$loadActiveContexts$9(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;
    .locals 2
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 318
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 319
    const-string v1, "SELECT distinct t._id, t.backend_name, t.priority, t.extras FROM transport_contexts AS t, events AS e WHERE e.context_id = t._id"

    invoke-virtual {p0, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-static {}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$$Lambda$20;->lambdaFactory$()Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$Function;

    move-result-object v1

    .line 318
    invoke-static {v0, v1}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->tryWithCursor(Landroid/database/Cursor;Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method static synthetic lambda$loadBatch$7(Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;Lcom/google/android/datatransport/runtime/TransportContext;Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;
    .locals 2
    .param p0, "this"    # Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;
    .param p1, "transportContext"    # Lcom/google/android/datatransport/runtime/TransportContext;
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 309
    invoke-direct {p0, p2, p1}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->loadEvents(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/datatransport/runtime/TransportContext;)Ljava/util/List;

    move-result-object v0

    .line 310
    .local v0, "events":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/datatransport/runtime/scheduling/persistence/PersistedEvent;>;"
    invoke-direct {p0, p2, v0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->loadMetadata(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->join(Ljava/util/List;Ljava/util/Map;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method static synthetic lambda$loadEvents$12(Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;Ljava/util/List;Lcom/google/android/datatransport/runtime/TransportContext;Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 7
    .param p0, "this"    # Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;
    .param p1, "events"    # Ljava/util/List;
    .param p2, "transportContext"    # Lcom/google/android/datatransport/runtime/TransportContext;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .line 394
    :goto_0
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 395
    const/4 v0, 0x0

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 396
    .local v1, "id":J
    const/4 v3, 0x7

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    .line 398
    .local v0, "inline":Z
    :cond_0
    invoke-static {}, Lcom/google/android/datatransport/runtime/EventInternal;->builder()Lcom/google/android/datatransport/runtime/EventInternal$Builder;

    move-result-object v3

    .line 399
    invoke-interface {p3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/datatransport/runtime/EventInternal$Builder;->setTransportName(Ljava/lang/String;)Lcom/google/android/datatransport/runtime/EventInternal$Builder;

    move-result-object v3

    const/4 v4, 0x2

    .line 400
    invoke-interface {p3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/google/android/datatransport/runtime/EventInternal$Builder;->setEventMillis(J)Lcom/google/android/datatransport/runtime/EventInternal$Builder;

    move-result-object v3

    const/4 v4, 0x3

    .line 401
    invoke-interface {p3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/google/android/datatransport/runtime/EventInternal$Builder;->setUptimeMillis(J)Lcom/google/android/datatransport/runtime/EventInternal$Builder;

    move-result-object v3

    .line 402
    .local v3, "event":Lcom/google/android/datatransport/runtime/EventInternal$Builder;
    const/4 v4, 0x4

    if-eqz v0, :cond_1

    .line 403
    new-instance v5, Lcom/google/android/datatransport/runtime/EncodedPayload;

    .line 404
    invoke-interface {p3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->toEncoding(Ljava/lang/String;)Lcom/google/android/datatransport/Encoding;

    move-result-object v4

    const/4 v6, 0x5

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v6

    invoke-direct {v5, v4, v6}, Lcom/google/android/datatransport/runtime/EncodedPayload;-><init>(Lcom/google/android/datatransport/Encoding;[B)V

    .line 403
    invoke-virtual {v3, v5}, Lcom/google/android/datatransport/runtime/EventInternal$Builder;->setEncodedPayload(Lcom/google/android/datatransport/runtime/EncodedPayload;)Lcom/google/android/datatransport/runtime/EventInternal$Builder;

    goto :goto_1

    .line 406
    :cond_1
    new-instance v5, Lcom/google/android/datatransport/runtime/EncodedPayload;

    .line 407
    invoke-interface {p3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->toEncoding(Ljava/lang/String;)Lcom/google/android/datatransport/Encoding;

    move-result-object v4

    invoke-direct {p0, v1, v2}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->readPayload(J)[B

    move-result-object v6

    invoke-direct {v5, v4, v6}, Lcom/google/android/datatransport/runtime/EncodedPayload;-><init>(Lcom/google/android/datatransport/Encoding;[B)V

    .line 406
    invoke-virtual {v3, v5}, Lcom/google/android/datatransport/runtime/EventInternal$Builder;->setEncodedPayload(Lcom/google/android/datatransport/runtime/EncodedPayload;)Lcom/google/android/datatransport/runtime/EventInternal$Builder;

    .line 409
    :goto_1
    const/4 v4, 0x6

    invoke-interface {p3, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-nez v5, :cond_2

    .line 410
    invoke-interface {p3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/datatransport/runtime/EventInternal$Builder;->setCode(Ljava/lang/Integer;)Lcom/google/android/datatransport/runtime/EventInternal$Builder;

    .line 412
    :cond_2
    invoke-virtual {v3}, Lcom/google/android/datatransport/runtime/EventInternal$Builder;->build()Lcom/google/android/datatransport/runtime/EventInternal;

    move-result-object v4

    invoke-static {v1, v2, p2, v4}, Lcom/google/android/datatransport/runtime/scheduling/persistence/PersistedEvent;->create(JLcom/google/android/datatransport/runtime/TransportContext;Lcom/google/android/datatransport/runtime/EventInternal;)Lcom/google/android/datatransport/runtime/scheduling/persistence/PersistedEvent;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 413
    .end local v0    # "inline":Z
    .end local v1    # "id":J
    .end local v3    # "event":Lcom/google/android/datatransport/runtime/EventInternal$Builder;
    goto :goto_0

    .line 414
    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic lambda$loadMetadata$14(Ljava/util/Map;Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 7
    .param p0, "metadataIndex"    # Ljava/util/Map;
    .param p1, "cursor"    # Landroid/database/Cursor;

    .line 479
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 480
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 481
    .local v2, "eventId":J
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 482
    .local v0, "currentSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$Metadata;>;"
    if-nez v0, :cond_0

    .line 483
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    move-object v0, v4

    .line 484
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {p0, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    :cond_0
    new-instance v4, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$Metadata;

    const/4 v5, 0x1

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6, v1}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$Metadata;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$1;)V

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 487
    .end local v0    # "currentSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$Metadata;>;"
    .end local v2    # "eventId":J
    goto :goto_0

    .line 488
    :cond_1
    return-object v1
.end method

.method static synthetic lambda$persist$1(Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;Lcom/google/android/datatransport/runtime/TransportContext;Lcom/google/android/datatransport/runtime/EventInternal;Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Long;
    .locals 18
    .param p0, "this"    # Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;
    .param p1, "transportContext"    # Lcom/google/android/datatransport/runtime/TransportContext;
    .param p2, "event"    # Lcom/google/android/datatransport/runtime/EventInternal;
    .param p3, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 104
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct/range {p0 .. p0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->isStorageAtLimit()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 105
    const-wide/16 v2, -0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    return-object v2

    .line 108
    :cond_0
    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->ensureTransportContext(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/datatransport/runtime/TransportContext;)J

    move-result-wide v3

    .line 109
    .local v3, "contextId":J
    iget-object v5, v0, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->config:Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStoreConfig;

    invoke-virtual {v5}, Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStoreConfig;->getMaxBlobByteSizePerRow()I

    move-result v5

    .line 111
    .local v5, "maxBlobSizePerRow":I
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/datatransport/runtime/EventInternal;->getEncodedPayload()Lcom/google/android/datatransport/runtime/EncodedPayload;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/datatransport/runtime/EncodedPayload;->getBytes()[B

    move-result-object v6

    .line 112
    .local v6, "payloadBytes":[B
    array-length v7, v6

    const/4 v8, 0x0

    if-gt v7, v5, :cond_1

    const/4 v7, 0x1

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    .line 113
    .local v7, "inline":Z
    :goto_0
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 114
    .local v9, "values":Landroid/content/ContentValues;
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    const-string v11, "context_id"

    invoke-virtual {v9, v11, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 115
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/datatransport/runtime/EventInternal;->getTransportName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "transport_name"

    invoke-virtual {v9, v11, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/datatransport/runtime/EventInternal;->getEventMillis()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    const-string v11, "timestamp_ms"

    invoke-virtual {v9, v11, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 117
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/datatransport/runtime/EventInternal;->getUptimeMillis()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    const-string v11, "uptime_ms"

    invoke-virtual {v9, v11, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 118
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/datatransport/runtime/EventInternal;->getEncodedPayload()Lcom/google/android/datatransport/runtime/EncodedPayload;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/android/datatransport/runtime/EncodedPayload;->getEncoding()Lcom/google/android/datatransport/Encoding;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/android/datatransport/Encoding;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "payload_encoding"

    invoke-virtual {v9, v11, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/datatransport/runtime/EventInternal;->getCode()Ljava/lang/Integer;

    move-result-object v10

    const-string v11, "code"

    invoke-virtual {v9, v11, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 120
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v11, "num_attempts"

    invoke-virtual {v9, v11, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 121
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const-string v11, "inline"

    invoke-virtual {v9, v11, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 122
    if-eqz v7, :cond_2

    move-object v8, v6

    goto :goto_1

    :cond_2
    new-array v8, v8, [B

    :goto_1
    const-string v10, "payload"

    invoke-virtual {v9, v10, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 123
    const-string v8, "events"

    const/4 v10, 0x0

    invoke-virtual {v1, v8, v10, v9}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v11

    .line 124
    .local v11, "newEventId":J
    const-string v8, "event_id"

    if-nez v7, :cond_3

    .line 125
    array-length v13, v6

    int-to-double v13, v13

    move-wide/from16 v16, v11

    .end local v11    # "newEventId":J
    .local v16, "newEventId":J
    int-to-double v10, v5

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v13, v10

    invoke-static {v13, v14}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v10, v10

    .line 127
    .local v10, "numChunks":I
    const/4 v11, 0x1

    .local v11, "chunk":I
    :goto_2
    if-gt v11, v10, :cond_4

    .line 128
    add-int/lit8 v12, v11, -0x1

    mul-int v12, v12, v5

    mul-int v13, v11, v5

    array-length v14, v6

    .line 132
    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 129
    invoke-static {v6, v12, v13}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v12

    .line 133
    .local v12, "chunkBytes":[B
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 134
    .local v13, "payloadValues":Landroid/content/ContentValues;
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v13, v8, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 135
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "sequence_num"

    invoke-virtual {v13, v15, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 136
    const-string v14, "bytes"

    invoke-virtual {v13, v14, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 137
    const-string v14, "event_payloads"

    const/4 v15, 0x0

    invoke-virtual {v1, v14, v15, v13}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 127
    .end local v12    # "chunkBytes":[B
    .end local v13    # "payloadValues":Landroid/content/ContentValues;
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 124
    .end local v10    # "numChunks":I
    .end local v16    # "newEventId":J
    .local v11, "newEventId":J
    :cond_3
    move-wide/from16 v16, v11

    .line 142
    .end local v11    # "newEventId":J
    .restart local v16    # "newEventId":J
    :cond_4
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/datatransport/runtime/EventInternal;->getMetadata()Ljava/util/Map;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    .line 143
    .local v11, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 144
    .local v12, "metadata":Landroid/content/ContentValues;
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v12, v8, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 145
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    const-string v14, "name"

    invoke-virtual {v12, v14, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    const-string v14, "value"

    invoke-virtual {v12, v14, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    const-string v13, "event_metadata"

    const/4 v14, 0x0

    invoke-virtual {v1, v13, v14, v12}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 148
    .end local v11    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v12    # "metadata":Landroid/content/ContentValues;
    goto :goto_3

    .line 149
    :cond_5
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    return-object v8
.end method

.method static synthetic lambda$readPayload$13(Landroid/database/Cursor;)[B
    .locals 8
    .param p0, "cursor"    # Landroid/database/Cursor;

    .line 431
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 432
    .local v0, "chunks":Ljava/util/List;, "Ljava/util/List<[B>;"
    const/4 v1, 0x0

    .line 433
    .local v1, "totalLength":I
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 434
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    .line 435
    .local v2, "chunk":[B
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 436
    array-length v3, v2

    add-int/2addr v1, v3

    .line 437
    .end local v2    # "chunk":[B
    goto :goto_0

    .line 439
    :cond_0
    new-array v2, v1, [B

    .line 440
    .local v2, "payloadBytes":[B
    const/4 v4, 0x0

    .line 441
    .local v4, "offset":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 442
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    .line 443
    .local v6, "chunk":[B
    array-length v7, v6

    invoke-static {v6, v3, v2, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 444
    array-length v7, v6

    add-int/2addr v4, v7

    .line 441
    .end local v6    # "chunk":[B
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 446
    .end local v5    # "i":I
    :cond_1
    return-object v2
.end method

.method static synthetic lambda$recordFailure$3(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;
    .locals 1
    .param p0, "query"    # Ljava/lang/String;
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 216
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 217
    const-string v0, "DELETE FROM events WHERE num_attempts >= 16"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 218
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic lambda$recordNextCallTime$6(JLcom/google/android/datatransport/runtime/TransportContext;Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;
    .locals 6
    .param p0, "timestampMs"    # J
    .param p2, "transportContext"    # Lcom/google/android/datatransport/runtime/TransportContext;
    .param p3, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 284
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 285
    .local v0, "values":Landroid/content/ContentValues;
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "next_request_ms"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 286
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    .line 292
    invoke-virtual {p2}, Lcom/google/android/datatransport/runtime/TransportContext;->getBackendName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 293
    invoke-virtual {p2}, Lcom/google/android/datatransport/runtime/TransportContext;->getPriority()Lcom/google/android/datatransport/Priority;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/datatransport/runtime/util/PriorityMapping;->toInt(Lcom/google/android/datatransport/Priority;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 287
    const-string v2, "transport_contexts"

    const-string v4, "backend_name = ? and priority = ?"

    invoke-virtual {p3, v2, v0, v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 296
    .local v1, "rowsUpdated":I
    const/4 v4, 0x0

    if-ge v1, v3, :cond_0

    .line 297
    invoke-virtual {p2}, Lcom/google/android/datatransport/runtime/TransportContext;->getBackendName()Ljava/lang/String;

    move-result-object v3

    const-string v5, "backend_name"

    invoke-virtual {v0, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    invoke-virtual {p2}, Lcom/google/android/datatransport/runtime/TransportContext;->getPriority()Lcom/google/android/datatransport/Priority;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/datatransport/runtime/util/PriorityMapping;->toInt(Lcom/google/android/datatransport/Priority;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v5, "priority"

    invoke-virtual {v0, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 299
    invoke-virtual {p3, v2, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 301
    :cond_0
    return-object v4
.end method

.method private loadEvents(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/datatransport/runtime/TransportContext;)Ljava/util/List;
    .locals 12
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "transportContext"    # Lcom/google/android/datatransport/runtime/TransportContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Lcom/google/android/datatransport/runtime/TransportContext;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/datatransport/runtime/scheduling/persistence/PersistedEvent;",
            ">;"
        }
    .end annotation

    .line 368
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 369
    .local v0, "events":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/datatransport/runtime/scheduling/persistence/PersistedEvent;>;"
    invoke-direct {p0, p1, p2}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->getTransportContextId(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/datatransport/runtime/TransportContext;)Ljava/lang/Long;

    move-result-object v1

    .line 370
    .local v1, "contextId":Ljava/lang/Long;
    if-nez v1, :cond_0

    .line 371
    return-object v0

    .line 374
    :cond_0
    const/16 v2, 0x8

    new-array v5, v2, [Ljava/lang/String;

    const-string v2, "_id"

    const/4 v3, 0x0

    aput-object v2, v5, v3

    const-string v2, "transport_name"

    const/4 v4, 0x1

    aput-object v2, v5, v4

    const/4 v2, 0x2

    const-string v6, "timestamp_ms"

    aput-object v6, v5, v2

    const/4 v2, 0x3

    const-string v6, "uptime_ms"

    aput-object v6, v5, v2

    const/4 v2, 0x4

    const-string v6, "payload_encoding"

    aput-object v6, v5, v2

    const/4 v2, 0x5

    const-string v6, "payload"

    aput-object v6, v5, v2

    const/4 v2, 0x6

    const-string v6, "code"

    aput-object v6, v5, v2

    const/4 v2, 0x7

    const-string v6, "inline"

    aput-object v6, v5, v2

    new-array v7, v4, [Ljava/lang/String;

    .line 388
    invoke-virtual {v1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v3

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget-object v2, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->config:Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStoreConfig;

    .line 392
    invoke-virtual {v2}, Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStoreConfig;->getLoadBatchSize()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    .line 375
    const-string v4, "events"

    const-string v6, "context_id = ?"

    move-object v3, p1

    invoke-virtual/range {v3 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    invoke-static {p0, v0, p2}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$$Lambda$15;->lambdaFactory$(Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;Ljava/util/List;Lcom/google/android/datatransport/runtime/TransportContext;)Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$Function;

    move-result-object v3

    .line 374
    invoke-static {v2, v3}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->tryWithCursor(Landroid/database/Cursor;Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$Function;)Ljava/lang/Object;

    .line 416
    return-object v0
.end method

.method private loadMetadata(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)Ljava/util/Map;
    .locals 13
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/List<",
            "Lcom/google/android/datatransport/runtime/scheduling/persistence/PersistedEvent;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/util/Set<",
            "Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$Metadata;",
            ">;>;"
        }
    .end annotation

    .line 459
    .local p2, "events":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/datatransport/runtime/scheduling/persistence/PersistedEvent;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 460
    .local v0, "metadataIndex":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/util/Set<Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$Metadata;>;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "event_id IN ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 461
    .local v1, "whereClause":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v2, v3, :cond_1

    .line 462
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/datatransport/runtime/scheduling/persistence/PersistedEvent;

    invoke-virtual {v3}, Lcom/google/android/datatransport/runtime/scheduling/persistence/PersistedEvent;->getId()J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 463
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v4

    if-ge v2, v3, :cond_0

    .line 464
    const/16 v3, 0x2c

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 461
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 467
    .end local v2    # "i":I
    :cond_1
    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 469
    const/4 v2, 0x3

    new-array v7, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "event_id"

    aput-object v3, v7, v2

    const-string v2, "name"

    aput-object v2, v7, v4

    const/4 v2, 0x2

    const-string v3, "value"

    aput-object v3, v7, v2

    .line 473
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 470
    const-string v6, "event_metadata"

    move-object v5, p1

    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    invoke-static {v0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$$Lambda$17;->lambdaFactory$(Ljava/util/Map;)Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$Function;

    move-result-object v3

    .line 469
    invoke-static {v2, v3}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->tryWithCursor(Landroid/database/Cursor;Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$Function;)Ljava/lang/Object;

    .line 490
    return-object v0
.end method

.method private static maybeBase64Decode(Ljava/lang/String;)[B
    .locals 1
    .param p0, "value"    # Ljava/lang/String;

    .line 360
    if-nez p0, :cond_0

    .line 361
    const/4 v0, 0x0

    return-object v0

    .line 363
    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    return-object v0
.end method

.method private readPayload(J)[B
    .locals 9
    .param p1, "eventId"    # J

    .line 420
    nop

    .line 421
    invoke-virtual {p0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->getDb()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "bytes"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-array v5, v1, [Ljava/lang/String;

    .line 426
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v4

    .line 422
    const-string v1, "event_payloads"

    const-string v3, "event_id = ?"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "sequence_num"

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-static {}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$$Lambda$16;->lambdaFactory$()Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$Function;

    move-result-object v1

    .line 420
    invoke-static {v0, v1}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->tryWithCursor(Landroid/database/Cursor;Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method private retryIfDbLocked(Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$Producer;Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$Function;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$Producer<",
            "TT;>;",
            "Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$Function<",
            "Ljava/lang/Throwable;",
            "TT;>;)TT;"
        }
    .end annotation

    .line 514
    .local p1, "retriable":Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$Producer;, "Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$Producer<TT;>;"
    .local p2, "failureHandler":Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$Function;, "Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$Function<Ljava/lang/Throwable;TT;>;"
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->monotonicClock:Lcom/google/android/datatransport/runtime/time/Clock;

    invoke-interface {v0}, Lcom/google/android/datatransport/runtime/time/Clock;->getTime()J

    move-result-wide v0

    .line 517
    .local v0, "startTime":J
    :goto_0
    :try_start_0
    invoke-interface {p1}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$Producer;->produce()Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 518
    :catch_0
    move-exception v2

    .line 519
    .local v2, "ex":Landroid/database/sqlite/SQLiteDatabaseLockedException;
    iget-object v3, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->monotonicClock:Lcom/google/android/datatransport/runtime/time/Clock;

    invoke-interface {v3}, Lcom/google/android/datatransport/runtime/time/Clock;->getTime()J

    move-result-wide v3

    iget-object v5, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->config:Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStoreConfig;

    invoke-virtual {v5}, Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStoreConfig;->getCriticalSectionEnterTimeoutMs()I

    move-result v5

    int-to-long v5, v5

    add-long/2addr v5, v0

    cmp-long v7, v3, v5

    if-ltz v7, :cond_0

    .line 520
    invoke-interface {p2, v2}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    return-object v3

    .line 522
    :cond_0
    const-wide/16 v3, 0x32

    invoke-static {v3, v4}, Landroid/os/SystemClock;->sleep(J)V

    .line 524
    .end local v2    # "ex":Landroid/database/sqlite/SQLiteDatabaseLockedException;
    goto :goto_0
.end method

.method private static toEncoding(Ljava/lang/String;)Lcom/google/android/datatransport/Encoding;
    .locals 1
    .param p0, "value"    # Ljava/lang/String;

    .line 451
    if-nez p0, :cond_0

    .line 452
    sget-object v0, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->PROTOBUF_ENCODING:Lcom/google/android/datatransport/Encoding;

    return-object v0

    .line 454
    :cond_0
    invoke-static {p0}, Lcom/google/android/datatransport/Encoding;->of(Ljava/lang/String;)Lcom/google/android/datatransport/Encoding;

    move-result-object v0

    return-object v0
.end method

.method private static toIdList(Ljava/lang/Iterable;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/google/android/datatransport/runtime/scheduling/persistence/PersistedEvent;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 233
    .local p0, "events":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/google/android/datatransport/runtime/scheduling/persistence/PersistedEvent;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 234
    .local v0, "idList":Ljava/lang/StringBuilder;
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 235
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/android/datatransport/runtime/scheduling/persistence/PersistedEvent;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 236
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/datatransport/runtime/scheduling/persistence/PersistedEvent;

    invoke-virtual {v2}, Lcom/google/android/datatransport/runtime/scheduling/persistence/PersistedEvent;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 237
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 238
    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 241
    :cond_1
    const/16 v2, 0x29

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 242
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static tryWithCursor(Landroid/database/Cursor;Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$Function;)Ljava/lang/Object;
    .locals 1
    .param p0, "c"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/database/Cursor;",
            "Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$Function<",
            "Landroid/database/Cursor;",
            "TT;>;)TT;"
        }
    .end annotation

    .line 608
    .local p1, "function":Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$Function;, "Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$Function<Landroid/database/Cursor;TT;>;"
    :try_start_0
    invoke-interface {p1, p0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 610
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 608
    return-object v0

    .line 610
    :catchall_0
    move-exception v0

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 611
    throw v0
.end method


# virtual methods
.method public cleanUp()I
    .locals 4

    .line 339
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->wallClock:Lcom/google/android/datatransport/runtime/time/Clock;

    invoke-interface {v0}, Lcom/google/android/datatransport/runtime/time/Clock;->getTime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->config:Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStoreConfig;

    invoke-virtual {v2}, Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStoreConfig;->getEventCleanUpAge()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 340
    .local v0, "oneWeekAgo":J
    invoke-static {v0, v1}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$$Lambda$13;->lambdaFactory$(J)Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$Function;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->inTransaction(Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$Function;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    return v2
.end method

.method public clearDb()V
    .locals 1

    .line 351
    invoke-static {}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$$Lambda$14;->lambdaFactory$()Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$Function;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->inTransaction(Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$Function;)Ljava/lang/Object;

    .line 357
    return-void
.end method

.method public close()V
    .locals 1

    .line 346
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->schemaManager:Lcom/google/android/datatransport/runtime/scheduling/persistence/SchemaManager;

    invoke-virtual {v0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SchemaManager;->close()V

    .line 347
    return-void
.end method

.method getByteSize()J
    .locals 4

    .line 590
    invoke-direct {p0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->getPageCount()J

    move-result-wide v0

    invoke-direct {p0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->getPageSize()J

    move-result-wide v2

    mul-long v0, v0, v2

    return-wide v0
.end method

.method getDb()Landroid/database/sqlite/SQLiteDatabase;
    .locals 2

    .line 82
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->schemaManager:Lcom/google/android/datatransport/runtime/scheduling/persistence/SchemaManager;

    .line 83
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$$Lambda$1;->lambdaFactory$(Lcom/google/android/datatransport/runtime/scheduling/persistence/SchemaManager;)Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$Producer;

    move-result-object v0

    invoke-static {}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$$Lambda$4;->lambdaFactory$()Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$Function;

    move-result-object v1

    .line 82
    invoke-direct {p0, v0, v1}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->retryIfDbLocked(Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$Producer;Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method public getNextCallTime(Lcom/google/android/datatransport/runtime/TransportContext;)J
    .locals 4
    .param p1, "transportContext"    # Lcom/google/android/datatransport/runtime/TransportContext;

    .line 247
    nop

    .line 248
    invoke-virtual {p0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->getDb()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    .line 252
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/TransportContext;->getBackendName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 253
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/TransportContext;->getPriority()Lcom/google/android/datatransport/Priority;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/datatransport/runtime/util/PriorityMapping;->toInt(Lcom/google/android/datatransport/Priority;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 249
    const-string v2, "SELECT next_request_ms FROM transport_contexts WHERE backend_name = ? and priority = ?"

    invoke-virtual {v0, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-static {}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$$Lambda$8;->lambdaFactory$()Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$Function;

    move-result-object v1

    .line 247
    invoke-static {v0, v1}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->tryWithCursor(Landroid/database/Cursor;Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public hasPendingEventsFor(Lcom/google/android/datatransport/runtime/TransportContext;)Z
    .locals 1
    .param p1, "transportContext"    # Lcom/google/android/datatransport/runtime/TransportContext;

    .line 265
    invoke-static {p0, p1}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$$Lambda$9;->lambdaFactory$(Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;Lcom/google/android/datatransport/runtime/TransportContext;)Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$Function;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->inTransaction(Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public loadActiveContexts()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lcom/google/android/datatransport/runtime/TransportContext;",
            ">;"
        }
    .end annotation

    .line 316
    invoke-static {}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$$Lambda$12;->lambdaFactory$()Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$Function;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->inTransaction(Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    return-object v0
.end method

.method public loadBatch(Lcom/google/android/datatransport/runtime/TransportContext;)Ljava/lang/Iterable;
    .locals 1
    .param p1, "transportContext"    # Lcom/google/android/datatransport/runtime/TransportContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/datatransport/runtime/TransportContext;",
            ")",
            "Ljava/lang/Iterable<",
            "Lcom/google/android/datatransport/runtime/scheduling/persistence/PersistedEvent;",
            ">;"
        }
    .end annotation

    .line 307
    invoke-static {p0, p1}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$$Lambda$11;->lambdaFactory$(Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;Lcom/google/android/datatransport/runtime/TransportContext;)Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$Function;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->inTransaction(Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    return-object v0
.end method

.method public persist(Lcom/google/android/datatransport/runtime/TransportContext;Lcom/google/android/datatransport/runtime/EventInternal;)Lcom/google/android/datatransport/runtime/scheduling/persistence/PersistedEvent;
    .locals 5
    .param p1, "transportContext"    # Lcom/google/android/datatransport/runtime/TransportContext;
    .param p2, "event"    # Lcom/google/android/datatransport/runtime/EventInternal;

    .line 92
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 95
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/TransportContext;->getPriority()Lcom/google/android/datatransport/Priority;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 96
    invoke-virtual {p2}, Lcom/google/android/datatransport/runtime/EventInternal;->getTransportName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 97
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/TransportContext;->getBackendName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 92
    const-string v1, "SQLiteEventStore"

    const-string v2, "Storing event with priority=%s, name=%s for destination %s"

    invoke-static {v1, v2, v0}, Lcom/google/android/datatransport/runtime/logging/Logging;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 98
    invoke-static {p0, p1, p2}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$$Lambda$5;->lambdaFactory$(Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;Lcom/google/android/datatransport/runtime/TransportContext;Lcom/google/android/datatransport/runtime/EventInternal;)Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$Function;

    move-result-object v0

    .line 99
    invoke-direct {p0, v0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->inTransaction(Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 152
    .local v0, "newRowId":J
    const-wide/16 v2, 0x1

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    .line 153
    const/4 v2, 0x0

    return-object v2

    .line 155
    :cond_0
    invoke-static {v0, v1, p1, p2}, Lcom/google/android/datatransport/runtime/scheduling/persistence/PersistedEvent;->create(JLcom/google/android/datatransport/runtime/TransportContext;Lcom/google/android/datatransport/runtime/EventInternal;)Lcom/google/android/datatransport/runtime/scheduling/persistence/PersistedEvent;

    move-result-object v2

    return-object v2
.end method

.method public recordFailure(Ljava/lang/Iterable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/google/android/datatransport/runtime/scheduling/persistence/PersistedEvent;",
            ">;)V"
        }
    .end annotation

    .line 208
    .local p1, "events":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/google/android/datatransport/runtime/scheduling/persistence/PersistedEvent;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 209
    return-void

    .line 211
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UPDATE events SET num_attempts = num_attempts + 1 WHERE _id in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    invoke-static {p1}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->toIdList(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 214
    .local v0, "query":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$$Lambda$7;->lambdaFactory$(Ljava/lang/String;)Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$Function;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->inTransaction(Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$Function;)Ljava/lang/Object;

    .line 220
    return-void
.end method

.method public recordNextCallTime(Lcom/google/android/datatransport/runtime/TransportContext;J)V
    .locals 1
    .param p1, "transportContext"    # Lcom/google/android/datatransport/runtime/TransportContext;
    .param p2, "timestampMs"    # J

    .line 282
    invoke-static {p2, p3, p1}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$$Lambda$10;->lambdaFactory$(JLcom/google/android/datatransport/runtime/TransportContext;)Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$Function;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->inTransaction(Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$Function;)Ljava/lang/Object;

    .line 303
    return-void
.end method

.method public recordSuccess(Ljava/lang/Iterable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/google/android/datatransport/runtime/scheduling/persistence/PersistedEvent;",
            ">;)V"
        }
    .end annotation

    .line 224
    .local p1, "events":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/google/android/datatransport/runtime/scheduling/persistence/PersistedEvent;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 225
    return-void

    .line 228
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DELETE FROM events WHERE _id in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->toIdList(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 229
    .local v0, "query":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->getDb()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 230
    return-void
.end method

.method public runCriticalSection(Lcom/google/android/datatransport/runtime/synchronization/SynchronizationGuard$CriticalSection;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/datatransport/runtime/synchronization/SynchronizationGuard$CriticalSection<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 549
    .local p1, "criticalSection":Lcom/google/android/datatransport/runtime/synchronization/SynchronizationGuard$CriticalSection;, "Lcom/google/android/datatransport/runtime/synchronization/SynchronizationGuard$CriticalSection<TT;>;"
    invoke-virtual {p0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->getDb()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 550
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-direct {p0, v0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->ensureBeginTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 552
    :try_start_0
    invoke-interface {p1}, Lcom/google/android/datatransport/runtime/synchronization/SynchronizationGuard$CriticalSection;->execute()Ljava/lang/Object;

    move-result-object v1

    .line 553
    .local v1, "result":Ljava/lang/Object;, "TT;"
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 554
    nop

    .line 556
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 554
    return-object v1

    .line 556
    .end local v1    # "result":Ljava/lang/Object;, "TT;"
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 557
    throw v1
.end method
