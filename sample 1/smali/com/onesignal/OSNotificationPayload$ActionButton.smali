.class public Lcom/onesignal/OSNotificationPayload$ActionButton;
.super Ljava/lang/Object;
.source "OSNotificationPayload.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onesignal/OSNotificationPayload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ActionButton"
.end annotation


# instance fields
.field public icon:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public text:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "jsonObject"    # Lorg/json/JSONObject;

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    const-string v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/onesignal/OSNotificationPayload$ActionButton;->id:Ljava/lang/String;

    .line 111
    const-string v0, "text"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/onesignal/OSNotificationPayload$ActionButton;->text:Ljava/lang/String;

    .line 112
    const-string v0, "icon"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/onesignal/OSNotificationPayload$ActionButton;->icon:Ljava/lang/String;

    .line 113
    return-void
.end method


# virtual methods
.method public toJSONObject()Lorg/json/JSONObject;
    .locals 3

    .line 116
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 118
    .local v0, "json":Lorg/json/JSONObject;
    :try_start_0
    const-string v1, "id"

    iget-object v2, p0, Lcom/onesignal/OSNotificationPayload$ActionButton;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 119
    const-string v1, "text"

    iget-object v2, p0, Lcom/onesignal/OSNotificationPayload$ActionButton;->text:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 120
    const-string v1, "icon"

    iget-object v2, p0, Lcom/onesignal/OSNotificationPayload$ActionButton;->icon:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    goto :goto_0

    .line 122
    :catchall_0
    move-exception v1

    .line 123
    .local v1, "t":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 126
    .end local v1    # "t":Ljava/lang/Throwable;
    :goto_0
    return-object v0
.end method
