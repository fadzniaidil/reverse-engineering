.class public Lcom/onesignal/OSNotificationPayload;
.super Ljava/lang/Object;
.source "OSNotificationPayload.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onesignal/OSNotificationPayload$BackgroundImageLayout;,
        Lcom/onesignal/OSNotificationPayload$ActionButton;
    }
.end annotation


# instance fields
.field public actionButtons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onesignal/OSNotificationPayload$ActionButton;",
            ">;"
        }
    .end annotation
.end field

.field public additionalData:Lorg/json/JSONObject;

.field public backgroundImageLayout:Lcom/onesignal/OSNotificationPayload$BackgroundImageLayout;

.field public bigPicture:Ljava/lang/String;

.field public body:Ljava/lang/String;

.field public collapseId:Ljava/lang/String;

.field public fromProjectNumber:Ljava/lang/String;

.field public groupKey:Ljava/lang/String;

.field public groupMessage:Ljava/lang/String;

.field public largeIcon:Ljava/lang/String;

.field public launchURL:Ljava/lang/String;

.field public ledColor:Ljava/lang/String;

.field public lockScreenVisibility:I

.field public notificationID:Ljava/lang/String;

.field public priority:I

.field public rawPayload:Ljava/lang/String;

.field public smallIcon:Ljava/lang/String;

.field public smallIconAccentColor:Ljava/lang/String;

.field public sound:Ljava/lang/String;

.field public templateId:Ljava/lang/String;

.field public templateName:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v0, 0x1

    iput v0, p0, Lcom/onesignal/OSNotificationPayload;->lockScreenVisibility:I

    .line 67
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 5
    .param p1, "jsonObject"    # Lorg/json/JSONObject;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v0, 0x1

    iput v0, p0, Lcom/onesignal/OSNotificationPayload;->lockScreenVisibility:I

    .line 70
    const-string v0, "notificationID"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/onesignal/OSNotificationPayload;->notificationID:Ljava/lang/String;

    .line 71
    const-string v0, "title"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/onesignal/OSNotificationPayload;->title:Ljava/lang/String;

    .line 73
    const-string v0, "body"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/onesignal/OSNotificationPayload;->body:Ljava/lang/String;

    .line 74
    const-string v0, "additionalData"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/onesignal/OSNotificationPayload;->additionalData:Lorg/json/JSONObject;

    .line 75
    const-string v0, "smallIcon"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/onesignal/OSNotificationPayload;->smallIcon:Ljava/lang/String;

    .line 76
    const-string v0, "largeIcon"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/onesignal/OSNotificationPayload;->largeIcon:Ljava/lang/String;

    .line 77
    const-string v0, "bigPicture"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/onesignal/OSNotificationPayload;->bigPicture:Ljava/lang/String;

    .line 78
    const-string v0, "smallIconAccentColor"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/onesignal/OSNotificationPayload;->smallIconAccentColor:Ljava/lang/String;

    .line 79
    const-string v0, "launchURL"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/onesignal/OSNotificationPayload;->launchURL:Ljava/lang/String;

    .line 80
    const-string v0, "sound"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/onesignal/OSNotificationPayload;->sound:Ljava/lang/String;

    .line 81
    const-string v0, "ledColor"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/onesignal/OSNotificationPayload;->ledColor:Ljava/lang/String;

    .line 82
    const-string v0, "lockScreenVisibility"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/onesignal/OSNotificationPayload;->lockScreenVisibility:I

    .line 83
    const-string v0, "groupKey"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/onesignal/OSNotificationPayload;->groupKey:Ljava/lang/String;

    .line 84
    const-string v0, "groupMessage"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/onesignal/OSNotificationPayload;->groupMessage:Ljava/lang/String;

    .line 86
    const-string v0, "actionButtons"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 87
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/onesignal/OSNotificationPayload;->actionButtons:Ljava/util/List;

    .line 88
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 89
    .local v0, "jsonArray":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 90
    iget-object v2, p0, Lcom/onesignal/OSNotificationPayload;->actionButtons:Ljava/util/List;

    new-instance v3, Lcom/onesignal/OSNotificationPayload$ActionButton;

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/onesignal/OSNotificationPayload$ActionButton;-><init>(Lorg/json/JSONObject;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 93
    .end local v0    # "jsonArray":Lorg/json/JSONArray;
    .end local v1    # "i":I
    :cond_0
    const-string v0, "fromProjectNumber"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/onesignal/OSNotificationPayload;->fromProjectNumber:Ljava/lang/String;

    .line 94
    const-string v0, "collapseId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/onesignal/OSNotificationPayload;->collapseId:Ljava/lang/String;

    .line 95
    const-string v0, "priority"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/onesignal/OSNotificationPayload;->priority:I

    .line 96
    const-string v0, "rawPayload"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/onesignal/OSNotificationPayload;->rawPayload:Ljava/lang/String;

    .line 97
    return-void
.end method


# virtual methods
.method public toJSONObject()Lorg/json/JSONObject;
    .locals 5

    .line 141
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 144
    .local v0, "json":Lorg/json/JSONObject;
    :try_start_0
    const-string v1, "notificationID"

    iget-object v2, p0, Lcom/onesignal/OSNotificationPayload;->notificationID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 145
    const-string v1, "title"

    iget-object v2, p0, Lcom/onesignal/OSNotificationPayload;->title:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 146
    const-string v1, "body"

    iget-object v2, p0, Lcom/onesignal/OSNotificationPayload;->body:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 147
    iget-object v1, p0, Lcom/onesignal/OSNotificationPayload;->additionalData:Lorg/json/JSONObject;

    if-eqz v1, :cond_0

    .line 148
    const-string v2, "additionalData"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 149
    :cond_0
    const-string v1, "smallIcon"

    iget-object v2, p0, Lcom/onesignal/OSNotificationPayload;->smallIcon:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 150
    const-string v1, "largeIcon"

    iget-object v2, p0, Lcom/onesignal/OSNotificationPayload;->largeIcon:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 151
    const-string v1, "bigPicture"

    iget-object v2, p0, Lcom/onesignal/OSNotificationPayload;->bigPicture:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 152
    const-string v1, "smallIconAccentColor"

    iget-object v2, p0, Lcom/onesignal/OSNotificationPayload;->smallIconAccentColor:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 153
    const-string v1, "launchURL"

    iget-object v2, p0, Lcom/onesignal/OSNotificationPayload;->launchURL:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 154
    const-string v1, "sound"

    iget-object v2, p0, Lcom/onesignal/OSNotificationPayload;->sound:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 155
    const-string v1, "ledColor"

    iget-object v2, p0, Lcom/onesignal/OSNotificationPayload;->ledColor:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 156
    const-string v1, "lockScreenVisibility"

    iget v2, p0, Lcom/onesignal/OSNotificationPayload;->lockScreenVisibility:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 157
    const-string v1, "groupKey"

    iget-object v2, p0, Lcom/onesignal/OSNotificationPayload;->groupKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 158
    const-string v1, "groupMessage"

    iget-object v2, p0, Lcom/onesignal/OSNotificationPayload;->groupMessage:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 160
    iget-object v1, p0, Lcom/onesignal/OSNotificationPayload;->actionButtons:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 161
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 162
    .local v1, "actionButtonJsonArray":Lorg/json/JSONArray;
    iget-object v2, p0, Lcom/onesignal/OSNotificationPayload;->actionButtons:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onesignal/OSNotificationPayload$ActionButton;

    .line 163
    .local v3, "actionButton":Lcom/onesignal/OSNotificationPayload$ActionButton;
    invoke-virtual {v3}, Lcom/onesignal/OSNotificationPayload$ActionButton;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 164
    nop

    .end local v3    # "actionButton":Lcom/onesignal/OSNotificationPayload$ActionButton;
    goto :goto_0

    .line 165
    :cond_1
    const-string v2, "actionButtons"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 167
    .end local v1    # "actionButtonJsonArray":Lorg/json/JSONArray;
    :cond_2
    const-string v1, "fromProjectNumber"

    iget-object v2, p0, Lcom/onesignal/OSNotificationPayload;->fromProjectNumber:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 168
    const-string v1, "collapseId"

    iget-object v2, p0, Lcom/onesignal/OSNotificationPayload;->collapseId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 169
    const-string v1, "priority"

    iget v2, p0, Lcom/onesignal/OSNotificationPayload;->priority:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 171
    const-string v1, "rawPayload"

    iget-object v2, p0, Lcom/onesignal/OSNotificationPayload;->rawPayload:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    goto :goto_1

    .line 173
    :catchall_0
    move-exception v1

    .line 174
    .local v1, "t":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 177
    .end local v1    # "t":Ljava/lang/Throwable;
    :goto_1
    return-object v0
.end method
