.class Lcom/onesignal/RootToolsInternalMethods;
.super Ljava/lang/Object;
.source "RootToolsInternalMethods.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static isRooted()Z
    .locals 9

    .line 28
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "/sbin/"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "/system/bin/"

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v4, "/system/xbin/"

    aput-object v4, v0, v1

    const/4 v1, 0x3

    const-string v4, "/data/local/xbin/"

    aput-object v4, v0, v1

    const/4 v1, 0x4

    const-string v4, "/data/local/bin/"

    aput-object v4, v0, v1

    const/4 v1, 0x5

    const-string v4, "/system/sd/xbin/"

    aput-object v4, v0, v1

    const/4 v1, 0x6

    const-string v4, "/system/bin/failsafe/"

    aput-object v4, v0, v1

    const/4 v1, 0x7

    const-string v4, "/data/local/"

    aput-object v4, v0, v1

    .line 34
    .local v0, "places":[Ljava/lang/String;
    :try_start_0
    array-length v1, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_1

    aget-object v5, v0, v4

    .line 35
    .local v5, "where":Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "su"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_0

    .line 36
    return v3

    .line 34
    .end local v5    # "where":Ljava/lang/String;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 41
    :cond_1
    goto :goto_1

    .line 38
    :catchall_0
    move-exception v1

    .line 42
    :goto_1
    return v2
.end method
