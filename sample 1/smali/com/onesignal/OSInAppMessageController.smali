.class Lcom/onesignal/OSInAppMessageController;
.super Ljava/lang/Object;
.source "OSInAppMessageController.java"

# interfaces
.implements Lcom/onesignal/OSDynamicTriggerController$OSDynamicTriggerControllerObserver;
.implements Lcom/onesignal/OSSystemConditionController$OSSystemConditionObserver;


# static fields
.field public static final IN_APP_MESSAGES_JSON_KEY:Ljava/lang/String; = "in_app_messages"

.field private static final LOCK:Ljava/lang/Object;

.field private static final OS_SAVE_IN_APP_MESSAGE:Ljava/lang/String; = "OS_SAVE_IN_APP_MESSAGE"

.field private static PREFERRED_VARIANT_ORDER:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final clickedClickIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private currentPrompt:Lcom/onesignal/OSInAppMessagePrompt;

.field private final dismissedMessages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private htmlNetworkRequestAttemptCount:I

.field private final impressionedMessages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private inAppMessageRepository:Lcom/onesignal/OSInAppMessageRepository;

.field private inAppMessageShowing:Z

.field private inAppMessagingEnabled:Z

.field lastTimeInAppDismissed:Ljava/util/Date;

.field private final messageDisplayQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/onesignal/OSInAppMessage;",
            ">;"
        }
    .end annotation
.end field

.field private messages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/onesignal/OSInAppMessage;",
            ">;"
        }
    .end annotation
.end field

.field private redisplayedInAppMessages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onesignal/OSInAppMessage;",
            ">;"
        }
    .end annotation
.end field

.field private systemConditionController:Lcom/onesignal/OSSystemConditionController;

.field triggerController:Lcom/onesignal/OSTriggerController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    new-instance v0, Lcom/onesignal/OSInAppMessageController$1;

    invoke-direct {v0}, Lcom/onesignal/OSInAppMessageController$1;-><init>()V

    sput-object v0, Lcom/onesignal/OSInAppMessageController;->PREFERRED_VARIANT_ORDER:Ljava/util/ArrayList;

    .line 35
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/onesignal/OSInAppMessageController;->LOCK:Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>(Lcom/onesignal/OneSignalDbHelper;)V
    .locals 6
    .param p1, "dbHelper"    # Lcom/onesignal/OneSignalDbHelper;

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/onesignal/OSInAppMessageController;->currentPrompt:Lcom/onesignal/OSInAppMessagePrompt;

    .line 65
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/onesignal/OSInAppMessageController;->inAppMessagingEnabled:Z

    .line 66
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/onesignal/OSInAppMessageController;->inAppMessageShowing:Z

    .line 68
    iput-object v0, p0, Lcom/onesignal/OSInAppMessageController;->lastTimeInAppDismissed:Ljava/util/Date;

    .line 70
    iput v1, p0, Lcom/onesignal/OSInAppMessageController;->htmlNetworkRequestAttemptCount:I

    .line 73
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/onesignal/OSInAppMessageController;->messages:Ljava/util/ArrayList;

    .line 74
    invoke-static {}, Lcom/onesignal/OSUtils;->newConcurrentSet()Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/onesignal/OSInAppMessageController;->dismissedMessages:Ljava/util/Set;

    .line 75
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/onesignal/OSInAppMessageController;->messageDisplayQueue:Ljava/util/ArrayList;

    .line 76
    invoke-static {}, Lcom/onesignal/OSUtils;->newConcurrentSet()Ljava/util/Set;

    move-result-object v2

    iput-object v2, p0, Lcom/onesignal/OSInAppMessageController;->impressionedMessages:Ljava/util/Set;

    .line 77
    invoke-static {}, Lcom/onesignal/OSUtils;->newConcurrentSet()Ljava/util/Set;

    move-result-object v3

    iput-object v3, p0, Lcom/onesignal/OSInAppMessageController;->clickedClickIds:Ljava/util/Set;

    .line 78
    new-instance v4, Lcom/onesignal/OSTriggerController;

    invoke-direct {v4, p0}, Lcom/onesignal/OSTriggerController;-><init>(Lcom/onesignal/OSDynamicTriggerController$OSDynamicTriggerControllerObserver;)V

    iput-object v4, p0, Lcom/onesignal/OSInAppMessageController;->triggerController:Lcom/onesignal/OSTriggerController;

    .line 79
    new-instance v4, Lcom/onesignal/OSSystemConditionController;

    invoke-direct {v4, p0}, Lcom/onesignal/OSSystemConditionController;-><init>(Lcom/onesignal/OSSystemConditionController$OSSystemConditionObserver;)V

    iput-object v4, p0, Lcom/onesignal/OSInAppMessageController;->systemConditionController:Lcom/onesignal/OSSystemConditionController;

    .line 81
    sget-object v4, Lcom/onesignal/OneSignalPrefs;->PREFS_ONESIGNAL:Ljava/lang/String;

    const-string v5, "PREFS_OS_DISPLAYED_IAMS"

    invoke-static {v4, v5, v0}, Lcom/onesignal/OneSignalPrefs;->getStringSet(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v4

    .line 86
    .local v4, "tempDismissedSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v4, :cond_0

    .line 87
    invoke-interface {v1, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 89
    :cond_0
    sget-object v1, Lcom/onesignal/OneSignalPrefs;->PREFS_ONESIGNAL:Ljava/lang/String;

    const-string v5, "PREFS_OS_IMPRESSIONED_IAMS"

    invoke-static {v1, v5, v0}, Lcom/onesignal/OneSignalPrefs;->getStringSet(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    .line 94
    .local v1, "tempImpressionsSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v1, :cond_1

    .line 95
    invoke-interface {v2, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 97
    :cond_1
    sget-object v2, Lcom/onesignal/OneSignalPrefs;->PREFS_ONESIGNAL:Ljava/lang/String;

    const-string v5, "PREFS_OS_CLICKED_CLICK_IDS_IAMS"

    invoke-static {v2, v5, v0}, Lcom/onesignal/OneSignalPrefs;->getStringSet(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 102
    .local v0, "tempClickedMessageIdsSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v0, :cond_2

    .line 103
    invoke-interface {v3, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 105
    :cond_2
    invoke-virtual {p0, p1}, Lcom/onesignal/OSInAppMessageController;->initRedisplayData(Lcom/onesignal/OneSignalDbHelper;)V

    .line 106
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;

    .line 25
    invoke-static {p0, p1}, Lcom/onesignal/OSInAppMessageController;->printHttpSuccessForInAppMessageRequest(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/onesignal/OSInAppMessageController;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/onesignal/OSInAppMessageController;

    .line 25
    iget-object v0, p0, Lcom/onesignal/OSInAppMessageController;->impressionedMessages:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/onesignal/OSInAppMessageController;Lcom/onesignal/OSInAppMessage;)V
    .locals 0
    .param p0, "x0"    # Lcom/onesignal/OSInAppMessageController;
    .param p1, "x1"    # Lcom/onesignal/OSInAppMessage;

    .line 25
    invoke-direct {p0, p1}, Lcom/onesignal/OSInAppMessageController;->queueMessageForDisplay(Lcom/onesignal/OSInAppMessage;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/onesignal/OSInAppMessageController;Lcom/onesignal/OSInAppMessage;)V
    .locals 0
    .param p0, "x0"    # Lcom/onesignal/OSInAppMessageController;
    .param p1, "x1"    # Lcom/onesignal/OSInAppMessage;

    .line 25
    invoke-direct {p0, p1}, Lcom/onesignal/OSInAppMessageController;->dismissCurrentMessage(Lcom/onesignal/OSInAppMessage;)V

    return-void
.end method

.method static synthetic access$200(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .line 25
    invoke-static {p0, p1, p2}, Lcom/onesignal/OSInAppMessageController;->printHttpErrorForInAppMessageRequest(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$302(Lcom/onesignal/OSInAppMessageController;Lcom/onesignal/OSInAppMessagePrompt;)Lcom/onesignal/OSInAppMessagePrompt;
    .locals 0
    .param p0, "x0"    # Lcom/onesignal/OSInAppMessageController;
    .param p1, "x1"    # Lcom/onesignal/OSInAppMessagePrompt;

    .line 25
    iput-object p1, p0, Lcom/onesignal/OSInAppMessageController;->currentPrompt:Lcom/onesignal/OSInAppMessagePrompt;

    return-object p1
.end method

.method static synthetic access$400(Lcom/onesignal/OSInAppMessageController;Lcom/onesignal/OSInAppMessage;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/onesignal/OSInAppMessageController;
    .param p1, "x1"    # Lcom/onesignal/OSInAppMessage;
    .param p2, "x2"    # Ljava/util/List;

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/onesignal/OSInAppMessageController;->showAlertDialogMessage(Lcom/onesignal/OSInAppMessage;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$500(Lcom/onesignal/OSInAppMessageController;Lcom/onesignal/OSInAppMessage;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/onesignal/OSInAppMessageController;
    .param p1, "x1"    # Lcom/onesignal/OSInAppMessage;
    .param p2, "x2"    # Ljava/util/List;

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/onesignal/OSInAppMessageController;->showMultiplePrompts(Lcom/onesignal/OSInAppMessage;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$600(Lcom/onesignal/OSInAppMessageController;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/onesignal/OSInAppMessageController;

    .line 25
    iget-object v0, p0, Lcom/onesignal/OSInAppMessageController;->clickedClickIds:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$700(Lcom/onesignal/OSInAppMessageController;)Lcom/onesignal/OSInAppMessageRepository;
    .locals 1
    .param p0, "x0"    # Lcom/onesignal/OSInAppMessageController;

    .line 25
    iget-object v0, p0, Lcom/onesignal/OSInAppMessageController;->inAppMessageRepository:Lcom/onesignal/OSInAppMessageRepository;

    return-object v0
.end method

.method static synthetic access$802(Lcom/onesignal/OSInAppMessageController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/onesignal/OSInAppMessageController;
    .param p1, "x1"    # Z

    .line 25
    iput-boolean p1, p0, Lcom/onesignal/OSInAppMessageController;->inAppMessageShowing:Z

    return p1
.end method

.method static synthetic access$900(Lcom/onesignal/OSInAppMessageController;)I
    .locals 1
    .param p0, "x0"    # Lcom/onesignal/OSInAppMessageController;

    .line 25
    iget v0, p0, Lcom/onesignal/OSInAppMessageController;->htmlNetworkRequestAttemptCount:I

    return v0
.end method

.method static synthetic access$902(Lcom/onesignal/OSInAppMessageController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/onesignal/OSInAppMessageController;
    .param p1, "x1"    # I

    .line 25
    iput p1, p0, Lcom/onesignal/OSInAppMessageController;->htmlNetworkRequestAttemptCount:I

    return p1
.end method

.method static synthetic access$908(Lcom/onesignal/OSInAppMessageController;)I
    .locals 2
    .param p0, "x0"    # Lcom/onesignal/OSInAppMessageController;

    .line 25
    iget v0, p0, Lcom/onesignal/OSInAppMessageController;->htmlNetworkRequestAttemptCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/onesignal/OSInAppMessageController;->htmlNetworkRequestAttemptCount:I

    return v0
.end method

.method private attemptToShowInAppMessage()V
    .locals 4

    .line 518
    iget-object v0, p0, Lcom/onesignal/OSInAppMessageController;->messageDisplayQueue:Ljava/util/ArrayList;

    monitor-enter v0

    .line 520
    :try_start_0
    iget-object v1, p0, Lcom/onesignal/OSInAppMessageController;->systemConditionController:Lcom/onesignal/OSSystemConditionController;

    invoke-virtual {v1}, Lcom/onesignal/OSSystemConditionController;->systemConditionsAvailable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 521
    sget-object v1, Lcom/onesignal/OneSignal$LOG_LEVEL;->WARN:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v2, "In app message not showing due to system condition not correct"

    invoke-static {v1, v2}, Lcom/onesignal/OneSignal;->onesignalLog(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 522
    monitor-exit v0

    return-void

    .line 525
    :cond_0
    sget-object v1, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "displayFirstIAMOnQueue: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/onesignal/OSInAppMessageController;->messageDisplayQueue:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/onesignal/OneSignal;->onesignalLog(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 527
    iget-object v1, p0, Lcom/onesignal/OSInAppMessageController;->messageDisplayQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {p0}, Lcom/onesignal/OSInAppMessageController;->isInAppMessageShowing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 528
    sget-object v1, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v2, "No IAM showing currently, showing first item in the queue!"

    invoke-static {v1, v2}, Lcom/onesignal/OneSignal;->onesignalLog(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 529
    iget-object v1, p0, Lcom/onesignal/OSInAppMessageController;->messageDisplayQueue:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onesignal/OSInAppMessage;

    invoke-direct {p0, v1}, Lcom/onesignal/OSInAppMessageController;->displayMessage(Lcom/onesignal/OSInAppMessage;)V

    .line 530
    monitor-exit v0

    return-void

    .line 533
    :cond_1
    sget-object v1, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v2, "In app message is currently showing or there are no IAMs left in the queue!"

    invoke-static {v1, v2}, Lcom/onesignal/OneSignal;->onesignalLog(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 534
    monitor-exit v0

    .line 535
    return-void

    .line 534
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private beginProcessingPrompts(Lcom/onesignal/OSInAppMessage;Ljava/util/List;)V
    .locals 3
    .param p1, "message"    # Lcom/onesignal/OSInAppMessage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onesignal/OSInAppMessage;",
            "Ljava/util/List<",
            "Lcom/onesignal/OSInAppMessagePrompt;",
            ">;)V"
        }
    .end annotation

    .line 316
    .local p2, "prompts":Ljava/util/List;, "Ljava/util/List<Lcom/onesignal/OSInAppMessagePrompt;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 317
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IAM showing prompts from IAM: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/onesignal/OSInAppMessage;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->onesignalLog(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 319
    invoke-static {}, Lcom/onesignal/WebViewManager;->dismissCurrentInAppMessage()V

    .line 320
    invoke-direct {p0, p1, p2}, Lcom/onesignal/OSInAppMessageController;->showMultiplePrompts(Lcom/onesignal/OSInAppMessage;Ljava/util/List;)V

    .line 322
    :cond_0
    return-void
.end method

.method private dismissCurrentMessage(Lcom/onesignal/OSInAppMessage;)V
    .locals 6
    .param p1, "message"    # Lcom/onesignal/OSInAppMessage;

    .line 588
    invoke-static {}, Lcom/onesignal/OneSignal;->getSessionManager()Lcom/onesignal/OSSessionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onesignal/OSSessionManager;->onDirectInfluenceFromIAMClickFinished()V

    .line 590
    iget-object v0, p0, Lcom/onesignal/OSInAppMessageController;->currentPrompt:Lcom/onesignal/OSInAppMessagePrompt;

    if-eqz v0, :cond_0

    .line 591
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v1, "Stop evaluateMessageDisplayQueue because prompt is currently displayed"

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->onesignalLog(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 592
    return-void

    .line 595
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/onesignal/OSInAppMessageController;->inAppMessageShowing:Z

    .line 596
    iget-object v1, p0, Lcom/onesignal/OSInAppMessageController;->messageDisplayQueue:Ljava/util/ArrayList;

    monitor-enter v1

    .line 597
    :try_start_0
    iget-object v2, p0, Lcom/onesignal/OSInAppMessageController;->messageDisplayQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 598
    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/onesignal/OSInAppMessageController;->messageDisplayQueue:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 599
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v2, "Message already removed from the queue!"

    invoke-static {v0, v2}, Lcom/onesignal/OneSignal;->onesignalLog(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 600
    monitor-exit v1

    return-void

    .line 602
    :cond_1
    iget-object v2, p0, Lcom/onesignal/OSInAppMessageController;->messageDisplayQueue:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onesignal/OSInAppMessage;

    iget-object v2, v2, Lcom/onesignal/OSInAppMessage;->messageId:Ljava/lang/String;

    .line 603
    .local v2, "removedMessageId":Ljava/lang/String;
    sget-object v3, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "In app message with id, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", dismissed (removed) from the queue!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/onesignal/OneSignal;->onesignalLog(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 608
    .end local v2    # "removedMessageId":Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/onesignal/OSInAppMessageController;->messageDisplayQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 609
    sget-object v2, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "In app message on queue available: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/onesignal/OSInAppMessageController;->messageDisplayQueue:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/onesignal/OSInAppMessage;

    iget-object v4, v4, Lcom/onesignal/OSInAppMessage;->messageId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/onesignal/OneSignal;->onesignalLog(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 610
    iget-object v2, p0, Lcom/onesignal/OSInAppMessageController;->messageDisplayQueue:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onesignal/OSInAppMessage;

    invoke-direct {p0, v0}, Lcom/onesignal/OSInAppMessageController;->displayMessage(Lcom/onesignal/OSInAppMessage;)V

    goto :goto_0

    .line 612
    :cond_3
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v2, "In app message dismissed evaluating messages"

    invoke-static {v0, v2}, Lcom/onesignal/OneSignal;->onesignalLog(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 613
    invoke-direct {p0}, Lcom/onesignal/OSInAppMessageController;->evaluateInAppMessages()V

    .line 615
    :goto_0
    monitor-exit v1

    .line 616
    return-void

    .line 615
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private displayMessage(Lcom/onesignal/OSInAppMessage;)V
    .locals 3
    .param p1, "message"    # Lcom/onesignal/OSInAppMessage;

    .line 658
    iget-boolean v0, p0, Lcom/onesignal/OSInAppMessageController;->inAppMessagingEnabled:Z

    if-nez v0, :cond_0

    .line 659
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->VERBOSE:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v1, "In app messaging is currently paused, iam will not be shown!"

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->onesignalLog(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 660
    return-void

    .line 663
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/onesignal/OSInAppMessageController;->inAppMessageShowing:Z

    .line 665
    invoke-static {p1}, Lcom/onesignal/OSInAppMessageController;->htmlPathForMessage(Lcom/onesignal/OSInAppMessage;)Ljava/lang/String;

    move-result-object v0

    .line 666
    .local v0, "htmlPath":Ljava/lang/String;
    new-instance v1, Lcom/onesignal/OSInAppMessageController$10;

    invoke-direct {v1, p0, p1}, Lcom/onesignal/OSInAppMessageController$10;-><init>(Lcom/onesignal/OSInAppMessageController;Lcom/onesignal/OSInAppMessage;)V

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/onesignal/OneSignalRestClient;->get(Ljava/lang/String;Lcom/onesignal/OneSignalRestClient$ResponseHandler;Ljava/lang/String;)V

    .line 707
    return-void
.end method

.method private evaluateInAppMessages()V
    .locals 4

    .line 197
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v1, "Starting evaluateInAppMessages"

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 199
    iget-object v0, p0, Lcom/onesignal/OSInAppMessageController;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onesignal/OSInAppMessage;

    .line 201
    .local v1, "message":Lcom/onesignal/OSInAppMessage;
    iget-object v2, p0, Lcom/onesignal/OSInAppMessageController;->triggerController:Lcom/onesignal/OSTriggerController;

    invoke-virtual {v2, v1}, Lcom/onesignal/OSTriggerController;->evaluateMessageTriggers(Lcom/onesignal/OSInAppMessage;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 202
    invoke-direct {p0, v1}, Lcom/onesignal/OSInAppMessageController;->setDataForRedisplay(Lcom/onesignal/OSInAppMessage;)V

    .line 204
    iget-object v2, p0, Lcom/onesignal/OSInAppMessageController;->dismissedMessages:Ljava/util/Set;

    iget-object v3, v1, Lcom/onesignal/OSInAppMessage;->messageId:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 205
    invoke-direct {p0, v1}, Lcom/onesignal/OSInAppMessageController;->queueMessageForDisplay(Lcom/onesignal/OSInAppMessage;)V

    .line 208
    .end local v1    # "message":Lcom/onesignal/OSInAppMessage;
    :cond_0
    goto :goto_0

    .line 209
    :cond_1
    return-void
.end method

.method private fireClickAction(Lcom/onesignal/OSInAppMessageAction;)V
    .locals 2
    .param p1, "action"    # Lcom/onesignal/OSInAppMessageAction;

    .line 403
    iget-object v0, p1, Lcom/onesignal/OSInAppMessageAction;->clickUrl:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/onesignal/OSInAppMessageAction;->clickUrl:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 404
    iget-object v0, p1, Lcom/onesignal/OSInAppMessageAction;->urlTarget:Lcom/onesignal/OSInAppMessageAction$OSInAppMessageActionUrlType;

    sget-object v1, Lcom/onesignal/OSInAppMessageAction$OSInAppMessageActionUrlType;->BROWSER:Lcom/onesignal/OSInAppMessageAction$OSInAppMessageActionUrlType;

    if-ne v0, v1, :cond_0

    .line 405
    iget-object v0, p1, Lcom/onesignal/OSInAppMessageAction;->clickUrl:Ljava/lang/String;

    invoke-static {v0}, Lcom/onesignal/OSUtils;->openURLInBrowser(Ljava/lang/String;)V

    goto :goto_0

    .line 406
    :cond_0
    iget-object v0, p1, Lcom/onesignal/OSInAppMessageAction;->urlTarget:Lcom/onesignal/OSInAppMessageAction$OSInAppMessageActionUrlType;

    sget-object v1, Lcom/onesignal/OSInAppMessageAction$OSInAppMessageActionUrlType;->IN_APP_WEBVIEW:Lcom/onesignal/OSInAppMessageAction$OSInAppMessageActionUrlType;

    if-ne v0, v1, :cond_1

    .line 407
    iget-object v0, p1, Lcom/onesignal/OSInAppMessageAction;->clickUrl:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/onesignal/OneSignalChromeTab;->open(Ljava/lang/String;Z)Z

    .line 409
    :cond_1
    :goto_0
    return-void
.end method

.method private fireOutcomesForClick(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p1, "messageId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/onesignal/OSInAppMessageOutcome;",
            ">;)V"
        }
    .end annotation

    .line 370
    .local p2, "outcomes":Ljava/util/List;, "Ljava/util/List<Lcom/onesignal/OSInAppMessageOutcome;>;"
    invoke-static {}, Lcom/onesignal/OneSignal;->getSessionManager()Lcom/onesignal/OSSessionManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/onesignal/OSSessionManager;->onDirectInfluenceFromIAMClick(Ljava/lang/String;)V

    .line 371
    invoke-static {p2}, Lcom/onesignal/OneSignal;->sendClickActionOutcomes(Ljava/util/List;)V

    .line 372
    return-void
.end method

.method private firePublicClickHandler(Ljava/lang/String;Lcom/onesignal/OSInAppMessageAction;)V
    .locals 1
    .param p1, "messageId"    # Ljava/lang/String;
    .param p2, "action"    # Lcom/onesignal/OSInAppMessageAction;

    .line 386
    sget-object v0, Lcom/onesignal/OneSignal;->mInitBuilder:Lcom/onesignal/OneSignal$Builder;

    iget-object v0, v0, Lcom/onesignal/OneSignal$Builder;->mInAppMessageClickHandler:Lcom/onesignal/OneSignal$InAppMessageClickHandler;

    if-nez v0, :cond_0

    .line 387
    return-void

    .line 389
    :cond_0
    new-instance v0, Lcom/onesignal/OSInAppMessageController$6;

    invoke-direct {v0, p0, p1, p2}, Lcom/onesignal/OSInAppMessageController$6;-><init>(Lcom/onesignal/OSInAppMessageController;Ljava/lang/String;Lcom/onesignal/OSInAppMessageAction;)V

    invoke-static {v0}, Lcom/onesignal/OSUtils;->runOnMainUIThread(Ljava/lang/Runnable;)V

    .line 400
    return-void
.end method

.method private fireRESTCallForClick(Lcom/onesignal/OSInAppMessage;Lcom/onesignal/OSInAppMessageAction;)V
    .locals 6
    .param p1, "message"    # Lcom/onesignal/OSInAppMessage;
    .param p2, "action"    # Lcom/onesignal/OSInAppMessageAction;

    .line 412
    invoke-static {p1}, Lcom/onesignal/OSInAppMessageController;->variantIdForMessage(Lcom/onesignal/OSInAppMessage;)Ljava/lang/String;

    move-result-object v0

    .line 413
    .local v0, "variantId":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 414
    return-void

    .line 416
    :cond_0
    iget-object v1, p2, Lcom/onesignal/OSInAppMessageAction;->clickId:Ljava/lang/String;

    .line 418
    .local v1, "clickId":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/onesignal/OSInAppMessage;->getRedisplayStats()Lcom/onesignal/OSInAppMessageRedisplayStats;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onesignal/OSInAppMessageRedisplayStats;->isRedisplayEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1, v1}, Lcom/onesignal/OSInAppMessage;->isClickAvailable(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 421
    .local v2, "clickAvailableByRedisplay":Z
    :goto_0
    if-nez v2, :cond_2

    iget-object v3, p0, Lcom/onesignal/OSInAppMessageController;->clickedClickIds:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 422
    return-void

    .line 424
    :cond_2
    iget-object v3, p0, Lcom/onesignal/OSInAppMessageController;->clickedClickIds:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 426
    invoke-virtual {p1, v1}, Lcom/onesignal/OSInAppMessage;->addClickId(Ljava/lang/String;)V

    .line 429
    :try_start_0
    new-instance v3, Lcom/onesignal/OSInAppMessageController$7;

    invoke-direct {v3, p0, v1, v0, p2}, Lcom/onesignal/OSInAppMessageController$7;-><init>(Lcom/onesignal/OSInAppMessageController;Ljava/lang/String;Ljava/lang/String;Lcom/onesignal/OSInAppMessageAction;)V

    .line 439
    .local v3, "json":Lorg/json/JSONObject;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "in_app_messages/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Lcom/onesignal/OSInAppMessage;->messageId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/click"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/onesignal/OSInAppMessageController$8;

    invoke-direct {v5, p0, p2}, Lcom/onesignal/OSInAppMessageController$8;-><init>(Lcom/onesignal/OSInAppMessageController;Lcom/onesignal/OSInAppMessageAction;)V

    invoke-static {v4, v3, v5}, Lcom/onesignal/OneSignalRestClient;->post(Ljava/lang/String;Lorg/json/JSONObject;Lcom/onesignal/OneSignalRestClient$ResponseHandler;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 460
    .end local v3    # "json":Lorg/json/JSONObject;
    goto :goto_1

    .line 457
    :catch_0
    move-exception v3

    .line 458
    .local v3, "e":Lorg/json/JSONException;
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    .line 459
    sget-object v4, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v5, "Unable to execute in-app message action HTTP request due to invalid JSON"

    invoke-static {v4, v5}, Lcom/onesignal/OneSignal;->onesignalLog(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 461
    .end local v3    # "e":Lorg/json/JSONException;
    :goto_1
    return-void
.end method

.method private fireTagCallForClick(Lcom/onesignal/OSInAppMessageAction;)V
    .locals 3
    .param p1, "action"    # Lcom/onesignal/OSInAppMessageAction;

    .line 375
    iget-object v0, p1, Lcom/onesignal/OSInAppMessageAction;->tags:Lcom/onesignal/OSInAppMessageTag;

    if-eqz v0, :cond_1

    .line 376
    iget-object v0, p1, Lcom/onesignal/OSInAppMessageAction;->tags:Lcom/onesignal/OSInAppMessageTag;

    .line 378
    .local v0, "tags":Lcom/onesignal/OSInAppMessageTag;
    invoke-virtual {v0}, Lcom/onesignal/OSInAppMessageTag;->getTagsToAdd()Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 379
    invoke-virtual {v0}, Lcom/onesignal/OSInAppMessageTag;->getTagsToAdd()Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcom/onesignal/OneSignal;->sendTags(Lorg/json/JSONObject;)V

    .line 380
    :cond_0
    invoke-virtual {v0}, Lcom/onesignal/OSInAppMessageTag;->getTagsToRemove()Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 381
    invoke-virtual {v0}, Lcom/onesignal/OSInAppMessageTag;->getTagsToRemove()Lorg/json/JSONArray;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/onesignal/OneSignal;->deleteTags(Lorg/json/JSONArray;Lcom/onesignal/OneSignal$ChangeTagsUpdateHandler;)V

    .line 383
    .end local v0    # "tags":Lcom/onesignal/OSInAppMessageTag;
    :cond_1
    return-void
.end method

.method private static htmlPathForMessage(Lcom/onesignal/OSInAppMessage;)Ljava/lang/String;
    .locals 4
    .param p0, "message"    # Lcom/onesignal/OSInAppMessage;

    .line 647
    invoke-static {p0}, Lcom/onesignal/OSInAppMessageController;->variantIdForMessage(Lcom/onesignal/OSInAppMessage;)Ljava/lang/String;

    move-result-object v0

    .line 649
    .local v0, "variantId":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 650
    sget-object v1, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to find a variant for in-app message "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/onesignal/OSInAppMessage;->messageId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/onesignal/OneSignal;->onesignalLog(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 651
    const/4 v1, 0x0

    return-object v1

    .line 654
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "in_app_messages/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/onesignal/OSInAppMessage;->messageId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/variants/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/html?app_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/onesignal/OneSignal;->appId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private logInAppMessagePreviewActions(Lcom/onesignal/OSInAppMessageAction;)V
    .locals 3
    .param p1, "action"    # Lcom/onesignal/OSInAppMessageAction;

    .line 306
    iget-object v0, p1, Lcom/onesignal/OSInAppMessageAction;->tags:Lcom/onesignal/OSInAppMessageTag;

    if-eqz v0, :cond_0

    .line 307
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tags detected inside of the action click payload, ignoring because action came from IAM preview:: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/onesignal/OSInAppMessageAction;->tags:Lcom/onesignal/OSInAppMessageTag;

    invoke-virtual {v2}, Lcom/onesignal/OSInAppMessageTag;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->onesignalLog(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 309
    :cond_0
    iget-object v0, p1, Lcom/onesignal/OSInAppMessageAction;->outcomes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 310
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Outcomes detected inside of the action click payload, ignoring because action came from IAM preview: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/onesignal/OSInAppMessageAction;->outcomes:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->onesignalLog(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 313
    :cond_1
    return-void
.end method

.method private makeRedisplayMessagesAvailableWithTriggers(Ljava/util/Collection;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 792
    .local p1, "newTriggersKeys":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/onesignal/OSInAppMessageController;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onesignal/OSInAppMessage;

    .line 793
    .local v1, "message":Lcom/onesignal/OSInAppMessage;
    invoke-virtual {v1}, Lcom/onesignal/OSInAppMessage;->isTriggerChanged()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/onesignal/OSInAppMessageController;->redisplayedInAppMessages:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/onesignal/OSInAppMessageController;->triggerController:Lcom/onesignal/OSTriggerController;

    .line 794
    invoke-virtual {v2, v1, p1}, Lcom/onesignal/OSTriggerController;->isTriggerOnMessage(Lcom/onesignal/OSInAppMessage;Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 795
    sget-object v2, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Trigger changed for message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/onesignal/OSInAppMessage;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/onesignal/OneSignal;->onesignalLog(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 796
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/onesignal/OSInAppMessage;->setTriggerChanged(Z)V

    .line 798
    .end local v1    # "message":Lcom/onesignal/OSInAppMessage;
    :cond_0
    goto :goto_0

    .line 799
    :cond_1
    return-void
.end method

.method private persistInAppMessage(Lcom/onesignal/OSInAppMessage;)V
    .locals 6
    .param p1, "message"    # Lcom/onesignal/OSInAppMessage;

    .line 619
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 620
    .local v0, "displayTimeSeconds":J
    invoke-virtual {p1}, Lcom/onesignal/OSInAppMessage;->getRedisplayStats()Lcom/onesignal/OSInAppMessageRedisplayStats;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/onesignal/OSInAppMessageRedisplayStats;->setLastDisplayTime(J)V

    .line 621
    invoke-virtual {p1}, Lcom/onesignal/OSInAppMessage;->getRedisplayStats()Lcom/onesignal/OSInAppMessageRedisplayStats;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onesignal/OSInAppMessageRedisplayStats;->incrementDisplayQuantity()V

    .line 622
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/onesignal/OSInAppMessage;->setTriggerChanged(Z)V

    .line 623
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lcom/onesignal/OSInAppMessage;->setDisplayedInSession(Z)V

    .line 625
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/onesignal/OSInAppMessageController$9;

    invoke-direct {v3, p0, p1}, Lcom/onesignal/OSInAppMessageController$9;-><init>(Lcom/onesignal/OSInAppMessageController;Lcom/onesignal/OSInAppMessage;)V

    const-string v4, "OS_SAVE_IN_APP_MESSAGE"

    invoke-direct {v2, v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 631
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 635
    iget-object v2, p0, Lcom/onesignal/OSInAppMessageController;->redisplayedInAppMessages:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 636
    .local v2, "index":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 637
    iget-object v3, p0, Lcom/onesignal/OSInAppMessageController;->redisplayedInAppMessages:Ljava/util/List;

    invoke-interface {v3, v2, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 639
    :cond_0
    iget-object v3, p0, Lcom/onesignal/OSInAppMessageController;->redisplayedInAppMessages:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 642
    :goto_0
    sget-object v3, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "persistInAppMessageForRedisplay: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/onesignal/OSInAppMessage;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " with msg array data: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/onesignal/OSInAppMessageController;->redisplayedInAppMessages:Ljava/util/List;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/onesignal/OneSignal;->onesignalLog(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 643
    return-void
.end method

.method private static printHttpErrorForInAppMessageRequest(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3
    .param p0, "requestType"    # Ljava/lang/String;
    .param p1, "statusCode"    # I
    .param p2, "response"    # Ljava/lang/String;

    .line 232
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Encountered a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " error while attempting in-app message "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " request: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->onesignalLog(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 233
    return-void
.end method

.method private static printHttpSuccessForInAppMessageRequest(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "requestType"    # Ljava/lang/String;
    .param p1, "response"    # Ljava/lang/String;

    .line 228
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Successful post for in-app message "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " request: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->onesignalLog(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 229
    return-void
.end method

.method private processInAppMessageJson(Lorg/json/JSONArray;)V
    .locals 5
    .param p1, "json"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 181
    sget-object v0, Lcom/onesignal/OSInAppMessageController;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 182
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 183
    .local v1, "newMessages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/onesignal/OSInAppMessage;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 184
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 185
    .local v3, "messageJson":Lorg/json/JSONObject;
    new-instance v4, Lcom/onesignal/OSInAppMessage;

    invoke-direct {v4, v3}, Lcom/onesignal/OSInAppMessage;-><init>(Lorg/json/JSONObject;)V

    .line 187
    .local v4, "message":Lcom/onesignal/OSInAppMessage;
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    nop

    .end local v3    # "messageJson":Lorg/json/JSONObject;
    .end local v4    # "message":Lcom/onesignal/OSInAppMessage;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 190
    .end local v2    # "i":I
    :cond_0
    iput-object v1, p0, Lcom/onesignal/OSInAppMessageController;->messages:Ljava/util/ArrayList;

    .line 191
    .end local v1    # "newMessages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/onesignal/OSInAppMessage;>;"
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    invoke-direct {p0}, Lcom/onesignal/OSInAppMessageController;->evaluateInAppMessages()V

    .line 194
    return-void

    .line 191
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method private queueMessageForDisplay(Lcom/onesignal/OSInAppMessage;)V
    .locals 4
    .param p1, "message"    # Lcom/onesignal/OSInAppMessage;

    .line 506
    iget-object v0, p0, Lcom/onesignal/OSInAppMessageController;->messageDisplayQueue:Ljava/util/ArrayList;

    monitor-enter v0

    .line 508
    :try_start_0
    iget-object v1, p0, Lcom/onesignal/OSInAppMessageController;->messageDisplayQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 509
    iget-object v1, p0, Lcom/onesignal/OSInAppMessageController;->messageDisplayQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 510
    sget-object v1, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "In app message with id, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/onesignal/OSInAppMessage;->messageId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", added to the queue"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/onesignal/OneSignal;->onesignalLog(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 513
    :cond_0
    invoke-direct {p0}, Lcom/onesignal/OSInAppMessageController;->attemptToShowInAppMessage()V

    .line 514
    monitor-exit v0

    .line 515
    return-void

    .line 514
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private resetRedisplayMessagesBySession()V
    .locals 3

    .line 175
    iget-object v0, p0, Lcom/onesignal/OSInAppMessageController;->redisplayedInAppMessages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onesignal/OSInAppMessage;

    .line 176
    .local v1, "redisplayInAppMessage":Lcom/onesignal/OSInAppMessage;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/onesignal/OSInAppMessage;->setDisplayedInSession(Z)V

    .line 177
    .end local v1    # "redisplayInAppMessage":Lcom/onesignal/OSInAppMessage;
    goto :goto_0

    .line 178
    :cond_0
    return-void
.end method

.method private setDataForRedisplay(Lcom/onesignal/OSInAppMessage;)V
    .locals 7
    .param p1, "message"    # Lcom/onesignal/OSInAppMessage;

    .line 476
    iget-object v0, p0, Lcom/onesignal/OSInAppMessageController;->dismissedMessages:Ljava/util/Set;

    iget-object v1, p1, Lcom/onesignal/OSInAppMessage;->messageId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 477
    .local v0, "messageDismissed":Z
    iget-object v1, p0, Lcom/onesignal/OSInAppMessageController;->redisplayedInAppMessages:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 479
    .local v1, "index":I
    if-eqz v0, :cond_2

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 480
    iget-object v2, p0, Lcom/onesignal/OSInAppMessageController;->redisplayedInAppMessages:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onesignal/OSInAppMessage;

    .line 481
    .local v2, "savedIAM":Lcom/onesignal/OSInAppMessage;
    invoke-virtual {p1}, Lcom/onesignal/OSInAppMessage;->getRedisplayStats()Lcom/onesignal/OSInAppMessageRedisplayStats;

    move-result-object v3

    invoke-virtual {v2}, Lcom/onesignal/OSInAppMessage;->getRedisplayStats()Lcom/onesignal/OSInAppMessageRedisplayStats;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/onesignal/OSInAppMessageRedisplayStats;->setDisplayStats(Lcom/onesignal/OSInAppMessageRedisplayStats;)V

    .line 484
    invoke-virtual {p1}, Lcom/onesignal/OSInAppMessage;->isTriggerChanged()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Lcom/onesignal/OSInAppMessage;->isDisplayedInSession()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p1, Lcom/onesignal/OSInAppMessage;->triggers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x1

    .line 486
    .local v3, "triggerHasChanged":Z
    :goto_1
    sget-object v4, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setDataForRedisplay: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/onesignal/OSInAppMessage;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " triggerHasChanged: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/onesignal/OneSignal;->onesignalLog(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 489
    if-eqz v3, :cond_2

    .line 490
    invoke-virtual {p1}, Lcom/onesignal/OSInAppMessage;->getRedisplayStats()Lcom/onesignal/OSInAppMessageRedisplayStats;

    move-result-object v4

    invoke-virtual {v4}, Lcom/onesignal/OSInAppMessageRedisplayStats;->isDelayTimeSatisfied()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 491
    invoke-virtual {p1}, Lcom/onesignal/OSInAppMessage;->getRedisplayStats()Lcom/onesignal/OSInAppMessageRedisplayStats;

    move-result-object v4

    invoke-virtual {v4}, Lcom/onesignal/OSInAppMessageRedisplayStats;->shouldDisplayAgain()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 492
    sget-object v4, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setDataForRedisplay message available for redisplay: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p1, Lcom/onesignal/OSInAppMessage;->messageId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/onesignal/OneSignal;->onesignalLog(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 494
    iget-object v4, p0, Lcom/onesignal/OSInAppMessageController;->dismissedMessages:Ljava/util/Set;

    iget-object v5, p1, Lcom/onesignal/OSInAppMessage;->messageId:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 495
    iget-object v4, p0, Lcom/onesignal/OSInAppMessageController;->impressionedMessages:Ljava/util/Set;

    iget-object v5, p1, Lcom/onesignal/OSInAppMessage;->messageId:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 496
    invoke-virtual {p1}, Lcom/onesignal/OSInAppMessage;->clearClickIds()V

    .line 499
    .end local v2    # "savedIAM":Lcom/onesignal/OSInAppMessage;
    .end local v3    # "triggerHasChanged":Z
    :cond_2
    return-void
.end method

.method private showAlertDialogMessage(Lcom/onesignal/OSInAppMessage;Ljava/util/List;)V
    .locals 5
    .param p1, "inAppMessage"    # Lcom/onesignal/OSInAppMessage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onesignal/OSInAppMessage;",
            "Ljava/util/List<",
            "Lcom/onesignal/OSInAppMessagePrompt;",
            ">;)V"
        }
    .end annotation

    .line 356
    .local p2, "prompts":Ljava/util/List;, "Ljava/util/List<Lcom/onesignal/OSInAppMessagePrompt;>;"
    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    sget v1, Lcom/onesignal/R$string;->location_not_available_title:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 357
    .local v0, "messageTitle":Ljava/lang/String;
    sget-object v1, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    sget v2, Lcom/onesignal/R$string;->location_not_available_message:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 358
    .local v1, "message":Ljava/lang/String;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    sget-object v3, Lcom/onesignal/ActivityLifecycleHandler;->curActivity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 359
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 360
    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/onesignal/OSInAppMessageController$5;

    invoke-direct {v3, p0, p1, p2}, Lcom/onesignal/OSInAppMessageController$5;-><init>(Lcom/onesignal/OSInAppMessageController;Lcom/onesignal/OSInAppMessage;Ljava/util/List;)V

    .line 361
    const v4, 0x104000a

    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 366
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 367
    return-void
.end method

.method private showMultiplePrompts(Lcom/onesignal/OSInAppMessage;Ljava/util/List;)V
    .locals 3
    .param p1, "inAppMessage"    # Lcom/onesignal/OSInAppMessage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onesignal/OSInAppMessage;",
            "Ljava/util/List<",
            "Lcom/onesignal/OSInAppMessagePrompt;",
            ">;)V"
        }
    .end annotation

    .line 325
    .local p2, "prompts":Ljava/util/List;, "Ljava/util/List<Lcom/onesignal/OSInAppMessagePrompt;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onesignal/OSInAppMessagePrompt;

    .line 327
    .local v1, "prompt":Lcom/onesignal/OSInAppMessagePrompt;
    invoke-virtual {v1}, Lcom/onesignal/OSInAppMessagePrompt;->hasPrompted()Z

    move-result v2

    if-nez v2, :cond_0

    .line 328
    iput-object v1, p0, Lcom/onesignal/OSInAppMessageController;->currentPrompt:Lcom/onesignal/OSInAppMessagePrompt;

    .line 329
    goto :goto_1

    .line 331
    .end local v1    # "prompt":Lcom/onesignal/OSInAppMessagePrompt;
    :cond_0
    goto :goto_0

    .line 333
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/onesignal/OSInAppMessageController;->currentPrompt:Lcom/onesignal/OSInAppMessagePrompt;

    if-eqz v0, :cond_2

    .line 334
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IAM prompt to handle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/onesignal/OSInAppMessageController;->currentPrompt:Lcom/onesignal/OSInAppMessagePrompt;

    invoke-virtual {v2}, Lcom/onesignal/OSInAppMessagePrompt;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->onesignalLog(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 335
    iget-object v0, p0, Lcom/onesignal/OSInAppMessageController;->currentPrompt:Lcom/onesignal/OSInAppMessagePrompt;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/onesignal/OSInAppMessagePrompt;->setPrompted(Z)V

    .line 336
    iget-object v0, p0, Lcom/onesignal/OSInAppMessageController;->currentPrompt:Lcom/onesignal/OSInAppMessagePrompt;

    new-instance v1, Lcom/onesignal/OSInAppMessageController$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/onesignal/OSInAppMessageController$4;-><init>(Lcom/onesignal/OSInAppMessageController;Lcom/onesignal/OSInAppMessage;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/onesignal/OSInAppMessagePrompt;->handlePrompt(Lcom/onesignal/OneSignal$OSPromptActionCompletionCallback;)V

    goto :goto_2

    .line 350
    :cond_2
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No IAM prompt to handle, dismiss message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/onesignal/OSInAppMessage;->messageId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->onesignalLog(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 351
    invoke-virtual {p0, p1}, Lcom/onesignal/OSInAppMessageController;->messageWasDismissed(Lcom/onesignal/OSInAppMessage;)V

    .line 353
    :goto_2
    return-void
.end method

.method private static variantIdForMessage(Lcom/onesignal/OSInAppMessage;)Ljava/lang/String;
    .locals 4
    .param p0, "message"    # Lcom/onesignal/OSInAppMessage;

    .line 212
    invoke-static {}, Lcom/onesignal/OSUtils;->getCorrectedLanguage()Ljava/lang/String;

    move-result-object v0

    .line 214
    .local v0, "languageIdentifier":Ljava/lang/String;
    sget-object v1, Lcom/onesignal/OSInAppMessageController;->PREFERRED_VARIANT_ORDER:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 215
    .local v2, "variant":Ljava/lang/String;
    iget-object v3, p0, Lcom/onesignal/OSInAppMessage;->variants:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 216
    goto :goto_0

    .line 218
    :cond_0
    iget-object v1, p0, Lcom/onesignal/OSInAppMessage;->variants:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 219
    .local v1, "variantMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 220
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    return-object v3

    .line 221
    :cond_1
    const-string v3, "default"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    return-object v3

    .line 224
    .end local v1    # "variantMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "variant":Ljava/lang/String;
    :cond_2
    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method addTriggers(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 809
    .local p1, "newTriggers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Add trigger called with: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->onesignalLog(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 810
    iget-object v0, p0, Lcom/onesignal/OSInAppMessageController;->triggerController:Lcom/onesignal/OSTriggerController;

    invoke-virtual {v0, p1}, Lcom/onesignal/OSTriggerController;->addTriggers(Ljava/util/Map;)V

    .line 811
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/onesignal/OSInAppMessageController;->makeRedisplayMessagesAvailableWithTriggers(Ljava/util/Collection;)V

    .line 812
    invoke-direct {p0}, Lcom/onesignal/OSInAppMessageController;->evaluateInAppMessages()V

    .line 813
    return-void
.end method

.method displayPreviewMessage(Ljava/lang/String;)V
    .locals 3
    .param p1, "previewUUID"    # Ljava/lang/String;

    .line 710
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/onesignal/OSInAppMessageController;->inAppMessageShowing:Z

    .line 712
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "in_app_messages/device_preview?preview_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&app_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/onesignal/OneSignal;->appId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 713
    .local v0, "htmlPath":Ljava/lang/String;
    new-instance v1, Lcom/onesignal/OSInAppMessageController$11;

    invoke-direct {v1, p0}, Lcom/onesignal/OSInAppMessageController$11;-><init>(Lcom/onesignal/OSInAppMessageController;)V

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/onesignal/OneSignalRestClient;->get(Ljava/lang/String;Lcom/onesignal/OneSignalRestClient$ResponseHandler;Ljava/lang/String;)V

    .line 738
    return-void
.end method

.method getCurrentDisplayedInAppMessage()Lcom/onesignal/OSInAppMessage;
    .locals 2

    .line 544
    iget-boolean v0, p0, Lcom/onesignal/OSInAppMessageController;->inAppMessageShowing:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/onesignal/OSInAppMessageController;->messageDisplayQueue:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onesignal/OSInAppMessage;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getInAppMessageDisplayQueue()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/onesignal/OSInAppMessage;",
            ">;"
        }
    .end annotation

    .line 835
    iget-object v0, p0, Lcom/onesignal/OSInAppMessageController;->messageDisplayQueue:Ljava/util/ArrayList;

    return-object v0
.end method

.method getInAppMessageRepository(Lcom/onesignal/OneSignalDbHelper;)Lcom/onesignal/OSInAppMessageRepository;
    .locals 1
    .param p1, "dbHelper"    # Lcom/onesignal/OneSignalDbHelper;

    .line 109
    iget-object v0, p0, Lcom/onesignal/OSInAppMessageController;->inAppMessageRepository:Lcom/onesignal/OSInAppMessageRepository;

    if-nez v0, :cond_0

    .line 110
    new-instance v0, Lcom/onesignal/OSInAppMessageRepository;

    invoke-direct {v0, p1}, Lcom/onesignal/OSInAppMessageRepository;-><init>(Lcom/onesignal/OneSignalDbHelper;)V

    iput-object v0, p0, Lcom/onesignal/OSInAppMessageController;->inAppMessageRepository:Lcom/onesignal/OSInAppMessageRepository;

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/onesignal/OSInAppMessageController;->inAppMessageRepository:Lcom/onesignal/OSInAppMessageRepository;

    return-object v0
.end method

.method public getRedisplayedInAppMessages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onesignal/OSInAppMessage;",
            ">;"
        }
    .end annotation

    .line 840
    iget-object v0, p0, Lcom/onesignal/OSInAppMessageController;->redisplayedInAppMessages:Ljava/util/List;

    return-object v0
.end method

.method getTriggerValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 830
    iget-object v0, p0, Lcom/onesignal/OSInAppMessageController;->triggerController:Lcom/onesignal/OSTriggerController;

    invoke-virtual {v0, p1}, Lcom/onesignal/OSTriggerController;->getTriggerValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected initRedisplayData(Lcom/onesignal/OneSignalDbHelper;)V
    .locals 3
    .param p1, "dbHelper"    # Lcom/onesignal/OneSignalDbHelper;

    .line 116
    invoke-virtual {p0, p1}, Lcom/onesignal/OSInAppMessageController;->getInAppMessageRepository(Lcom/onesignal/OneSignalDbHelper;)Lcom/onesignal/OSInAppMessageRepository;

    move-result-object v0

    iput-object v0, p0, Lcom/onesignal/OSInAppMessageController;->inAppMessageRepository:Lcom/onesignal/OSInAppMessageRepository;

    .line 117
    invoke-virtual {v0}, Lcom/onesignal/OSInAppMessageRepository;->getCachedInAppMessages()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/onesignal/OSInAppMessageController;->redisplayedInAppMessages:Ljava/util/List;

    .line 119
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "redisplayedInAppMessages: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/onesignal/OSInAppMessageController;->redisplayedInAppMessages:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 120
    return-void
.end method

.method initWithCachedInAppMessages()V
    .locals 4

    .line 130
    iget-object v0, p0, Lcom/onesignal/OSInAppMessageController;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 131
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initWithCachedInAppMessages with already in memory messages: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/onesignal/OSInAppMessageController;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 132
    return-void

    .line 135
    :cond_0
    sget-object v0, Lcom/onesignal/OneSignalPrefs;->PREFS_ONESIGNAL:Ljava/lang/String;

    const-string v1, "PREFS_OS_CACHED_IAMS"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/onesignal/OneSignalPrefs;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 140
    .local v0, "cachedInAppMessageString":Ljava/lang/String;
    sget-object v1, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initWithCachedInAppMessages: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 142
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_2

    .line 145
    :cond_1
    sget-object v1, Lcom/onesignal/OSInAppMessageController;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 148
    :try_start_0
    iget-object v2, p0, Lcom/onesignal/OSInAppMessageController;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_2

    .line 149
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    .line 151
    :cond_2
    :try_start_2
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/onesignal/OSInAppMessageController;->processInAppMessageJson(Lorg/json/JSONArray;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 154
    goto :goto_0

    .line 155
    :catchall_0
    move-exception v2

    goto :goto_1

    .line 152
    :catch_0
    move-exception v2

    .line 153
    .local v2, "e":Lorg/json/JSONException;
    :try_start_3
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 155
    .end local v2    # "e":Lorg/json/JSONException;
    :goto_0
    monitor-exit v1

    .line 156
    return-void

    .line 155
    :goto_1
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 143
    :cond_3
    :goto_2
    return-void
.end method

.method isInAppMessageShowing()Z
    .locals 1

    .line 538
    iget-boolean v0, p0, Lcom/onesignal/OSInAppMessageController;->inAppMessageShowing:Z

    return v0
.end method

.method public messageDynamicTriggerCompleted(Ljava/lang/String;)V
    .locals 3
    .param p1, "triggerId"    # Ljava/lang/String;

    .line 751
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "messageDynamicTriggerCompleted called with triggerId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->onesignalLog(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 752
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 753
    .local v0, "triggerIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 754
    invoke-direct {p0, v0}, Lcom/onesignal/OSInAppMessageController;->makeRedisplayMessagesAvailableWithTriggers(Ljava/util/Collection;)V

    .line 755
    return-void
.end method

.method public messageTriggerConditionChanged()V
    .locals 2

    .line 766
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v1, "messageTriggerConditionChanged called"

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->onesignalLog(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 770
    invoke-direct {p0}, Lcom/onesignal/OSInAppMessageController;->evaluateInAppMessages()V

    .line 771
    return-void
.end method

.method messageWasDismissed(Lcom/onesignal/OSInAppMessage;)V
    .locals 1
    .param p1, "message"    # Lcom/onesignal/OSInAppMessage;

    .line 551
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/onesignal/OSInAppMessageController;->messageWasDismissed(Lcom/onesignal/OSInAppMessage;Z)V

    .line 552
    return-void
.end method

.method messageWasDismissed(Lcom/onesignal/OSInAppMessage;Z)V
    .locals 3
    .param p1, "message"    # Lcom/onesignal/OSInAppMessage;
    .param p2, "failed"    # Z

    .line 555
    iget-boolean v0, p1, Lcom/onesignal/OSInAppMessage;->isPreview:Z

    if-nez v0, :cond_1

    .line 556
    iget-object v0, p0, Lcom/onesignal/OSInAppMessageController;->dismissedMessages:Ljava/util/Set;

    iget-object v1, p1, Lcom/onesignal/OSInAppMessage;->messageId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 558
    if-nez p2, :cond_0

    .line 559
    sget-object v0, Lcom/onesignal/OneSignalPrefs;->PREFS_ONESIGNAL:Ljava/lang/String;

    iget-object v1, p0, Lcom/onesignal/OSInAppMessageController;->dismissedMessages:Ljava/util/Set;

    const-string v2, "PREFS_OS_DISPLAYED_IAMS"

    invoke-static {v0, v2, v1}, Lcom/onesignal/OneSignalPrefs;->saveStringSet(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 565
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/onesignal/OSInAppMessageController;->lastTimeInAppDismissed:Ljava/util/Date;

    .line 567
    invoke-direct {p0, p1}, Lcom/onesignal/OSInAppMessageController;->persistInAppMessage(Lcom/onesignal/OSInAppMessage;)V

    .line 569
    :cond_0
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OSInAppMessageController messageWasDismissed dismissedMessages: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/onesignal/OSInAppMessageController;->dismissedMessages:Ljava/util/Set;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->onesignalLog(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 572
    :cond_1
    invoke-direct {p0, p1}, Lcom/onesignal/OSInAppMessageController;->dismissCurrentMessage(Lcom/onesignal/OSInAppMessage;)V

    .line 573
    return-void
.end method

.method messageWasDismissedByBackPress(Lcom/onesignal/OSInAppMessage;)V
    .locals 3
    .param p1, "message"    # Lcom/onesignal/OSInAppMessage;

    .line 576
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OSInAppMessageController messageWasDismissed by back press: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/onesignal/OSInAppMessage;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->onesignalLog(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 578
    invoke-direct {p0, p1}, Lcom/onesignal/OSInAppMessageController;->dismissCurrentMessage(Lcom/onesignal/OSInAppMessage;)V

    .line 579
    return-void
.end method

.method onMessageActionOccurredOnMessage(Lcom/onesignal/OSInAppMessage;Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "message"    # Lcom/onesignal/OSInAppMessage;
    .param p2, "actionJson"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 284
    new-instance v0, Lcom/onesignal/OSInAppMessageAction;

    invoke-direct {v0, p2}, Lcom/onesignal/OSInAppMessageAction;-><init>(Lorg/json/JSONObject;)V

    .line 285
    .local v0, "action":Lcom/onesignal/OSInAppMessageAction;
    invoke-virtual {p1}, Lcom/onesignal/OSInAppMessage;->takeActionAsUnique()Z

    move-result v1

    iput-boolean v1, v0, Lcom/onesignal/OSInAppMessageAction;->firstClick:Z

    .line 287
    iget-object v1, p1, Lcom/onesignal/OSInAppMessage;->messageId:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/onesignal/OSInAppMessageController;->firePublicClickHandler(Ljava/lang/String;Lcom/onesignal/OSInAppMessageAction;)V

    .line 288
    iget-object v1, v0, Lcom/onesignal/OSInAppMessageAction;->prompts:Ljava/util/List;

    invoke-direct {p0, p1, v1}, Lcom/onesignal/OSInAppMessageController;->beginProcessingPrompts(Lcom/onesignal/OSInAppMessage;Ljava/util/List;)V

    .line 289
    invoke-direct {p0, v0}, Lcom/onesignal/OSInAppMessageController;->fireClickAction(Lcom/onesignal/OSInAppMessageAction;)V

    .line 290
    invoke-direct {p0, p1, v0}, Lcom/onesignal/OSInAppMessageController;->fireRESTCallForClick(Lcom/onesignal/OSInAppMessage;Lcom/onesignal/OSInAppMessageAction;)V

    .line 291
    invoke-direct {p0, v0}, Lcom/onesignal/OSInAppMessageController;->fireTagCallForClick(Lcom/onesignal/OSInAppMessageAction;)V

    .line 292
    iget-object v1, p1, Lcom/onesignal/OSInAppMessage;->messageId:Ljava/lang/String;

    iget-object v2, v0, Lcom/onesignal/OSInAppMessageAction;->outcomes:Ljava/util/List;

    invoke-direct {p0, v1, v2}, Lcom/onesignal/OSInAppMessageController;->fireOutcomesForClick(Ljava/lang/String;Ljava/util/List;)V

    .line 293
    return-void
.end method

.method onMessageActionOccurredOnPreview(Lcom/onesignal/OSInAppMessage;Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "message"    # Lcom/onesignal/OSInAppMessage;
    .param p2, "actionJson"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 296
    new-instance v0, Lcom/onesignal/OSInAppMessageAction;

    invoke-direct {v0, p2}, Lcom/onesignal/OSInAppMessageAction;-><init>(Lorg/json/JSONObject;)V

    .line 297
    .local v0, "action":Lcom/onesignal/OSInAppMessageAction;
    invoke-virtual {p1}, Lcom/onesignal/OSInAppMessage;->takeActionAsUnique()Z

    move-result v1

    iput-boolean v1, v0, Lcom/onesignal/OSInAppMessageAction;->firstClick:Z

    .line 299
    iget-object v1, p1, Lcom/onesignal/OSInAppMessage;->messageId:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/onesignal/OSInAppMessageController;->firePublicClickHandler(Ljava/lang/String;Lcom/onesignal/OSInAppMessageAction;)V

    .line 300
    iget-object v1, v0, Lcom/onesignal/OSInAppMessageAction;->prompts:Ljava/util/List;

    invoke-direct {p0, p1, v1}, Lcom/onesignal/OSInAppMessageController;->beginProcessingPrompts(Lcom/onesignal/OSInAppMessage;Ljava/util/List;)V

    .line 301
    invoke-direct {p0, v0}, Lcom/onesignal/OSInAppMessageController;->fireClickAction(Lcom/onesignal/OSInAppMessageAction;)V

    .line 302
    invoke-direct {p0, v0}, Lcom/onesignal/OSInAppMessageController;->logInAppMessagePreviewActions(Lcom/onesignal/OSInAppMessageAction;)V

    .line 303
    return-void
.end method

.method onMessageWasShown(Lcom/onesignal/OSInAppMessage;)V
    .locals 4
    .param p1, "message"    # Lcom/onesignal/OSInAppMessage;

    .line 236
    iget-boolean v0, p1, Lcom/onesignal/OSInAppMessage;->isPreview:Z

    if-eqz v0, :cond_0

    .line 237
    return-void

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/onesignal/OSInAppMessageController;->impressionedMessages:Ljava/util/Set;

    iget-object v1, p1, Lcom/onesignal/OSInAppMessage;->messageId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 241
    return-void

    .line 244
    :cond_1
    iget-object v0, p0, Lcom/onesignal/OSInAppMessageController;->impressionedMessages:Ljava/util/Set;

    iget-object v1, p1, Lcom/onesignal/OSInAppMessage;->messageId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 246
    invoke-static {p1}, Lcom/onesignal/OSInAppMessageController;->variantIdForMessage(Lcom/onesignal/OSInAppMessage;)Ljava/lang/String;

    move-result-object v0

    .line 247
    .local v0, "variantId":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 248
    return-void

    .line 251
    :cond_2
    :try_start_0
    new-instance v1, Lcom/onesignal/OSInAppMessageController$2;

    invoke-direct {v1, p0, v0}, Lcom/onesignal/OSInAppMessageController$2;-><init>(Lcom/onesignal/OSInAppMessageController;Ljava/lang/String;)V

    .line 259
    .local v1, "json":Lorg/json/JSONObject;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "in_app_messages/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/onesignal/OSInAppMessage;->messageId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/impression"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/onesignal/OSInAppMessageController$3;

    invoke-direct {v3, p0, p1}, Lcom/onesignal/OSInAppMessageController$3;-><init>(Lcom/onesignal/OSInAppMessageController;Lcom/onesignal/OSInAppMessage;)V

    invoke-static {v2, v1, v3}, Lcom/onesignal/OneSignalRestClient;->post(Ljava/lang/String;Lorg/json/JSONObject;Lcom/onesignal/OneSignalRestClient$ResponseHandler;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 280
    .end local v1    # "json":Lorg/json/JSONObject;
    goto :goto_0

    .line 277
    :catch_0
    move-exception v1

    .line 278
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 279
    sget-object v2, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v3, "Unable to execute in-app message impression HTTP request due to invalid JSON"

    invoke-static {v2, v3}, Lcom/onesignal/OneSignal;->onesignalLog(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 281
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_0
    return-void
.end method

.method receivedInAppMessageJson(Lorg/json/JSONArray;)V
    .locals 3
    .param p1, "json"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 164
    sget-object v0, Lcom/onesignal/OneSignalPrefs;->PREFS_ONESIGNAL:Ljava/lang/String;

    .line 167
    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    .line 164
    const-string v2, "PREFS_OS_CACHED_IAMS"

    invoke-static {v0, v2, v1}, Lcom/onesignal/OneSignalPrefs;->saveString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    invoke-direct {p0}, Lcom/onesignal/OSInAppMessageController;->resetRedisplayMessagesBySession()V

    .line 171
    invoke-direct {p0, p1}, Lcom/onesignal/OSInAppMessageController;->processInAppMessageJson(Lorg/json/JSONArray;)V

    .line 172
    return-void
.end method

.method removeTriggersForKeys(Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 816
    .local p1, "keys":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Remove trigger called with keys: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->onesignalLog(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 817
    iget-object v0, p0, Lcom/onesignal/OSInAppMessageController;->triggerController:Lcom/onesignal/OSTriggerController;

    invoke-virtual {v0, p1}, Lcom/onesignal/OSTriggerController;->removeTriggersForKeys(Ljava/util/Collection;)V

    .line 818
    invoke-direct {p0, p1}, Lcom/onesignal/OSInAppMessageController;->makeRedisplayMessagesAvailableWithTriggers(Ljava/util/Collection;)V

    .line 819
    invoke-direct {p0}, Lcom/onesignal/OSInAppMessageController;->evaluateInAppMessages()V

    .line 820
    return-void
.end method

.method resetSessionLaunchTime()V
    .locals 0

    .line 123
    invoke-static {}, Lcom/onesignal/OSDynamicTriggerController;->resetSessionLaunchTime()V

    .line 124
    return-void
.end method

.method setInAppMessagingEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 823
    iput-boolean p1, p0, Lcom/onesignal/OSInAppMessageController;->inAppMessagingEnabled:Z

    .line 824
    if-eqz p1, :cond_0

    .line 825
    invoke-direct {p0}, Lcom/onesignal/OSInAppMessageController;->evaluateInAppMessages()V

    .line 826
    :cond_0
    return-void
.end method

.method public systemConditionChanged()V
    .locals 0

    .line 781
    invoke-direct {p0}, Lcom/onesignal/OSInAppMessageController;->attemptToShowInAppMessage()V

    .line 782
    return-void
.end method
