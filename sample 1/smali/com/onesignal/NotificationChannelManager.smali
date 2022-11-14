.class Lcom/onesignal/NotificationChannelManager;
.super Ljava/lang/Object;
.source "NotificationChannelManager.java"


# static fields
.field private static final DEFAULT_CHANNEL_ID:Ljava/lang/String; = "fcm_fallback_notification_channel"

.field private static final RESTORE_CHANNEL_ID:Ljava/lang/String; = "restored_OS_notifications"

.field private static final hexPattern:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 61
    const-string v0, "^([A-Fa-f0-9]{8})$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/onesignal/NotificationChannelManager;->hexPattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createChannel(Landroid/content/Context;Landroid/app/NotificationManager;Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "notificationManager"    # Landroid/app/NotificationManager;
    .param p2, "payload"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 101
    const-string v0, "chnl"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 102
    .local v0, "objChannelPayload":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 103
    .local v1, "channelPayload":Lorg/json/JSONObject;
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 104
    new-instance v2, Lorg/json/JSONObject;

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    goto :goto_0

    .line 106
    :cond_0
    move-object v1, v0

    check-cast v1, Lorg/json/JSONObject;

    .line 108
    :goto_0
    const-string v2, "id"

    const-string v3, "fcm_fallback_notification_channel"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 110
    .local v2, "channel_id":Ljava/lang/String;
    const-string v3, "miscellaneous"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 111
    const-string v2, "fcm_fallback_notification_channel"

    .line 113
    :cond_1
    move-object v3, v1

    .line 114
    .local v3, "payloadWithText":Lorg/json/JSONObject;
    const-string v4, "langs"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 115
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 116
    .local v4, "langList":Lorg/json/JSONObject;
    invoke-static {}, Lcom/onesignal/OSUtils;->getCorrectedLanguage()Ljava/lang/String;

    move-result-object v5

    .line 117
    .local v5, "deviceLanguage":Ljava/lang/String;
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 118
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 121
    .end local v4    # "langList":Lorg/json/JSONObject;
    .end local v5    # "deviceLanguage":Ljava/lang/String;
    :cond_2
    const-string v4, "nm"

    const-string v5, "Miscellaneous"

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 123
    .local v4, "channel_name":Ljava/lang/String;
    const/4 v5, 0x6

    const-string v6, "pri"

    invoke-virtual {p2, v6, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    invoke-static {v5}, Lcom/onesignal/NotificationChannelManager;->priorityToImportance(I)I

    move-result v5

    .line 124
    .local v5, "importance":I
    new-instance v6, Landroid/app/NotificationChannel;

    invoke-direct {v6, v2, v4, v5}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 125
    .local v6, "channel":Landroid/app/NotificationChannel;
    const-string v7, "dscr"

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    .line 127
    const-string v7, "grp_id"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 128
    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 129
    .local v7, "group_id":Ljava/lang/String;
    const-string v9, "grp_nm"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 130
    .local v9, "group_name":Ljava/lang/CharSequence;
    new-instance v10, Landroid/app/NotificationChannelGroup;

    invoke-direct {v10, v7, v9}, Landroid/app/NotificationChannelGroup;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    invoke-virtual {p1, v10}, Landroid/app/NotificationManager;->createNotificationChannelGroup(Landroid/app/NotificationChannelGroup;)V

    .line 131
    invoke-virtual {v6, v7}, Landroid/app/NotificationChannel;->setGroup(Ljava/lang/String;)V

    .line 134
    .end local v7    # "group_id":Ljava/lang/String;
    .end local v9    # "group_name":Ljava/lang/CharSequence;
    :cond_3
    const-string v7, "ledc"

    invoke-virtual {p2, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 135
    invoke-virtual {p2, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 136
    .local v7, "ledc":Ljava/lang/String;
    sget-object v9, Lcom/onesignal/NotificationChannelManager;->hexPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v9, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    .line 139
    .local v9, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v9}, Ljava/util/regex/Matcher;->matches()Z

    move-result v10

    if-nez v10, :cond_4

    .line 140
    sget-object v10, Lcom/onesignal/OneSignal$LOG_LEVEL;->WARN:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v11, "OneSignal LED Color Settings: ARGB Hex value incorrect format (E.g: FF9900FF)"

    invoke-static {v10, v11}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 141
    const-string v7, "FFFFFFFF"

    .line 145
    :cond_4
    :try_start_0
    new-instance v10, Ljava/math/BigInteger;

    const/16 v11, 0x10

    invoke-direct {v10, v7, v11}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 146
    .local v10, "ledColor":Ljava/math/BigInteger;
    invoke-virtual {v10}, Ljava/math/BigInteger;->intValue()I

    move-result v11

    invoke-virtual {v6, v11}, Landroid/app/NotificationChannel;->setLightColor(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    goto :goto_1

    .line 147
    .end local v10    # "ledColor":Ljava/math/BigInteger;
    :catchall_0
    move-exception v10

    .line 148
    .local v10, "t":Ljava/lang/Throwable;
    sget-object v11, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v12, "Couldn\'t convert ARGB Hex value to BigInteger:"

    invoke-static {v11, v12, v10}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 151
    .end local v7    # "ledc":Ljava/lang/String;
    .end local v9    # "matcher":Ljava/util/regex/Matcher;
    .end local v10    # "t":Ljava/lang/Throwable;
    :cond_5
    :goto_1
    const-string v7, "led"

    const/4 v9, 0x1

    invoke-virtual {p2, v7, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    const/4 v10, 0x0

    if-ne v7, v9, :cond_6

    const/4 v7, 0x1

    goto :goto_2

    :cond_6
    const/4 v7, 0x0

    :goto_2
    invoke-virtual {v6, v7}, Landroid/app/NotificationChannel;->enableLights(Z)V

    .line 153
    const-string v7, "vib_pt"

    invoke-virtual {p2, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 154
    invoke-static {p2}, Lcom/onesignal/OSUtils;->parseVibrationPattern(Lorg/json/JSONObject;)[J

    move-result-object v7

    .line 155
    .local v7, "vibrationPattern":[J
    if-eqz v7, :cond_7

    .line 156
    invoke-virtual {v6, v7}, Landroid/app/NotificationChannel;->setVibrationPattern([J)V

    .line 158
    .end local v7    # "vibrationPattern":[J
    :cond_7
    const-string v7, "vib"

    invoke-virtual {p2, v7, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v9, :cond_8

    const/4 v7, 0x1

    goto :goto_3

    :cond_8
    const/4 v7, 0x0

    :goto_3
    invoke-virtual {v6, v7}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    .line 160
    const-string v7, "sound"

    invoke-virtual {p2, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 162
    invoke-virtual {p2, v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 163
    .local v7, "sound":Ljava/lang/String;
    invoke-static {p0, v7}, Lcom/onesignal/OSUtils;->getSoundUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    .line 164
    .local v11, "uri":Landroid/net/Uri;
    if-eqz v11, :cond_9

    .line 165
    invoke-virtual {v6, v11, v8}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    goto :goto_4

    .line 166
    :cond_9
    const-string v12, "null"

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_a

    const-string v12, "nil"

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 167
    :cond_a
    invoke-virtual {v6, v8, v8}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    .line 173
    .end local v7    # "sound":Ljava/lang/String;
    .end local v11    # "uri":Landroid/net/Uri;
    :cond_b
    :goto_4
    const-string v7, "vis"

    invoke-virtual {p2, v7, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    .line 174
    const-string v7, "bdg"

    invoke-virtual {p2, v7, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v9, :cond_c

    const/4 v7, 0x1

    goto :goto_5

    :cond_c
    const/4 v7, 0x0

    :goto_5
    invoke-virtual {v6, v7}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    .line 175
    const-string v7, "bdnd"

    invoke-virtual {p2, v7, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v9, :cond_d

    goto :goto_6

    :cond_d
    const/4 v9, 0x0

    :goto_6
    invoke-virtual {v6, v9}, Landroid/app/NotificationChannel;->setBypassDnd(Z)V

    .line 177
    sget-object v7, Lcom/onesignal/OneSignal$LOG_LEVEL;->VERBOSE:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Creating notification channel with channel:\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Landroid/app/NotificationChannel;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/onesignal/OneSignal;->onesignalLog(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 179
    :try_start_1
    invoke-virtual {p1, v6}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 187
    goto :goto_7

    .line 180
    :catch_0
    move-exception v7

    .line 186
    .local v7, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v7}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 188
    .end local v7    # "e":Ljava/lang/IllegalArgumentException;
    :goto_7
    return-object v2
.end method

.method private static createDefaultChannel(Landroid/app/NotificationManager;)Ljava/lang/String;
    .locals 4
    .param p0, "notificationManager"    # Landroid/app/NotificationManager;

    .line 193
    new-instance v0, Landroid/app/NotificationChannel;

    const-string v1, "fcm_fallback_notification_channel"

    const-string v2, "Miscellaneous"

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 197
    .local v0, "channel":Landroid/app/NotificationChannel;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/NotificationChannel;->enableLights(Z)V

    .line 198
    invoke-virtual {v0, v2}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    .line 199
    invoke-virtual {p0, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 201
    return-object v1
.end method

.method static createNotificationChannel(Lcom/onesignal/NotificationGenerationJob;)Ljava/lang/String;
    .locals 7
    .param p0, "notifJob"    # Lcom/onesignal/NotificationGenerationJob;

    .line 64
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, "fcm_fallback_notification_channel"

    const/16 v2, 0x1a

    if-ge v0, v2, :cond_0

    .line 65
    return-object v1

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/onesignal/NotificationGenerationJob;->context:Landroid/content/Context;

    .line 68
    .local v0, "context":Landroid/content/Context;
    iget-object v2, p0, Lcom/onesignal/NotificationGenerationJob;->jsonPayload:Lorg/json/JSONObject;

    .line 70
    .local v2, "jsonPayload":Lorg/json/JSONObject;
    invoke-static {v0}, Lcom/onesignal/OneSignalNotificationManager;->getNotificationManager(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v3

    .line 72
    .local v3, "notificationManager":Landroid/app/NotificationManager;
    iget-boolean v4, p0, Lcom/onesignal/NotificationGenerationJob;->restoring:Z

    if-eqz v4, :cond_1

    .line 73
    invoke-static {v3}, Lcom/onesignal/NotificationChannelManager;->createRestoreChannel(Landroid/app/NotificationManager;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 76
    :cond_1
    const-string v4, "oth_chnl"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 77
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 78
    .local v4, "otherChannel":Ljava/lang/String;
    invoke-virtual {v3, v4}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 79
    return-object v4

    .line 82
    .end local v4    # "otherChannel":Ljava/lang/String;
    :cond_2
    const-string v4, "chnl"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 83
    invoke-static {v3}, Lcom/onesignal/NotificationChannelManager;->createDefaultChannel(Landroid/app/NotificationManager;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 86
    :cond_3
    :try_start_0
    invoke-static {v0, v3, v2}, Lcom/onesignal/NotificationChannelManager;->createChannel(Landroid/content/Context;Landroid/app/NotificationManager;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 87
    :catch_0
    move-exception v4

    .line 88
    .local v4, "e":Lorg/json/JSONException;
    sget-object v5, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v6, "Could not create notification channel due to JSON payload error!"

    invoke-static {v5, v6, v4}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 91
    .end local v4    # "e":Lorg/json/JSONException;
    return-object v1
.end method

.method private static createRestoreChannel(Landroid/app/NotificationManager;)Ljava/lang/String;
    .locals 4
    .param p0, "notificationManager"    # Landroid/app/NotificationManager;

    .line 206
    new-instance v0, Landroid/app/NotificationChannel;

    const-string v1, "restored_OS_notifications"

    const-string v2, "Restored"

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 210
    .local v0, "channel":Landroid/app/NotificationChannel;
    invoke-virtual {p0, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 212
    return-object v1
.end method

.method private static priorityToImportance(I)I
    .locals 2
    .param p0, "priority"    # I

    .line 245
    const/4 v0, 0x5

    const/16 v1, 0x9

    if-le p0, v1, :cond_0

    .line 246
    return v0

    .line 247
    :cond_0
    const/4 v1, 0x7

    if-le p0, v1, :cond_1

    .line 248
    const/4 v0, 0x4

    return v0

    .line 249
    :cond_1
    const/4 v1, 0x3

    if-le p0, v0, :cond_2

    .line 250
    return v1

    .line 251
    :cond_2
    if-le p0, v1, :cond_3

    .line 252
    const/4 v0, 0x2

    return v0

    .line 253
    :cond_3
    const/4 v0, 0x1

    if-le p0, v0, :cond_4

    .line 254
    return v0

    .line 256
    :cond_4
    const/4 v0, 0x0

    return v0
.end method

.method static processChannelList(Landroid/content/Context;Lorg/json/JSONArray;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "list"    # Lorg/json/JSONArray;

    .line 216
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    .line 217
    return-void

    .line 219
    :cond_0
    if-nez p1, :cond_1

    .line 220
    return-void

    .line 222
    :cond_1
    invoke-static {p0}, Lcom/onesignal/OneSignalNotificationManager;->getNotificationManager(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    .line 224
    .local v0, "notificationManager":Landroid/app/NotificationManager;
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 225
    .local v1, "syncedChannelSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 226
    .local v2, "jsonArraySize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 228
    :try_start_0
    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-static {p0, v0, v4}, Lcom/onesignal/NotificationChannelManager;->createChannel(Landroid/content/Context;Landroid/app/NotificationManager;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    goto :goto_1

    .line 229
    :catch_0
    move-exception v4

    .line 230
    .local v4, "e":Lorg/json/JSONException;
    sget-object v5, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v6, "Could not create notification channel due to JSON payload error!"

    invoke-static {v5, v6, v4}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 226
    .end local v4    # "e":Lorg/json/JSONException;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 236
    .end local v3    # "i":I
    :cond_2
    invoke-virtual {v0}, Landroid/app/NotificationManager;->getNotificationChannels()Ljava/util/List;

    move-result-object v3

    .line 237
    .local v3, "existingChannels":Ljava/util/List;, "Ljava/util/List<Landroid/app/NotificationChannel;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationChannel;

    .line 238
    .local v5, "existingChannel":Landroid/app/NotificationChannel;
    invoke-virtual {v5}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v6

    .line 239
    .local v6, "id":Ljava/lang/String;
    const-string v7, "OS_"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v1, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 240
    invoke-virtual {v0, v6}, Landroid/app/NotificationManager;->deleteNotificationChannel(Ljava/lang/String;)V

    .line 241
    .end local v5    # "existingChannel":Landroid/app/NotificationChannel;
    .end local v6    # "id":Ljava/lang/String;
    :cond_3
    goto :goto_2

    .line 242
    :cond_4
    return-void
.end method
