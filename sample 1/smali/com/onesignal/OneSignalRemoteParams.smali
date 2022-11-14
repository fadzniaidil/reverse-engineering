.class public Lcom/onesignal/OneSignalRemoteParams;
.super Ljava/lang/Object;
.source "OneSignalRemoteParams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onesignal/OneSignalRemoteParams$CallBack;,
        Lcom/onesignal/OneSignalRemoteParams$Params;,
        Lcom/onesignal/OneSignalRemoteParams$InfluenceParams;,
        Lcom/onesignal/OneSignalRemoteParams$FCMParams;
    }
.end annotation


# static fields
.field public static final DEFAULT_INDIRECT_ATTRIBUTION_WINDOW:I = 0x5a0

.field public static final DEFAULT_NOTIFICATION_LIMIT:I = 0xa

.field private static final DIRECT_PARAM:Ljava/lang/String; = "direct"

.field private static final ENABLED_PARAM:Ljava/lang/String; = "enabled"

.field private static final FCM_API_KEY:Ljava/lang/String; = "api_key"

.field private static final FCM_APP_ID:Ljava/lang/String; = "app_id"

.field private static final FCM_PARENT_PARAM:Ljava/lang/String; = "fcm"

.field private static final FCM_PROJECT_ID:Ljava/lang/String; = "project_id"

.field private static final IAM_ATTRIBUTION_PARAM:Ljava/lang/String; = "in_app_message_attribution"

.field private static final INCREASE_BETWEEN_RETRIES:I = 0x2710

.field private static final INDIRECT_PARAM:Ljava/lang/String; = "indirect"

.field private static final MAX_WAIT_BETWEEN_RETRIES:I = 0x15f90

.field private static final MIN_WAIT_BETWEEN_RETRIES:I = 0x7530

.field private static final NOTIFICATION_ATTRIBUTION_PARAM:Ljava/lang/String; = "notification_attribution"

.field private static final OUTCOMES_V2_SERVICE_PARAM:Ljava/lang/String; = "v2_enabled"

.field private static final OUTCOME_PARAM:Ljava/lang/String; = "outcomes"

.field private static final UNATTRIBUTED_PARAM:Ljava/lang/String; = "unattributed"

.field private static androidParamsRetries:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 92
    const/4 v0, 0x0

    sput v0, Lcom/onesignal/OneSignalRemoteParams;->androidParamsRetries:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .line 12
    sget v0, Lcom/onesignal/OneSignalRemoteParams;->androidParamsRetries:I

    return v0
.end method

.method static synthetic access$008()I
    .locals 2

    .line 12
    sget v0, Lcom/onesignal/OneSignalRemoteParams;->androidParamsRetries:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/onesignal/OneSignalRemoteParams;->androidParamsRetries:I

    return v0
.end method

.method static synthetic access$100(Ljava/lang/String;Lcom/onesignal/OneSignalRemoteParams$CallBack;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Lcom/onesignal/OneSignalRemoteParams$CallBack;

    .line 12
    invoke-static {p0, p1}, Lcom/onesignal/OneSignalRemoteParams;->processJson(Ljava/lang/String;Lcom/onesignal/OneSignalRemoteParams$CallBack;)V

    return-void
.end method

.method static synthetic access$200(Lorg/json/JSONObject;Lcom/onesignal/OneSignalRemoteParams$InfluenceParams;)V
    .locals 0
    .param p0, "x0"    # Lorg/json/JSONObject;
    .param p1, "x1"    # Lcom/onesignal/OneSignalRemoteParams$InfluenceParams;

    .line 12
    invoke-static {p0, p1}, Lcom/onesignal/OneSignalRemoteParams;->processOutcomeJson(Lorg/json/JSONObject;Lcom/onesignal/OneSignalRemoteParams$InfluenceParams;)V

    return-void
.end method

.method static makeAndroidParamsRequest(Lcom/onesignal/OneSignalRemoteParams$CallBack;)V
    .locals 5
    .param p0, "callBack"    # Lcom/onesignal/OneSignalRemoteParams$CallBack;

    .line 116
    new-instance v0, Lcom/onesignal/OneSignalRemoteParams$1;

    invoke-direct {v0, p0}, Lcom/onesignal/OneSignalRemoteParams$1;-><init>(Lcom/onesignal/OneSignalRemoteParams$CallBack;)V

    .line 144
    .local v0, "responseHandler":Lcom/onesignal/OneSignalRestClient$ResponseHandler;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "apps/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/onesignal/OneSignal;->appId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/android_params.js"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 145
    .local v1, "params_url":Ljava/lang/String;
    invoke-static {}, Lcom/onesignal/OneSignal;->getUserId()Ljava/lang/String;

    move-result-object v2

    .line 146
    .local v2, "userId":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 147
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "?player_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 149
    :cond_0
    sget-object v3, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v4, "Starting request to get Android parameters."

    invoke-static {v3, v4}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 150
    const-string v3, "CACHE_KEY_REMOTE_PARAMS"

    invoke-static {v1, v0, v3}, Lcom/onesignal/OneSignalRestClient;->get(Ljava/lang/String;Lcom/onesignal/OneSignalRestClient$ResponseHandler;Ljava/lang/String;)V

    .line 151
    return-void
.end method

.method private static processJson(Ljava/lang/String;Lcom/onesignal/OneSignalRemoteParams$CallBack;)V
    .locals 4
    .param p0, "json"    # Ljava/lang/String;
    .param p1, "callBack"    # Lcom/onesignal/OneSignalRemoteParams$CallBack;

    .line 156
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    .local v0, "responseJson":Lorg/json/JSONObject;
    nop

    .line 164
    new-instance v1, Lcom/onesignal/OneSignalRemoteParams$2;

    invoke-direct {v1, v0}, Lcom/onesignal/OneSignalRemoteParams$2;-><init>(Lorg/json/JSONObject;)V

    .line 188
    .local v1, "params":Lcom/onesignal/OneSignalRemoteParams$Params;
    invoke-interface {p1, v1}, Lcom/onesignal/OneSignalRemoteParams$CallBack;->complete(Lcom/onesignal/OneSignalRemoteParams$Params;)V

    .line 189
    return-void

    .line 158
    .end local v0    # "responseJson":Lorg/json/JSONObject;
    .end local v1    # "params":Lcom/onesignal/OneSignalRemoteParams$Params;
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 159
    .local v0, "t":Ljava/lang/Exception;
    :goto_0
    sget-object v1, Lcom/onesignal/OneSignal$LOG_LEVEL;->FATAL:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v2, "Error parsing android_params!: "

    invoke-static {v1, v2, v0}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 160
    sget-object v1, Lcom/onesignal/OneSignal$LOG_LEVEL;->FATAL:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Response that errored from android_params!: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 161
    return-void
.end method

.method private static processOutcomeJson(Lorg/json/JSONObject;Lcom/onesignal/OneSignalRemoteParams$InfluenceParams;)V
    .locals 8
    .param p0, "outcomeJson"    # Lorg/json/JSONObject;
    .param p1, "influenceParams"    # Lcom/onesignal/OneSignalRemoteParams$InfluenceParams;

    .line 192
    const-string v0, "v2_enabled"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 193
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p1, Lcom/onesignal/OneSignalRemoteParams$InfluenceParams;->outcomesV2ServiceEnabled:Z

    .line 195
    :cond_0
    const-string v0, "direct"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "enabled"

    if-eqz v1, :cond_1

    .line 196
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 197
    .local v0, "direct":Lorg/json/JSONObject;
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p1, Lcom/onesignal/OneSignalRemoteParams$InfluenceParams;->directEnabled:Z

    .line 199
    .end local v0    # "direct":Lorg/json/JSONObject;
    :cond_1
    const-string v0, "indirect"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 200
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 201
    .local v0, "indirect":Lorg/json/JSONObject;
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p1, Lcom/onesignal/OneSignalRemoteParams$InfluenceParams;->indirectEnabled:Z

    .line 203
    const-string v1, "notification_attribution"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    const/16 v4, 0xa

    const-string v5, "limit"

    const/16 v6, 0x5a0

    const-string v7, "minutes_since_displayed"

    if-eqz v3, :cond_2

    .line 204
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 205
    .local v1, "indirectNotificationAttribution":Lorg/json/JSONObject;
    invoke-virtual {v1, v7, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p1, Lcom/onesignal/OneSignalRemoteParams$InfluenceParams;->indirectNotificationAttributionWindow:I

    .line 206
    invoke-virtual {v1, v5, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p1, Lcom/onesignal/OneSignalRemoteParams$InfluenceParams;->notificationLimit:I

    .line 209
    .end local v1    # "indirectNotificationAttribution":Lorg/json/JSONObject;
    :cond_2
    const-string v1, "in_app_message_attribution"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 210
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 211
    .local v1, "indirectIAMAttribution":Lorg/json/JSONObject;
    invoke-virtual {v1, v7, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p1, Lcom/onesignal/OneSignalRemoteParams$InfluenceParams;->indirectIAMAttributionWindow:I

    .line 212
    invoke-virtual {v1, v5, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p1, Lcom/onesignal/OneSignalRemoteParams$InfluenceParams;->iamLimit:I

    .line 215
    .end local v0    # "indirect":Lorg/json/JSONObject;
    .end local v1    # "indirectIAMAttribution":Lorg/json/JSONObject;
    :cond_3
    const-string v0, "unattributed"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 216
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 217
    .local v0, "unattributed":Lorg/json/JSONObject;
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p1, Lcom/onesignal/OneSignalRemoteParams$InfluenceParams;->unattributedEnabled:Z

    .line 219
    .end local v0    # "unattributed":Lorg/json/JSONObject;
    :cond_4
    return-void
.end method
