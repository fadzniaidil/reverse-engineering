.class Lcom/onesignal/JSONUtils;
.super Ljava/lang/Object;
.source "JSONUtils.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static compareJSONArrays(Lorg/json/JSONArray;Lorg/json/JSONArray;)Z
    .locals 7
    .param p0, "jsonArray1"    # Lorg/json/JSONArray;
    .param p1, "jsonArray2"    # Lorg/json/JSONArray;

    .line 214
    const/4 v0, 0x1

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    .line 215
    return v0

    .line 218
    :cond_0
    const/4 v1, 0x0

    if-eqz p0, :cond_6

    if-nez p1, :cond_1

    goto :goto_2

    .line 222
    :cond_1
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-eq v2, v3, :cond_2

    .line 223
    return v1

    .line 226
    :cond_2
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 227
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 228
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/onesignal/JSONUtils;->normalizeType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 229
    .local v4, "obj1":Ljava/lang/Object;
    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lcom/onesignal/JSONUtils;->normalizeType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 232
    .local v5, "obj2":Ljava/lang/Object;
    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v6, :cond_3

    .line 233
    nop

    .line 226
    .end local v3    # "j":I
    .end local v4    # "obj1":Ljava/lang/Object;
    .end local v5    # "obj2":Ljava/lang/Object;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 227
    .restart local v3    # "j":I
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 237
    .end local v3    # "j":I
    :cond_4
    return v1

    .line 244
    .end local v2    # "i":I
    :cond_5
    nop

    .line 247
    return v0

    .line 239
    :catch_0
    move-exception v0

    .line 240
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 243
    return v1

    .line 219
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_6
    :goto_2
    return v1
.end method

.method private static convertNestedJSONType(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 202
    instance-of v0, p0, Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    .line 203
    move-object v0, p0

    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/onesignal/JSONUtils;->jsonObjectToMapNonNull(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 204
    :cond_0
    instance-of v0, p0, Lorg/json/JSONArray;

    if-eqz v0, :cond_1

    .line 205
    move-object v0, p0

    check-cast v0, Lorg/json/JSONArray;

    invoke-static {v0}, Lcom/onesignal/JSONUtils;->jsonArrayToListNonNull(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 206
    :cond_1
    return-object p0
.end method

.method static generateJsonDiff(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/util/Set;)Lorg/json/JSONObject;
    .locals 11
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

    .line 26
    .local p3, "includeFields":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 27
    return-object v0

    .line 28
    :cond_0
    if-nez p1, :cond_1

    .line 29
    return-object p2

    .line 31
    :cond_1
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 36
    .local v1, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    if-eqz p2, :cond_2

    .line 37
    move-object v2, p2

    .local v2, "output":Lorg/json/JSONObject;
    goto :goto_0

    .line 39
    .end local v2    # "output":Lorg/json/JSONObject;
    :cond_2
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 41
    .restart local v2    # "output":Lorg/json/JSONObject;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 43
    :try_start_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 44
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 46
    .local v4, "value":Ljava/lang/Object;
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 47
    instance-of v5, v4, Lorg/json/JSONObject;

    if-eqz v5, :cond_5

    .line 48
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 49
    .local v5, "curValue":Lorg/json/JSONObject;
    const/4 v6, 0x0

    .line 50
    .local v6, "outValue":Lorg/json/JSONObject;
    if-eqz p2, :cond_3

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 51
    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    move-object v6, v7

    .line 52
    :cond_3
    move-object v7, v4

    check-cast v7, Lorg/json/JSONObject;

    invoke-static {v5, v7, v6, p3}, Lcom/onesignal/JSONUtils;->generateJsonDiff(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/util/Set;)Lorg/json/JSONObject;

    move-result-object v7

    .line 53
    .local v7, "returnedJson":Lorg/json/JSONObject;
    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    .line 54
    .local v8, "returnedJsonStr":Ljava/lang/String;
    const-string v9, "{}"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 55
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 56
    .end local v5    # "curValue":Lorg/json/JSONObject;
    .end local v6    # "outValue":Lorg/json/JSONObject;
    .end local v7    # "returnedJson":Lorg/json/JSONObject;
    .end local v8    # "returnedJsonStr":Ljava/lang/String;
    :cond_4
    goto/16 :goto_2

    .line 57
    :cond_5
    instance-of v5, v4, Lorg/json/JSONArray;

    if-eqz v5, :cond_6

    .line 58
    move-object v5, v4

    check-cast v5, Lorg/json/JSONArray;

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    invoke-static {v3, v5, v6, v2}, Lcom/onesignal/JSONUtils;->handleJsonArray(Ljava/lang/String;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONObject;)V

    goto :goto_2

    .line 59
    :cond_6
    if-eqz p3, :cond_7

    invoke-interface {p3, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 60
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    .line 62
    :cond_7
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 63
    .local v5, "curValue":Ljava/lang/Object;
    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    .line 65
    instance-of v6, v5, Ljava/lang/Integer;

    if-eqz v6, :cond_8

    const-string v6, ""

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 66
    move-object v6, v5

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v6

    move-object v8, v4

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v8

    cmpl-double v10, v6, v8

    if-eqz v10, :cond_9

    .line 67
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 70
    :cond_8
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 72
    .end local v5    # "curValue":Ljava/lang/Object;
    :cond_9
    :goto_1
    goto :goto_2

    .line 75
    :cond_a
    instance-of v5, v4, Lorg/json/JSONObject;

    if-eqz v5, :cond_b

    .line 76
    new-instance v5, Lorg/json/JSONObject;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    .line 77
    :cond_b
    instance-of v5, v4, Lorg/json/JSONArray;

    if-eqz v5, :cond_c

    .line 78
    move-object v5, v4

    check-cast v5, Lorg/json/JSONArray;

    invoke-static {v3, v5, v0, v2}, Lcom/onesignal/JSONUtils;->handleJsonArray(Ljava/lang/String;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONObject;)V

    goto :goto_2

    .line 80
    :cond_c
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    :goto_2
    goto/16 :goto_0

    .line 82
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/Object;
    :catch_0
    move-exception v3

    .line 83
    .local v3, "e":Lorg/json/JSONException;
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    .line 84
    .end local v3    # "e":Lorg/json/JSONException;
    goto/16 :goto_0

    .line 87
    :cond_d
    return-object v2
.end method

.method static getJSONObjectWithoutBlankValues(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 6
    .param p0, "jsonObject"    # Lorg/json/JSONObject;
    .param p1, "getKey"    # Ljava/lang/String;

    .line 134
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 135
    const/4 v0, 0x0

    return-object v0

    .line 137
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 139
    .local v0, "toReturn":Lorg/json/JSONObject;
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 141
    .local v1, "keyValues":Lorg/json/JSONObject;
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 145
    .local v2, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 146
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 148
    .local v3, "key":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 149
    .local v4, "value":Ljava/lang/Object;
    const-string v5, ""

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 150
    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    :cond_1
    goto :goto_0

    .end local v4    # "value":Ljava/lang/Object;
    :catch_0
    move-exception v4

    goto :goto_0

    .line 154
    .end local v3    # "key":Ljava/lang/String;
    :cond_2
    return-object v0
.end method

.method private static handleJsonArray(Ljava/lang/String;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONObject;)V
    .locals 9
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "newArray"    # Lorg/json/JSONArray;
    .param p2, "curArray"    # Lorg/json/JSONArray;
    .param p3, "output"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 91
    const-string v0, "_a"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "_d"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_3

    .line 96
    :cond_0
    invoke-static {p1}, Lcom/onesignal/JSONUtils;->toStringNE(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v2

    .line 98
    .local v2, "arrayStr":Ljava/lang/String;
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 99
    .local v3, "newOutArray":Lorg/json/JSONArray;
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 100
    .local v4, "remOutArray":Lorg/json/JSONArray;
    if-nez p2, :cond_1

    const/4 v5, 0x0

    goto :goto_0

    :cond_1
    invoke-static {p2}, Lcom/onesignal/JSONUtils;->toStringNE(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v5

    .line 102
    .local v5, "curArrayStr":Ljava/lang/String;
    :goto_0
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_4

    .line 103
    invoke-virtual {p1, v6}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 104
    .local v7, "arrayValue":Ljava/lang/String;
    if-eqz p2, :cond_2

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 105
    :cond_2
    invoke-virtual {v3, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 102
    .end local v7    # "arrayValue":Ljava/lang/String;
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 108
    .end local v6    # "i":I
    :cond_4
    if-eqz p2, :cond_6

    .line 109
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_2
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_6

    .line 110
    invoke-virtual {p2, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 111
    .restart local v7    # "arrayValue":Ljava/lang/String;
    invoke-virtual {v2, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 112
    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 109
    .end local v7    # "arrayValue":Ljava/lang/String;
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 116
    .end local v6    # "i":I
    :cond_6
    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "[]"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 117
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 118
    :cond_7
    invoke-virtual {v4}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 120
    :cond_8
    return-void

    .line 92
    .end local v2    # "arrayStr":Ljava/lang/String;
    .end local v3    # "newOutArray":Lorg/json/JSONArray;
    .end local v4    # "remOutArray":Lorg/json/JSONArray;
    .end local v5    # "curArrayStr":Ljava/lang/String;
    :cond_9
    :goto_3
    invoke-virtual {p3, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 93
    return-void
.end method

.method static jsonArrayToList(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 1
    .param p0, "array"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 182
    if-nez p0, :cond_0

    .line 183
    const/4 v0, 0x0

    return-object v0

    .line 184
    :cond_0
    invoke-static {p0}, Lcom/onesignal/JSONUtils;->jsonArrayToListNonNull(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static jsonArrayToListNonNull(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 4
    .param p0, "array"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 189
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 190
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 191
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 192
    .local v2, "value":Ljava/lang/Object;
    invoke-static {v2}, Lcom/onesignal/JSONUtils;->convertNestedJSONType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    .end local v2    # "value":Ljava/lang/Object;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 194
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method static jsonObjectToMap(Lorg/json/JSONObject;)Ljava/util/Map;
    .locals 1
    .param p0, "json"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 159
    if-eqz p0, :cond_1

    sget-object v0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 161
    :cond_0
    invoke-static {p0}, Lcom/onesignal/JSONUtils;->jsonObjectToMapNonNull(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 160
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static jsonObjectToMapNonNull(Lorg/json/JSONObject;)Ljava/util/Map;
    .locals 5
    .param p0, "object"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 168
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 169
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 170
    .local v1, "keysItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 171
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 172
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 173
    .local v3, "value":Ljava/lang/Object;
    invoke-static {v3}, Lcom/onesignal/JSONUtils;->convertNestedJSONType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/Object;
    goto :goto_0

    .line 175
    :cond_0
    return-object v0
.end method

.method public static normalizeType(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p0, "object"    # Ljava/lang/Object;

    .line 254
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 256
    .local v0, "clazz":Ljava/lang/Class;
    const-class v1, Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 257
    move-object v1, p0

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    return-object v1

    .line 258
    :cond_0
    const-class v1, Ljava/lang/Float;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 259
    move-object v1, p0

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    return-object v1

    .line 261
    :cond_1
    return-object p0
.end method

.method static toStringNE(Lorg/json/JSONArray;)Ljava/lang/String;
    .locals 5
    .param p0, "jsonArray"    # Lorg/json/JSONArray;

    .line 123
    const-string v0, "\""

    const-string v1, "["

    .line 126
    .local v1, "strArray":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 127
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v3

    .line 126
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v2    # "i":I
    :cond_0
    goto :goto_1

    .line 128
    :catch_0
    move-exception v0

    :goto_1
    nop

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
