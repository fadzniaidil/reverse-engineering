.class Lcom/onesignal/OSInAppMessage;
.super Ljava/lang/Object;
.source "OSInAppMessage.java"


# static fields
.field private static final DISPLAY_DURATION:Ljava/lang/String; = "display_duration"

.field private static final IAM_ID:Ljava/lang/String; = "id"

.field private static final IAM_REDISPLAY_STATS:Ljava/lang/String; = "redisplay"

.field private static final IAM_TRIGGERS:Ljava/lang/String; = "triggers"

.field private static final IAM_VARIANTS:Ljava/lang/String; = "variants"


# instance fields
.field private actionTaken:Z

.field private clickedClickIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private displayDuration:D

.field private displayedInSession:Z

.field isPreview:Z

.field public messageId:Ljava/lang/String;

.field private redisplayStats:Lcom/onesignal/OSInAppMessageRedisplayStats;

.field private triggerChanged:Z

.field public triggers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Lcom/onesignal/OSTrigger;",
            ">;>;"
        }
    .end annotation
.end field

.field public variants:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/Set;ZLcom/onesignal/OSInAppMessageRedisplayStats;)V
    .locals 1
    .param p1, "messageId"    # Ljava/lang/String;
    .param p3, "displayedInSession"    # Z
    .param p4, "redisplayStats"    # Lcom/onesignal/OSInAppMessageRedisplayStats;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;Z",
            "Lcom/onesignal/OSInAppMessageRedisplayStats;",
            ")V"
        }
    .end annotation

    .line 66
    .local p2, "clickIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Lcom/onesignal/OSInAppMessageRedisplayStats;

    invoke-direct {v0}, Lcom/onesignal/OSInAppMessageRedisplayStats;-><init>()V

    iput-object v0, p0, Lcom/onesignal/OSInAppMessage;->redisplayStats:Lcom/onesignal/OSInAppMessageRedisplayStats;

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/onesignal/OSInAppMessage;->displayedInSession:Z

    .line 58
    iput-boolean v0, p0, Lcom/onesignal/OSInAppMessage;->triggerChanged:Z

    .line 67
    iput-object p1, p0, Lcom/onesignal/OSInAppMessage;->messageId:Ljava/lang/String;

    .line 68
    iput-object p2, p0, Lcom/onesignal/OSInAppMessage;->clickedClickIds:Ljava/util/Set;

    .line 69
    iput-boolean p3, p0, Lcom/onesignal/OSInAppMessage;->displayedInSession:Z

    .line 70
    iput-object p4, p0, Lcom/onesignal/OSInAppMessage;->redisplayStats:Lcom/onesignal/OSInAppMessageRedisplayStats;

    .line 71
    return-void
.end method

.method constructor <init>(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "json"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Lcom/onesignal/OSInAppMessageRedisplayStats;

    invoke-direct {v0}, Lcom/onesignal/OSInAppMessageRedisplayStats;-><init>()V

    iput-object v0, p0, Lcom/onesignal/OSInAppMessage;->redisplayStats:Lcom/onesignal/OSInAppMessageRedisplayStats;

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/onesignal/OSInAppMessage;->displayedInSession:Z

    .line 58
    iput-boolean v0, p0, Lcom/onesignal/OSInAppMessage;->triggerChanged:Z

    .line 75
    const-string v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/onesignal/OSInAppMessage;->messageId:Ljava/lang/String;

    .line 76
    const-string v0, "variants"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/onesignal/OSInAppMessage;->parseVariants(Lorg/json/JSONObject;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/onesignal/OSInAppMessage;->variants:Ljava/util/HashMap;

    .line 77
    const-string v0, "triggers"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onesignal/OSInAppMessage;->parseTriggerJson(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/onesignal/OSInAppMessage;->triggers:Ljava/util/ArrayList;

    .line 78
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/onesignal/OSInAppMessage;->clickedClickIds:Ljava/util/Set;

    .line 80
    const-string v0, "redisplay"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 81
    new-instance v1, Lcom/onesignal/OSInAppMessageRedisplayStats;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/onesignal/OSInAppMessageRedisplayStats;-><init>(Lorg/json/JSONObject;)V

    iput-object v1, p0, Lcom/onesignal/OSInAppMessage;->redisplayStats:Lcom/onesignal/OSInAppMessageRedisplayStats;

    .line 82
    :cond_0
    return-void
.end method

.method constructor <init>(Z)V
    .locals 1
    .param p1, "isPreview"    # Z

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Lcom/onesignal/OSInAppMessageRedisplayStats;

    invoke-direct {v0}, Lcom/onesignal/OSInAppMessageRedisplayStats;-><init>()V

    iput-object v0, p0, Lcom/onesignal/OSInAppMessage;->redisplayStats:Lcom/onesignal/OSInAppMessageRedisplayStats;

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/onesignal/OSInAppMessage;->displayedInSession:Z

    .line 58
    iput-boolean v0, p0, Lcom/onesignal/OSInAppMessage;->triggerChanged:Z

    .line 63
    iput-boolean p1, p0, Lcom/onesignal/OSInAppMessage;->isPreview:Z

    .line 64
    return-void
.end method

.method private parseVariants(Lorg/json/JSONObject;)Ljava/util/HashMap;
    .locals 8
    .param p1, "json"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 85
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 87
    .local v0, "variantTypes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 88
    .local v1, "keyIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 89
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 90
    .local v2, "variantType":Ljava/lang/String;
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 91
    .local v3, "variant":Lorg/json/JSONObject;
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 93
    .local v4, "variantMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    .line 94
    .local v5, "variantIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 95
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 96
    .local v6, "languageType":Ljava/lang/String;
    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    .end local v6    # "languageType":Ljava/lang/String;
    goto :goto_1

    .line 99
    :cond_0
    invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    .end local v2    # "variantType":Ljava/lang/String;
    .end local v3    # "variant":Lorg/json/JSONObject;
    .end local v4    # "variantMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "variantIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    goto :goto_0

    .line 102
    :cond_1
    return-object v0
.end method


# virtual methods
.method addClickId(Ljava/lang/String;)V
    .locals 1
    .param p1, "clickId"    # Ljava/lang/String;

    .line 210
    iget-object v0, p0, Lcom/onesignal/OSInAppMessage;->clickedClickIds:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 211
    return-void
.end method

.method clearClickIds()V
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/onesignal/OSInAppMessage;->clickedClickIds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 207
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 235
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    return v0

    .line 236
    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 237
    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/onesignal/OSInAppMessage;

    .line 238
    .local v0, "that":Lcom/onesignal/OSInAppMessage;
    iget-object v1, p0, Lcom/onesignal/OSInAppMessage;->messageId:Ljava/lang/String;

    iget-object v2, v0, Lcom/onesignal/OSInAppMessage;->messageId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 236
    .end local v0    # "that":Lcom/onesignal/OSInAppMessage;
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method getClickedClickIds()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 198
    iget-object v0, p0, Lcom/onesignal/OSInAppMessage;->clickedClickIds:Ljava/util/Set;

    return-object v0
.end method

.method getDisplayDuration()D
    .locals 2

    .line 173
    iget-wide v0, p0, Lcom/onesignal/OSInAppMessage;->displayDuration:D

    return-wide v0
.end method

.method getRedisplayStats()Lcom/onesignal/OSInAppMessageRedisplayStats;
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/onesignal/OSInAppMessage;->redisplayStats:Lcom/onesignal/OSInAppMessageRedisplayStats;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/onesignal/OSInAppMessage;->messageId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 244
    .local v0, "result":I
    return v0
.end method

.method isClickAvailable(Ljava/lang/String;)Z
    .locals 1
    .param p1, "clickId"    # Ljava/lang/String;

    .line 202
    iget-object v0, p0, Lcom/onesignal/OSInAppMessage;->clickedClickIds:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isDisplayedInSession()Z
    .locals 1

    .line 189
    iget-boolean v0, p0, Lcom/onesignal/OSInAppMessage;->displayedInSession:Z

    return v0
.end method

.method isTriggerChanged()Z
    .locals 1

    .line 181
    iget-boolean v0, p0, Lcom/onesignal/OSInAppMessage;->triggerChanged:Z

    return v0
.end method

.method protected parseTriggerJson(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .locals 7
    .param p1, "triggersJson"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Lcom/onesignal/OSTrigger;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 109
    .local v0, "parsedTriggers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/onesignal/OSTrigger;>;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 110
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v2

    .line 111
    .local v2, "ands":Lorg/json/JSONArray;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 112
    .local v3, "converted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/onesignal/OSTrigger;>;"
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 113
    new-instance v5, Lcom/onesignal/OSTrigger;

    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/onesignal/OSTrigger;-><init>(Lorg/json/JSONObject;)V

    .line 114
    .local v5, "trigger":Lcom/onesignal/OSTrigger;
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    .end local v5    # "trigger":Lcom/onesignal/OSTrigger;
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 116
    .end local v4    # "j":I
    :cond_0
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    .end local v2    # "ands":Lorg/json/JSONArray;
    .end local v3    # "converted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/onesignal/OSTrigger;>;"
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 119
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method setDisplayDuration(D)V
    .locals 0
    .param p1, "displayDuration"    # D

    .line 177
    iput-wide p1, p0, Lcom/onesignal/OSInAppMessage;->displayDuration:D

    .line 178
    return-void
.end method

.method public setDisplayedInSession(Z)V
    .locals 0
    .param p1, "displayedInSession"    # Z

    .line 193
    iput-boolean p1, p0, Lcom/onesignal/OSInAppMessage;->displayedInSession:Z

    .line 194
    return-void
.end method

.method setRedisplayStats(IJ)V
    .locals 1
    .param p1, "displayQuantity"    # I
    .param p2, "lastDisplayTime"    # J

    .line 218
    new-instance v0, Lcom/onesignal/OSInAppMessageRedisplayStats;

    invoke-direct {v0, p1, p2, p3}, Lcom/onesignal/OSInAppMessageRedisplayStats;-><init>(IJ)V

    iput-object v0, p0, Lcom/onesignal/OSInAppMessage;->redisplayStats:Lcom/onesignal/OSInAppMessageRedisplayStats;

    .line 219
    return-void
.end method

.method setTriggerChanged(Z)V
    .locals 0
    .param p1, "triggerChanged"    # Z

    .line 185
    iput-boolean p1, p0, Lcom/onesignal/OSInAppMessage;->triggerChanged:Z

    .line 186
    return-void
.end method

.method takeActionAsUnique()Z
    .locals 1

    .line 167
    iget-boolean v0, p0, Lcom/onesignal/OSInAppMessage;->actionTaken:Z

    if-eqz v0, :cond_0

    .line 168
    const/4 v0, 0x0

    return v0

    .line 169
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/onesignal/OSInAppMessage;->actionTaken:Z

    return v0
.end method

.method toJSONObject()Lorg/json/JSONObject;
    .locals 9

    .line 123
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 126
    .local v0, "json":Lorg/json/JSONObject;
    :try_start_0
    const-string v1, "id"

    iget-object v2, p0, Lcom/onesignal/OSInAppMessage;->messageId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 128
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 129
    .local v1, "variants":Lorg/json/JSONObject;
    iget-object v2, p0, Lcom/onesignal/OSInAppMessage;->variants:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 130
    .local v3, "key":Ljava/lang/String;
    iget-object v4, p0, Lcom/onesignal/OSInAppMessage;->variants:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    .line 131
    .local v4, "variant":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 133
    .local v5, "converted":Lorg/json/JSONObject;
    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 134
    .local v7, "variantKey":Ljava/lang/String;
    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 136
    .end local v7    # "variantKey":Ljava/lang/String;
    :cond_0
    invoke-virtual {v1, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 137
    nop

    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "variant":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "converted":Lorg/json/JSONObject;
    goto :goto_0

    .line 139
    :cond_1
    const-string v2, "variants"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 140
    const-string v2, "display_duration"

    iget-wide v3, p0, Lcom/onesignal/OSInAppMessage;->displayDuration:D

    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 141
    const-string v2, "redisplay"

    iget-object v3, p0, Lcom/onesignal/OSInAppMessage;->redisplayStats:Lcom/onesignal/OSInAppMessageRedisplayStats;

    invoke-virtual {v3}, Lcom/onesignal/OSInAppMessageRedisplayStats;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 143
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 144
    .local v2, "orConditions":Lorg/json/JSONArray;
    iget-object v3, p0, Lcom/onesignal/OSInAppMessage;->triggers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 145
    .local v4, "andArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/onesignal/OSTrigger;>;"
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 147
    .local v5, "andConditions":Lorg/json/JSONArray;
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/onesignal/OSTrigger;

    .line 148
    .local v7, "trigger":Lcom/onesignal/OSTrigger;
    invoke-virtual {v7}, Lcom/onesignal/OSTrigger;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v8

    invoke-virtual {v5, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_3

    .line 150
    .end local v7    # "trigger":Lcom/onesignal/OSTrigger;
    :cond_2
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 151
    nop

    .end local v4    # "andArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/onesignal/OSTrigger;>;"
    .end local v5    # "andConditions":Lorg/json/JSONArray;
    goto :goto_2

    .line 153
    :cond_3
    const-string v3, "triggers"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    nop

    .end local v1    # "variants":Lorg/json/JSONObject;
    .end local v2    # "orConditions":Lorg/json/JSONArray;
    goto :goto_4

    .line 155
    :catch_0
    move-exception v1

    .line 156
    .local v1, "exception":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 159
    .end local v1    # "exception":Lorg/json/JSONException;
    :goto_4
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OSInAppMessage{messageId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onesignal/OSInAppMessage;->messageId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", triggers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onesignal/OSInAppMessage;->triggers:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", clickedClickIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onesignal/OSInAppMessage;->clickedClickIds:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", displayStats="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onesignal/OSInAppMessage;->redisplayStats:Lcom/onesignal/OSInAppMessageRedisplayStats;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", actionTaken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/onesignal/OSInAppMessage;->actionTaken:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isPreview="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/onesignal/OSInAppMessage;->isPreview:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
