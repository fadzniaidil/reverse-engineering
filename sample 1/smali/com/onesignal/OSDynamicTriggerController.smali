.class Lcom/onesignal/OSDynamicTriggerController;
.super Ljava/lang/Object;
.source "OSDynamicTriggerController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onesignal/OSDynamicTriggerController$OSDynamicTriggerControllerObserver;
    }
.end annotation


# static fields
.field private static final DEFAULT_LAST_IN_APP_TIME_AGO:J = 0xf423fL

.field private static final REQUIRED_ACCURACY:D = 0.3

.field private static sessionLaunchTime:Ljava/util/Date;


# instance fields
.field private final observer:Lcom/onesignal/OSDynamicTriggerController$OSDynamicTriggerControllerObserver;

.field private final scheduledMessages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    sput-object v0, Lcom/onesignal/OSDynamicTriggerController;->sessionLaunchTime:Ljava/util/Date;

    return-void
.end method

.method constructor <init>(Lcom/onesignal/OSDynamicTriggerController$OSDynamicTriggerControllerObserver;)V
    .locals 1
    .param p1, "triggerObserver"    # Lcom/onesignal/OSDynamicTriggerController$OSDynamicTriggerControllerObserver;

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/onesignal/OSDynamicTriggerController;->scheduledMessages:Ljava/util/ArrayList;

    .line 29
    iput-object p1, p0, Lcom/onesignal/OSDynamicTriggerController;->observer:Lcom/onesignal/OSDynamicTriggerController$OSDynamicTriggerControllerObserver;

    .line 30
    return-void
.end method

.method static synthetic access$000(Lcom/onesignal/OSDynamicTriggerController;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/onesignal/OSDynamicTriggerController;

    .line 9
    iget-object v0, p0, Lcom/onesignal/OSDynamicTriggerController;->scheduledMessages:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/onesignal/OSDynamicTriggerController;)Lcom/onesignal/OSDynamicTriggerController$OSDynamicTriggerControllerObserver;
    .locals 1
    .param p0, "x0"    # Lcom/onesignal/OSDynamicTriggerController;

    .line 9
    iget-object v0, p0, Lcom/onesignal/OSDynamicTriggerController;->observer:Lcom/onesignal/OSDynamicTriggerController$OSDynamicTriggerControllerObserver;

    return-object v0
.end method

.method private static evaluateTimeIntervalWithOperator(DDLcom/onesignal/OSTrigger$OSTriggerOperator;)Z
    .locals 4
    .param p0, "timeInterval"    # D
    .param p2, "currentTimeInterval"    # D
    .param p4, "operator"    # Lcom/onesignal/OSTrigger$OSTriggerOperator;

    .line 92
    sget-object v0, Lcom/onesignal/OSDynamicTriggerController$2;->$SwitchMap$com$onesignal$OSTrigger$OSTriggerOperator:[I

    invoke-virtual {p4}, Lcom/onesignal/OSTrigger$OSTriggerOperator;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 106
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempted to apply an invalid operator on a time-based in-app-message trigger: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Lcom/onesignal/OSTrigger$OSTriggerOperator;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->onesignalLog(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 107
    return v2

    .line 104
    :pswitch_0
    invoke-static {p0, p1, p2, p3}, Lcom/onesignal/OSDynamicTriggerController;->roughlyEqual(DD)Z

    move-result v0

    xor-int/2addr v0, v1

    return v0

    .line 102
    :pswitch_1
    invoke-static {p0, p1, p2, p3}, Lcom/onesignal/OSDynamicTriggerController;->roughlyEqual(DD)Z

    move-result v0

    return v0

    .line 100
    :pswitch_2
    cmpl-double v0, p2, p0

    if-gez v0, :cond_1

    invoke-static {p0, p1, p2, p3}, Lcom/onesignal/OSDynamicTriggerController;->roughlyEqual(DD)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1

    .line 98
    :pswitch_3
    cmpl-double v0, p2, p0

    if-lez v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    return v1

    .line 96
    :pswitch_4
    cmpg-double v0, p2, p0

    if-lez v0, :cond_4

    invoke-static {p0, p1, p2, p3}, Lcom/onesignal/OSDynamicTriggerController;->roughlyEqual(DD)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :cond_4
    :goto_2
    return v1

    .line 94
    :pswitch_5
    cmpg-double v0, p2, p0

    if-gez v0, :cond_5

    goto :goto_3

    :cond_5
    const/4 v1, 0x0

    :goto_3
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static resetSessionLaunchTime()V
    .locals 1

    .line 88
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    sput-object v0, Lcom/onesignal/OSDynamicTriggerController;->sessionLaunchTime:Ljava/util/Date;

    .line 89
    return-void
.end method

.method private static roughlyEqual(DD)Z
    .locals 5
    .param p0, "left"    # D
    .param p2, "right"    # D

    .line 112
    sub-double v0, p0, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x3fd3333333333333L    # 0.3

    cmpg-double v4, v0, v2

    if-gez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method dynamicTriggerShouldFire(Lcom/onesignal/OSTrigger;)Z
    .locals 12
    .param p1, "trigger"    # Lcom/onesignal/OSTrigger;

    .line 33
    iget-object v0, p1, Lcom/onesignal/OSTrigger;->value:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 34
    return v1

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/onesignal/OSDynamicTriggerController;->scheduledMessages:Ljava/util/ArrayList;

    monitor-enter v0

    .line 38
    :try_start_0
    iget-object v2, p1, Lcom/onesignal/OSTrigger;->value:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/Number;

    if-nez v2, :cond_1

    .line 39
    monitor-exit v0

    return v1

    .line 41
    :cond_1
    const-wide/16 v2, 0x0

    .line 42
    .local v2, "currentTimeInterval":J
    sget-object v4, Lcom/onesignal/OSDynamicTriggerController$2;->$SwitchMap$com$onesignal$OSTrigger$OSTriggerKind:[I

    iget-object v5, p1, Lcom/onesignal/OSTrigger;->kind:Lcom/onesignal/OSTrigger$OSTriggerKind;

    invoke-virtual {v5}, Lcom/onesignal/OSTrigger$OSTriggerKind;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 47
    :pswitch_0
    invoke-static {}, Lcom/onesignal/OneSignal;->getInAppMessageController()Lcom/onesignal/OSInAppMessageController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/onesignal/OSInAppMessageController;->isInAppMessageShowing()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 48
    monitor-exit v0

    return v1

    .line 49
    :cond_2
    invoke-static {}, Lcom/onesignal/OneSignal;->getInAppMessageController()Lcom/onesignal/OSInAppMessageController;

    move-result-object v4

    iget-object v4, v4, Lcom/onesignal/OSInAppMessageController;->lastTimeInAppDismissed:Ljava/util/Date;

    .line 50
    .local v4, "lastTimeAppDismissed":Ljava/util/Date;
    if-nez v4, :cond_3

    .line 51
    const-wide/32 v2, 0xf423f

    goto :goto_0

    .line 53
    :cond_3
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    sub-long v2, v5, v7

    goto :goto_0

    .line 44
    .end local v4    # "lastTimeAppDismissed":Ljava/util/Date;
    :pswitch_1
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sget-object v6, Lcom/onesignal/OSDynamicTriggerController;->sessionLaunchTime:Ljava/util/Date;

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    sub-long v2, v4, v6

    .line 45
    nop

    .line 57
    :goto_0
    iget-object v4, p1, Lcom/onesignal/OSTrigger;->triggerId:Ljava/lang/String;

    .line 58
    .local v4, "triggerId":Ljava/lang/String;
    iget-object v5, p1, Lcom/onesignal/OSTrigger;->value:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v5

    const-wide v7, 0x408f400000000000L    # 1000.0

    mul-double v5, v5, v7

    double-to-long v5, v5

    .line 59
    .local v5, "requiredTimeInterval":J
    long-to-double v7, v5

    long-to-double v9, v2

    iget-object v11, p1, Lcom/onesignal/OSTrigger;->operatorType:Lcom/onesignal/OSTrigger$OSTriggerOperator;

    invoke-static {v7, v8, v9, v10, v11}, Lcom/onesignal/OSDynamicTriggerController;->evaluateTimeIntervalWithOperator(DDLcom/onesignal/OSTrigger$OSTriggerOperator;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 60
    iget-object v1, p0, Lcom/onesignal/OSDynamicTriggerController;->observer:Lcom/onesignal/OSDynamicTriggerController$OSDynamicTriggerControllerObserver;

    invoke-interface {v1, v4}, Lcom/onesignal/OSDynamicTriggerController$OSDynamicTriggerControllerObserver;->messageDynamicTriggerCompleted(Ljava/lang/String;)V

    .line 61
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 64
    :cond_4
    sub-long v7, v5, v2

    .line 65
    .local v7, "offset":J
    const-wide/16 v9, 0x0

    cmp-long v11, v7, v9

    if-gtz v11, :cond_5

    .line 66
    monitor-exit v0

    return v1

    .line 69
    :cond_5
    iget-object v9, p0, Lcom/onesignal/OSDynamicTriggerController;->scheduledMessages:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 70
    monitor-exit v0

    return v1

    .line 72
    :cond_6
    new-instance v9, Lcom/onesignal/OSDynamicTriggerController$1;

    invoke-direct {v9, p0, v4}, Lcom/onesignal/OSDynamicTriggerController$1;-><init>(Lcom/onesignal/OSDynamicTriggerController;Ljava/lang/String;)V

    invoke-static {v9, v4, v7, v8}, Lcom/onesignal/OSDynamicTriggerTimer;->scheduleTrigger(Ljava/util/TimerTask;Ljava/lang/String;J)V

    .line 80
    iget-object v9, p0, Lcom/onesignal/OSDynamicTriggerController;->scheduledMessages:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    nop

    .end local v2    # "currentTimeInterval":J
    .end local v4    # "triggerId":Ljava/lang/String;
    .end local v5    # "requiredTimeInterval":J
    .end local v7    # "offset":J
    monitor-exit v0

    .line 83
    return v1

    .line 81
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
