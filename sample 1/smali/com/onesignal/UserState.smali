.class abstract Lcom/onesignal/UserState;
.super Ljava/lang/Object;
.source "UserState.java"


# static fields
.field public static final DEVICE_TYPE_ANDROID:I = 0x1

.field public static final DEVICE_TYPE_EMAIL:I = 0xb

.field public static final DEVICE_TYPE_FIREOS:I = 0x2

.field public static final DEVICE_TYPE_HUAWEI:I = 0xd

.field private static final LOCATION_FIELDS:[Ljava/lang/String;

.field private static final LOCATION_FIELDS_SET:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final PUSH_STATUS_FIREBASE_FCM_ERROR_IOEXCEPTION:I = -0xb

.field static final PUSH_STATUS_FIREBASE_FCM_ERROR_MISC_EXCEPTION:I = -0xc

.field static final PUSH_STATUS_FIREBASE_FCM_ERROR_SERVICE_NOT_AVAILABLE:I = -0x9

.field static final PUSH_STATUS_FIREBASE_FCM_INIT_ERROR:I = -0x8

.field public static final PUSH_STATUS_HMS_API_EXCEPTION_OTHER:I = -0x1b

.field public static final PUSH_STATUS_HMS_ARGUMENTS_INVALID:I = -0x1a

.field public static final PUSH_STATUS_HMS_TOKEN_TIMEOUT:I = -0x19

.field static final PUSH_STATUS_INVALID_FCM_SENDER_ID:I = -0x6

.field static final PUSH_STATUS_MISSING_ANDROID_SUPPORT_LIBRARY:I = -0x3

.field static final PUSH_STATUS_MISSING_FIREBASE_FCM_LIBRARY:I = -0x4

.field public static final PUSH_STATUS_MISSING_HMS_PUSHKIT_LIBRARY:I = -0x1c

.field static final PUSH_STATUS_NO_PERMISSION:I = 0x0

.field static final PUSH_STATUS_OUTDATED_ANDROID_SUPPORT_LIBRARY:I = -0x5

.field static final PUSH_STATUS_OUTDATED_GOOGLE_PLAY_SERVICES_APP:I = -0x7

.field public static final PUSH_STATUS_SUBSCRIBED:I = 0x1

.field static final PUSH_STATUS_UNSUBSCRIBE:I = -0x2

.field private static final syncLock:Ljava/lang/Object;


# instance fields
.field dependValues:Lorg/json/JSONObject;

.field private persistKey:Ljava/lang/String;

.field syncValues:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 39
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "lat"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "long"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "loc_acc"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "loc_type"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "loc_bg"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "loc_time_stamp"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "ad_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/onesignal/UserState;->LOCATION_FIELDS:[Ljava/lang/String;

    .line 40
    new-instance v1, Ljava/util/HashSet;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v1, Lcom/onesignal/UserState;->LOCATION_FIELDS_SET:Ljava/util/Set;

    .line 43
    new-instance v0, Lcom/onesignal/UserState$1;

    invoke-direct {v0}, Lcom/onesignal/UserState$1;-><init>()V

    sput-object v0, Lcom/onesignal/UserState;->syncLock:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "inPersistKey"    # Ljava/lang/String;
    .param p2, "load"    # Z

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/onesignal/UserState;->persistKey:Ljava/lang/String;

    .line 51
    if-eqz p2, :cond_0

    .line 52
    invoke-direct {p0}, Lcom/onesignal/UserState;->loadState()V

    goto :goto_0

    .line 54
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/onesignal/UserState;->dependValues:Lorg/json/JSONObject;

    .line 55
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/onesignal/UserState;->syncValues:Lorg/json/JSONObject;

    .line 57
    :goto_0
    return-void
.end method

.method private static generateJsonDiff(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/util/Set;)Lorg/json/JSONObject;
    .locals 2
    .param p0, "cur"    # Lorg/json/JSONObject;
    .param p1, "changedTo"    # Lorg/json/JSONObject;
    .param p2, "baseOutput"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Lorg/json/JSONObject;",
            "Lorg/json/JSONObject;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .line 259
    .local p3, "includeFields":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v0, Lcom/onesignal/UserState;->syncLock:Ljava/lang/Object;

    monitor-enter v0

    .line 260
    :try_start_0
    invoke-static {p0, p1, p2, p3}, Lcom/onesignal/JSONUtils;->generateJsonDiff(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/util/Set;)Lorg/json/JSONObject;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 261
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getGroupChangeFields(Lcom/onesignal/UserState;)Ljava/util/Set;
    .locals 7
    .param p1, "changedTo"    # Lcom/onesignal/UserState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onesignal/UserState;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 80
    const-string v0, "loc_bg"

    const-string v1, "loc_time_stamp"

    :try_start_0
    iget-object v2, p0, Lcom/onesignal/UserState;->dependValues:Lorg/json/JSONObject;

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    iget-object v4, p1, Lcom/onesignal/UserState;->dependValues:Lorg/json/JSONObject;

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-eqz v6, :cond_0

    .line 81
    iget-object v2, p1, Lcom/onesignal/UserState;->syncValues:Lorg/json/JSONObject;

    iget-object v3, p1, Lcom/onesignal/UserState;->dependValues:Lorg/json/JSONObject;

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 82
    iget-object v0, p1, Lcom/onesignal/UserState;->syncValues:Lorg/json/JSONObject;

    iget-object v2, p1, Lcom/onesignal/UserState;->dependValues:Lorg/json/JSONObject;

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 83
    sget-object v0, Lcom/onesignal/UserState;->LOCATION_FIELDS_SET:Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 85
    :catchall_0
    move-exception v0

    :cond_0
    nop

    .line 87
    const/4 v0, 0x0

    return-object v0
.end method

.method private loadState()V
    .locals 6

    .line 151
    sget-object v0, Lcom/onesignal/OneSignalPrefs;->PREFS_ONESIGNAL:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ONESIGNAL_USERSTATE_DEPENDVALYES_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/onesignal/UserState;->persistKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/onesignal/OneSignalPrefs;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 154
    .local v0, "dependValuesStr":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 155
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iput-object v1, p0, Lcom/onesignal/UserState;->dependValues:Lorg/json/JSONObject;

    .line 158
    const/4 v1, 0x1

    .line 160
    .local v1, "userSubscribePref":Z
    :try_start_0
    iget-object v3, p0, Lcom/onesignal/UserState;->persistKey:Ljava/lang/String;

    const-string v4, "CURRENT_STATE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    .line 161
    sget-object v3, Lcom/onesignal/OneSignalPrefs;->PREFS_ONESIGNAL:Ljava/lang/String;

    const-string v5, "ONESIGNAL_SUBSCRIPTION"

    invoke-static {v3, v5, v4}, Lcom/onesignal/OneSignalPrefs;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    .local v3, "subscribableStatus":I
    goto :goto_0

    .line 164
    .end local v3    # "subscribableStatus":I
    :cond_0
    sget-object v3, Lcom/onesignal/OneSignalPrefs;->PREFS_ONESIGNAL:Ljava/lang/String;

    const-string v5, "ONESIGNAL_SYNCED_SUBSCRIPTION"

    invoke-static {v3, v5, v4}, Lcom/onesignal/OneSignalPrefs;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    .line 167
    .restart local v3    # "subscribableStatus":I
    :goto_0
    const/4 v4, -0x2

    if-ne v3, v4, :cond_1

    .line 168
    const/4 v3, 0x1

    .line 169
    const/4 v1, 0x0

    .line 172
    :cond_1
    iget-object v4, p0, Lcom/onesignal/UserState;->dependValues:Lorg/json/JSONObject;

    const-string v5, "subscribableStatus"

    invoke-virtual {v4, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 173
    iget-object v4, p0, Lcom/onesignal/UserState;->dependValues:Lorg/json/JSONObject;

    const-string v5, "userSubscribePref"

    invoke-virtual {v4, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    nop

    .end local v1    # "userSubscribePref":Z
    .end local v3    # "subscribableStatus":I
    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_1

    .line 178
    :cond_2
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/onesignal/UserState;->dependValues:Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 181
    goto :goto_1

    .line 179
    :catch_1
    move-exception v1

    .line 180
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 184
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_1
    sget-object v1, Lcom/onesignal/OneSignalPrefs;->PREFS_ONESIGNAL:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ONESIGNAL_USERSTATE_SYNCVALYES_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/onesignal/UserState;->persistKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2}, Lcom/onesignal/OneSignalPrefs;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 187
    .local v1, "syncValuesStr":Ljava/lang/String;
    if-nez v1, :cond_3

    .line 188
    :try_start_2
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    iput-object v3, p0, Lcom/onesignal/UserState;->syncValues:Lorg/json/JSONObject;

    .line 189
    sget-object v3, Lcom/onesignal/OneSignalPrefs;->PREFS_ONESIGNAL:Ljava/lang/String;

    const-string v4, "GT_REGISTRATION_ID"

    invoke-static {v3, v4, v2}, Lcom/onesignal/OneSignalPrefs;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 191
    .local v2, "gtRegistrationId":Ljava/lang/String;
    iget-object v3, p0, Lcom/onesignal/UserState;->syncValues:Lorg/json/JSONObject;

    const-string v4, "identifier"

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 192
    nop

    .end local v2    # "gtRegistrationId":Ljava/lang/String;
    goto :goto_2

    .line 194
    :cond_3
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/onesignal/UserState;->syncValues:Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 197
    :goto_2
    goto :goto_3

    .line 195
    :catch_2
    move-exception v2

    .line 196
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 198
    .end local v2    # "e":Lorg/json/JSONException;
    :goto_3
    return-void
.end method


# virtual methods
.method protected abstract addDependFields()V
.end method

.method clearLocation()V
    .locals 5

    .line 105
    const-string v0, "loc_time_stamp"

    const-string v1, "loc_bg"

    :try_start_0
    iget-object v2, p0, Lcom/onesignal/UserState;->syncValues:Lorg/json/JSONObject;

    const-string v3, "lat"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 106
    iget-object v2, p0, Lcom/onesignal/UserState;->syncValues:Lorg/json/JSONObject;

    const-string v3, "long"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 107
    iget-object v2, p0, Lcom/onesignal/UserState;->syncValues:Lorg/json/JSONObject;

    const-string v3, "loc_acc"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 108
    iget-object v2, p0, Lcom/onesignal/UserState;->syncValues:Lorg/json/JSONObject;

    const-string v3, "loc_type"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 110
    iget-object v2, p0, Lcom/onesignal/UserState;->syncValues:Lorg/json/JSONObject;

    invoke-virtual {v2, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 111
    iget-object v2, p0, Lcom/onesignal/UserState;->syncValues:Lorg/json/JSONObject;

    invoke-virtual {v2, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 113
    iget-object v2, p0, Lcom/onesignal/UserState;->dependValues:Lorg/json/JSONObject;

    invoke-virtual {v2, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 114
    iget-object v1, p0, Lcom/onesignal/UserState;->dependValues:Lorg/json/JSONObject;

    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    goto :goto_0

    .line 115
    :catch_0
    move-exception v0

    .line 116
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 118
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_0
    return-void
.end method

.method deepClone(Ljava/lang/String;)Lcom/onesignal/UserState;
    .locals 3
    .param p1, "persistKey"    # Ljava/lang/String;

    .line 62
    invoke-virtual {p0, p1}, Lcom/onesignal/UserState;->newInstance(Ljava/lang/String;)Lcom/onesignal/UserState;

    move-result-object v0

    .line 65
    .local v0, "clonedUserState":Lcom/onesignal/UserState;
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/onesignal/UserState;->dependValues:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/onesignal/UserState;->dependValues:Lorg/json/JSONObject;

    .line 66
    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/onesignal/UserState;->syncValues:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/onesignal/UserState;->syncValues:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    goto :goto_0

    .line 67
    :catch_0
    move-exception v1

    .line 68
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 71
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_0
    return-object v0
.end method

.method generateJsonDiff(Lcom/onesignal/UserState;Z)Lorg/json/JSONObject;
    .locals 7
    .param p1, "newState"    # Lcom/onesignal/UserState;
    .param p2, "isSessionCall"    # Z

    .line 121
    const-string v0, "email_auth_hash"

    const-string v1, "app_id"

    invoke-virtual {p0}, Lcom/onesignal/UserState;->addDependFields()V

    invoke-virtual {p1}, Lcom/onesignal/UserState;->addDependFields()V

    .line 122
    invoke-direct {p0, p1}, Lcom/onesignal/UserState;->getGroupChangeFields(Lcom/onesignal/UserState;)Ljava/util/Set;

    move-result-object v2

    .line 123
    .local v2, "includeFields":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/onesignal/UserState;->syncValues:Lorg/json/JSONObject;

    iget-object v4, p1, Lcom/onesignal/UserState;->syncValues:Lorg/json/JSONObject;

    const/4 v5, 0x0

    invoke-static {v3, v4, v5, v2}, Lcom/onesignal/UserState;->generateJsonDiff(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/util/Set;)Lorg/json/JSONObject;

    move-result-object v3

    .line 125
    .local v3, "sendJson":Lorg/json/JSONObject;
    if-nez p2, :cond_0

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "{}"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 126
    return-object v5

    .line 130
    :cond_0
    :try_start_0
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 131
    iget-object v4, p0, Lcom/onesignal/UserState;->syncValues:Lorg/json/JSONObject;

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 132
    :cond_1
    iget-object v1, p0, Lcom/onesignal/UserState;->syncValues:Lorg/json/JSONObject;

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 133
    iget-object v1, p0, Lcom/onesignal/UserState;->syncValues:Lorg/json/JSONObject;

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    :cond_2
    goto :goto_0

    .line 134
    :catch_0
    move-exception v0

    .line 135
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 138
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_0
    return-object v3
.end method

.method abstract isSubscribed()Z
.end method

.method mergeTags(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 7
    .param p1, "inSyncValues"    # Lorg/json/JSONObject;
    .param p2, "omitKeys"    # Lorg/json/JSONObject;

    .line 223
    sget-object v0, Lcom/onesignal/UserState;->syncLock:Ljava/lang/Object;

    monitor-enter v0

    .line 224
    :try_start_0
    const-string v1, "tags"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 226
    iget-object v1, p0, Lcom/onesignal/UserState;->syncValues:Lorg/json/JSONObject;

    const-string v2, "tags"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_0

    .line 228
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/onesignal/UserState;->syncValues:Lorg/json/JSONObject;

    const-string v3, "tags"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .local v1, "newTags":Lorg/json/JSONObject;
    goto :goto_0

    .line 229
    .end local v1    # "newTags":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 230
    .local v1, "e":Lorg/json/JSONException;
    :try_start_2
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    move-object v1, v2

    .line 231
    .local v1, "newTags":Lorg/json/JSONObject;
    :goto_0
    goto :goto_1

    .line 234
    .end local v1    # "newTags":Lorg/json/JSONObject;
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 236
    .restart local v1    # "newTags":Lorg/json/JSONObject;
    :goto_1
    const-string v2, "tags"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 237
    .local v2, "curTags":Lorg/json/JSONObject;
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 241
    .local v3, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1
    :goto_2
    :try_start_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 242
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 243
    .local v4, "key":Ljava/lang/String;
    const-string v5, ""

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 244
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_2

    .line 245
    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 246
    :cond_3
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    .line 249
    .end local v4    # "key":Ljava/lang/String;
    :cond_4
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "{}"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 250
    iget-object v4, p0, Lcom/onesignal/UserState;->syncValues:Lorg/json/JSONObject;

    const-string v5, "tags"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_3

    .line 252
    :cond_5
    iget-object v4, p0, Lcom/onesignal/UserState;->syncValues:Lorg/json/JSONObject;

    const-string v5, "tags"

    invoke-virtual {v4, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    .line 253
    :catchall_0
    move-exception v4

    .line 255
    .end local v1    # "newTags":Lorg/json/JSONObject;
    .end local v2    # "curTags":Lorg/json/JSONObject;
    .end local v3    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_6
    :goto_3
    :try_start_4
    monitor-exit v0

    .line 256
    return-void

    .line 255
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_5

    :goto_4
    throw v1

    :goto_5
    goto :goto_4
.end method

.method abstract newInstance(Ljava/lang/String;)Lcom/onesignal/UserState;
.end method

.method persistState()V
    .locals 4

    .line 201
    sget-object v0, Lcom/onesignal/UserState;->syncLock:Ljava/lang/Object;

    monitor-enter v0

    .line 202
    :try_start_0
    sget-object v1, Lcom/onesignal/OneSignalPrefs;->PREFS_ONESIGNAL:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ONESIGNAL_USERSTATE_SYNCVALYES_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/onesignal/UserState;->persistKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/onesignal/UserState;->syncValues:Lorg/json/JSONObject;

    .line 203
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    .line 202
    invoke-static {v1, v2, v3}, Lcom/onesignal/OneSignalPrefs;->saveString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    sget-object v1, Lcom/onesignal/OneSignalPrefs;->PREFS_ONESIGNAL:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ONESIGNAL_USERSTATE_DEPENDVALYES_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/onesignal/UserState;->persistKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/onesignal/UserState;->dependValues:Lorg/json/JSONObject;

    .line 205
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    .line 204
    invoke-static {v1, v2, v3}, Lcom/onesignal/OneSignalPrefs;->saveString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    monitor-exit v0

    .line 207
    return-void

    .line 206
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method persistStateAfterSync(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "inDependValues"    # Lorg/json/JSONObject;
    .param p2, "inSyncValues"    # Lorg/json/JSONObject;

    .line 210
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 211
    iget-object v1, p0, Lcom/onesignal/UserState;->dependValues:Lorg/json/JSONObject;

    invoke-static {v1, p1, v1, v0}, Lcom/onesignal/UserState;->generateJsonDiff(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/util/Set;)Lorg/json/JSONObject;

    .line 213
    :cond_0
    if-eqz p2, :cond_1

    .line 214
    iget-object v1, p0, Lcom/onesignal/UserState;->syncValues:Lorg/json/JSONObject;

    invoke-static {v1, p2, v1, v0}, Lcom/onesignal/UserState;->generateJsonDiff(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/util/Set;)Lorg/json/JSONObject;

    .line 215
    invoke-virtual {p0, p2, v0}, Lcom/onesignal/UserState;->mergeTags(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 218
    :cond_1
    if-nez p1, :cond_2

    if-eqz p2, :cond_3

    .line 219
    :cond_2
    invoke-virtual {p0}, Lcom/onesignal/UserState;->persistState()V

    .line 220
    :cond_3
    return-void
.end method

.method set(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 143
    :try_start_0
    iget-object v0, p0, Lcom/onesignal/UserState;->syncValues:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    goto :goto_0

    .line 144
    :catch_0
    move-exception v0

    .line 145
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 147
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_0
    return-void
.end method

.method setLocation(Lcom/onesignal/LocationController$LocationPoint;)V
    .locals 3
    .param p1, "point"    # Lcom/onesignal/LocationController$LocationPoint;

    .line 92
    :try_start_0
    iget-object v0, p0, Lcom/onesignal/UserState;->syncValues:Lorg/json/JSONObject;

    const-string v1, "lat"

    iget-object v2, p1, Lcom/onesignal/LocationController$LocationPoint;->lat:Ljava/lang/Double;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 93
    iget-object v0, p0, Lcom/onesignal/UserState;->syncValues:Lorg/json/JSONObject;

    const-string v1, "long"

    iget-object v2, p1, Lcom/onesignal/LocationController$LocationPoint;->log:Ljava/lang/Double;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 94
    iget-object v0, p0, Lcom/onesignal/UserState;->syncValues:Lorg/json/JSONObject;

    const-string v1, "loc_acc"

    iget-object v2, p1, Lcom/onesignal/LocationController$LocationPoint;->accuracy:Ljava/lang/Float;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 95
    iget-object v0, p0, Lcom/onesignal/UserState;->syncValues:Lorg/json/JSONObject;

    const-string v1, "loc_type"

    iget-object v2, p1, Lcom/onesignal/LocationController$LocationPoint;->type:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 96
    iget-object v0, p0, Lcom/onesignal/UserState;->dependValues:Lorg/json/JSONObject;

    const-string v1, "loc_bg"

    iget-object v2, p1, Lcom/onesignal/LocationController$LocationPoint;->bg:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 97
    iget-object v0, p0, Lcom/onesignal/UserState;->dependValues:Lorg/json/JSONObject;

    const-string v1, "loc_time_stamp"

    iget-object v2, p1, Lcom/onesignal/LocationController$LocationPoint;->timeStamp:Ljava/lang/Long;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    goto :goto_0

    .line 98
    :catch_0
    move-exception v0

    .line 99
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 101
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_0
    return-void
.end method
