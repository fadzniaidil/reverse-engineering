.class public Lcom/onesignal/OSInAppMessageAction;
.super Ljava/lang/Object;
.source "OSInAppMessageAction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onesignal/OSInAppMessageAction$OSInAppMessageActionUrlType;
    }
.end annotation


# static fields
.field private static final CLICK_NAME:Ljava/lang/String; = "click_name"

.field private static final CLICK_URL:Ljava/lang/String; = "click_url"

.field private static final CLOSE:Ljava/lang/String; = "close"

.field private static final CLOSES_MESSAGE:Ljava/lang/String; = "closes_message"

.field private static final FIRST_CLICK:Ljava/lang/String; = "first_click"

.field private static final ID:Ljava/lang/String; = "id"

.field private static final NAME:Ljava/lang/String; = "name"

.field private static final OUTCOMES:Ljava/lang/String; = "outcomes"

.field private static final PROMPTS:Ljava/lang/String; = "prompts"

.field private static final TAGS:Ljava/lang/String; = "tags"

.field private static final URL:Ljava/lang/String; = "url"

.field private static final URL_TARGET:Ljava/lang/String; = "url_target"


# instance fields
.field clickId:Ljava/lang/String;

.field public clickName:Ljava/lang/String;

.field public clickUrl:Ljava/lang/String;

.field public closesMessage:Z

.field public firstClick:Z

.field public outcomes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onesignal/OSInAppMessageOutcome;",
            ">;"
        }
    .end annotation
.end field

.field public prompts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onesignal/OSInAppMessagePrompt;",
            ">;"
        }
    .end annotation
.end field

.field public tags:Lcom/onesignal/OSInAppMessageTag;

.field public urlTarget:Lcom/onesignal/OSInAppMessageAction$OSInAppMessageActionUrlType;


# direct methods
.method constructor <init>(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "json"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/onesignal/OSInAppMessageAction;->outcomes:Ljava/util/List;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/onesignal/OSInAppMessageAction;->prompts:Ljava/util/List;

    .line 84
    const-string v0, "id"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/onesignal/OSInAppMessageAction;->clickId:Ljava/lang/String;

    .line 85
    const-string v0, "name"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/onesignal/OSInAppMessageAction;->clickName:Ljava/lang/String;

    .line 86
    const-string v0, "url"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/onesignal/OSInAppMessageAction;->clickUrl:Ljava/lang/String;

    .line 87
    const-string v0, "url_target"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/onesignal/OSInAppMessageAction$OSInAppMessageActionUrlType;->fromString(Ljava/lang/String;)Lcom/onesignal/OSInAppMessageAction$OSInAppMessageActionUrlType;

    move-result-object v0

    iput-object v0, p0, Lcom/onesignal/OSInAppMessageAction;->urlTarget:Lcom/onesignal/OSInAppMessageAction$OSInAppMessageActionUrlType;

    .line 88
    if-nez v0, :cond_0

    .line 89
    sget-object v0, Lcom/onesignal/OSInAppMessageAction$OSInAppMessageActionUrlType;->IN_APP_WEBVIEW:Lcom/onesignal/OSInAppMessageAction$OSInAppMessageActionUrlType;

    iput-object v0, p0, Lcom/onesignal/OSInAppMessageAction;->urlTarget:Lcom/onesignal/OSInAppMessageAction$OSInAppMessageActionUrlType;

    .line 91
    :cond_0
    const/4 v0, 0x1

    const-string v1, "close"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/onesignal/OSInAppMessageAction;->closesMessage:Z

    .line 93
    const-string v0, "outcomes"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 94
    invoke-direct {p0, p1}, Lcom/onesignal/OSInAppMessageAction;->parseOutcomes(Lorg/json/JSONObject;)V

    .line 96
    :cond_1
    const-string v0, "tags"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 97
    new-instance v1, Lcom/onesignal/OSInAppMessageTag;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/onesignal/OSInAppMessageTag;-><init>(Lorg/json/JSONObject;)V

    iput-object v1, p0, Lcom/onesignal/OSInAppMessageAction;->tags:Lcom/onesignal/OSInAppMessageTag;

    .line 99
    :cond_2
    const-string v0, "prompts"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 100
    invoke-direct {p0, p1}, Lcom/onesignal/OSInAppMessageAction;->parsePrompts(Lorg/json/JSONObject;)V

    .line 101
    :cond_3
    return-void
.end method

.method private parseOutcomes(Lorg/json/JSONObject;)V
    .locals 5
    .param p1, "json"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 104
    const-string v0, "outcomes"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 105
    .local v0, "outcomesJsonArray":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 106
    iget-object v2, p0, Lcom/onesignal/OSInAppMessageAction;->outcomes:Ljava/util/List;

    new-instance v3, Lcom/onesignal/OSInAppMessageOutcome;

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/json/JSONObject;

    invoke-direct {v3, v4}, Lcom/onesignal/OSInAppMessageOutcome;-><init>(Lorg/json/JSONObject;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 108
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method private parsePrompts(Lorg/json/JSONObject;)V
    .locals 4
    .param p1, "json"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 111
    const-string v0, "prompts"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 112
    .local v0, "promptsJsonArray":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 113
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "location"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 114
    iget-object v2, p0, Lcom/onesignal/OSInAppMessageAction;->prompts:Ljava/util/List;

    new-instance v3, Lcom/onesignal/OSInAppMessageLocationPrompt;

    invoke-direct {v3}, Lcom/onesignal/OSInAppMessageLocationPrompt;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 117
    .end local v1    # "i":I
    :cond_1
    return-void
.end method


# virtual methods
.method public toJSONObject()Lorg/json/JSONObject;
    .locals 5

    .line 120
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 122
    .local v0, "mainObj":Lorg/json/JSONObject;
    :try_start_0
    const-string v1, "click_name"

    iget-object v2, p0, Lcom/onesignal/OSInAppMessageAction;->clickName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 123
    const-string v1, "click_url"

    iget-object v2, p0, Lcom/onesignal/OSInAppMessageAction;->clickUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 124
    const-string v1, "first_click"

    iget-boolean v2, p0, Lcom/onesignal/OSInAppMessageAction;->firstClick:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 125
    const-string v1, "closes_message"

    iget-boolean v2, p0, Lcom/onesignal/OSInAppMessageAction;->closesMessage:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 127
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 128
    .local v1, "outcomesJson":Lorg/json/JSONArray;
    iget-object v2, p0, Lcom/onesignal/OSInAppMessageAction;->outcomes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onesignal/OSInAppMessageOutcome;

    .line 129
    .local v3, "outcome":Lcom/onesignal/OSInAppMessageOutcome;
    invoke-virtual {v3}, Lcom/onesignal/OSInAppMessageOutcome;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 131
    .end local v3    # "outcome":Lcom/onesignal/OSInAppMessageOutcome;
    :cond_0
    const-string v2, "outcomes"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 133
    iget-object v2, p0, Lcom/onesignal/OSInAppMessageAction;->tags:Lcom/onesignal/OSInAppMessageTag;

    if-eqz v2, :cond_1

    .line 134
    const-string v3, "tags"

    invoke-virtual {v2}, Lcom/onesignal/OSInAppMessageTag;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    .end local v1    # "outcomesJson":Lorg/json/JSONArray;
    :cond_1
    goto :goto_1

    .line 139
    :catch_0
    move-exception v1

    .line 140
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 143
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_1
    return-object v0
.end method
