.class Lcom/onesignal/FocusTimeController$FocusTimeProcessorUnattributed;
.super Lcom/onesignal/FocusTimeController$FocusTimeProcessorBase;
.source "FocusTimeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onesignal/FocusTimeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FocusTimeProcessorUnattributed"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .line 102
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/onesignal/FocusTimeController$FocusTimeProcessorBase;-><init>(Lcom/onesignal/FocusTimeController$1;)V

    .line 103
    const-wide/16 v0, 0x3c

    iput-wide v0, p0, Lcom/onesignal/FocusTimeController$FocusTimeProcessorUnattributed;->MIN_ON_FOCUS_TIME_SEC:J

    .line 104
    const-string v0, "GT_UNSENT_ACTIVE_TIME"

    iput-object v0, p0, Lcom/onesignal/FocusTimeController$FocusTimeProcessorUnattributed;->PREF_KEY_FOR_UNSENT_TIME:Ljava/lang/String;

    .line 105
    return-void
.end method


# virtual methods
.method protected saveInfluences(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onesignal/influence/model/OSInfluence;",
            ">;)V"
        }
    .end annotation

    .line 128
    .local p1, "influences":Ljava/util/List;, "Ljava/util/List<Lcom/onesignal/influence/model/OSInfluence;>;"
    return-void
.end method

.method protected sendTime(Lcom/onesignal/FocusTimeController$FocusEventType;)V
    .locals 1
    .param p1, "focusType"    # Lcom/onesignal/FocusTimeController$FocusEventType;

    .line 119
    sget-object v0, Lcom/onesignal/FocusTimeController$FocusEventType;->END_SESSION:Lcom/onesignal/FocusTimeController$FocusEventType;

    invoke-virtual {p1, v0}, Lcom/onesignal/FocusTimeController$FocusEventType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    return-void

    .line 122
    :cond_0
    invoke-virtual {p0}, Lcom/onesignal/FocusTimeController$FocusTimeProcessorUnattributed;->syncUnsentTimeOnBackgroundEvent()V

    .line 123
    return-void
.end method

.method protected timeTypeApplies(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onesignal/influence/model/OSInfluence;",
            ">;)Z"
        }
    .end annotation

    .line 108
    .local p1, "influences":Ljava/util/List;, "Ljava/util/List<Lcom/onesignal/influence/model/OSInfluence;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onesignal/influence/model/OSInfluence;

    .line 110
    .local v1, "influence":Lcom/onesignal/influence/model/OSInfluence;
    invoke-virtual {v1}, Lcom/onesignal/influence/model/OSInfluence;->getInfluenceType()Lcom/onesignal/influence/model/OSInfluenceType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onesignal/influence/model/OSInfluenceType;->isAttributed()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 111
    const/4 v0, 0x0

    return v0

    .line 112
    .end local v1    # "influence":Lcom/onesignal/influence/model/OSInfluence;
    :cond_0
    goto :goto_0

    .line 113
    :cond_1
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":timeTypeApplies for influences: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " true"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 114
    const/4 v0, 0x1

    return v0
.end method
