.class public Lcom/onesignal/outcomes/OSOutcomeTableProvider;
.super Ljava/lang/Object;
.source "OSOutcomeTableProvider.java"


# static fields
.field public static final CACHE_UNIQUE_OUTCOME_COLUMN_CHANNEL_INFLUENCE_ID:Ljava/lang/String; = "channel_influence_id"

.field public static final CACHE_UNIQUE_OUTCOME_COLUMN_CHANNEL_TYPE:Ljava/lang/String; = "channel_type"

.field public static final CACHE_UNIQUE_OUTCOME_TABLE:Ljava/lang/String; = "cached_unique_outcome"

.field private static final FLOAT_TYPE:Ljava/lang/String; = " FLOAT"

.field private static final INTEGER_PRIMARY_KEY_TYPE:Ljava/lang/String; = " INTEGER PRIMARY KEY"

.field private static final INT_TYPE:Ljava/lang/String; = " INTEGER"

.field public static final OUTCOME_EVENT_TABLE:Ljava/lang/String; = "outcome"

.field public static final SQL_CREATE_OUTCOME_ENTRIES_V1:Ljava/lang/String; = "CREATE TABLE outcome (_id INTEGER PRIMARY KEY,notification_ids TEXT,name TEXT,session TEXT,params TEXT,timestamp TIMESTAMP);"

.field public static final SQL_CREATE_OUTCOME_ENTRIES_V2:Ljava/lang/String; = "CREATE TABLE outcome (_id INTEGER PRIMARY KEY,session TEXT,notification_ids TEXT,name TEXT,timestamp TIMESTAMP,weight FLOAT);"

.field public static final SQL_CREATE_OUTCOME_ENTRIES_V3:Ljava/lang/String; = "CREATE TABLE outcome (_id INTEGER PRIMARY KEY,notification_influence_type TEXT,iam_influence_type TEXT,notification_ids TEXT,iam_ids TEXT,name TEXT,timestamp TIMESTAMP,weight FLOAT);"

.field public static final SQL_CREATE_UNIQUE_OUTCOME_ENTRIES_V1:Ljava/lang/String; = "CREATE TABLE cached_unique_outcome_notification (_id INTEGER PRIMARY KEY,notification_id TEXT,name TEXT);"

.field public static final SQL_CREATE_UNIQUE_OUTCOME_ENTRIES_V2:Ljava/lang/String; = "CREATE TABLE cached_unique_outcome (_id INTEGER PRIMARY KEY,channel_influence_id TEXT,channel_type TEXT,name TEXT);"

.field private static final TEXT_TYPE:Ljava/lang/String; = " TEXT"

.field private static final TIMESTAMP_TYPE:Ljava/lang/String; = " TIMESTAMP"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public upgradeCacheOutcomeTableRevision1To2(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 8
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 150
    const-string v0, ";"

    const-string v1, "COMMIT;"

    const-string v2, "_id,name"

    .line 152
    .local v2, "commonColumns":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "notification_id"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 153
    .local v3, "commonColumnsWithNotificationIdColumn":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "channel_influence_id"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 155
    .local v4, "commonColumnsWithNewInfluenceIdColumn":Ljava/lang/String;
    const-string v5, "cached_unique_outcome_notification"

    .line 163
    .local v5, "oldCacheUniqueOutcomeTable":Ljava/lang/String;
    :try_start_0
    const-string v6, "BEGIN TRANSACTION;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 164
    const-string v6, "CREATE TABLE cached_unique_outcome (_id INTEGER PRIMARY KEY,channel_influence_id TEXT,channel_type TEXT,name TEXT);"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 165
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "INSERT INTO cached_unique_outcome("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ") SELECT "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " FROM "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 167
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UPDATE cached_unique_outcome SET channel_type = \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lcom/onesignal/influence/model/OSInfluenceChannel;->NOTIFICATION:Lcom/onesignal/influence/model/OSInfluenceChannel;

    .line 168
    invoke-virtual {v7}, Lcom/onesignal/influence/model/OSInfluenceChannel;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\';"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 167
    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 169
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DROP TABLE "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 173
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 170
    :catch_0
    move-exception v0

    .line 171
    .local v0, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 173
    .end local v0    # "e":Landroid/database/sqlite/SQLiteException;
    :goto_0
    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 174
    nop

    .line 175
    return-void

    .line 173
    :goto_1
    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    throw v0
.end method

.method public upgradeOutcomeTableRevision1To2(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 78
    const-string v0, "COMMIT;"

    const-string v1, "_id,session,notification_ids,name,timestamp"

    .line 91
    .local v1, "commonColumns":Ljava/lang/String;
    :try_start_0
    const-string v2, "BEGIN TRANSACTION;"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 92
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CREATE TEMPORARY TABLE outcome_backup("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ");"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 93
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "INSERT INTO outcome_backup SELECT "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " FROM outcome;"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 94
    const-string v2, "DROP TABLE outcome;"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 95
    const-string v2, "CREATE TABLE outcome (_id INTEGER PRIMARY KEY,session TEXT,notification_ids TEXT,name TEXT,timestamp TIMESTAMP,weight FLOAT);"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 98
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "INSERT INTO outcome ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", weight) SELECT "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", 0 FROM outcome_backup;"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 99
    const-string v2, "DROP TABLE outcome_backup;"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 103
    :catchall_0
    move-exception v2

    goto :goto_1

    .line 100
    :catch_0
    move-exception v2

    .line 101
    .local v2, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_1
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 103
    .end local v2    # "e":Landroid/database/sqlite/SQLiteException;
    :goto_0
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 104
    nop

    .line 105
    return-void

    .line 103
    :goto_1
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    throw v2
.end method

.method public upgradeOutcomeTableRevision2To3(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 8
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 114
    const-string v0, ";"

    const-string v1, "COMMIT;"

    const-string v2, "_id,name,timestamp,notification_ids,weight"

    .line 119
    .local v2, "commonColumns":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "session"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 120
    .local v3, "commonColumnsWithSessionColumn":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "notification_influence_type"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 122
    .local v4, "commonColumnsWithNewSessionColumn":Ljava/lang/String;
    const-string v5, "outcome_aux"

    .line 130
    .local v5, "auxOutcomeTableName":Ljava/lang/String;
    :try_start_0
    const-string v6, "BEGIN TRANSACTION;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 131
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ALTER TABLE outcome RENAME TO "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 132
    const-string v6, "CREATE TABLE outcome (_id INTEGER PRIMARY KEY,notification_influence_type TEXT,iam_influence_type TEXT,notification_ids TEXT,iam_ids TEXT,name TEXT,timestamp TIMESTAMP,weight FLOAT);"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 133
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "INSERT INTO outcome("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ") SELECT "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " FROM "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 135
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DROP TABLE "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 139
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 136
    :catch_0
    move-exception v0

    .line 137
    .local v0, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 139
    .end local v0    # "e":Landroid/database/sqlite/SQLiteException;
    :goto_0
    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 140
    nop

    .line 141
    return-void

    .line 139
    :goto_1
    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    throw v0
.end method
