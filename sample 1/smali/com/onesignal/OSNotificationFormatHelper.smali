.class Lcom/onesignal/OSNotificationFormatHelper;
.super Ljava/lang/Object;
.source "OSNotificationFormatHelper.java"


# static fields
.field public static final PAYLOAD_OS_NOTIFICATION_ID:Ljava/lang/String; = "i"

.field public static final PAYLOAD_OS_ROOT_CUSTOM:Ljava/lang/String; = "custom"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getOSNotificationIdFromBundle(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 4
    .param p0, "bundle"    # Landroid/os/Bundle;

    .line 31
    const/4 v0, 0x0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 34
    :cond_0
    const-string v1, "custom"

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 35
    .local v1, "custom":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 36
    invoke-static {v1}, Lcom/onesignal/OSNotificationFormatHelper;->getOSNotificationIdFromJsonString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 38
    :cond_1
    sget-object v2, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v3, "Not a OneSignal formatted Bundle. No \'custom\' field in the bundle."

    invoke-static {v2, v3}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 39
    return-object v0

    .line 32
    .end local v1    # "custom":Ljava/lang/String;
    :cond_2
    :goto_0
    return-object v0
.end method

.method static getOSNotificationIdFromJson(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 2
    .param p0, "jsonObject"    # Lorg/json/JSONObject;

    .line 44
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 45
    return-object v0

    .line 47
    :cond_0
    const-string v1, "custom"

    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 48
    .local v0, "custom":Ljava/lang/String;
    invoke-static {v0}, Lcom/onesignal/OSNotificationFormatHelper;->getOSNotificationIdFromJsonString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static getOSNotificationIdFromJsonString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "jsonStr"    # Ljava/lang/String;

    .line 54
    const-string v0, "i"

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 55
    .local v2, "customJSON":Lorg/json/JSONObject;
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 56
    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 58
    :cond_0
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v3, "Not a OneSignal formatted JSON string. No \'i\' field in custom."

    invoke-static {v0, v3}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    .end local v2    # "customJSON":Lorg/json/JSONObject;
    goto :goto_0

    .line 59
    :catch_0
    move-exception v0

    .line 60
    .local v0, "e":Lorg/json/JSONException;
    sget-object v2, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v3, "Not a OneSignal formatted JSON String, error parsing string as JSON."

    invoke-static {v2, v3}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 62
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_0
    return-object v1
.end method

.method static isOneSignalBundle(Landroid/os/Bundle;)Z
    .locals 1
    .param p0, "bundle"    # Landroid/os/Bundle;

    .line 26
    invoke-static {p0}, Lcom/onesignal/OSNotificationFormatHelper;->getOSNotificationIdFromBundle(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static isOneSignalIntent(Landroid/content/Intent;)Z
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;

    .line 18
    if-nez p0, :cond_0

    .line 19
    const/4 v0, 0x0

    return v0

    .line 21
    :cond_0
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 22
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-static {v0}, Lcom/onesignal/OSNotificationFormatHelper;->isOneSignalBundle(Landroid/os/Bundle;)Z

    move-result v1

    return v1
.end method
