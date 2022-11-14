.class Lcom/onesignal/OSTriggerController;
.super Ljava/lang/Object;
.source "OSTriggerController.java"


# instance fields
.field dynamicTriggerController:Lcom/onesignal/OSDynamicTriggerController;

.field private final triggers:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/onesignal/OSDynamicTriggerController$OSDynamicTriggerControllerObserver;)V
    .locals 1
    .param p1, "dynamicTriggerObserver"    # Lcom/onesignal/OSDynamicTriggerController$OSDynamicTriggerControllerObserver;

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/onesignal/OSTriggerController;->triggers:Ljava/util/concurrent/ConcurrentHashMap;

    .line 23
    new-instance v0, Lcom/onesignal/OSDynamicTriggerController;

    invoke-direct {v0, p1}, Lcom/onesignal/OSDynamicTriggerController;-><init>(Lcom/onesignal/OSDynamicTriggerController$OSDynamicTriggerControllerObserver;)V

    iput-object v0, p0, Lcom/onesignal/OSTriggerController;->dynamicTriggerController:Lcom/onesignal/OSDynamicTriggerController;

    .line 24
    return-void
.end method

.method private evaluateAndTriggers(Ljava/util/ArrayList;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/onesignal/OSTrigger;",
            ">;)Z"
        }
    .end annotation

    .line 47
    .local p1, "andConditions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/onesignal/OSTrigger;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onesignal/OSTrigger;

    .line 48
    .local v1, "trigger":Lcom/onesignal/OSTrigger;
    invoke-direct {p0, v1}, Lcom/onesignal/OSTriggerController;->evaluateTrigger(Lcom/onesignal/OSTrigger;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 49
    const/4 v0, 0x0

    return v0

    .line 50
    .end local v1    # "trigger":Lcom/onesignal/OSTrigger;
    :cond_0
    goto :goto_0

    .line 51
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private evaluateTrigger(Lcom/onesignal/OSTrigger;)Z
    .locals 6
    .param p1, "trigger"    # Lcom/onesignal/OSTrigger;

    .line 56
    iget-object v0, p1, Lcom/onesignal/OSTrigger;->kind:Lcom/onesignal/OSTrigger$OSTriggerKind;

    sget-object v1, Lcom/onesignal/OSTrigger$OSTriggerKind;->UNKNOWN:Lcom/onesignal/OSTrigger$OSTriggerKind;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 57
    return v2

    .line 59
    :cond_0
    iget-object v0, p1, Lcom/onesignal/OSTrigger;->kind:Lcom/onesignal/OSTrigger$OSTriggerKind;

    sget-object v1, Lcom/onesignal/OSTrigger$OSTriggerKind;->CUSTOM:Lcom/onesignal/OSTrigger$OSTriggerKind;

    if-eq v0, v1, :cond_1

    .line 60
    iget-object v0, p0, Lcom/onesignal/OSTriggerController;->dynamicTriggerController:Lcom/onesignal/OSDynamicTriggerController;

    invoke-virtual {v0, p1}, Lcom/onesignal/OSDynamicTriggerController;->dynamicTriggerShouldFire(Lcom/onesignal/OSTrigger;)Z

    move-result v0

    return v0

    .line 62
    :cond_1
    iget-object v0, p1, Lcom/onesignal/OSTrigger;->operatorType:Lcom/onesignal/OSTrigger$OSTriggerOperator;

    .line 63
    .local v0, "operatorType":Lcom/onesignal/OSTrigger$OSTriggerOperator;
    iget-object v1, p0, Lcom/onesignal/OSTriggerController;->triggers:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v3, p1, Lcom/onesignal/OSTrigger;->property:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 65
    .local v1, "deviceValue":Ljava/lang/Object;
    const/4 v3, 0x1

    if-nez v1, :cond_4

    .line 68
    sget-object v4, Lcom/onesignal/OSTrigger$OSTriggerOperator;->NOT_EXISTS:Lcom/onesignal/OSTrigger$OSTriggerOperator;

    if-ne v0, v4, :cond_2

    .line 69
    return v3

    .line 72
    :cond_2
    sget-object v4, Lcom/onesignal/OSTrigger$OSTriggerOperator;->NOT_EQUAL_TO:Lcom/onesignal/OSTrigger$OSTriggerOperator;

    if-ne v0, v4, :cond_3

    iget-object v4, p1, Lcom/onesignal/OSTrigger;->value:Ljava/lang/Object;

    if-eqz v4, :cond_3

    const/4 v2, 0x1

    :cond_3
    return v2

    .line 76
    :cond_4
    sget-object v4, Lcom/onesignal/OSTrigger$OSTriggerOperator;->EXISTS:Lcom/onesignal/OSTrigger$OSTriggerOperator;

    if-ne v0, v4, :cond_5

    .line 77
    return v3

    .line 78
    :cond_5
    sget-object v4, Lcom/onesignal/OSTrigger$OSTriggerOperator;->NOT_EXISTS:Lcom/onesignal/OSTrigger$OSTriggerOperator;

    if-ne v0, v4, :cond_6

    .line 79
    return v2

    .line 81
    :cond_6
    sget-object v4, Lcom/onesignal/OSTrigger$OSTriggerOperator;->CONTAINS:Lcom/onesignal/OSTrigger$OSTriggerOperator;

    if-ne v0, v4, :cond_8

    .line 82
    instance-of v4, v1, Ljava/util/Collection;

    if-eqz v4, :cond_7

    move-object v4, v1

    check-cast v4, Ljava/util/Collection;

    iget-object v5, p1, Lcom/onesignal/OSTrigger;->value:Ljava/lang/Object;

    invoke-interface {v4, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    const/4 v2, 0x1

    :cond_7
    return v2

    .line 84
    :cond_8
    instance-of v4, v1, Ljava/lang/String;

    if-eqz v4, :cond_9

    iget-object v4, p1, Lcom/onesignal/OSTrigger;->value:Ljava/lang/Object;

    instance-of v4, v4, Ljava/lang/String;

    if-eqz v4, :cond_9

    iget-object v4, p1, Lcom/onesignal/OSTrigger;->value:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    move-object v5, v1

    check-cast v5, Ljava/lang/String;

    .line 86
    invoke-direct {p0, v4, v5, v0}, Lcom/onesignal/OSTriggerController;->triggerMatchesStringValue(Ljava/lang/String;Ljava/lang/String;Lcom/onesignal/OSTrigger$OSTriggerOperator;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 87
    return v3

    .line 89
    :cond_9
    iget-object v4, p1, Lcom/onesignal/OSTrigger;->value:Ljava/lang/Object;

    instance-of v4, v4, Ljava/lang/Number;

    if-eqz v4, :cond_a

    instance-of v4, v1, Ljava/lang/Number;

    if-eqz v4, :cond_a

    iget-object v4, p1, Lcom/onesignal/OSTrigger;->value:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Number;

    move-object v5, v1

    check-cast v5, Ljava/lang/Number;

    .line 91
    invoke-direct {p0, v4, v5, v0}, Lcom/onesignal/OSTriggerController;->triggerMatchesNumericValue(Ljava/lang/Number;Ljava/lang/Number;Lcom/onesignal/OSTrigger$OSTriggerOperator;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 92
    return v3

    .line 94
    :cond_a
    iget-object v4, p1, Lcom/onesignal/OSTrigger;->value:Ljava/lang/Object;

    invoke-direct {p0, v4, v1, v0}, Lcom/onesignal/OSTriggerController;->triggerMatchesFlex(Ljava/lang/Object;Ljava/lang/Object;Lcom/onesignal/OSTrigger$OSTriggerOperator;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 95
    return v3

    .line 98
    :cond_b
    return v2
.end method

.method private triggerMatchesFlex(Ljava/lang/Object;Ljava/lang/Object;Lcom/onesignal/OSTrigger$OSTriggerOperator;)Z
    .locals 2
    .param p1, "triggerValue"    # Ljava/lang/Object;
    .param p2, "deviceValue"    # Ljava/lang/Object;
    .param p3, "operator"    # Lcom/onesignal/OSTrigger$OSTriggerOperator;

    .line 115
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 116
    return v0

    .line 119
    :cond_0
    invoke-virtual {p3}, Lcom/onesignal/OSTrigger$OSTriggerOperator;->checksEquality()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 120
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, p3}, Lcom/onesignal/OSTriggerController;->triggerMatchesStringValue(Ljava/lang/String;Ljava/lang/String;Lcom/onesignal/OSTrigger$OSTriggerOperator;)Z

    move-result v0

    return v0

    .line 122
    :cond_1
    instance-of v1, p2, Ljava/lang/String;

    if-eqz v1, :cond_2

    instance-of v1, p1, Ljava/lang/Number;

    if-eqz v1, :cond_2

    .line 124
    move-object v0, p1

    check-cast v0, Ljava/lang/Number;

    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v0, v1, p3}, Lcom/onesignal/OSTriggerController;->triggerMatchesNumericValueFlex(Ljava/lang/Number;Ljava/lang/String;Lcom/onesignal/OSTrigger$OSTriggerOperator;)Z

    move-result v0

    return v0

    .line 125
    :cond_2
    return v0
.end method

.method private triggerMatchesNumericValue(Ljava/lang/Number;Ljava/lang/Number;Lcom/onesignal/OSTrigger$OSTriggerOperator;)Z
    .locals 8
    .param p1, "triggerValue"    # Ljava/lang/Number;
    .param p2, "deviceValue"    # Ljava/lang/Number;
    .param p3, "operator"    # Lcom/onesignal/OSTrigger$OSTriggerOperator;

    .line 140
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    .line 141
    .local v0, "triggerDoubleValue":D
    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    .line 143
    .local v2, "deviceDoubleValue":D
    sget-object v4, Lcom/onesignal/OSTriggerController$1;->$SwitchMap$com$onesignal$OSTrigger$OSTriggerOperator:[I

    invoke-virtual {p3}, Lcom/onesignal/OSTrigger$OSTriggerOperator;->ordinal()I

    move-result v5

    aget v4, v4, v5

    const/4 v5, 0x1

    const/4 v6, 0x0

    packed-switch v4, :pswitch_data_0

    .line 165
    return v6

    .line 163
    :pswitch_0
    cmpl-double v4, v2, v0

    if-gtz v4, :cond_1

    cmpl-double v4, v2, v0

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :cond_1
    :goto_0
    return v5

    .line 161
    :pswitch_1
    cmpg-double v4, v2, v0

    if-ltz v4, :cond_3

    cmpl-double v4, v2, v0

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    :cond_3
    :goto_1
    return v5

    .line 159
    :pswitch_2
    cmpl-double v4, v2, v0

    if-lez v4, :cond_4

    goto :goto_2

    :cond_4
    const/4 v5, 0x0

    :goto_2
    return v5

    .line 157
    :pswitch_3
    cmpg-double v4, v2, v0

    if-gez v4, :cond_5

    goto :goto_3

    :cond_5
    const/4 v5, 0x0

    :goto_3
    return v5

    .line 147
    :pswitch_4
    sget-object v4, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Attempted to use an invalid operator with a numeric value: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    invoke-virtual {p3}, Lcom/onesignal/OSTrigger$OSTriggerOperator;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 147
    invoke-static {v4, v5}, Lcom/onesignal/OneSignal;->onesignalLog(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 151
    return v6

    .line 155
    :pswitch_5
    cmpl-double v4, v2, v0

    if-eqz v4, :cond_6

    goto :goto_4

    :cond_6
    const/4 v5, 0x0

    :goto_4
    return v5

    .line 153
    :pswitch_6
    cmpl-double v4, v2, v0

    if-nez v4, :cond_7

    goto :goto_5

    :cond_7
    const/4 v5, 0x0

    :goto_5
    return v5

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private triggerMatchesNumericValueFlex(Ljava/lang/Number;Ljava/lang/String;Lcom/onesignal/OSTrigger$OSTriggerOperator;)Z
    .locals 4
    .param p1, "triggerValue"    # Ljava/lang/Number;
    .param p2, "deviceValue"    # Ljava/lang/String;
    .param p3, "operator"    # Lcom/onesignal/OSTrigger$OSTriggerOperator;

    .line 131
    :try_start_0
    invoke-static {p2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    .local v0, "deviceDoubleValue":D
    nop

    .line 136
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-direct {p0, v2, v3, p3}, Lcom/onesignal/OSTriggerController;->triggerMatchesNumericValue(Ljava/lang/Number;Ljava/lang/Number;Lcom/onesignal/OSTrigger$OSTriggerOperator;)Z

    move-result v2

    return v2

    .line 132
    .end local v0    # "deviceDoubleValue":D
    :catch_0
    move-exception v0

    .line 133
    .local v0, "e":Ljava/lang/NumberFormatException;
    const/4 v1, 0x0

    return v1
.end method

.method private triggerMatchesStringValue(Ljava/lang/String;Ljava/lang/String;Lcom/onesignal/OSTrigger$OSTriggerOperator;)Z
    .locals 3
    .param p1, "triggerValue"    # Ljava/lang/String;
    .param p2, "deviceValue"    # Ljava/lang/String;
    .param p3, "operator"    # Lcom/onesignal/OSTrigger$OSTriggerOperator;

    .line 102
    sget-object v0, Lcom/onesignal/OSTriggerController$1;->$SwitchMap$com$onesignal$OSTrigger$OSTriggerOperator:[I

    invoke-virtual {p3}, Lcom/onesignal/OSTrigger$OSTriggerOperator;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 108
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempted to use an invalid operator for a string trigger comparison: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/onesignal/OSTrigger$OSTriggerOperator;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->onesignalLog(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 109
    const/4 v0, 0x0

    return v0

    .line 106
    :pswitch_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0

    .line 104
    :pswitch_1
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method addTriggers(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 198
    .local p1, "newTriggers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v0, p0, Lcom/onesignal/OSTriggerController;->triggers:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v0

    .line 199
    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 200
    .local v2, "key":Ljava/lang/String;
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 201
    .local v3, "value":Ljava/lang/Object;
    iget-object v4, p0, Lcom/onesignal/OSTriggerController;->triggers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    nop

    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/Object;
    goto :goto_0

    .line 203
    :cond_0
    monitor-exit v0

    .line 204
    return-void

    .line 203
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method evaluateMessageTriggers(Lcom/onesignal/OSInAppMessage;)Z
    .locals 4
    .param p1, "message"    # Lcom/onesignal/OSInAppMessage;

    .line 34
    iget-object v0, p1, Lcom/onesignal/OSInAppMessage;->triggers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 35
    return v1

    .line 38
    :cond_0
    iget-object v0, p1, Lcom/onesignal/OSInAppMessage;->triggers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 39
    .local v2, "andConditions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/onesignal/OSTrigger;>;"
    invoke-direct {p0, v2}, Lcom/onesignal/OSTriggerController;->evaluateAndTriggers(Ljava/util/ArrayList;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 40
    return v1

    .line 41
    .end local v2    # "andConditions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/onesignal/OSTrigger;>;"
    :cond_1
    goto :goto_0

    .line 43
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method getTriggerValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 215
    iget-object v0, p0, Lcom/onesignal/OSTriggerController;->triggers:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v0

    .line 216
    :try_start_0
    iget-object v1, p0, Lcom/onesignal/OSTriggerController;->triggers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 217
    iget-object v1, p0, Lcom/onesignal/OSTriggerController;->triggers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 219
    :cond_0
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    .line 220
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method isTriggerOnMessage(Lcom/onesignal/OSInAppMessage;Ljava/util/Collection;)Z
    .locals 8
    .param p1, "message"    # Lcom/onesignal/OSInAppMessage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onesignal/OSInAppMessage;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 175
    .local p2, "newTriggersKeys":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    iget-object v0, p1, Lcom/onesignal/OSInAppMessage;->triggers:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 176
    return v1

    .line 178
    :cond_0
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 179
    .local v2, "triggerKey":Ljava/lang/String;
    iget-object v3, p1, Lcom/onesignal/OSInAppMessage;->triggers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 180
    .local v4, "andConditions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/onesignal/OSTrigger;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/onesignal/OSTrigger;

    .line 183
    .local v6, "trigger":Lcom/onesignal/OSTrigger;
    iget-object v7, v6, Lcom/onesignal/OSTrigger;->property:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    iget-object v7, v6, Lcom/onesignal/OSTrigger;->triggerId:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_3

    .line 187
    .end local v6    # "trigger":Lcom/onesignal/OSTrigger;
    :cond_1
    goto :goto_2

    .line 185
    .restart local v6    # "trigger":Lcom/onesignal/OSTrigger;
    :cond_2
    :goto_3
    const/4 v0, 0x1

    return v0

    .line 188
    .end local v4    # "andConditions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/onesignal/OSTrigger;>;"
    .end local v6    # "trigger":Lcom/onesignal/OSTrigger;
    :cond_3
    goto :goto_1

    .line 189
    .end local v2    # "triggerKey":Ljava/lang/String;
    :cond_4
    goto :goto_0

    .line 191
    :cond_5
    return v1
.end method

.method removeTriggersForKeys(Ljava/util/Collection;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 207
    .local p1, "keys":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/onesignal/OSTriggerController;->triggers:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v0

    .line 208
    :try_start_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 209
    .local v2, "key":Ljava/lang/String;
    iget-object v3, p0, Lcom/onesignal/OSTriggerController;->triggers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 210
    .end local v2    # "key":Ljava/lang/String;
    :cond_0
    monitor-exit v0

    .line 211
    return-void

    .line 210
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method
