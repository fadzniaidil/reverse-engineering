.class public Lcom/onesignal/OneSignal;
.super Ljava/lang/Object;
.source "OneSignal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onesignal/OneSignal$PromptActionResult;,
        Lcom/onesignal/OneSignal$OSPromptActionCompletionCallback;,
        Lcom/onesignal/OneSignal$OutcomeCallback;,
        Lcom/onesignal/OneSignal$PendingTaskRunnable;,
        Lcom/onesignal/OneSignal$IAPUpdateJob;,
        Lcom/onesignal/OneSignal$Builder;,
        Lcom/onesignal/OneSignal$PostNotificationResponseHandler;,
        Lcom/onesignal/OneSignal$EmailUpdateHandler;,
        Lcom/onesignal/OneSignal$EmailUpdateError;,
        Lcom/onesignal/OneSignal$EmailErrorType;,
        Lcom/onesignal/OneSignal$OSInternalExternalUserIdUpdateCompletionHandler;,
        Lcom/onesignal/OneSignal$OSExternalUserIdUpdateCompletionHandler;,
        Lcom/onesignal/OneSignal$SendTagsError;,
        Lcom/onesignal/OneSignal$ChangeTagsUpdateHandler;,
        Lcom/onesignal/OneSignal$GetTagsHandler;,
        Lcom/onesignal/OneSignal$IdsAvailableHandler;,
        Lcom/onesignal/OneSignal$NotificationReceivedHandler;,
        Lcom/onesignal/OneSignal$InAppMessageClickHandler;,
        Lcom/onesignal/OneSignal$NotificationOpenedHandler;,
        Lcom/onesignal/OneSignal$AppEntryAction;,
        Lcom/onesignal/OneSignal$OSInFocusDisplayOption;,
        Lcom/onesignal/OneSignal$LOG_LEVEL;
    }
.end annotation


# static fields
.field static final MIN_ON_SESSION_TIME_MILLIS:J = 0x7530L

.field public static final VERSION:Ljava/lang/String; = "031504"

.field private static adIdProvider:Lcom/onesignal/AdvertisingIdentifierProvider;

.field private static apiClient:Lcom/onesignal/OneSignalAPIClient;

.field static appContext:Landroid/content/Context;

.field private static appEntryState:Lcom/onesignal/OneSignal$AppEntryAction;

.field static appId:Ljava/lang/String;

.field private static currentEmailSubscriptionState:Lcom/onesignal/OSEmailSubscriptionState;

.field private static currentPermissionState:Lcom/onesignal/OSPermissionState;

.field private static currentSubscriptionState:Lcom/onesignal/OSSubscriptionState;

.field static delayedInitParams:Lcom/onesignal/DelayedConsentInitializationParameters;

.field private static emailId:Ljava/lang/String;

.field private static emailLogoutHandler:Lcom/onesignal/OneSignal$EmailUpdateHandler;

.field private static emailSubscriptionStateChangesObserver:Lcom/onesignal/OSObservable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/onesignal/OSObservable<",
            "Lcom/onesignal/OSEmailSubscriptionObserver;",
            "Lcom/onesignal/OSEmailSubscriptionStateChanges;",
            ">;"
        }
    .end annotation
.end field

.field private static emailUpdateHandler:Lcom/onesignal/OneSignal$EmailUpdateHandler;

.field private static foreground:Z

.field private static getTagsCall:Z

.field private static iapUpdateJob:Lcom/onesignal/OneSignal$IAPUpdateJob;

.field private static idsAvailableHandler:Lcom/onesignal/OneSignal$IdsAvailableHandler;

.field private static inAppMessageControllerFactory:Lcom/onesignal/OSInAppMessageControllerFactory;

.field private static initDone:Z

.field static lastEmailSubscriptionState:Lcom/onesignal/OSEmailSubscriptionState;

.field private static lastLocationPoint:Lcom/onesignal/LocationController$LocationPoint;

.field static lastPermissionState:Lcom/onesignal/OSPermissionState;

.field private static lastRegistrationId:Ljava/lang/String;

.field static lastSubscriptionState:Lcom/onesignal/OSSubscriptionState;

.field static lastTaskId:Ljava/util/concurrent/atomic/AtomicLong;

.field private static locationFired:Z

.field private static logCatLevel:Lcom/onesignal/OneSignal$LOG_LEVEL;

.field private static logger:Lcom/onesignal/OSLogger;

.field private static mGoogleProjectNumber:Ljava/lang/String;

.field static mInitBuilder:Lcom/onesignal/OneSignal$Builder;

.field private static mPushRegistrator:Lcom/onesignal/PushRegistrator;

.field private static osUtils:Lcom/onesignal/OSUtils;

.field private static outcomeEventsController:Lcom/onesignal/OSOutcomeEventsController;

.field private static outcomeEventsFactory:Lcom/onesignal/outcomes/OSOutcomeEventsFactory;

.field private static pendingGetTagsHandlers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/onesignal/OneSignal$GetTagsHandler;",
            ">;"
        }
    .end annotation
.end field

.field static pendingTaskExecutor:Ljava/util/concurrent/ExecutorService;

.field private static permissionStateChangesObserver:Lcom/onesignal/OSObservable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/onesignal/OSObservable<",
            "Lcom/onesignal/OSPermissionObserver;",
            "Lcom/onesignal/OSPermissionStateChanges;",
            ">;"
        }
    .end annotation
.end field

.field private static postedOpenedNotifIds:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static preferences:Lcom/onesignal/OSSharedPreferences;

.field private static promptedLocation:Z

.field private static registerForPushFired:Z

.field static remoteParams:Lcom/onesignal/OneSignalRemoteParams$Params;

.field static requiresUserPrivacyConsent:Z

.field public static sdkType:Ljava/lang/String;

.field private static sessionListener:Lcom/onesignal/OSSessionManager$SessionListener;

.field private static sessionManager:Lcom/onesignal/OSSessionManager;

.field static shareLocation:Z

.field private static subscribableStatus:I

.field private static subscriptionStateChangesObserver:Lcom/onesignal/OSObservable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/onesignal/OSObservable<",
            "Lcom/onesignal/OSSubscriptionObserver;",
            "Lcom/onesignal/OSSubscriptionStateChanges;",
            ">;"
        }
    .end annotation
.end field

.field public static taskQueueWaitingForInit:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static trackAmazonPurchase:Lcom/onesignal/TrackAmazonPurchase;

.field private static trackFirebaseAnalytics:Lcom/onesignal/TrackFirebaseAnalytics;

.field private static trackGooglePurchase:Lcom/onesignal/TrackGooglePurchase;

.field private static trackerFactory:Lcom/onesignal/influence/OSTrackerFactory;

.field private static unprocessedOpenedNotifis:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lorg/json/JSONArray;",
            ">;"
        }
    .end annotation
.end field

.field private static userDevice:Lcom/onesignal/OSDevice;

.field private static userId:Ljava/lang/String;

.field private static visualLogLevel:Lcom/onesignal/OneSignal$LOG_LEVEL;

.field private static waitingToPostStateSync:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 398
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->NONE:Lcom/onesignal/OneSignal$LOG_LEVEL;

    sput-object v0, Lcom/onesignal/OneSignal;->visualLogLevel:Lcom/onesignal/OneSignal$LOG_LEVEL;

    .line 399
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->WARN:Lcom/onesignal/OneSignal$LOG_LEVEL;

    sput-object v0, Lcom/onesignal/OneSignal;->logCatLevel:Lcom/onesignal/OneSignal$LOG_LEVEL;

    .line 401
    const/4 v0, 0x0

    sput-object v0, Lcom/onesignal/OneSignal;->userId:Ljava/lang/String;

    sput-object v0, Lcom/onesignal/OneSignal;->emailId:Ljava/lang/String;

    .line 417
    sget-object v1, Lcom/onesignal/OneSignal$AppEntryAction;->APP_CLOSE:Lcom/onesignal/OneSignal$AppEntryAction;

    sput-object v1, Lcom/onesignal/OneSignal;->appEntryState:Lcom/onesignal/OneSignal$AppEntryAction;

    .line 424
    new-instance v1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    sput-object v1, Lcom/onesignal/OneSignal;->taskQueueWaitingForInit:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 425
    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    sput-object v1, Lcom/onesignal/OneSignal;->lastTaskId:Ljava/util/concurrent/atomic/AtomicLong;

    .line 435
    new-instance v1, Lcom/onesignal/OneSignal$1;

    invoke-direct {v1}, Lcom/onesignal/OneSignal$1;-><init>()V

    sput-object v1, Lcom/onesignal/OneSignal;->sessionListener:Lcom/onesignal/OSSessionManager$SessionListener;

    .line 446
    new-instance v1, Lcom/onesignal/OSInAppMessageControllerFactory;

    invoke-direct {v1}, Lcom/onesignal/OSInAppMessageControllerFactory;-><init>()V

    sput-object v1, Lcom/onesignal/OneSignal;->inAppMessageControllerFactory:Lcom/onesignal/OSInAppMessageControllerFactory;

    .line 450
    new-instance v1, Lcom/onesignal/OSLogWrapper;

    invoke-direct {v1}, Lcom/onesignal/OSLogWrapper;-><init>()V

    sput-object v1, Lcom/onesignal/OneSignal;->logger:Lcom/onesignal/OSLogger;

    .line 451
    new-instance v1, Lcom/onesignal/OneSignalRestClientWrapper;

    invoke-direct {v1}, Lcom/onesignal/OneSignalRestClientWrapper;-><init>()V

    sput-object v1, Lcom/onesignal/OneSignal;->apiClient:Lcom/onesignal/OneSignalAPIClient;

    .line 452
    new-instance v1, Lcom/onesignal/OSSharedPreferencesWrapper;

    invoke-direct {v1}, Lcom/onesignal/OSSharedPreferencesWrapper;-><init>()V

    sput-object v1, Lcom/onesignal/OneSignal;->preferences:Lcom/onesignal/OSSharedPreferences;

    .line 453
    new-instance v2, Lcom/onesignal/influence/OSTrackerFactory;

    sget-object v3, Lcom/onesignal/OneSignal;->logger:Lcom/onesignal/OSLogger;

    invoke-direct {v2, v1, v3}, Lcom/onesignal/influence/OSTrackerFactory;-><init>(Lcom/onesignal/OSSharedPreferences;Lcom/onesignal/OSLogger;)V

    sput-object v2, Lcom/onesignal/OneSignal;->trackerFactory:Lcom/onesignal/influence/OSTrackerFactory;

    .line 454
    new-instance v1, Lcom/onesignal/OSSessionManager;

    sget-object v3, Lcom/onesignal/OneSignal;->sessionListener:Lcom/onesignal/OSSessionManager$SessionListener;

    sget-object v4, Lcom/onesignal/OneSignal;->logger:Lcom/onesignal/OSLogger;

    invoke-direct {v1, v3, v2, v4}, Lcom/onesignal/OSSessionManager;-><init>(Lcom/onesignal/OSSessionManager$SessionListener;Lcom/onesignal/influence/OSTrackerFactory;Lcom/onesignal/OSLogger;)V

    sput-object v1, Lcom/onesignal/OneSignal;->sessionManager:Lcom/onesignal/OSSessionManager;

    .line 469
    const-string v1, "native"

    sput-object v1, Lcom/onesignal/OneSignal;->sdkType:Ljava/lang/String;

    .line 471
    new-instance v1, Lcom/onesignal/OSUtils;

    invoke-direct {v1}, Lcom/onesignal/OSUtils;-><init>()V

    sput-object v1, Lcom/onesignal/OneSignal;->osUtils:Lcom/onesignal/OSUtils;

    .line 478
    const/4 v1, 0x1

    sput-boolean v1, Lcom/onesignal/OneSignal;->shareLocation:Z

    .line 479
    new-instance v1, Lcom/onesignal/OneSignal$Builder;

    invoke-direct {v1, v0}, Lcom/onesignal/OneSignal$Builder;-><init>(Lcom/onesignal/OneSignal$1;)V

    sput-object v1, Lcom/onesignal/OneSignal;->mInitBuilder:Lcom/onesignal/OneSignal$Builder;

    .line 481
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/onesignal/OneSignal;->unprocessedOpenedNotifis:Ljava/util/Collection;

    .line 482
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/onesignal/OneSignal;->postedOpenedNotifIds:Ljava/util/HashSet;

    .line 484
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/onesignal/OneSignal;->pendingGetTagsHandlers:Ljava/util/ArrayList;

    .line 489
    const/4 v0, 0x0

    sput-boolean v0, Lcom/onesignal/OneSignal;->requiresUserPrivacyConsent:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V
    .locals 1
    .param p0, "level"    # Lcom/onesignal/OneSignal$LOG_LEVEL;
    .param p1, "message"    # Ljava/lang/String;

    .line 1196
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1197
    return-void
.end method

.method static Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 7
    .param p0, "level"    # Lcom/onesignal/OneSignal$LOG_LEVEL;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .line 1201
    const-string v0, "OneSignal"

    .line 1203
    .local v0, "TAG":Ljava/lang/String;
    sget-object v1, Lcom/onesignal/OneSignal;->logCatLevel:Lcom/onesignal/OneSignal$LOG_LEVEL;

    invoke-virtual {p0, v1}, Lcom/onesignal/OneSignal$LOG_LEVEL;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    const/4 v2, 0x1

    const-string v3, "OneSignal"

    if-ge v1, v2, :cond_5

    .line 1204
    sget-object v1, Lcom/onesignal/OneSignal$LOG_LEVEL;->VERBOSE:Lcom/onesignal/OneSignal$LOG_LEVEL;

    if-ne p0, v1, :cond_0

    .line 1205
    invoke-static {v3, p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1206
    :cond_0
    sget-object v1, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    if-ne p0, v1, :cond_1

    .line 1207
    invoke-static {v3, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1208
    :cond_1
    sget-object v1, Lcom/onesignal/OneSignal$LOG_LEVEL;->INFO:Lcom/onesignal/OneSignal$LOG_LEVEL;

    if-ne p0, v1, :cond_2

    .line 1209
    invoke-static {v3, p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1210
    :cond_2
    sget-object v1, Lcom/onesignal/OneSignal$LOG_LEVEL;->WARN:Lcom/onesignal/OneSignal$LOG_LEVEL;

    if-ne p0, v1, :cond_3

    .line 1211
    invoke-static {v3, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1212
    :cond_3
    sget-object v1, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    if-eq p0, v1, :cond_4

    sget-object v1, Lcom/onesignal/OneSignal$LOG_LEVEL;->FATAL:Lcom/onesignal/OneSignal$LOG_LEVEL;

    if-ne p0, v1, :cond_5

    .line 1213
    :cond_4
    invoke-static {v3, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1216
    :cond_5
    :goto_0
    sget-object v1, Lcom/onesignal/OneSignal;->visualLogLevel:Lcom/onesignal/OneSignal$LOG_LEVEL;

    invoke-virtual {p0, v1}, Lcom/onesignal/OneSignal$LOG_LEVEL;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-ge v1, v2, :cond_7

    sget-object v1, Lcom/onesignal/ActivityLifecycleHandler;->curActivity:Landroid/app/Activity;

    if-eqz v1, :cond_7

    .line 1218
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1219
    .local v1, "fullMessage":Ljava/lang/String;
    if-eqz p2, :cond_6

    .line 1220
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 1221
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 1222
    .local v2, "sw":Ljava/io/StringWriter;
    new-instance v4, Ljava/io/PrintWriter;

    invoke-direct {v4, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 1223
    .local v4, "pw":Ljava/io/PrintWriter;
    invoke-virtual {p2, v4}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 1224
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v1, v5

    .line 1227
    .end local v2    # "sw":Ljava/io/StringWriter;
    .end local v4    # "pw":Ljava/io/PrintWriter;
    :cond_6
    move-object v2, v1

    .line 1228
    .local v2, "finalFullMessage":Ljava/lang/String;
    new-instance v4, Lcom/onesignal/OneSignal$6;

    invoke-direct {v4, p0, v2}, Lcom/onesignal/OneSignal$6;-><init>(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    invoke-static {v4}, Lcom/onesignal/OSUtils;->runOnMainUIThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1240
    .end local v1    # "fullMessage":Ljava/lang/String;
    .end local v2    # "finalFullMessage":Ljava/lang/String;
    goto :goto_1

    .line 1238
    :catchall_0
    move-exception v1

    .line 1239
    .local v1, "t":Ljava/lang/Throwable;
    const-string v2, "Error showing logging message."

    invoke-static {v3, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1242
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_7
    :goto_1
    return-void
.end method

.method static synthetic access$000(Lcom/onesignal/OneSignal$Builder;)V
    .locals 0
    .param p0, "x0"    # Lcom/onesignal/OneSignal$Builder;

    .line 86
    invoke-static {p0}, Lcom/onesignal/OneSignal;->init(Lcom/onesignal/OneSignal$Builder;)V

    return-void
.end method

.method static synthetic access$100()Lcom/onesignal/OSOutcomeEventsController;
    .locals 1

    .line 86
    sget-object v0, Lcom/onesignal/OneSignal;->outcomeEventsController:Lcom/onesignal/OSOutcomeEventsController;

    return-object v0
.end method

.method static synthetic access$1000(I)Z
    .locals 1
    .param p0, "x0"    # I

    .line 86
    invoke-static {p0}, Lcom/onesignal/OneSignal;->pushStatusRuntimeError(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1102(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .line 86
    sput-object p0, Lcom/onesignal/OneSignal;->lastRegistrationId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1202(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .line 86
    sput-boolean p0, Lcom/onesignal/OneSignal;->registerForPushFired:Z

    return p0
.end method

.method static synthetic access$1300(Landroid/content/Context;)Lcom/onesignal/OSSubscriptionState;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;

    .line 86
    invoke-static {p0}, Lcom/onesignal/OneSignal;->getCurrentSubscriptionState(Landroid/content/Context;)Lcom/onesignal/OSSubscriptionState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1402(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .line 86
    sput-object p0, Lcom/onesignal/OneSignal;->mGoogleProjectNumber:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1500()Lcom/onesignal/OSSharedPreferences;
    .locals 1

    .line 86
    sget-object v0, Lcom/onesignal/OneSignal;->preferences:Lcom/onesignal/OSSharedPreferences;

    return-object v0
.end method

.method static synthetic access$1600()Lcom/onesignal/OSLogger;
    .locals 1

    .line 86
    sget-object v0, Lcom/onesignal/OneSignal;->logger:Lcom/onesignal/OSLogger;

    return-object v0
.end method

.method static synthetic access$1700()Lcom/onesignal/influence/OSTrackerFactory;
    .locals 1

    .line 86
    sget-object v0, Lcom/onesignal/OneSignal;->trackerFactory:Lcom/onesignal/influence/OSTrackerFactory;

    return-object v0
.end method

.method static synthetic access$1800()V
    .locals 0

    .line 86
    invoke-static {}, Lcom/onesignal/OneSignal;->registerForPushToken()V

    return-void
.end method

.method static synthetic access$1900()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 86
    invoke-static {}, Lcom/onesignal/OneSignal;->registerUserTask()V

    return-void
.end method

.method static synthetic access$2000()Ljava/lang/String;
    .locals 1

    .line 86
    sget-object v0, Lcom/onesignal/OneSignal;->userId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2100(Landroid/content/Context;)Lcom/onesignal/OSEmailSubscriptionState;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;

    .line 86
    invoke-static {p0}, Lcom/onesignal/OneSignal;->getCurrentEmailSubscriptionState(Landroid/content/Context;)Lcom/onesignal/OSEmailSubscriptionState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2200()Ljava/util/ArrayList;
    .locals 1

    .line 86
    sget-object v0, Lcom/onesignal/OneSignal;->pendingGetTagsHandlers:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2300()V
    .locals 0

    .line 86
    invoke-static {}, Lcom/onesignal/OneSignal;->runGetTags()V

    return-void
.end method

.method static synthetic access$2400()Z
    .locals 1

    .line 86
    sget-boolean v0, Lcom/onesignal/OneSignal;->getTagsCall:Z

    return v0
.end method

.method static synthetic access$2402(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .line 86
    sput-boolean p0, Lcom/onesignal/OneSignal;->getTagsCall:Z

    return p0
.end method

.method static synthetic access$2500()V
    .locals 0

    .line 86
    invoke-static {}, Lcom/onesignal/OneSignal;->internalFireIdsAvailableCallback()V

    return-void
.end method

.method static synthetic access$2602(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .line 86
    sput-boolean p0, Lcom/onesignal/OneSignal;->promptedLocation:Z

    return p0
.end method

.method static synthetic access$400(J)V
    .locals 0
    .param p0, "x0"    # J

    .line 86
    invoke-static {p0, p1}, Lcom/onesignal/OneSignal;->onTaskRan(J)V

    return-void
.end method

.method static synthetic access$602(Lcom/onesignal/LocationController$LocationPoint;)Lcom/onesignal/LocationController$LocationPoint;
    .locals 0
    .param p0, "x0"    # Lcom/onesignal/LocationController$LocationPoint;

    .line 86
    sput-object p0, Lcom/onesignal/OneSignal;->lastLocationPoint:Lcom/onesignal/LocationController$LocationPoint;

    return-object p0
.end method

.method static synthetic access$702(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .line 86
    sput-boolean p0, Lcom/onesignal/OneSignal;->locationFired:Z

    return p0
.end method

.method static synthetic access$800()V
    .locals 0

    .line 86
    invoke-static {}, Lcom/onesignal/OneSignal;->registerUser()V

    return-void
.end method

.method static synthetic access$900()I
    .locals 1

    .line 86
    sget v0, Lcom/onesignal/OneSignal;->subscribableStatus:I

    return v0
.end method

.method static synthetic access$902(I)I
    .locals 0
    .param p0, "x0"    # I

    .line 86
    sput p0, Lcom/onesignal/OneSignal;->subscribableStatus:I

    return p0
.end method

.method public static addEmailSubscriptionObserver(Lcom/onesignal/OSEmailSubscriptionObserver;)V
    .locals 2
    .param p0, "observer"    # Lcom/onesignal/OSEmailSubscriptionObserver;

    .line 2879
    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 2880
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v1, "OneSignal.init has not been called. Could not add email subscription observer"

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 2881
    return-void

    .line 2884
    :cond_0
    invoke-static {}, Lcom/onesignal/OneSignal;->getEmailSubscriptionStateChangesObserver()Lcom/onesignal/OSObservable;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/onesignal/OSObservable;->addObserver(Ljava/lang/Object;)V

    .line 2886
    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/onesignal/OneSignal;->getCurrentEmailSubscriptionState(Landroid/content/Context;)Lcom/onesignal/OSEmailSubscriptionState;

    move-result-object v0

    sget-object v1, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/onesignal/OneSignal;->getLastEmailSubscriptionState(Landroid/content/Context;)Lcom/onesignal/OSEmailSubscriptionState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onesignal/OSEmailSubscriptionState;->compare(Lcom/onesignal/OSEmailSubscriptionState;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2887
    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/onesignal/OneSignal;->getCurrentEmailSubscriptionState(Landroid/content/Context;)Lcom/onesignal/OSEmailSubscriptionState;

    move-result-object v0

    invoke-static {v0}, Lcom/onesignal/OSEmailSubscriptionChangedInternalObserver;->fireChangesToPublicObserver(Lcom/onesignal/OSEmailSubscriptionState;)V

    .line 2888
    :cond_1
    return-void
.end method

.method static addNetType(Lorg/json/JSONObject;)V
    .locals 2
    .param p0, "jsonObj"    # Lorg/json/JSONObject;

    .line 1323
    :try_start_0
    const-string v0, "net_type"

    sget-object v1, Lcom/onesignal/OneSignal;->osUtils:Lcom/onesignal/OSUtils;

    invoke-virtual {v1}, Lcom/onesignal/OSUtils;->getNetType()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1324
    :catchall_0
    move-exception v0

    :goto_0
    nop

    .line 1325
    return-void
.end method

.method public static addPermissionObserver(Lcom/onesignal/OSPermissionObserver;)V
    .locals 2
    .param p0, "observer"    # Lcom/onesignal/OSPermissionObserver;

    .line 2808
    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 2809
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v1, "OneSignal.init has not been called. Could not add permission observer"

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 2810
    return-void

    .line 2813
    :cond_0
    invoke-static {}, Lcom/onesignal/OneSignal;->getPermissionStateChangesObserver()Lcom/onesignal/OSObservable;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/onesignal/OSObservable;->addObserver(Ljava/lang/Object;)V

    .line 2815
    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/onesignal/OneSignal;->getCurrentPermissionState(Landroid/content/Context;)Lcom/onesignal/OSPermissionState;

    move-result-object v0

    sget-object v1, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/onesignal/OneSignal;->getLastPermissionState(Landroid/content/Context;)Lcom/onesignal/OSPermissionState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onesignal/OSPermissionState;->compare(Lcom/onesignal/OSPermissionState;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2816
    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/onesignal/OneSignal;->getCurrentPermissionState(Landroid/content/Context;)Lcom/onesignal/OSPermissionState;

    move-result-object v0

    invoke-static {v0}, Lcom/onesignal/OSPermissionChangedInternalObserver;->fireChangesToPublicObserver(Lcom/onesignal/OSPermissionState;)V

    .line 2817
    :cond_1
    return-void
.end method

.method public static addSubscriptionObserver(Lcom/onesignal/OSSubscriptionObserver;)V
    .locals 2
    .param p0, "observer"    # Lcom/onesignal/OSSubscriptionObserver;

    .line 2845
    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 2846
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v1, "OneSignal.init has not been called. Could not add subscription observer"

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 2847
    return-void

    .line 2850
    :cond_0
    invoke-static {}, Lcom/onesignal/OneSignal;->getSubscriptionStateChangesObserver()Lcom/onesignal/OSObservable;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/onesignal/OSObservable;->addObserver(Ljava/lang/Object;)V

    .line 2852
    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/onesignal/OneSignal;->getCurrentSubscriptionState(Landroid/content/Context;)Lcom/onesignal/OSSubscriptionState;

    move-result-object v0

    sget-object v1, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/onesignal/OneSignal;->getLastSubscriptionState(Landroid/content/Context;)Lcom/onesignal/OSSubscriptionState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onesignal/OSSubscriptionState;->compare(Lcom/onesignal/OSSubscriptionState;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2853
    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/onesignal/OneSignal;->getCurrentSubscriptionState(Landroid/content/Context;)Lcom/onesignal/OSSubscriptionState;

    move-result-object v0

    invoke-static {v0}, Lcom/onesignal/OSSubscriptionChangedInternalObserver;->fireChangesToPublicObserver(Lcom/onesignal/OSSubscriptionState;)V

    .line 2854
    :cond_1
    return-void
.end method

.method private static addTaskToQueue(Lcom/onesignal/OneSignal$PendingTaskRunnable;)V
    .locals 5
    .param p0, "task"    # Lcom/onesignal/OneSignal$PendingTaskRunnable;

    .line 915
    sget-object v0, Lcom/onesignal/OneSignal;->lastTaskId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/onesignal/OneSignal$PendingTaskRunnable;->access$502(Lcom/onesignal/OneSignal$PendingTaskRunnable;J)J

    .line 917
    sget-object v0, Lcom/onesignal/OneSignal;->pendingTaskExecutor:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    .line 918
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->INFO:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adding a task to the pending queue with ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/onesignal/OneSignal$PendingTaskRunnable;->access$500(Lcom/onesignal/OneSignal$PendingTaskRunnable;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 920
    sget-object v0, Lcom/onesignal/OneSignal;->taskQueueWaitingForInit:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 922
    :cond_0
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_1

    .line 923
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->INFO:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Executor is still running, add to the executor with ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/onesignal/OneSignal$PendingTaskRunnable;->access$500(Lcom/onesignal/OneSignal$PendingTaskRunnable;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 926
    :try_start_0
    sget-object v0, Lcom/onesignal/OneSignal;->pendingTaskExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 935
    goto :goto_0

    .line 927
    :catch_0
    move-exception v0

    .line 928
    .local v0, "e":Ljava/util/concurrent/RejectedExecutionException;
    sget-object v1, Lcom/onesignal/OneSignal$LOG_LEVEL;->INFO:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Executor is shutdown, running task manually with ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/onesignal/OneSignal$PendingTaskRunnable;->access$500(Lcom/onesignal/OneSignal$PendingTaskRunnable;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 933
    invoke-virtual {p0}, Lcom/onesignal/OneSignal$PendingTaskRunnable;->run()V

    .line 934
    invoke-virtual {v0}, Ljava/util/concurrent/RejectedExecutionException;->printStackTrace()V

    .line 938
    .end local v0    # "e":Ljava/util/concurrent/RejectedExecutionException;
    :cond_1
    :goto_0
    return-void
.end method

.method public static addTrigger(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "object"    # Ljava/lang/Object;

    .line 2955
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2956
    .local v0, "triggerMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2958
    invoke-static {}, Lcom/onesignal/OneSignal;->getInAppMessageController()Lcom/onesignal/OSInAppMessageController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/onesignal/OSInAppMessageController;->addTriggers(Ljava/util/Map;)V

    .line 2959
    return-void
.end method

.method public static addTriggers(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 2935
    .local p0, "triggers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {}, Lcom/onesignal/OneSignal;->getInAppMessageController()Lcom/onesignal/OSInAppMessageController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/onesignal/OSInAppMessageController;->addTriggers(Ljava/util/Map;)V

    .line 2936
    return-void
.end method

.method public static addTriggersFromJsonString(Ljava/lang/String;)V
    .locals 3
    .param p0, "triggersJsonString"    # Ljava/lang/String;

    .line 2944
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2945
    .local v0, "jsonObject":Lorg/json/JSONObject;
    invoke-static {v0}, Lcom/onesignal/JSONUtils;->jsonObjectToMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v1}, Lcom/onesignal/OneSignal;->addTriggers(Ljava/util/Map;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2948
    .end local v0    # "jsonObject":Lorg/json/JSONObject;
    goto :goto_0

    .line 2946
    :catch_0
    move-exception v0

    .line 2947
    .local v0, "e":Lorg/json/JSONException;
    sget-object v1, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v2, "addTriggersFromJsonString, invalid json"

    invoke-static {v1, v2, v0}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2949
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_0
    return-void
.end method

.method static areNotificationsEnabledForSubscribedState()Z
    .locals 1

    .line 3059
    sget-object v0, Lcom/onesignal/OneSignal;->mInitBuilder:Lcom/onesignal/OneSignal$Builder;

    iget-boolean v0, v0, Lcom/onesignal/OneSignal$Builder;->mUnsubscribeWhenNotificationsAreDisabled:Z

    if-eqz v0, :cond_0

    .line 3060
    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/onesignal/OSUtils;->areNotificationsEnabled(Landroid/content/Context;)Z

    move-result v0

    return v0

    .line 3061
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method static atLogLevel(Lcom/onesignal/OneSignal$LOG_LEVEL;)Z
    .locals 2
    .param p0, "level"    # Lcom/onesignal/OneSignal$LOG_LEVEL;

    .line 1192
    sget-object v0, Lcom/onesignal/OneSignal;->visualLogLevel:Lcom/onesignal/OneSignal$LOG_LEVEL;

    invoke-virtual {p0, v0}, Lcom/onesignal/OneSignal$LOG_LEVEL;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    sget-object v0, Lcom/onesignal/OneSignal;->logCatLevel:Lcom/onesignal/OneSignal$LOG_LEVEL;

    invoke-virtual {p0, v0}, Lcom/onesignal/OneSignal$LOG_LEVEL;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public static cancelGroupedNotifications(Ljava/lang/String;)V
    .locals 4
    .param p0, "group"    # Ljava/lang/String;

    .line 2724
    const-string v0, "cancelGroupedNotifications()"

    invoke-static {v0}, Lcom/onesignal/OneSignal;->shouldLogUserPrivacyConsentErrorMessageForMethodName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2725
    return-void

    .line 2727
    :cond_0
    new-instance v0, Lcom/onesignal/OneSignal$24;

    invoke-direct {v0, p0}, Lcom/onesignal/OneSignal$24;-><init>(Ljava/lang/String;)V

    .line 2768
    .local v0, "runCancelGroupedNotifications":Ljava/lang/Runnable;
    sget-object v1, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/onesignal/OneSignal;->shouldRunTaskThroughQueue()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 2776
    :cond_1
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 2777
    return-void

    .line 2769
    :cond_2
    :goto_0
    sget-object v1, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OneSignal.init has not been called. Could not clear notifications part of group "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " - movingthis operation to a waiting task queue."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 2772
    new-instance v1, Lcom/onesignal/OneSignal$PendingTaskRunnable;

    invoke-direct {v1, v0}, Lcom/onesignal/OneSignal$PendingTaskRunnable;-><init>(Ljava/lang/Runnable;)V

    invoke-static {v1}, Lcom/onesignal/OneSignal;->addTaskToQueue(Lcom/onesignal/OneSignal$PendingTaskRunnable;)V

    .line 2773
    return-void
.end method

.method public static cancelNotification(I)V
    .locals 4
    .param p0, "id"    # I

    .line 2686
    new-instance v0, Lcom/onesignal/OneSignal$23;

    invoke-direct {v0, p0}, Lcom/onesignal/OneSignal$23;-><init>(I)V

    .line 2708
    .local v0, "runCancelNotification":Ljava/lang/Runnable;
    sget-object v1, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/onesignal/OneSignal;->shouldRunTaskThroughQueue()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 2717
    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 2718
    return-void

    .line 2709
    :cond_1
    :goto_0
    sget-object v1, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OneSignal.init has not been called. Could not clear notification id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " at this time - movingthis operation to a waiting task queue. The notification will still be canceledfrom NotificationManager at this time."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 2713
    sget-object v1, Lcom/onesignal/OneSignal;->taskQueueWaitingForInit:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 2714
    return-void
.end method

.method public static clearOneSignalNotifications()V
    .locals 3

    .line 2630
    new-instance v0, Lcom/onesignal/OneSignal$22;

    invoke-direct {v0}, Lcom/onesignal/OneSignal$22;-><init>()V

    .line 2668
    .local v0, "runClearOneSignalNotifications":Ljava/lang/Runnable;
    sget-object v1, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/onesignal/OneSignal;->shouldRunTaskThroughQueue()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 2676
    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 2677
    return-void

    .line 2669
    :cond_1
    :goto_0
    sget-object v1, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v2, "OneSignal.init has not been called. Could not clear notifications at this time - moving this operation toa waiting task queue."

    invoke-static {v1, v2}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 2672
    new-instance v1, Lcom/onesignal/OneSignal$PendingTaskRunnable;

    invoke-direct {v1, v0}, Lcom/onesignal/OneSignal$PendingTaskRunnable;-><init>(Ljava/lang/Runnable;)V

    invoke-static {v1}, Lcom/onesignal/OneSignal;->addTaskToQueue(Lcom/onesignal/OneSignal$PendingTaskRunnable;)V

    .line 2673
    return-void
.end method

.method private static createInitBuilder(Lcom/onesignal/OneSignal$NotificationOpenedHandler;Lcom/onesignal/OneSignal$NotificationReceivedHandler;)Lcom/onesignal/OneSignal$Builder;
    .locals 2
    .param p0, "notificationOpenedHandler"    # Lcom/onesignal/OneSignal$NotificationOpenedHandler;
    .param p1, "notificationReceivedHandler"    # Lcom/onesignal/OneSignal$NotificationReceivedHandler;

    .line 790
    sget-object v0, Lcom/onesignal/OneSignal;->mInitBuilder:Lcom/onesignal/OneSignal$Builder;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/onesignal/OneSignal$Builder;->mDisplayOptionCarryOver:Z

    .line 791
    sget-object v0, Lcom/onesignal/OneSignal;->mInitBuilder:Lcom/onesignal/OneSignal$Builder;

    iput-object p0, v0, Lcom/onesignal/OneSignal$Builder;->mNotificationOpenedHandler:Lcom/onesignal/OneSignal$NotificationOpenedHandler;

    .line 792
    sget-object v0, Lcom/onesignal/OneSignal;->mInitBuilder:Lcom/onesignal/OneSignal$Builder;

    iput-object p1, v0, Lcom/onesignal/OneSignal$Builder;->mNotificationReceivedHandler:Lcom/onesignal/OneSignal$NotificationReceivedHandler;

    .line 793
    sget-object v0, Lcom/onesignal/OneSignal;->mInitBuilder:Lcom/onesignal/OneSignal$Builder;

    return-object v0
.end method

.method public static currentInFocusDisplayOption()Lcom/onesignal/OneSignal$OSInFocusDisplayOption;
    .locals 1

    .line 2486
    sget-object v0, Lcom/onesignal/OneSignal;->mInitBuilder:Lcom/onesignal/OneSignal$Builder;

    iget-object v0, v0, Lcom/onesignal/OneSignal$Builder;->mDisplayOption:Lcom/onesignal/OneSignal$OSInFocusDisplayOption;

    return-object v0
.end method

.method public static deleteTag(Ljava/lang/String;)V
    .locals 1
    .param p0, "key"    # Ljava/lang/String;

    .line 1890
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/onesignal/OneSignal;->deleteTag(Ljava/lang/String;Lcom/onesignal/OneSignal$ChangeTagsUpdateHandler;)V

    .line 1891
    return-void
.end method

.method public static deleteTag(Ljava/lang/String;Lcom/onesignal/OneSignal$ChangeTagsUpdateHandler;)V
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "handler"    # Lcom/onesignal/OneSignal$ChangeTagsUpdateHandler;

    .line 1895
    const-string v0, "deleteTag()"

    invoke-static {v0}, Lcom/onesignal/OneSignal;->shouldLogUserPrivacyConsentErrorMessageForMethodName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1896
    return-void

    .line 1898
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1899
    .local v0, "tempList":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-interface {v0, p0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1900
    invoke-static {v0, p1}, Lcom/onesignal/OneSignal;->deleteTags(Ljava/util/Collection;Lcom/onesignal/OneSignal$ChangeTagsUpdateHandler;)V

    .line 1901
    return-void
.end method

.method public static deleteTags(Ljava/lang/String;)V
    .locals 1
    .param p0, "jsonArrayString"    # Ljava/lang/String;

    .line 1929
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/onesignal/OneSignal;->deleteTags(Ljava/lang/String;Lcom/onesignal/OneSignal$ChangeTagsUpdateHandler;)V

    .line 1930
    return-void
.end method

.method public static deleteTags(Ljava/lang/String;Lcom/onesignal/OneSignal$ChangeTagsUpdateHandler;)V
    .locals 3
    .param p0, "jsonArrayString"    # Ljava/lang/String;
    .param p1, "handler"    # Lcom/onesignal/OneSignal$ChangeTagsUpdateHandler;

    .line 1934
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/onesignal/OneSignal;->deleteTags(Lorg/json/JSONArray;Lcom/onesignal/OneSignal$ChangeTagsUpdateHandler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1937
    goto :goto_0

    .line 1935
    :catchall_0
    move-exception v0

    .line 1936
    .local v0, "t":Ljava/lang/Throwable;
    sget-object v1, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v2, "Failed to generate JSON for deleteTags."

    invoke-static {v1, v2, v0}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1938
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method public static deleteTags(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1909
    .local p0, "keys":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/onesignal/OneSignal;->deleteTags(Ljava/util/Collection;Lcom/onesignal/OneSignal$ChangeTagsUpdateHandler;)V

    .line 1910
    return-void
.end method

.method public static deleteTags(Ljava/util/Collection;Lcom/onesignal/OneSignal$ChangeTagsUpdateHandler;)V
    .locals 4
    .param p1, "handler"    # Lcom/onesignal/OneSignal$ChangeTagsUpdateHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/onesignal/OneSignal$ChangeTagsUpdateHandler;",
            ")V"
        }
    .end annotation

    .line 1914
    .local p0, "keys":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const-string v0, "deleteTags()"

    invoke-static {v0}, Lcom/onesignal/OneSignal;->shouldLogUserPrivacyConsentErrorMessageForMethodName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1915
    return-void

    .line 1918
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1919
    .local v0, "jsonTags":Lorg/json/JSONObject;
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1920
    .local v2, "key":Ljava/lang/String;
    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 1922
    .end local v2    # "key":Ljava/lang/String;
    :cond_1
    invoke-static {v0, p1}, Lcom/onesignal/OneSignal;->sendTags(Lorg/json/JSONObject;Lcom/onesignal/OneSignal$ChangeTagsUpdateHandler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1925
    .end local v0    # "jsonTags":Lorg/json/JSONObject;
    goto :goto_1

    .line 1923
    :catchall_0
    move-exception v0

    .line 1924
    .local v0, "t":Ljava/lang/Throwable;
    sget-object v1, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v2, "Failed to generate JSON for deleteTags."

    invoke-static {v1, v2, v0}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1926
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_1
    return-void
.end method

.method public static deleteTags(Lorg/json/JSONArray;Lcom/onesignal/OneSignal$ChangeTagsUpdateHandler;)V
    .locals 4
    .param p0, "jsonArray"    # Lorg/json/JSONArray;
    .param p1, "handler"    # Lcom/onesignal/OneSignal$ChangeTagsUpdateHandler;

    .line 1942
    const-string v0, "deleteTags()"

    invoke-static {v0}, Lcom/onesignal/OneSignal;->shouldLogUserPrivacyConsentErrorMessageForMethodName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1943
    return-void

    .line 1946
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1948
    .local v0, "jsonTags":Lorg/json/JSONObject;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1949
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1948
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1951
    .end local v1    # "i":I
    :cond_1
    invoke-static {v0, p1}, Lcom/onesignal/OneSignal;->sendTags(Lorg/json/JSONObject;Lcom/onesignal/OneSignal$ChangeTagsUpdateHandler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1954
    .end local v0    # "jsonTags":Lorg/json/JSONObject;
    goto :goto_1

    .line 1952
    :catchall_0
    move-exception v0

    .line 1953
    .local v0, "t":Ljava/lang/Throwable;
    sget-object v1, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v2, "Failed to generate JSON for deleteTags."

    invoke-static {v1, v2, v0}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1955
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_1
    return-void
.end method

.method private static doSessionInit()V
    .locals 2

    .line 848
    invoke-static {}, Lcom/onesignal/OneSignal;->isPastOnSessionTime()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 849
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v1, "Starting new session"

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->onesignalLog(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 850
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->setNewSession()V

    .line 851
    sget-boolean v0, Lcom/onesignal/OneSignal;->foreground:Z

    if-eqz v0, :cond_1

    .line 852
    sget-object v0, Lcom/onesignal/OneSignal;->outcomeEventsController:Lcom/onesignal/OSOutcomeEventsController;

    invoke-virtual {v0}, Lcom/onesignal/OSOutcomeEventsController;->cleanOutcomes()V

    .line 853
    sget-object v0, Lcom/onesignal/OneSignal;->sessionManager:Lcom/onesignal/OSSessionManager;

    invoke-static {}, Lcom/onesignal/OneSignal;->getAppEntryState()Lcom/onesignal/OneSignal$AppEntryAction;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onesignal/OSSessionManager;->restartSessionIfNeeded(Lcom/onesignal/OneSignal$AppEntryAction;)V

    .line 854
    invoke-static {}, Lcom/onesignal/OneSignal;->getInAppMessageController()Lcom/onesignal/OSInAppMessageController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onesignal/OSInAppMessageController;->resetSessionLaunchTime()V

    goto :goto_0

    .line 856
    :cond_0
    sget-boolean v0, Lcom/onesignal/OneSignal;->foreground:Z

    if-eqz v0, :cond_1

    .line 857
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v1, "Continue on same session"

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->onesignalLog(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 858
    sget-object v0, Lcom/onesignal/OneSignal;->sessionManager:Lcom/onesignal/OSSessionManager;

    invoke-static {}, Lcom/onesignal/OneSignal;->getAppEntryState()Lcom/onesignal/OneSignal$AppEntryAction;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onesignal/OSSessionManager;->attemptSessionUpgrade(Lcom/onesignal/OneSignal$AppEntryAction;)V

    .line 860
    :cond_1
    :goto_0
    invoke-static {}, Lcom/onesignal/OneSignal;->getInAppMessageController()Lcom/onesignal/OSInAppMessageController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onesignal/OSInAppMessageController;->initWithCachedInAppMessages()V

    .line 864
    sget-boolean v0, Lcom/onesignal/OneSignal;->foreground:Z

    if-nez v0, :cond_2

    invoke-static {}, Lcom/onesignal/OneSignal;->hasUserId()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 865
    return-void

    .line 867
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->setLastSessionTime(J)V

    .line 868
    invoke-static {}, Lcom/onesignal/OneSignal;->startRegistrationOrOnSession()V

    .line 869
    return-void
.end method

.method public static enableSound(Z)V
    .locals 2
    .param p0, "enable"    # Z

    .line 2436
    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 2437
    return-void

    .line 2439
    :cond_0
    sget-object v0, Lcom/onesignal/OneSignalPrefs;->PREFS_ONESIGNAL:Ljava/lang/String;

    const-string v1, "GT_SOUND_ENABLED"

    invoke-static {v0, v1, p0}, Lcom/onesignal/OneSignalPrefs;->saveBool(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2441
    return-void
.end method

.method public static enableVibrate(Z)V
    .locals 2
    .param p0, "enable"    # Z

    .line 2410
    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 2411
    return-void

    .line 2413
    :cond_0
    sget-object v0, Lcom/onesignal/OneSignalPrefs;->PREFS_ONESIGNAL:Ljava/lang/String;

    const-string v1, "GT_VIBRATE_ENABLED"

    invoke-static {v0, v1, p0}, Lcom/onesignal/OneSignalPrefs;->saveBool(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2417
    return-void
.end method

.method private static fireCallbackForOpenedNotifications()V
    .locals 4

    .line 1088
    sget-object v0, Lcom/onesignal/OneSignal;->unprocessedOpenedNotifis:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONArray;

    .line 1089
    .local v1, "dataArray":Lorg/json/JSONArray;
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/onesignal/OneSignal;->runNotificationOpenedCallback(Lorg/json/JSONArray;ZZ)V

    .end local v1    # "dataArray":Lorg/json/JSONArray;
    goto :goto_0

    .line 1091
    :cond_0
    sget-object v0, Lcom/onesignal/OneSignal;->unprocessedOpenedNotifis:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 1092
    return-void
.end method

.method static fireEmailUpdateFailure()V
    .locals 4

    .line 3086
    sget-object v0, Lcom/onesignal/OneSignal;->emailUpdateHandler:Lcom/onesignal/OneSignal$EmailUpdateHandler;

    if-eqz v0, :cond_0

    .line 3087
    new-instance v1, Lcom/onesignal/OneSignal$EmailUpdateError;

    sget-object v2, Lcom/onesignal/OneSignal$EmailErrorType;->NETWORK:Lcom/onesignal/OneSignal$EmailErrorType;

    const-string v3, "Failed due to network failure. Will retry on next sync."

    invoke-direct {v1, v2, v3}, Lcom/onesignal/OneSignal$EmailUpdateError;-><init>(Lcom/onesignal/OneSignal$EmailErrorType;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/onesignal/OneSignal$EmailUpdateHandler;->onFailure(Lcom/onesignal/OneSignal$EmailUpdateError;)V

    .line 3088
    const/4 v0, 0x0

    sput-object v0, Lcom/onesignal/OneSignal;->emailUpdateHandler:Lcom/onesignal/OneSignal$EmailUpdateHandler;

    .line 3090
    :cond_0
    return-void
.end method

.method static fireEmailUpdateSuccess()V
    .locals 1

    .line 3079
    sget-object v0, Lcom/onesignal/OneSignal;->emailUpdateHandler:Lcom/onesignal/OneSignal$EmailUpdateHandler;

    if-eqz v0, :cond_0

    .line 3080
    invoke-interface {v0}, Lcom/onesignal/OneSignal$EmailUpdateHandler;->onSuccess()V

    .line 3081
    const/4 v0, 0x0

    sput-object v0, Lcom/onesignal/OneSignal;->emailUpdateHandler:Lcom/onesignal/OneSignal$EmailUpdateHandler;

    .line 3083
    :cond_0
    return-void
.end method

.method static fireIdsAvailableCallback()V
    .locals 1

    .line 1989
    sget-object v0, Lcom/onesignal/OneSignal;->idsAvailableHandler:Lcom/onesignal/OneSignal$IdsAvailableHandler;

    if-eqz v0, :cond_0

    .line 1990
    new-instance v0, Lcom/onesignal/OneSignal$17;

    invoke-direct {v0}, Lcom/onesignal/OneSignal$17;-><init>()V

    invoke-static {v0}, Lcom/onesignal/OSUtils;->runOnMainUIThread(Ljava/lang/Runnable;)V

    .line 1997
    :cond_0
    return-void
.end method

.method private static fireNotificationOpenedHandler(Lcom/onesignal/OSNotificationOpenResult;)V
    .locals 1
    .param p0, "openedResult"    # Lcom/onesignal/OSNotificationOpenResult;

    .line 2136
    new-instance v0, Lcom/onesignal/OneSignal$18;

    invoke-direct {v0, p0}, Lcom/onesignal/OneSignal$18;-><init>(Lcom/onesignal/OSNotificationOpenResult;)V

    invoke-static {v0}, Lcom/onesignal/OSUtils;->runOnMainUIThread(Ljava/lang/Runnable;)V

    .line 2142
    return-void
.end method

.method private static generateOsNotificationOpenResult(Lorg/json/JSONArray;ZZ)Lcom/onesignal/OSNotificationOpenResult;
    .locals 11
    .param p0, "dataArray"    # Lorg/json/JSONArray;
    .param p1, "shown"    # Z
    .param p2, "fromAlert"    # Z

    .line 2091
    const-string v0, "actionId"

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    .line 2093
    .local v1, "jsonArraySize":I
    const/4 v2, 0x1

    .line 2095
    .local v2, "firstMessage":Z
    new-instance v3, Lcom/onesignal/OSNotificationOpenResult;

    invoke-direct {v3}, Lcom/onesignal/OSNotificationOpenResult;-><init>()V

    .line 2096
    .local v3, "openResult":Lcom/onesignal/OSNotificationOpenResult;
    new-instance v4, Lcom/onesignal/OSNotification;

    invoke-direct {v4}, Lcom/onesignal/OSNotification;-><init>()V

    .line 2097
    .local v4, "notification":Lcom/onesignal/OSNotification;
    invoke-static {}, Lcom/onesignal/OneSignal;->isAppActive()Z

    move-result v5

    iput-boolean v5, v4, Lcom/onesignal/OSNotification;->isAppInFocus:Z

    .line 2098
    iput-boolean p1, v4, Lcom/onesignal/OSNotification;->shown:Z

    .line 2099
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "androidNotificationId"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Lcom/onesignal/OSNotification;->androidNotificationId:I

    .line 2101
    const/4 v5, 0x0

    .line 2103
    .local v5, "actionSelected":Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v1, :cond_3

    .line 2105
    :try_start_0
    invoke-virtual {p0, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 2107
    .local v7, "data":Lorg/json/JSONObject;
    invoke-static {v7}, Lcom/onesignal/NotificationBundleProcessor;->OSNotificationPayloadFrom(Lorg/json/JSONObject;)Lcom/onesignal/OSNotificationPayload;

    move-result-object v8

    iput-object v8, v4, Lcom/onesignal/OSNotification;->payload:Lcom/onesignal/OSNotificationPayload;

    .line 2108
    if-nez v5, :cond_0

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 2109
    const/4 v8, 0x0

    invoke-virtual {v7, v0, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v5, v8

    .line 2111
    :cond_0
    if-eqz v2, :cond_1

    .line 2112
    const/4 v2, 0x0

    goto :goto_1

    .line 2114
    :cond_1
    iget-object v8, v4, Lcom/onesignal/OSNotification;->groupedNotifications:Ljava/util/List;

    if-nez v8, :cond_2

    .line 2115
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, v4, Lcom/onesignal/OSNotification;->groupedNotifications:Ljava/util/List;

    .line 2116
    :cond_2
    iget-object v8, v4, Lcom/onesignal/OSNotification;->groupedNotifications:Ljava/util/List;

    iget-object v9, v4, Lcom/onesignal/OSNotification;->payload:Lcom/onesignal/OSNotificationPayload;

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2120
    .end local v7    # "data":Lorg/json/JSONObject;
    :goto_1
    goto :goto_2

    .line 2118
    :catchall_0
    move-exception v7

    .line 2119
    .local v7, "t":Ljava/lang/Throwable;
    sget-object v8, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error parsing JSON item "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " for callback."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v7}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2103
    .end local v7    # "t":Ljava/lang/Throwable;
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 2123
    .end local v6    # "i":I
    :cond_3
    iput-object v4, v3, Lcom/onesignal/OSNotificationOpenResult;->notification:Lcom/onesignal/OSNotification;

    .line 2124
    new-instance v0, Lcom/onesignal/OSNotificationAction;

    invoke-direct {v0}, Lcom/onesignal/OSNotificationAction;-><init>()V

    iput-object v0, v3, Lcom/onesignal/OSNotificationOpenResult;->action:Lcom/onesignal/OSNotificationAction;

    .line 2125
    iget-object v0, v3, Lcom/onesignal/OSNotificationOpenResult;->action:Lcom/onesignal/OSNotificationAction;

    iput-object v5, v0, Lcom/onesignal/OSNotificationAction;->actionID:Ljava/lang/String;

    .line 2126
    iget-object v0, v3, Lcom/onesignal/OSNotificationOpenResult;->action:Lcom/onesignal/OSNotificationAction;

    if-eqz v5, :cond_4

    sget-object v6, Lcom/onesignal/OSNotificationAction$ActionType;->ActionTaken:Lcom/onesignal/OSNotificationAction$ActionType;

    goto :goto_3

    :cond_4
    sget-object v6, Lcom/onesignal/OSNotificationAction$ActionType;->Opened:Lcom/onesignal/OSNotificationAction$ActionType;

    :goto_3
    iput-object v6, v0, Lcom/onesignal/OSNotificationAction;->type:Lcom/onesignal/OSNotificationAction$ActionType;

    .line 2127
    if-eqz p2, :cond_5

    .line 2128
    iget-object v0, v3, Lcom/onesignal/OSNotificationOpenResult;->notification:Lcom/onesignal/OSNotification;

    sget-object v6, Lcom/onesignal/OSNotification$DisplayType;->InAppAlert:Lcom/onesignal/OSNotification$DisplayType;

    iput-object v6, v0, Lcom/onesignal/OSNotification;->displayType:Lcom/onesignal/OSNotification$DisplayType;

    goto :goto_4

    .line 2130
    :cond_5
    iget-object v0, v3, Lcom/onesignal/OSNotificationOpenResult;->notification:Lcom/onesignal/OSNotification;

    sget-object v6, Lcom/onesignal/OSNotification$DisplayType;->Notification:Lcom/onesignal/OSNotification$DisplayType;

    iput-object v6, v0, Lcom/onesignal/OSNotification;->displayType:Lcom/onesignal/OSNotification$DisplayType;

    .line 2132
    :goto_4
    return-object v3
.end method

.method private static declared-synchronized getAdIdProvider()Lcom/onesignal/AdvertisingIdentifierProvider;
    .locals 2

    const-class v0, Lcom/onesignal/OneSignal;

    monitor-enter v0

    .line 460
    :try_start_0
    sget-object v1, Lcom/onesignal/OneSignal;->adIdProvider:Lcom/onesignal/AdvertisingIdentifierProvider;

    if-nez v1, :cond_0

    .line 461
    invoke-static {}, Lcom/onesignal/OSUtils;->isAndroidDeviceType()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 462
    new-instance v1, Lcom/onesignal/AdvertisingIdProviderGPS;

    invoke-direct {v1}, Lcom/onesignal/AdvertisingIdProviderGPS;-><init>()V

    sput-object v1, Lcom/onesignal/OneSignal;->adIdProvider:Lcom/onesignal/AdvertisingIdentifierProvider;

    .line 465
    :cond_0
    sget-object v1, Lcom/onesignal/OneSignal;->adIdProvider:Lcom/onesignal/AdvertisingIdentifierProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 459
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static getAppEntryState()Lcom/onesignal/OneSignal$AppEntryAction;
    .locals 1

    .line 419
    sget-object v0, Lcom/onesignal/OneSignal;->appEntryState:Lcom/onesignal/OneSignal$AppEntryAction;

    return-object v0
.end method

.method static getClearGroupSummaryClick()Z
    .locals 3

    .line 2393
    sget-object v0, Lcom/onesignal/OneSignalPrefs;->PREFS_ONESIGNAL:Ljava/lang/String;

    const-string v1, "OS_CLEAR_GROUP_SUMMARY_CLICK"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/onesignal/OneSignalPrefs;->getBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static getCurrentEmailSubscriptionState(Landroid/content/Context;)Lcom/onesignal/OSEmailSubscriptionState;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 565
    if-nez p0, :cond_0

    .line 566
    const/4 v0, 0x0

    return-object v0

    .line 568
    :cond_0
    sget-object v0, Lcom/onesignal/OneSignal;->currentEmailSubscriptionState:Lcom/onesignal/OSEmailSubscriptionState;

    if-nez v0, :cond_1

    .line 569
    new-instance v0, Lcom/onesignal/OSEmailSubscriptionState;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onesignal/OSEmailSubscriptionState;-><init>(Z)V

    sput-object v0, Lcom/onesignal/OneSignal;->currentEmailSubscriptionState:Lcom/onesignal/OSEmailSubscriptionState;

    .line 570
    iget-object v0, v0, Lcom/onesignal/OSEmailSubscriptionState;->observable:Lcom/onesignal/OSObservable;

    new-instance v1, Lcom/onesignal/OSEmailSubscriptionChangedInternalObserver;

    invoke-direct {v1}, Lcom/onesignal/OSEmailSubscriptionChangedInternalObserver;-><init>()V

    invoke-virtual {v0, v1}, Lcom/onesignal/OSObservable;->addObserverStrong(Ljava/lang/Object;)V

    .line 573
    :cond_1
    sget-object v0, Lcom/onesignal/OneSignal;->currentEmailSubscriptionState:Lcom/onesignal/OSEmailSubscriptionState;

    return-object v0
.end method

.method public static getCurrentOrNewInitBuilder()Lcom/onesignal/OneSignal$Builder;
    .locals 1

    .line 616
    sget-object v0, Lcom/onesignal/OneSignal;->mInitBuilder:Lcom/onesignal/OneSignal$Builder;

    return-object v0
.end method

.method private static getCurrentPermissionState(Landroid/content/Context;)Lcom/onesignal/OSPermissionState;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 497
    if-nez p0, :cond_0

    .line 498
    const/4 v0, 0x0

    return-object v0

    .line 500
    :cond_0
    sget-object v0, Lcom/onesignal/OneSignal;->currentPermissionState:Lcom/onesignal/OSPermissionState;

    if-nez v0, :cond_1

    .line 501
    new-instance v0, Lcom/onesignal/OSPermissionState;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onesignal/OSPermissionState;-><init>(Z)V

    sput-object v0, Lcom/onesignal/OneSignal;->currentPermissionState:Lcom/onesignal/OSPermissionState;

    .line 502
    iget-object v0, v0, Lcom/onesignal/OSPermissionState;->observable:Lcom/onesignal/OSObservable;

    new-instance v1, Lcom/onesignal/OSPermissionChangedInternalObserver;

    invoke-direct {v1}, Lcom/onesignal/OSPermissionChangedInternalObserver;-><init>()V

    invoke-virtual {v0, v1}, Lcom/onesignal/OSObservable;->addObserverStrong(Ljava/lang/Object;)V

    .line 505
    :cond_1
    sget-object v0, Lcom/onesignal/OneSignal;->currentPermissionState:Lcom/onesignal/OSPermissionState;

    return-object v0
.end method

.method private static getCurrentSubscriptionState(Landroid/content/Context;)Lcom/onesignal/OSSubscriptionState;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 530
    if-nez p0, :cond_0

    .line 531
    const/4 v0, 0x0

    return-object v0

    .line 533
    :cond_0
    sget-object v0, Lcom/onesignal/OneSignal;->currentSubscriptionState:Lcom/onesignal/OSSubscriptionState;

    if-nez v0, :cond_1

    .line 534
    new-instance v0, Lcom/onesignal/OSSubscriptionState;

    const/4 v1, 0x0

    invoke-static {p0}, Lcom/onesignal/OneSignal;->getCurrentPermissionState(Landroid/content/Context;)Lcom/onesignal/OSPermissionState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onesignal/OSPermissionState;->getEnabled()Z

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/onesignal/OSSubscriptionState;-><init>(ZZ)V

    sput-object v0, Lcom/onesignal/OneSignal;->currentSubscriptionState:Lcom/onesignal/OSSubscriptionState;

    .line 535
    invoke-static {p0}, Lcom/onesignal/OneSignal;->getCurrentPermissionState(Landroid/content/Context;)Lcom/onesignal/OSPermissionState;

    move-result-object v0

    iget-object v0, v0, Lcom/onesignal/OSPermissionState;->observable:Lcom/onesignal/OSObservable;

    sget-object v1, Lcom/onesignal/OneSignal;->currentSubscriptionState:Lcom/onesignal/OSSubscriptionState;

    invoke-virtual {v0, v1}, Lcom/onesignal/OSObservable;->addObserver(Ljava/lang/Object;)V

    .line 536
    sget-object v0, Lcom/onesignal/OneSignal;->currentSubscriptionState:Lcom/onesignal/OSSubscriptionState;

    iget-object v0, v0, Lcom/onesignal/OSSubscriptionState;->observable:Lcom/onesignal/OSObservable;

    new-instance v1, Lcom/onesignal/OSSubscriptionChangedInternalObserver;

    invoke-direct {v1}, Lcom/onesignal/OSSubscriptionChangedInternalObserver;-><init>()V

    invoke-virtual {v0, v1}, Lcom/onesignal/OSObservable;->addObserverStrong(Ljava/lang/Object;)V

    .line 539
    :cond_1
    sget-object v0, Lcom/onesignal/OneSignal;->currentSubscriptionState:Lcom/onesignal/OSSubscriptionState;

    return-object v0
.end method

.method static getDBHelperInstance()Lcom/onesignal/OneSignalDbHelper;
    .locals 1

    .line 649
    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/onesignal/OneSignalDbHelper;->getInstance(Landroid/content/Context;)Lcom/onesignal/OneSignalDbHelper;

    move-result-object v0

    return-object v0
.end method

.method static getEmailId()Ljava/lang/String;
    .locals 3

    .line 2318
    sget-object v0, Lcom/onesignal/OneSignal;->emailId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 2319
    sget-object v0, Lcom/onesignal/OneSignalPrefs;->PREFS_ONESIGNAL:Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "OS_EMAIL_ID"

    invoke-static {v0, v2, v1}, Lcom/onesignal/OneSignalPrefs;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/onesignal/OneSignal;->emailId:Ljava/lang/String;

    .line 2324
    :cond_0
    sget-object v0, Lcom/onesignal/OneSignal;->emailId:Ljava/lang/String;

    return-object v0
.end method

.method static getEmailSubscriptionStateChangesObserver()Lcom/onesignal/OSObservable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/onesignal/OSObservable<",
            "Lcom/onesignal/OSEmailSubscriptionObserver;",
            "Lcom/onesignal/OSEmailSubscriptionStateChanges;",
            ">;"
        }
    .end annotation

    .line 589
    sget-object v0, Lcom/onesignal/OneSignal;->emailSubscriptionStateChangesObserver:Lcom/onesignal/OSObservable;

    if-nez v0, :cond_0

    .line 590
    new-instance v0, Lcom/onesignal/OSObservable;

    const/4 v1, 0x1

    const-string v2, "onOSEmailSubscriptionChanged"

    invoke-direct {v0, v2, v1}, Lcom/onesignal/OSObservable;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/onesignal/OneSignal;->emailSubscriptionStateChangesObserver:Lcom/onesignal/OSObservable;

    .line 591
    :cond_0
    sget-object v0, Lcom/onesignal/OneSignal;->emailSubscriptionStateChangesObserver:Lcom/onesignal/OSObservable;

    return-object v0
.end method

.method static getFilterOtherGCMReceivers(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 2339
    sget-object v0, Lcom/onesignal/OneSignalPrefs;->PREFS_ONESIGNAL:Ljava/lang/String;

    const-string v1, "OS_FILTER_OTHER_GCM_RECEIVERS"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/onesignal/OneSignalPrefs;->getBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static getFirebaseAnalyticsEnabled()Z
    .locals 3

    .line 2386
    sget-object v0, Lcom/onesignal/OneSignalPrefs;->PREFS_ONESIGNAL:Ljava/lang/String;

    const-string v1, "GT_FIREBASE_TRACKING_ENABLED"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/onesignal/OneSignalPrefs;->getBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static getInAppAlertNotificationEnabled()Z
    .locals 3

    .line 2511
    sget-object v0, Lcom/onesignal/OneSignal;->mInitBuilder:Lcom/onesignal/OneSignal$Builder;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2512
    :cond_0
    iget-object v0, v0, Lcom/onesignal/OneSignal$Builder;->mDisplayOption:Lcom/onesignal/OneSignal$OSInFocusDisplayOption;

    sget-object v2, Lcom/onesignal/OneSignal$OSInFocusDisplayOption;->InAppAlert:Lcom/onesignal/OneSignal$OSInFocusDisplayOption;

    if-ne v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method static getInAppMessageController()Lcom/onesignal/OSInAppMessageController;
    .locals 2

    .line 448
    sget-object v0, Lcom/onesignal/OneSignal;->inAppMessageControllerFactory:Lcom/onesignal/OSInAppMessageControllerFactory;

    invoke-static {}, Lcom/onesignal/OneSignal;->getDBHelperInstance()Lcom/onesignal/OneSignalDbHelper;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onesignal/OSInAppMessageControllerFactory;->getController(Lcom/onesignal/OneSignalDbHelper;)Lcom/onesignal/OSInAppMessageController;

    move-result-object v0

    return-object v0
.end method

.method private static getInFocusDisplaying(I)Lcom/onesignal/OneSignal$OSInFocusDisplayOption;
    .locals 1
    .param p0, "displayOption"    # I

    .line 2490
    packed-switch p0, :pswitch_data_0

    .line 2499
    if-gez p0, :cond_0

    .line 2500
    sget-object v0, Lcom/onesignal/OneSignal$OSInFocusDisplayOption;->None:Lcom/onesignal/OneSignal$OSInFocusDisplayOption;

    return-object v0

    .line 2496
    :pswitch_0
    sget-object v0, Lcom/onesignal/OneSignal$OSInFocusDisplayOption;->Notification:Lcom/onesignal/OneSignal$OSInFocusDisplayOption;

    return-object v0

    .line 2494
    :pswitch_1
    sget-object v0, Lcom/onesignal/OneSignal$OSInFocusDisplayOption;->InAppAlert:Lcom/onesignal/OneSignal$OSInFocusDisplayOption;

    return-object v0

    .line 2492
    :pswitch_2
    sget-object v0, Lcom/onesignal/OneSignal$OSInFocusDisplayOption;->None:Lcom/onesignal/OneSignal$OSInFocusDisplayOption;

    return-object v0

    .line 2501
    :cond_0
    sget-object v0, Lcom/onesignal/OneSignal$OSInFocusDisplayOption;->Notification:Lcom/onesignal/OneSignal$OSInFocusDisplayOption;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getLastEmailSubscriptionState(Landroid/content/Context;)Lcom/onesignal/OSEmailSubscriptionState;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 578
    if-nez p0, :cond_0

    .line 579
    const/4 v0, 0x0

    return-object v0

    .line 581
    :cond_0
    sget-object v0, Lcom/onesignal/OneSignal;->lastEmailSubscriptionState:Lcom/onesignal/OSEmailSubscriptionState;

    if-nez v0, :cond_1

    .line 582
    new-instance v0, Lcom/onesignal/OSEmailSubscriptionState;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/onesignal/OSEmailSubscriptionState;-><init>(Z)V

    sput-object v0, Lcom/onesignal/OneSignal;->lastEmailSubscriptionState:Lcom/onesignal/OSEmailSubscriptionState;

    .line 584
    :cond_1
    sget-object v0, Lcom/onesignal/OneSignal;->lastEmailSubscriptionState:Lcom/onesignal/OSEmailSubscriptionState;

    return-object v0
.end method

.method private static getLastPermissionState(Landroid/content/Context;)Lcom/onesignal/OSPermissionState;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 510
    if-nez p0, :cond_0

    .line 511
    const/4 v0, 0x0

    return-object v0

    .line 513
    :cond_0
    sget-object v0, Lcom/onesignal/OneSignal;->lastPermissionState:Lcom/onesignal/OSPermissionState;

    if-nez v0, :cond_1

    .line 514
    new-instance v0, Lcom/onesignal/OSPermissionState;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/onesignal/OSPermissionState;-><init>(Z)V

    sput-object v0, Lcom/onesignal/OneSignal;->lastPermissionState:Lcom/onesignal/OSPermissionState;

    .line 516
    :cond_1
    sget-object v0, Lcom/onesignal/OneSignal;->lastPermissionState:Lcom/onesignal/OSPermissionState;

    return-object v0
.end method

.method private static getLastSessionTime()J
    .locals 4

    .line 2458
    sget-object v0, Lcom/onesignal/OneSignalPrefs;->PREFS_ONESIGNAL:Ljava/lang/String;

    const-string v1, "OS_LAST_SESSION_TIME"

    const-wide/16 v2, -0x7918

    invoke-static {v0, v1, v2, v3}, Lcom/onesignal/OneSignalPrefs;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private static getLastSubscriptionState(Landroid/content/Context;)Lcom/onesignal/OSSubscriptionState;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 544
    if-nez p0, :cond_0

    .line 545
    const/4 v0, 0x0

    return-object v0

    .line 547
    :cond_0
    sget-object v0, Lcom/onesignal/OneSignal;->lastSubscriptionState:Lcom/onesignal/OSSubscriptionState;

    if-nez v0, :cond_1

    .line 548
    new-instance v0, Lcom/onesignal/OSSubscriptionState;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/onesignal/OSSubscriptionState;-><init>(ZZ)V

    sput-object v0, Lcom/onesignal/OneSignal;->lastSubscriptionState:Lcom/onesignal/OSSubscriptionState;

    .line 550
    :cond_1
    sget-object v0, Lcom/onesignal/OneSignal;->lastSubscriptionState:Lcom/onesignal/OSSubscriptionState;

    return-object v0
.end method

.method private static getLogLevel(I)Lcom/onesignal/OneSignal$LOG_LEVEL;
    .locals 1
    .param p0, "level"    # I

    .line 1169
    packed-switch p0, :pswitch_data_0

    .line 1186
    if-gez p0, :cond_0

    .line 1187
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->NONE:Lcom/onesignal/OneSignal$LOG_LEVEL;

    return-object v0

    .line 1183
    :pswitch_0
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->VERBOSE:Lcom/onesignal/OneSignal$LOG_LEVEL;

    return-object v0

    .line 1181
    :pswitch_1
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    return-object v0

    .line 1179
    :pswitch_2
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->INFO:Lcom/onesignal/OneSignal$LOG_LEVEL;

    return-object v0

    .line 1177
    :pswitch_3
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->WARN:Lcom/onesignal/OneSignal$LOG_LEVEL;

    return-object v0

    .line 1175
    :pswitch_4
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    return-object v0

    .line 1173
    :pswitch_5
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->FATAL:Lcom/onesignal/OneSignal$LOG_LEVEL;

    return-object v0

    .line 1171
    :pswitch_6
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->NONE:Lcom/onesignal/OneSignal$LOG_LEVEL;

    return-object v0

    .line 1188
    :cond_0
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->VERBOSE:Lcom/onesignal/OneSignal$LOG_LEVEL;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getNotificationIdFromGCMJsonPayload(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 3
    .param p0, "jsonPayload"    # Lorg/json/JSONObject;

    .line 3043
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    const-string v2, "custom"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 3044
    .local v1, "customJSON":Lorg/json/JSONObject;
    const-string v2, "i"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 3045
    .end local v1    # "customJSON":Lorg/json/JSONObject;
    :catchall_0
    move-exception v1

    .line 3046
    return-object v0
.end method

.method static getNotificationsWhenActiveEnabled()Z
    .locals 3

    .line 2506
    sget-object v0, Lcom/onesignal/OneSignal;->mInitBuilder:Lcom/onesignal/OneSignal$Builder;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 2507
    :cond_0
    iget-object v0, v0, Lcom/onesignal/OneSignal$Builder;->mDisplayOption:Lcom/onesignal/OneSignal$OSInFocusDisplayOption;

    sget-object v2, Lcom/onesignal/OneSignal$OSInFocusDisplayOption;->Notification:Lcom/onesignal/OneSignal$OSInFocusDisplayOption;

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method static getPermissionStateChangesObserver()Lcom/onesignal/OSObservable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/onesignal/OSObservable<",
            "Lcom/onesignal/OSPermissionObserver;",
            "Lcom/onesignal/OSPermissionStateChanges;",
            ">;"
        }
    .end annotation

    .line 521
    sget-object v0, Lcom/onesignal/OneSignal;->permissionStateChangesObserver:Lcom/onesignal/OSObservable;

    if-nez v0, :cond_0

    .line 522
    new-instance v0, Lcom/onesignal/OSObservable;

    const/4 v1, 0x1

    const-string v2, "onOSPermissionChanged"

    invoke-direct {v0, v2, v1}, Lcom/onesignal/OSObservable;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/onesignal/OneSignal;->permissionStateChangesObserver:Lcom/onesignal/OSObservable;

    .line 523
    :cond_0
    sget-object v0, Lcom/onesignal/OneSignal;->permissionStateChangesObserver:Lcom/onesignal/OSObservable;

    return-object v0
.end method

.method public static getPermissionSubscriptionState()Lcom/onesignal/OSPermissionSubscriptionState;
    .locals 3

    .line 2912
    const-string v0, "getPermissionSubscriptionState()"

    invoke-static {v0}, Lcom/onesignal/OneSignal;->shouldLogUserPrivacyConsentErrorMessageForMethodName(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2913
    return-object v1

    .line 2915
    :cond_0
    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 2916
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v2, "OneSignal.init has not been called. Could not get OSPermissionSubscriptionState"

    invoke-static {v0, v2}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 2917
    return-object v1

    .line 2920
    :cond_1
    new-instance v0, Lcom/onesignal/OSPermissionSubscriptionState;

    invoke-direct {v0}, Lcom/onesignal/OSPermissionSubscriptionState;-><init>()V

    .line 2921
    .local v0, "status":Lcom/onesignal/OSPermissionSubscriptionState;
    sget-object v1, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/onesignal/OneSignal;->getCurrentSubscriptionState(Landroid/content/Context;)Lcom/onesignal/OSSubscriptionState;

    move-result-object v1

    iput-object v1, v0, Lcom/onesignal/OSPermissionSubscriptionState;->subscriptionStatus:Lcom/onesignal/OSSubscriptionState;

    .line 2922
    sget-object v1, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/onesignal/OneSignal;->getCurrentPermissionState(Landroid/content/Context;)Lcom/onesignal/OSPermissionState;

    move-result-object v1

    iput-object v1, v0, Lcom/onesignal/OSPermissionSubscriptionState;->permissionStatus:Lcom/onesignal/OSPermissionState;

    .line 2923
    sget-object v1, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/onesignal/OneSignal;->getCurrentEmailSubscriptionState(Landroid/content/Context;)Lcom/onesignal/OSEmailSubscriptionState;

    move-result-object v1

    iput-object v1, v0, Lcom/onesignal/OSPermissionSubscriptionState;->emailSubscriptionStatus:Lcom/onesignal/OSEmailSubscriptionState;

    .line 2925
    return-object v0
.end method

.method private static getPushRegistrator()Lcom/onesignal/PushRegistrator;
    .locals 1

    .line 991
    sget-object v0, Lcom/onesignal/OneSignal;->mPushRegistrator:Lcom/onesignal/PushRegistrator;

    if-eqz v0, :cond_0

    .line 992
    return-object v0

    .line 994
    :cond_0
    invoke-static {}, Lcom/onesignal/OSUtils;->isFireOSDeviceType()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 995
    new-instance v0, Lcom/onesignal/PushRegistratorADM;

    invoke-direct {v0}, Lcom/onesignal/PushRegistratorADM;-><init>()V

    sput-object v0, Lcom/onesignal/OneSignal;->mPushRegistrator:Lcom/onesignal/PushRegistrator;

    goto :goto_0

    .line 996
    :cond_1
    invoke-static {}, Lcom/onesignal/OSUtils;->isAndroidDeviceType()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 997
    invoke-static {}, Lcom/onesignal/OSUtils;->hasFCMLibrary()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 998
    new-instance v0, Lcom/onesignal/PushRegistratorFCM;

    invoke-direct {v0}, Lcom/onesignal/PushRegistratorFCM;-><init>()V

    sput-object v0, Lcom/onesignal/OneSignal;->mPushRegistrator:Lcom/onesignal/PushRegistrator;

    goto :goto_0

    .line 1000
    :cond_2
    new-instance v0, Lcom/onesignal/PushRegistratorGCM;

    invoke-direct {v0}, Lcom/onesignal/PushRegistratorGCM;-><init>()V

    sput-object v0, Lcom/onesignal/OneSignal;->mPushRegistrator:Lcom/onesignal/PushRegistrator;

    goto :goto_0

    .line 1003
    :cond_3
    new-instance v0, Lcom/onesignal/PushRegistratorHMS;

    invoke-direct {v0}, Lcom/onesignal/PushRegistratorHMS;-><init>()V

    sput-object v0, Lcom/onesignal/OneSignal;->mPushRegistrator:Lcom/onesignal/PushRegistrator;

    .line 1005
    :goto_0
    sget-object v0, Lcom/onesignal/OneSignal;->mPushRegistrator:Lcom/onesignal/PushRegistrator;

    return-object v0
.end method

.method static getSavedAppId()Ljava/lang/String;
    .locals 1

    .line 2255
    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/onesignal/OneSignal;->getSavedAppId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getSavedAppId(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "inContext"    # Landroid/content/Context;

    .line 2259
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 2260
    return-object v0

    .line 2262
    :cond_0
    sget-object v1, Lcom/onesignal/OneSignalPrefs;->PREFS_ONESIGNAL:Ljava/lang/String;

    const-string v2, "GT_APP_ID"

    invoke-static {v1, v2, v0}, Lcom/onesignal/OneSignalPrefs;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getSavedUserConsentStatus()Z
    .locals 3

    .line 2269
    sget-object v0, Lcom/onesignal/OneSignalPrefs;->PREFS_ONESIGNAL:Ljava/lang/String;

    const-string v1, "ONESIGNAL_USER_PROVIDED_CONSENT"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/onesignal/OneSignalPrefs;->getBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static getSavedUserId(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "inContext"    # Landroid/content/Context;

    .line 2283
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 2284
    return-object v0

    .line 2286
    :cond_0
    sget-object v1, Lcom/onesignal/OneSignalPrefs;->PREFS_ONESIGNAL:Ljava/lang/String;

    const-string v2, "GT_PLAYER_ID"

    invoke-static {v1, v2, v0}, Lcom/onesignal/OneSignalPrefs;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getSessionListener()Lcom/onesignal/OSSessionManager$SessionListener;
    .locals 1

    .line 3108
    sget-object v0, Lcom/onesignal/OneSignal;->sessionListener:Lcom/onesignal/OSSessionManager$SessionListener;

    return-object v0
.end method

.method static getSessionManager()Lcom/onesignal/OSSessionManager;
    .locals 1

    .line 3118
    sget-object v0, Lcom/onesignal/OneSignal;->sessionManager:Lcom/onesignal/OSSessionManager;

    return-object v0
.end method

.method static getSoundEnabled()Z
    .locals 3

    .line 2444
    sget-object v0, Lcom/onesignal/OneSignalPrefs;->PREFS_ONESIGNAL:Ljava/lang/String;

    const-string v1, "GT_SOUND_ENABLED"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/onesignal/OneSignalPrefs;->getBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static getSubscriptionStateChangesObserver()Lcom/onesignal/OSObservable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/onesignal/OSObservable<",
            "Lcom/onesignal/OSSubscriptionObserver;",
            "Lcom/onesignal/OSSubscriptionStateChanges;",
            ">;"
        }
    .end annotation

    .line 555
    sget-object v0, Lcom/onesignal/OneSignal;->subscriptionStateChangesObserver:Lcom/onesignal/OSObservable;

    if-nez v0, :cond_0

    .line 556
    new-instance v0, Lcom/onesignal/OSObservable;

    const/4 v1, 0x1

    const-string v2, "onOSSubscriptionChanged"

    invoke-direct {v0, v2, v1}, Lcom/onesignal/OSObservable;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/onesignal/OneSignal;->subscriptionStateChangesObserver:Lcom/onesignal/OSObservable;

    .line 557
    :cond_0
    sget-object v0, Lcom/onesignal/OneSignal;->subscriptionStateChangesObserver:Lcom/onesignal/OSObservable;

    return-object v0
.end method

.method public static getTags(Lcom/onesignal/OneSignal$GetTagsHandler;)V
    .locals 3
    .param p0, "getTagsHandler"    # Lcom/onesignal/OneSignal$GetTagsHandler;

    .line 1816
    const-string v0, "getTags()"

    invoke-static {v0}, Lcom/onesignal/OneSignal;->shouldLogUserPrivacyConsentErrorMessageForMethodName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1817
    return-void

    .line 1819
    :cond_0
    if-nez p0, :cond_1

    .line 1820
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v1, "getTagsHandler is null!"

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 1821
    return-void

    .line 1824
    :cond_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/onesignal/OneSignal$14;

    invoke-direct {v1, p0}, Lcom/onesignal/OneSignal$14;-><init>(Lcom/onesignal/OneSignal$GetTagsHandler;)V

    const-string v2, "OS_GETTAGS"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 1849
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1850
    return-void
.end method

.method private static getTimeZoneOffset()I
    .locals 3

    .line 1328
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    .line 1329
    .local v0, "timezone":Ljava/util/TimeZone;
    invoke-virtual {v0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v1

    .line 1331
    .local v1, "offset":I
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v2}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1332
    invoke-virtual {v0}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v2

    add-int/2addr v1, v2

    .line 1334
    :cond_0
    div-int/lit16 v2, v1, 0x3e8

    return v2
.end method

.method public static getTriggerValueForKey(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;

    .line 2995
    invoke-static {}, Lcom/onesignal/OneSignal;->getInAppMessageController()Lcom/onesignal/OSInAppMessageController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/onesignal/OSInAppMessageController;->getTriggerValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getUserDevice()Lcom/onesignal/OSDevice;
    .locals 1

    .line 597
    sget-object v0, Lcom/onesignal/OneSignal;->userDevice:Lcom/onesignal/OSDevice;

    if-nez v0, :cond_0

    .line 598
    new-instance v0, Lcom/onesignal/OSDevice;

    invoke-direct {v0}, Lcom/onesignal/OSDevice;-><init>()V

    sput-object v0, Lcom/onesignal/OneSignal;->userDevice:Lcom/onesignal/OSDevice;

    .line 600
    :cond_0
    sget-object v0, Lcom/onesignal/OneSignal;->userDevice:Lcom/onesignal/OSDevice;

    return-object v0
.end method

.method static getUserId()Ljava/lang/String;
    .locals 1

    .line 2297
    sget-object v0, Lcom/onesignal/OneSignal;->userId:Ljava/lang/String;

    if-nez v0, :cond_0

    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 2298
    invoke-static {v0}, Lcom/onesignal/OneSignal;->getSavedUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/onesignal/OneSignal;->userId:Ljava/lang/String;

    .line 2299
    :cond_0
    sget-object v0, Lcom/onesignal/OneSignal;->userId:Ljava/lang/String;

    return-object v0
.end method

.method static getVibrate()Z
    .locals 3

    .line 2420
    sget-object v0, Lcom/onesignal/OneSignalPrefs;->PREFS_ONESIGNAL:Ljava/lang/String;

    const-string v1, "GT_VIBRATE_ENABLED"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/onesignal/OneSignalPrefs;->getBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static handleActivityLifecycleHandler(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 827
    invoke-static {p0}, Lcom/onesignal/OneSignal;->isContextActivity(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/onesignal/OneSignal;->foreground:Z

    .line 828
    if-eqz v0, :cond_0

    .line 829
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    sput-object v0, Lcom/onesignal/ActivityLifecycleHandler;->curActivity:Landroid/app/Activity;

    .line 830
    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/onesignal/NotificationRestorer;->asyncRestore(Landroid/content/Context;)V

    .line 831
    invoke-static {}, Lcom/onesignal/FocusTimeController;->getInstance()Lcom/onesignal/FocusTimeController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onesignal/FocusTimeController;->appForegrounded()V

    goto :goto_0

    .line 834
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/onesignal/ActivityLifecycleHandler;->nextResumeIsFirstActivity:Z

    .line 835
    :goto_0
    return-void
.end method

.method private static handleAmazonPurchase()V
    .locals 2

    .line 839
    :try_start_0
    const-string v0, "com.amazon.device.iap.PurchasingListener"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 840
    new-instance v0, Lcom/onesignal/TrackAmazonPurchase;

    sget-object v1, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/onesignal/TrackAmazonPurchase;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/onesignal/OneSignal;->trackAmazonPurchase:Lcom/onesignal/TrackAmazonPurchase;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 841
    :catch_0
    move-exception v0

    :goto_0
    nop

    .line 842
    return-void
.end method

.method private static handleAppIdChange()V
    .locals 3

    .line 798
    invoke-static {}, Lcom/onesignal/OneSignal;->getSavedAppId()Ljava/lang/String;

    move-result-object v0

    .line 799
    .local v0, "oldAppId":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 800
    sget-object v1, Lcom/onesignal/OneSignal;->appId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 801
    sget-object v1, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v2, "APP ID changed, clearing user id as it is no longer valid."

    invoke-static {v1, v2}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 802
    sget-object v1, Lcom/onesignal/OneSignal;->appId:Ljava/lang/String;

    invoke-static {v1}, Lcom/onesignal/OneSignal;->saveAppId(Ljava/lang/String;)V

    .line 803
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->resetCurrentState()V

    .line 804
    const/4 v1, 0x0

    sput-object v1, Lcom/onesignal/OneSignal;->remoteParams:Lcom/onesignal/OneSignalRemoteParams$Params;

    goto :goto_0

    .line 808
    :cond_0
    const/4 v1, 0x0

    sget-object v2, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/onesignal/BadgeCountUpdater;->updateCount(ILandroid/content/Context;)V

    .line 809
    sget-object v1, Lcom/onesignal/OneSignal;->appId:Ljava/lang/String;

    invoke-static {v1}, Lcom/onesignal/OneSignal;->saveAppId(Ljava/lang/String;)V

    .line 811
    :cond_1
    :goto_0
    return-void
.end method

.method static handleFailedEmailLogout()V
    .locals 4

    .line 3072
    sget-object v0, Lcom/onesignal/OneSignal;->emailLogoutHandler:Lcom/onesignal/OneSignal$EmailUpdateHandler;

    if-eqz v0, :cond_0

    .line 3073
    new-instance v1, Lcom/onesignal/OneSignal$EmailUpdateError;

    sget-object v2, Lcom/onesignal/OneSignal$EmailErrorType;->NETWORK:Lcom/onesignal/OneSignal$EmailErrorType;

    const-string v3, "Failed due to network failure. Will retry on next sync."

    invoke-direct {v1, v2, v3}, Lcom/onesignal/OneSignal$EmailUpdateError;-><init>(Lcom/onesignal/OneSignal$EmailErrorType;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/onesignal/OneSignal$EmailUpdateHandler;->onFailure(Lcom/onesignal/OneSignal$EmailUpdateError;)V

    .line 3074
    const/4 v0, 0x0

    sput-object v0, Lcom/onesignal/OneSignal;->emailLogoutHandler:Lcom/onesignal/OneSignal$EmailUpdateHandler;

    .line 3076
    :cond_0
    return-void
.end method

.method public static handleNotificationOpen(Landroid/content/Context;Lorg/json/JSONArray;ZLjava/lang/String;)V
    .locals 5
    .param p0, "inContext"    # Landroid/content/Context;
    .param p1, "data"    # Lorg/json/JSONArray;
    .param p2, "fromAlert"    # Z
    .param p3, "notificationId"    # Ljava/lang/String;

    .line 2162
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/onesignal/OneSignal;->shouldLogUserPrivacyConsentErrorMessageForMethodName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2163
    return-void

    .line 2165
    :cond_0
    invoke-static {p0, p1}, Lcom/onesignal/OneSignal;->notificationOpenedRESTCall(Landroid/content/Context;Lorg/json/JSONArray;)V

    .line 2167
    sget-object v0, Lcom/onesignal/OneSignal;->trackFirebaseAnalytics:Lcom/onesignal/TrackFirebaseAnalytics;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/onesignal/OneSignal;->getFirebaseAnalyticsEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2168
    sget-object v0, Lcom/onesignal/OneSignal;->trackFirebaseAnalytics:Lcom/onesignal/TrackFirebaseAnalytics;

    invoke-static {p1, v1, p2}, Lcom/onesignal/OneSignal;->generateOsNotificationOpenResult(Lorg/json/JSONArray;ZZ)Lcom/onesignal/OSNotificationOpenResult;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/onesignal/TrackFirebaseAnalytics;->trackOpenedEvent(Lcom/onesignal/OSNotificationOpenResult;)V

    .line 2170
    :cond_1
    const/4 v0, 0x0

    .line 2171
    .local v0, "urlOpened":Z
    const-string v2, "com.onesignal.NotificationOpened.DEFAULT"

    invoke-static {p0, v2}, Lcom/onesignal/OSUtils;->getManifestMeta(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "DISABLE"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 2173
    .local v2, "defaultOpenActionDisabled":Z
    if-nez v2, :cond_2

    .line 2174
    invoke-static {p0, p1}, Lcom/onesignal/OneSignal;->openURLFromNotification(Landroid/content/Context;Lorg/json/JSONArray;)Z

    move-result v0

    .line 2177
    :cond_2
    invoke-static {p0, p2, v0, v2}, Lcom/onesignal/OneSignal;->shouldInitDirectSessionFromNotificationOpen(Landroid/content/Context;ZZZ)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2179
    sget-object v3, Lcom/onesignal/OneSignal$AppEntryAction;->NOTIFICATION_CLICK:Lcom/onesignal/OneSignal$AppEntryAction;

    sput-object v3, Lcom/onesignal/OneSignal;->appEntryState:Lcom/onesignal/OneSignal$AppEntryAction;

    .line 2180
    sget-object v4, Lcom/onesignal/OneSignal;->sessionManager:Lcom/onesignal/OSSessionManager;

    invoke-virtual {v4, v3, p3}, Lcom/onesignal/OSSessionManager;->onDirectInfluenceFromNotificationOpen(Lcom/onesignal/OneSignal$AppEntryAction;Ljava/lang/String;)V

    .line 2183
    :cond_3
    invoke-static {p1, v1, p2}, Lcom/onesignal/OneSignal;->runNotificationOpenedCallback(Lorg/json/JSONArray;ZZ)V

    .line 2184
    return-void
.end method

.method static handleNotificationReceived(Lorg/json/JSONArray;ZZ)V
    .locals 3
    .param p0, "data"    # Lorg/json/JSONArray;
    .param p1, "displayed"    # Z
    .param p2, "fromAlert"    # Z

    .line 2148
    invoke-static {p0, p1, p2}, Lcom/onesignal/OneSignal;->generateOsNotificationOpenResult(Lorg/json/JSONArray;ZZ)Lcom/onesignal/OSNotificationOpenResult;

    move-result-object v0

    .line 2149
    .local v0, "openResult":Lcom/onesignal/OSNotificationOpenResult;
    sget-object v1, Lcom/onesignal/OneSignal;->trackFirebaseAnalytics:Lcom/onesignal/TrackFirebaseAnalytics;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/onesignal/OneSignal;->getFirebaseAnalyticsEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2150
    sget-object v1, Lcom/onesignal/OneSignal;->trackFirebaseAnalytics:Lcom/onesignal/TrackFirebaseAnalytics;

    invoke-virtual {v1, v0}, Lcom/onesignal/TrackFirebaseAnalytics;->trackReceivedEvent(Lcom/onesignal/OSNotificationOpenResult;)V

    .line 2152
    :cond_0
    sget-object v1, Lcom/onesignal/OneSignal;->mInitBuilder:Lcom/onesignal/OneSignal$Builder;

    if-eqz v1, :cond_2

    iget-object v1, v1, Lcom/onesignal/OneSignal$Builder;->mNotificationReceivedHandler:Lcom/onesignal/OneSignal$NotificationReceivedHandler;

    if-nez v1, :cond_1

    goto :goto_0

    .line 2155
    :cond_1
    sget-object v1, Lcom/onesignal/OneSignal;->mInitBuilder:Lcom/onesignal/OneSignal$Builder;

    iget-object v1, v1, Lcom/onesignal/OneSignal$Builder;->mNotificationReceivedHandler:Lcom/onesignal/OneSignal$NotificationReceivedHandler;

    iget-object v2, v0, Lcom/onesignal/OSNotificationOpenResult;->notification:Lcom/onesignal/OSNotification;

    invoke-interface {v1, v2}, Lcom/onesignal/OneSignal$NotificationReceivedHandler;->notificationReceived(Lcom/onesignal/OSNotification;)V

    .line 2156
    return-void

    .line 2153
    :cond_2
    :goto_0
    return-void
.end method

.method static handleSuccessfulEmailLogout()V
    .locals 1

    .line 3065
    sget-object v0, Lcom/onesignal/OneSignal;->emailLogoutHandler:Lcom/onesignal/OneSignal$EmailUpdateHandler;

    if-eqz v0, :cond_0

    .line 3066
    invoke-interface {v0}, Lcom/onesignal/OneSignal$EmailUpdateHandler;->onSuccess()V

    .line 3067
    const/4 v0, 0x0

    sput-object v0, Lcom/onesignal/OneSignal;->emailLogoutHandler:Lcom/onesignal/OneSignal$EmailUpdateHandler;

    .line 3069
    :cond_0
    return-void
.end method

.method static hasEmailId()Z
    .locals 1

    .line 2314
    sget-object v0, Lcom/onesignal/OneSignal;->emailId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method static hasUserId()Z
    .locals 1

    .line 2293
    invoke-static {}, Lcom/onesignal/OneSignal;->getUserId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static idsAvailable(Lcom/onesignal/OneSignal$IdsAvailableHandler;)V
    .locals 3
    .param p0, "inIdsAvailableHandler"    # Lcom/onesignal/OneSignal$IdsAvailableHandler;

    .line 1960
    const-string v0, "idsAvailable()"

    invoke-static {v0}, Lcom/onesignal/OneSignal;->shouldLogUserPrivacyConsentErrorMessageForMethodName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1961
    return-void

    .line 1963
    :cond_0
    sput-object p0, Lcom/onesignal/OneSignal;->idsAvailableHandler:Lcom/onesignal/OneSignal$IdsAvailableHandler;

    .line 1965
    new-instance v0, Lcom/onesignal/OneSignal$16;

    invoke-direct {v0}, Lcom/onesignal/OneSignal$16;-><init>()V

    .line 1978
    .local v0, "runIdsAvailable":Ljava/lang/Runnable;
    sget-object v1, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/onesignal/OneSignal;->shouldRunTaskThroughQueue()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 1985
    :cond_1
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1986
    return-void

    .line 1979
    :cond_2
    :goto_0
    sget-object v1, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v2, "You must initialize OneSignal before getting tags! Moving this tag operation to a pending queue."

    invoke-static {v1, v2}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 1981
    new-instance v1, Lcom/onesignal/OneSignal$PendingTaskRunnable;

    invoke-direct {v1, v0}, Lcom/onesignal/OneSignal$PendingTaskRunnable;-><init>(Ljava/lang/Runnable;)V

    invoke-static {v1}, Lcom/onesignal/OneSignal;->addTaskToQueue(Lcom/onesignal/OneSignal$PendingTaskRunnable;)V

    .line 1982
    return-void
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "googleProjectNumber"    # Ljava/lang/String;
    .param p2, "oneSignalAppId"    # Ljava/lang/String;

    .line 698
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, v0}, Lcom/onesignal/OneSignal;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/onesignal/OneSignal$NotificationOpenedHandler;Lcom/onesignal/OneSignal$NotificationReceivedHandler;)V

    .line 699
    return-void
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/onesignal/OneSignal$NotificationOpenedHandler;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "googleProjectNumber"    # Ljava/lang/String;
    .param p2, "oneSignalAppId"    # Ljava/lang/String;
    .param p3, "notificationOpenedHandler"    # Lcom/onesignal/OneSignal$NotificationOpenedHandler;

    .line 702
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/onesignal/OneSignal;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/onesignal/OneSignal$NotificationOpenedHandler;Lcom/onesignal/OneSignal$NotificationReceivedHandler;)V

    .line 703
    return-void
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/onesignal/OneSignal$NotificationOpenedHandler;Lcom/onesignal/OneSignal$NotificationReceivedHandler;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "googleProjectNumber"    # Ljava/lang/String;
    .param p2, "oneSignalAppId"    # Ljava/lang/String;
    .param p3, "notificationOpenedHandler"    # Lcom/onesignal/OneSignal$NotificationOpenedHandler;
    .param p4, "notificationReceivedHandler"    # Lcom/onesignal/OneSignal$NotificationReceivedHandler;

    .line 706
    invoke-static {p3, p4}, Lcom/onesignal/OneSignal;->createInitBuilder(Lcom/onesignal/OneSignal$NotificationOpenedHandler;Lcom/onesignal/OneSignal$NotificationReceivedHandler;)Lcom/onesignal/OneSignal$Builder;

    move-result-object v0

    sput-object v0, Lcom/onesignal/OneSignal;->mInitBuilder:Lcom/onesignal/OneSignal$Builder;

    .line 707
    invoke-static {p0}, Lcom/onesignal/OneSignal;->setAppContext(Landroid/content/Context;)V

    .line 708
    invoke-static {p0}, Lcom/onesignal/OneSignal;->setupPrivacyConsent(Landroid/content/Context;)V

    .line 710
    invoke-static {}, Lcom/onesignal/OneSignal;->requiresUserPrivacyConsent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 711
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->VERBOSE:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v1, "OneSignal SDK initialization delayed, user privacy consent is set to required for this application."

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 712
    new-instance v0, Lcom/onesignal/DelayedConsentInitializationParameters;

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/onesignal/DelayedConsentInitializationParameters;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/onesignal/OneSignal$NotificationOpenedHandler;Lcom/onesignal/OneSignal$NotificationReceivedHandler;)V

    sput-object v0, Lcom/onesignal/OneSignal;->delayedInitParams:Lcom/onesignal/DelayedConsentInitializationParameters;

    .line 713
    return-void

    .line 716
    :cond_0
    invoke-static {p3, p4}, Lcom/onesignal/OneSignal;->createInitBuilder(Lcom/onesignal/OneSignal$NotificationOpenedHandler;Lcom/onesignal/OneSignal$NotificationReceivedHandler;)Lcom/onesignal/OneSignal$Builder;

    move-result-object v0

    sput-object v0, Lcom/onesignal/OneSignal;->mInitBuilder:Lcom/onesignal/OneSignal$Builder;

    .line 718
    invoke-static {}, Lcom/onesignal/OneSignal;->isGoogleProjectNumberRemote()Z

    move-result v0

    if-nez v0, :cond_1

    .line 719
    sput-object p1, Lcom/onesignal/OneSignal;->mGoogleProjectNumber:Ljava/lang/String;

    .line 721
    :cond_1
    sget-object v0, Lcom/onesignal/OneSignal;->osUtils:Lcom/onesignal/OSUtils;

    invoke-virtual {v0, p0, p2}, Lcom/onesignal/OSUtils;->initializationChecker(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/onesignal/OneSignal;->subscribableStatus:I

    .line 722
    invoke-static {}, Lcom/onesignal/OneSignal;->isSubscriptionStatusUninitializable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 723
    return-void

    .line 727
    :cond_2
    sget-object v0, Lcom/onesignal/OneSignal;->appId:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 728
    const/4 v0, 0x0

    sput-boolean v0, Lcom/onesignal/OneSignal;->initDone:Z

    .line 730
    :cond_3
    sget-boolean v0, Lcom/onesignal/OneSignal;->initDone:Z

    if-eqz v0, :cond_5

    .line 731
    sget-object v0, Lcom/onesignal/OneSignal;->mInitBuilder:Lcom/onesignal/OneSignal$Builder;

    iget-object v0, v0, Lcom/onesignal/OneSignal$Builder;->mNotificationOpenedHandler:Lcom/onesignal/OneSignal$NotificationOpenedHandler;

    if-eqz v0, :cond_4

    .line 732
    invoke-static {}, Lcom/onesignal/OneSignal;->fireCallbackForOpenedNotifications()V

    .line 734
    :cond_4
    return-void

    .line 737
    :cond_5
    sput-object p2, Lcom/onesignal/OneSignal;->appId:Ljava/lang/String;

    .line 739
    sget-object v0, Lcom/onesignal/OneSignal;->mInitBuilder:Lcom/onesignal/OneSignal$Builder;

    iget-boolean v0, v0, Lcom/onesignal/OneSignal$Builder;->mFilterOtherGCMReceivers:Z

    invoke-static {v0}, Lcom/onesignal/OneSignal;->saveFilterOtherGCMReceivers(Z)V

    .line 741
    invoke-static {p0}, Lcom/onesignal/OneSignal;->handleActivityLifecycleHandler(Landroid/content/Context;)V

    .line 743
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->initUserState()V

    .line 746
    invoke-static {}, Lcom/onesignal/OneSignal;->handleAmazonPurchase()V

    .line 749
    invoke-static {}, Lcom/onesignal/OneSignal;->handleAppIdChange()V

    .line 751
    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/onesignal/OneSignal;->getCurrentPermissionState(Landroid/content/Context;)Lcom/onesignal/OSPermissionState;

    move-result-object v0

    invoke-static {v0}, Lcom/onesignal/OSPermissionChangedInternalObserver;->handleInternalChanges(Lcom/onesignal/OSPermissionState;)V

    .line 755
    invoke-static {}, Lcom/onesignal/OneSignal;->doSessionInit()V

    .line 757
    sget-object v0, Lcom/onesignal/OneSignal;->mInitBuilder:Lcom/onesignal/OneSignal$Builder;

    iget-object v0, v0, Lcom/onesignal/OneSignal$Builder;->mNotificationOpenedHandler:Lcom/onesignal/OneSignal$NotificationOpenedHandler;

    if-eqz v0, :cond_6

    .line 758
    invoke-static {}, Lcom/onesignal/OneSignal;->fireCallbackForOpenedNotifications()V

    .line 760
    :cond_6
    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/onesignal/TrackGooglePurchase;->CanTrack(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 761
    new-instance v0, Lcom/onesignal/TrackGooglePurchase;

    sget-object v1, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/onesignal/TrackGooglePurchase;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/onesignal/OneSignal;->trackGooglePurchase:Lcom/onesignal/TrackGooglePurchase;

    .line 763
    :cond_7
    invoke-static {}, Lcom/onesignal/TrackFirebaseAnalytics;->CanTrack()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 764
    new-instance v0, Lcom/onesignal/TrackFirebaseAnalytics;

    sget-object v1, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/onesignal/TrackFirebaseAnalytics;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/onesignal/OneSignal;->trackFirebaseAnalytics:Lcom/onesignal/TrackFirebaseAnalytics;

    .line 766
    :cond_8
    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/onesignal/PushRegistratorFCM;->disableFirebaseInstanceIdService(Landroid/content/Context;)V

    .line 768
    const/4 v0, 0x1

    sput-boolean v0, Lcom/onesignal/OneSignal;->initDone:Z

    .line 770
    sget-object v0, Lcom/onesignal/OneSignal;->outcomeEventsController:Lcom/onesignal/OSOutcomeEventsController;

    invoke-virtual {v0}, Lcom/onesignal/OSOutcomeEventsController;->sendSavedOutcomes()V

    .line 773
    invoke-static {}, Lcom/onesignal/OneSignal;->startPendingTasks()V

    .line 774
    return-void
.end method

.method private static init(Lcom/onesignal/OneSignal$Builder;)V
    .locals 7
    .param p0, "inBuilder"    # Lcom/onesignal/OneSignal$Builder;

    .line 675
    sget-object v0, Lcom/onesignal/OneSignal;->mInitBuilder:Lcom/onesignal/OneSignal$Builder;

    iget-boolean v0, v0, Lcom/onesignal/OneSignal$Builder;->mDisplayOptionCarryOver:Z

    if-eqz v0, :cond_0

    .line 676
    sget-object v0, Lcom/onesignal/OneSignal;->mInitBuilder:Lcom/onesignal/OneSignal$Builder;

    iget-object v0, v0, Lcom/onesignal/OneSignal$Builder;->mDisplayOption:Lcom/onesignal/OneSignal$OSInFocusDisplayOption;

    iput-object v0, p0, Lcom/onesignal/OneSignal$Builder;->mDisplayOption:Lcom/onesignal/OneSignal$OSInFocusDisplayOption;

    .line 677
    :cond_0
    sput-object p0, Lcom/onesignal/OneSignal;->mInitBuilder:Lcom/onesignal/OneSignal$Builder;

    .line 679
    iget-object v0, p0, Lcom/onesignal/OneSignal$Builder;->mContext:Landroid/content/Context;

    .line 680
    .local v0, "context":Landroid/content/Context;
    sget-object v1, Lcom/onesignal/OneSignal;->mInitBuilder:Lcom/onesignal/OneSignal$Builder;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/onesignal/OneSignal$Builder;->mContext:Landroid/content/Context;

    .line 683
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 684
    .local v1, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 686
    .local v2, "bundle":Landroid/os/Bundle;
    const-string v3, "onesignal_google_project_number"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 687
    .local v3, "sender_id":Ljava/lang/String;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x4

    if-le v4, v5, :cond_1

    .line 688
    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 690
    :cond_1
    const-string v4, "onesignal_app_id"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 691
    .local v4, "appId":Ljava/lang/String;
    sget-object v5, Lcom/onesignal/OneSignal;->mInitBuilder:Lcom/onesignal/OneSignal$Builder;

    iget-object v5, v5, Lcom/onesignal/OneSignal$Builder;->mNotificationOpenedHandler:Lcom/onesignal/OneSignal$NotificationOpenedHandler;

    sget-object v6, Lcom/onesignal/OneSignal;->mInitBuilder:Lcom/onesignal/OneSignal$Builder;

    iget-object v6, v6, Lcom/onesignal/OneSignal$Builder;->mNotificationReceivedHandler:Lcom/onesignal/OneSignal$NotificationReceivedHandler;

    invoke-static {v0, v3, v4, v5, v6}, Lcom/onesignal/OneSignal;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/onesignal/OneSignal$NotificationOpenedHandler;Lcom/onesignal/OneSignal$NotificationReceivedHandler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 694
    .end local v1    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "bundle":Landroid/os/Bundle;
    .end local v3    # "sender_id":Ljava/lang/String;
    .end local v4    # "appId":Ljava/lang/String;
    goto :goto_0

    .line 692
    :catchall_0
    move-exception v1

    .line 693
    .local v1, "t":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 695
    .end local v1    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method private static internalFireGetTagsCallbacks()V
    .locals 3

    .line 1861
    sget-object v0, Lcom/onesignal/OneSignal;->pendingGetTagsHandlers:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1862
    :try_start_0
    sget-object v1, Lcom/onesignal/OneSignal;->pendingGetTagsHandlers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    .line 1863
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1865
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/onesignal/OneSignal$15;

    invoke-direct {v1}, Lcom/onesignal/OneSignal$15;-><init>()V

    const-string v2, "OS_GETTAGS_CALLBACK"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 1879
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1880
    return-void

    .line 1863
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private static declared-synchronized internalFireIdsAvailableCallback()V
    .locals 4

    const-class v0, Lcom/onesignal/OneSignal;

    monitor-enter v0

    .line 2000
    :try_start_0
    sget-object v1, Lcom/onesignal/OneSignal;->idsAvailableHandler:Lcom/onesignal/OneSignal$IdsAvailableHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 2001
    monitor-exit v0

    return-void

    .line 2003
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->getRegistrationId()Ljava/lang/String;

    move-result-object v1

    .line 2004
    .local v1, "regId":Ljava/lang/String;
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->getSubscribed()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2005
    const/4 v1, 0x0

    .line 2007
    :cond_1
    invoke-static {}, Lcom/onesignal/OneSignal;->getUserId()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2008
    .local v2, "userId":Ljava/lang/String;
    if-nez v2, :cond_2

    .line 2009
    monitor-exit v0

    return-void

    .line 2011
    :cond_2
    :try_start_2
    sget-object v3, Lcom/onesignal/OneSignal;->idsAvailableHandler:Lcom/onesignal/OneSignal$IdsAvailableHandler;

    invoke-interface {v3, v2, v1}, Lcom/onesignal/OneSignal$IdsAvailableHandler;->idsAvailable(Ljava/lang/String;Ljava/lang/String;)V

    .line 2013
    if-eqz v1, :cond_3

    .line 2014
    const/4 v3, 0x0

    sput-object v3, Lcom/onesignal/OneSignal;->idsAvailableHandler:Lcom/onesignal/OneSignal$IdsAvailableHandler;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2015
    :cond_3
    monitor-exit v0

    return-void

    .line 1999
    .end local v1    # "regId":Ljava/lang/String;
    .end local v2    # "userId":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static isAppActive()Z
    .locals 1

    .line 3050
    sget-boolean v0, Lcom/onesignal/OneSignal;->initDone:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/onesignal/OneSignal;->isForeground()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isContextActivity(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 872
    instance-of v0, p0, Landroid/app/Activity;

    return v0
.end method

.method private static isDuplicateNotification(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 11
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .line 3009
    const/4 v0, 0x0

    if-eqz p0, :cond_2

    const-string v1, ""

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 3012
    :cond_0
    invoke-static {p1}, Lcom/onesignal/OneSignalDbHelper;->getInstance(Landroid/content/Context;)Lcom/onesignal/OneSignalDbHelper;

    move-result-object v1

    .line 3014
    .local v1, "dbHelper":Lcom/onesignal/OneSignalDbHelper;
    const/4 v10, 0x1

    new-array v4, v10, [Ljava/lang/String;

    const-string v2, "notification_id"

    aput-object v2, v4, v0

    .line 3015
    .local v4, "retColumn":[Ljava/lang/String;
    new-array v6, v10, [Ljava/lang/String;

    aput-object p0, v6, v0

    .line 3017
    .local v6, "whereArgs":[Ljava/lang/String;
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v3, "notification"

    const-string v5, "notification_id = ?"

    move-object v2, v1

    invoke-virtual/range {v2 .. v9}, Lcom/onesignal/OneSignalDbHelper;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 3024
    .local v2, "cursor":Landroid/database/Cursor;
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    .line 3026
    .local v3, "exists":Z
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 3028
    if-eqz v3, :cond_1

    .line 3029
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Duplicate GCM message received, skip processing of "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 3030
    return v10

    .line 3033
    :cond_1
    return v0

    .line 3010
    .end local v1    # "dbHelper":Lcom/onesignal/OneSignalDbHelper;
    .end local v2    # "cursor":Landroid/database/Cursor;
    .end local v3    # "exists":Z
    .end local v4    # "retColumn":[Ljava/lang/String;
    .end local v6    # "whereArgs":[Ljava/lang/String;
    :cond_2
    :goto_0
    return v0
.end method

.method static isForeground()Z
    .locals 1

    .line 413
    sget-boolean v0, Lcom/onesignal/OneSignal;->foreground:Z

    return v0
.end method

.method private static isGoogleProjectNumberRemote()Z
    .locals 1

    .line 818
    sget-object v0, Lcom/onesignal/OneSignal;->remoteParams:Lcom/onesignal/OneSignalRemoteParams$Params;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/onesignal/OneSignalRemoteParams$Params;->googleProjectNumber:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static isInitDone()Z
    .locals 1

    .line 407
    sget-boolean v0, Lcom/onesignal/OneSignal;->initDone:Z

    return v0
.end method

.method private static isPastOnSessionTime()Z
    .locals 5

    .line 3054
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/onesignal/OneSignal;->getLastSessionTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7530

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isSubscriptionStatusUninitializable()Z
    .locals 2

    .line 823
    sget v0, Lcom/onesignal/OneSignal;->subscribableStatus:I

    const/16 v1, -0x3e7

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isValidOutcomeEntry(Ljava/lang/String;)Z
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .line 3188
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3193
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 3189
    :cond_1
    :goto_0
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v1, "Outcome name must not be empty"

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 3190
    const/4 v0, 0x0

    return v0
.end method

.method private static isValidOutcomeValue(F)Z
    .locals 2
    .param p0, "value"    # F

    .line 3179
    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-gtz v0, :cond_0

    .line 3180
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v1, "Outcome value must be greater than 0"

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 3181
    const/4 v0, 0x0

    return v0

    .line 3184
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method static logHttpError(Ljava/lang/String;ILjava/lang/Throwable;Ljava/lang/String;)V
    .locals 4
    .param p0, "errorString"    # Ljava/lang/String;
    .param p1, "statusCode"    # I
    .param p2, "throwable"    # Ljava/lang/Throwable;
    .param p3, "errorResponse"    # Ljava/lang/String;

    .line 1245
    const-string v0, ""

    .line 1246
    .local v0, "jsonError":Ljava/lang/String;
    if-eqz p3, :cond_0

    sget-object v1, Lcom/onesignal/OneSignal$LOG_LEVEL;->INFO:Lcom/onesignal/OneSignal$LOG_LEVEL;

    invoke-static {v1}, Lcom/onesignal/OneSignal;->atLogLevel(Lcom/onesignal/OneSignal$LOG_LEVEL;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1247
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1248
    :cond_0
    sget-object v1, Lcom/onesignal/OneSignal$LOG_LEVEL;->WARN:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HTTP code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p2}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1249
    return-void
.end method

.method public static logoutEmail()V
    .locals 1

    .line 1515
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/onesignal/OneSignal;->logoutEmail(Lcom/onesignal/OneSignal$EmailUpdateHandler;)V

    .line 1516
    return-void
.end method

.method public static logoutEmail(Lcom/onesignal/OneSignal$EmailUpdateHandler;)V
    .locals 4
    .param p0, "callback"    # Lcom/onesignal/OneSignal$EmailUpdateHandler;

    .line 1521
    const-string v0, "logoutEmail()"

    invoke-static {v0}, Lcom/onesignal/OneSignal;->shouldLogUserPrivacyConsentErrorMessageForMethodName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1522
    return-void

    .line 1524
    :cond_0
    invoke-static {}, Lcom/onesignal/OneSignal;->getEmailId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1525
    const-string v0, "logoutEmail not valid as email was not set or already logged out!"

    .line 1526
    .local v0, "message":Ljava/lang/String;
    const-string v1, "logoutEmail not valid as email was not set or already logged out!"

    if-eqz p0, :cond_1

    .line 1527
    new-instance v2, Lcom/onesignal/OneSignal$EmailUpdateError;

    sget-object v3, Lcom/onesignal/OneSignal$EmailErrorType;->INVALID_OPERATION:Lcom/onesignal/OneSignal$EmailErrorType;

    invoke-direct {v2, v3, v1}, Lcom/onesignal/OneSignal$EmailUpdateError;-><init>(Lcom/onesignal/OneSignal$EmailErrorType;Ljava/lang/String;)V

    invoke-interface {p0, v2}, Lcom/onesignal/OneSignal$EmailUpdateHandler;->onFailure(Lcom/onesignal/OneSignal$EmailUpdateError;)V

    .line 1528
    :cond_1
    sget-object v2, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    invoke-static {v2, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 1529
    return-void

    .line 1532
    .end local v0    # "message":Ljava/lang/String;
    :cond_2
    sput-object p0, Lcom/onesignal/OneSignal;->emailLogoutHandler:Lcom/onesignal/OneSignal$EmailUpdateHandler;

    .line 1534
    new-instance v0, Lcom/onesignal/OneSignal$10;

    invoke-direct {v0}, Lcom/onesignal/OneSignal$10;-><init>()V

    .line 1542
    .local v0, "emailLogout":Ljava/lang/Runnable;
    sget-object v1, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/onesignal/OneSignal;->shouldRunTaskThroughQueue()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    .line 1548
    :cond_3
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1549
    return-void

    .line 1543
    :cond_4
    :goto_0
    sget-object v1, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v2, "You should initialize OneSignal before calling logoutEmail! Moving this operation to a pending task queue."

    invoke-static {v1, v2}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 1545
    new-instance v1, Lcom/onesignal/OneSignal$PendingTaskRunnable;

    invoke-direct {v1, v0}, Lcom/onesignal/OneSignal$PendingTaskRunnable;-><init>(Ljava/lang/Runnable;)V

    invoke-static {v1}, Lcom/onesignal/OneSignal;->addTaskToQueue(Lcom/onesignal/OneSignal$PendingTaskRunnable;)V

    .line 1546
    return-void
.end method

.method private static makeAndroidParamsRequest()V
    .locals 1

    .line 1038
    sget-object v0, Lcom/onesignal/OneSignal;->remoteParams:Lcom/onesignal/OneSignalRemoteParams$Params;

    if-eqz v0, :cond_0

    .line 1039
    invoke-static {}, Lcom/onesignal/OneSignal;->registerForPushToken()V

    .line 1040
    return-void

    .line 1043
    :cond_0
    new-instance v0, Lcom/onesignal/OneSignal$5;

    invoke-direct {v0}, Lcom/onesignal/OneSignal$5;-><init>()V

    invoke-static {v0}, Lcom/onesignal/OneSignalRemoteParams;->makeAndroidParamsRequest(Lcom/onesignal/OneSignalRemoteParams$CallBack;)V

    .line 1086
    return-void
.end method

.method static notValidOrDuplicated(Landroid/content/Context;Lorg/json/JSONObject;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "jsonPayload"    # Lorg/json/JSONObject;

    .line 3037
    invoke-static {p1}, Lcom/onesignal/OSNotificationFormatHelper;->getOSNotificationIdFromJson(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    .line 3038
    .local v0, "id":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-static {v0, p0}, Lcom/onesignal/OneSignal;->isDuplicateNotification(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method private static notificationOpenedRESTCall(Landroid/content/Context;Lorg/json/JSONArray;)V
    .locals 7
    .param p0, "inContext"    # Landroid/content/Context;
    .param p1, "dataArray"    # Lorg/json/JSONArray;

    .line 2213
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2215
    :try_start_0
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 2216
    .local v1, "data":Lorg/json/JSONObject;
    new-instance v2, Lorg/json/JSONObject;

    const-string v3, "custom"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2218
    .local v2, "customJson":Lorg/json/JSONObject;
    const-string v3, "i"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2221
    .local v3, "notificationId":Ljava/lang/String;
    sget-object v4, Lcom/onesignal/OneSignal;->postedOpenedNotifIds:Ljava/util/HashSet;

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2222
    goto :goto_1

    .line 2223
    :cond_0
    sget-object v4, Lcom/onesignal/OneSignal;->postedOpenedNotifIds:Ljava/util/HashSet;

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2225
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 2226
    .local v4, "jsonBody":Lorg/json/JSONObject;
    const-string v5, "app_id"

    invoke-static {p0}, Lcom/onesignal/OneSignal;->getSavedAppId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2227
    const-string v5, "player_id"

    invoke-static {p0}, Lcom/onesignal/OneSignal;->getSavedUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2228
    const-string v5, "opened"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 2229
    const-string v5, "device_type"

    sget-object v6, Lcom/onesignal/OneSignal;->osUtils:Lcom/onesignal/OSUtils;

    invoke-virtual {v6}, Lcom/onesignal/OSUtils;->getDeviceType()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2231
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "notifications/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/onesignal/OneSignal$19;

    invoke-direct {v6}, Lcom/onesignal/OneSignal$19;-><init>()V

    invoke-static {v5, v4, v6}, Lcom/onesignal/OneSignalRestClient;->put(Ljava/lang/String;Lorg/json/JSONObject;Lcom/onesignal/OneSignalRestClient$ResponseHandler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2240
    .end local v1    # "data":Lorg/json/JSONObject;
    .end local v2    # "customJson":Lorg/json/JSONObject;
    .end local v3    # "notificationId":Ljava/lang/String;
    .end local v4    # "jsonBody":Lorg/json/JSONObject;
    goto :goto_1

    .line 2238
    :catchall_0
    move-exception v1

    .line 2239
    .local v1, "t":Ljava/lang/Throwable;
    sget-object v2, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v3, "Failed to generate JSON to send notification opened."

    invoke-static {v2, v3, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2213
    .end local v1    # "t":Ljava/lang/Throwable;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2242
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method static onAppFocus()V
    .locals 2

    .line 1288
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v1, "Application on focus"

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 1289
    const/4 v0, 0x1

    sput-boolean v0, Lcom/onesignal/OneSignal;->foreground:Z

    .line 1292
    sget-object v0, Lcom/onesignal/OneSignal;->appEntryState:Lcom/onesignal/OneSignal$AppEntryAction;

    sget-object v1, Lcom/onesignal/OneSignal$AppEntryAction;->NOTIFICATION_CLICK:Lcom/onesignal/OneSignal$AppEntryAction;

    invoke-virtual {v0, v1}, Lcom/onesignal/OneSignal$AppEntryAction;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1293
    sget-object v0, Lcom/onesignal/OneSignal$AppEntryAction;->APP_OPEN:Lcom/onesignal/OneSignal$AppEntryAction;

    sput-object v0, Lcom/onesignal/OneSignal;->appEntryState:Lcom/onesignal/OneSignal$AppEntryAction;

    .line 1295
    :cond_0
    invoke-static {}, Lcom/onesignal/LocationController;->onFocusChange()V

    .line 1298
    const-string v0, "onAppFocus"

    invoke-static {v0}, Lcom/onesignal/OneSignal;->shouldLogUserPrivacyConsentErrorMessageForMethodName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1299
    return-void

    .line 1301
    :cond_1
    sget-object v0, Lcom/onesignal/OneSignal;->appId:Ljava/lang/String;

    invoke-static {v0}, Lcom/onesignal/OSUtils;->shouldLogMissingAppIdError(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1302
    return-void

    .line 1304
    :cond_2
    invoke-static {}, Lcom/onesignal/FocusTimeController;->getInstance()Lcom/onesignal/FocusTimeController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onesignal/FocusTimeController;->appForegrounded()V

    .line 1306
    invoke-static {}, Lcom/onesignal/OneSignal;->doSessionInit()V

    .line 1308
    sget-object v0, Lcom/onesignal/OneSignal;->trackGooglePurchase:Lcom/onesignal/TrackGooglePurchase;

    if-eqz v0, :cond_3

    .line 1309
    invoke-virtual {v0}, Lcom/onesignal/TrackGooglePurchase;->trackIAP()V

    .line 1311
    :cond_3
    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/onesignal/NotificationRestorer;->asyncRestore(Landroid/content/Context;)V

    .line 1313
    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/onesignal/OneSignal;->getCurrentPermissionState(Landroid/content/Context;)Lcom/onesignal/OSPermissionState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onesignal/OSPermissionState;->refreshAsTo()V

    .line 1315
    sget-object v0, Lcom/onesignal/OneSignal;->trackFirebaseAnalytics:Lcom/onesignal/TrackFirebaseAnalytics;

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/onesignal/OneSignal;->getFirebaseAnalyticsEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1316
    sget-object v0, Lcom/onesignal/OneSignal;->trackFirebaseAnalytics:Lcom/onesignal/TrackFirebaseAnalytics;

    invoke-virtual {v0}, Lcom/onesignal/TrackFirebaseAnalytics;->trackInfluenceOpenEvent()V

    .line 1318
    :cond_4
    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/onesignal/OneSignalSyncServiceUtils;->cancelSyncTask(Landroid/content/Context;)V

    .line 1319
    return-void
.end method

.method static onAppLostFocus()V
    .locals 2

    .line 1254
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v1, "Application lost focus"

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 1255
    const/4 v0, 0x0

    sput-boolean v0, Lcom/onesignal/OneSignal;->foreground:Z

    .line 1256
    sget-object v0, Lcom/onesignal/OneSignal$AppEntryAction;->APP_CLOSE:Lcom/onesignal/OneSignal$AppEntryAction;

    sput-object v0, Lcom/onesignal/OneSignal;->appEntryState:Lcom/onesignal/OneSignal$AppEntryAction;

    .line 1258
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->setLastSessionTime(J)V

    .line 1259
    invoke-static {}, Lcom/onesignal/LocationController;->onFocusChange()V

    .line 1261
    sget-boolean v0, Lcom/onesignal/OneSignal;->initDone:Z

    if-nez v0, :cond_0

    .line 1262
    return-void

    .line 1264
    :cond_0
    sget-object v0, Lcom/onesignal/OneSignal;->trackAmazonPurchase:Lcom/onesignal/TrackAmazonPurchase;

    if-eqz v0, :cond_1

    .line 1265
    invoke-virtual {v0}, Lcom/onesignal/TrackAmazonPurchase;->checkListener()V

    .line 1267
    :cond_1
    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    if-nez v0, :cond_2

    .line 1268
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v1, "Android Context not found, please call OneSignal.init when your app starts."

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 1269
    return-void

    .line 1272
    :cond_2
    invoke-static {}, Lcom/onesignal/FocusTimeController;->getInstance()Lcom/onesignal/FocusTimeController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onesignal/FocusTimeController;->appBackgrounded()V

    .line 1274
    invoke-static {}, Lcom/onesignal/OneSignal;->scheduleSyncService()Z

    .line 1275
    return-void
.end method

.method private static onTaskRan(J)V
    .locals 3
    .param p0, "taskId"    # J

    .line 876
    sget-object v0, Lcom/onesignal/OneSignal;->lastTaskId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    cmp-long v2, v0, p0

    if-nez v2, :cond_0

    .line 877
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->INFO:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v1, "Last Pending Task has ran, shutting down"

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 878
    sget-object v0, Lcom/onesignal/OneSignal;->pendingTaskExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 880
    :cond_0
    return-void
.end method

.method public static onesignalLog(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V
    .locals 0
    .param p0, "level"    # Lcom/onesignal/OneSignal$LOG_LEVEL;
    .param p1, "message"    # Ljava/lang/String;

    .line 1099
    invoke-static {p0, p1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 1100
    return-void
.end method

.method private static openURLFromNotification(Landroid/content/Context;Lorg/json/JSONArray;)Z
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dataArray"    # Lorg/json/JSONArray;

    .line 2049
    const-string v0, "u"

    const-string v1, "custom"

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/onesignal/OneSignal;->shouldLogUserPrivacyConsentErrorMessageForMethodName(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2050
    const/4 v0, 0x0

    return v0

    .line 2052
    :cond_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    .line 2054
    .local v3, "jsonArraySize":I
    const/4 v4, 0x0

    .line 2056
    .local v4, "urlOpened":Z
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v3, :cond_3

    .line 2058
    :try_start_0
    invoke-virtual {p1, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 2059
    .local v6, "data":Lorg/json/JSONObject;
    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 2060
    goto :goto_1

    .line 2062
    :cond_1
    new-instance v7, Lorg/json/JSONObject;

    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2064
    .local v7, "customJSON":Lorg/json/JSONObject;
    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 2065
    invoke-virtual {v7, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2066
    .local v8, "url":Ljava/lang/String;
    if-eqz v8, :cond_2

    .line 2067
    invoke-static {v8}, Lcom/onesignal/OSUtils;->openURLInBrowser(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2068
    const/4 v4, 0x1

    .line 2073
    .end local v6    # "data":Lorg/json/JSONObject;
    .end local v7    # "customJSON":Lorg/json/JSONObject;
    .end local v8    # "url":Ljava/lang/String;
    :cond_2
    goto :goto_1

    .line 2071
    :catchall_0
    move-exception v6

    .line 2072
    .local v6, "t":Ljava/lang/Throwable;
    sget-object v7, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error parsing JSON item "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " for launching a web URL."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v6}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2056
    .end local v6    # "t":Ljava/lang/Throwable;
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2076
    .end local v5    # "i":I
    :cond_3
    return v4
.end method

.method public static pauseInAppMessages(Z)V
    .locals 2
    .param p0, "pause"    # Z

    .line 3005
    invoke-static {}, Lcom/onesignal/OneSignal;->getInAppMessageController()Lcom/onesignal/OSInAppMessageController;

    move-result-object v0

    xor-int/lit8 v1, p0, 0x1

    invoke-virtual {v0, v1}, Lcom/onesignal/OSInAppMessageController;->setInAppMessagingEnabled(Z)V

    .line 3006
    return-void
.end method

.method public static postNotification(Ljava/lang/String;Lcom/onesignal/OneSignal$PostNotificationResponseHandler;)V
    .locals 4
    .param p0, "json"    # Ljava/lang/String;
    .param p1, "handler"    # Lcom/onesignal/OneSignal$PostNotificationResponseHandler;

    .line 1724
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/onesignal/OneSignal;->postNotification(Lorg/json/JSONObject;Lcom/onesignal/OneSignal$PostNotificationResponseHandler;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1727
    goto :goto_0

    .line 1725
    :catch_0
    move-exception v0

    .line 1726
    .local v0, "e":Lorg/json/JSONException;
    sget-object v1, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid postNotification JSON format: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 1728
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_0
    return-void
.end method

.method public static postNotification(Lorg/json/JSONObject;Lcom/onesignal/OneSignal$PostNotificationResponseHandler;)V
    .locals 3
    .param p0, "json"    # Lorg/json/JSONObject;
    .param p1, "handler"    # Lcom/onesignal/OneSignal$PostNotificationResponseHandler;

    .line 1745
    const-string v0, "app_id"

    const-string v1, "postNotification()"

    invoke-static {v1}, Lcom/onesignal/OneSignal;->shouldLogUserPrivacyConsentErrorMessageForMethodName(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1746
    return-void

    .line 1749
    :cond_0
    :try_start_0
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1750
    invoke-static {}, Lcom/onesignal/OneSignal;->getSavedAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1753
    :cond_1
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1754
    if-eqz p1, :cond_2

    .line 1755
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "error"

    const-string v2, "Missing app_id"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/onesignal/OneSignal$PostNotificationResponseHandler;->onFailure(Lorg/json/JSONObject;)V

    .line 1756
    :cond_2
    return-void

    .line 1759
    :cond_3
    const-string v0, "notifications/"

    new-instance v1, Lcom/onesignal/OneSignal$13;

    invoke-direct {v1, p1}, Lcom/onesignal/OneSignal$13;-><init>(Lcom/onesignal/OneSignal$PostNotificationResponseHandler;)V

    invoke-static {v0, p0, v1}, Lcom/onesignal/OneSignalRestClient;->post(Ljava/lang/String;Lorg/json/JSONObject;Lcom/onesignal/OneSignalRestClient$ResponseHandler;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1804
    goto :goto_0

    .line 1795
    :catch_0
    move-exception v0

    .line 1796
    .local v0, "e":Lorg/json/JSONException;
    sget-object v1, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v2, "HTTP create notification json exception!"

    invoke-static {v1, v2, v0}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1797
    if-eqz p1, :cond_4

    .line 1799
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    const-string v2, "{\'error\': \'HTTP create notification json exception!\'}"

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v1}, Lcom/onesignal/OneSignal$PostNotificationResponseHandler;->onFailure(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1802
    goto :goto_0

    .line 1800
    :catch_1
    move-exception v1

    .line 1801
    .local v1, "e1":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 1805
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v1    # "e1":Lorg/json/JSONException;
    :cond_4
    :goto_0
    return-void
.end method

.method public static promptLocation()V
    .locals 2

    .line 2574
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->promptLocation(Lcom/onesignal/OneSignal$OSPromptActionCompletionCallback;Z)V

    .line 2575
    return-void
.end method

.method static promptLocation(Lcom/onesignal/OneSignal$OSPromptActionCompletionCallback;Z)V
    .locals 3
    .param p0, "callback"    # Lcom/onesignal/OneSignal$OSPromptActionCompletionCallback;
    .param p1, "fallbackToSettings"    # Z

    .line 2579
    const-string v0, "promptLocation()"

    invoke-static {v0}, Lcom/onesignal/OneSignal;->shouldLogUserPrivacyConsentErrorMessageForMethodName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2580
    return-void

    .line 2582
    :cond_0
    new-instance v0, Lcom/onesignal/OneSignal$21;

    invoke-direct {v0, p0, p1}, Lcom/onesignal/OneSignal$21;-><init>(Lcom/onesignal/OneSignal$OSPromptActionCompletionCallback;Z)V

    .line 2613
    .local v0, "runPromptLocation":Ljava/lang/Runnable;
    sget-object v1, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/onesignal/OneSignal;->shouldRunTaskThroughQueue()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 2621
    :cond_1
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 2622
    return-void

    .line 2614
    :cond_2
    :goto_0
    sget-object v1, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v2, "OneSignal.init has not been called. Could not prompt for location at this time - moving this operation to awaiting queue."

    invoke-static {v1, v2}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 2617
    new-instance v1, Lcom/onesignal/OneSignal$PendingTaskRunnable;

    invoke-direct {v1, v0}, Lcom/onesignal/OneSignal$PendingTaskRunnable;-><init>(Ljava/lang/Runnable;)V

    invoke-static {v1}, Lcom/onesignal/OneSignal;->addTaskToQueue(Lcom/onesignal/OneSignal$PendingTaskRunnable;)V

    .line 2618
    return-void
.end method

.method public static provideUserConsent(Z)V
    .locals 6
    .param p0, "consent"    # Z

    .line 1103
    invoke-static {}, Lcom/onesignal/OneSignal;->userProvidedPrivacyConsent()Z

    move-result v0

    .line 1105
    .local v0, "previousConsentStatus":Z
    invoke-static {p0}, Lcom/onesignal/OneSignal;->saveUserConsentStatus(Z)V

    .line 1107
    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    sget-object v1, Lcom/onesignal/OneSignal;->delayedInitParams:Lcom/onesignal/DelayedConsentInitializationParameters;

    if-eqz v1, :cond_0

    .line 1108
    iget-object v1, v1, Lcom/onesignal/DelayedConsentInitializationParameters;->context:Landroid/content/Context;

    sget-object v2, Lcom/onesignal/OneSignal;->delayedInitParams:Lcom/onesignal/DelayedConsentInitializationParameters;

    iget-object v2, v2, Lcom/onesignal/DelayedConsentInitializationParameters;->googleProjectNumber:Ljava/lang/String;

    sget-object v3, Lcom/onesignal/OneSignal;->delayedInitParams:Lcom/onesignal/DelayedConsentInitializationParameters;

    iget-object v3, v3, Lcom/onesignal/DelayedConsentInitializationParameters;->appId:Ljava/lang/String;

    sget-object v4, Lcom/onesignal/OneSignal;->delayedInitParams:Lcom/onesignal/DelayedConsentInitializationParameters;

    iget-object v4, v4, Lcom/onesignal/DelayedConsentInitializationParameters;->openedHandler:Lcom/onesignal/OneSignal$NotificationOpenedHandler;

    sget-object v5, Lcom/onesignal/OneSignal;->delayedInitParams:Lcom/onesignal/DelayedConsentInitializationParameters;

    iget-object v5, v5, Lcom/onesignal/DelayedConsentInitializationParameters;->receivedHandler:Lcom/onesignal/OneSignal$NotificationReceivedHandler;

    invoke-static {v1, v2, v3, v4, v5}, Lcom/onesignal/OneSignal;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/onesignal/OneSignal$NotificationOpenedHandler;Lcom/onesignal/OneSignal$NotificationReceivedHandler;)V

    .line 1109
    const/4 v1, 0x0

    sput-object v1, Lcom/onesignal/OneSignal;->delayedInitParams:Lcom/onesignal/DelayedConsentInitializationParameters;

    .line 1111
    :cond_0
    return-void
.end method

.method private static pushStatusRuntimeError(I)Z
    .locals 1
    .param p0, "subscribableStatus"    # I

    .line 1034
    const/4 v0, -0x6

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static registerForPushToken()V
    .locals 4

    .line 1009
    invoke-static {}, Lcom/onesignal/OneSignal;->getPushRegistrator()Lcom/onesignal/PushRegistrator;

    move-result-object v0

    sget-object v1, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    sget-object v2, Lcom/onesignal/OneSignal;->mGoogleProjectNumber:Ljava/lang/String;

    new-instance v3, Lcom/onesignal/OneSignal$4;

    invoke-direct {v3}, Lcom/onesignal/OneSignal$4;-><init>()V

    invoke-interface {v0, v1, v2, v3}, Lcom/onesignal/PushRegistrator;->registerForPush(Landroid/content/Context;Ljava/lang/String;Lcom/onesignal/PushRegistrator$RegisteredHandler;)V

    .line 1031
    return-void
.end method

.method private static registerUser()V
    .locals 3

    .line 1338
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerUser:registerForPushFired:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/onesignal/OneSignal;->registerForPushFired:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", locationFired: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/onesignal/OneSignal;->locationFired:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", remoteParams: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/onesignal/OneSignal;->remoteParams:Lcom/onesignal/OneSignalRemoteParams$Params;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", appId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/onesignal/OneSignal;->appId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 1346
    sget-boolean v0, Lcom/onesignal/OneSignal;->registerForPushFired:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/onesignal/OneSignal;->locationFired:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/onesignal/OneSignal;->remoteParams:Lcom/onesignal/OneSignalRemoteParams$Params;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/onesignal/OneSignal;->appId:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1349
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/onesignal/OneSignal$7;

    invoke-direct {v1}, Lcom/onesignal/OneSignal$7;-><init>()V

    const-string v2, "OS_REG_USER"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 1358
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1359
    return-void

    .line 1347
    :cond_1
    :goto_0
    return-void
.end method

.method private static registerUserTask()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1362
    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1363
    .local v0, "packageName":Ljava/lang/String;
    sget-object v1, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1365
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 1367
    .local v2, "deviceInfo":Lorg/json/JSONObject;
    invoke-static {}, Lcom/onesignal/OneSignal;->getSavedAppId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "app_id"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1369
    invoke-static {}, Lcom/onesignal/OneSignal;->getAdIdProvider()Lcom/onesignal/AdvertisingIdentifierProvider;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1370
    invoke-static {}, Lcom/onesignal/OneSignal;->getAdIdProvider()Lcom/onesignal/AdvertisingIdentifierProvider;

    move-result-object v3

    sget-object v4, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-interface {v3, v4}, Lcom/onesignal/AdvertisingIdentifierProvider;->getIdentifier(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 1371
    .local v3, "adId":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 1372
    const-string v4, "ad_id"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1374
    .end local v3    # "adId":Ljava/lang/String;
    :cond_0
    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v4, "device_os"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1375
    invoke-static {}, Lcom/onesignal/OneSignal;->getTimeZoneOffset()I

    move-result v3

    const-string v4, "timezone"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1376
    invoke-static {}, Lcom/onesignal/OSUtils;->getCorrectedLanguage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "language"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1377
    const-string v3, "sdk"

    const-string v4, "031504"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1378
    sget-object v3, Lcom/onesignal/OneSignal;->sdkType:Ljava/lang/String;

    const-string v4, "sdk_type"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1379
    const-string v3, "android_package"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1380
    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v4, "device_model"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1383
    const/4 v3, 0x0

    :try_start_0
    const-string v4, "game_version"

    invoke-virtual {v1, v0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    iget v5, v5, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1384
    :catch_0
    move-exception v4

    :goto_0
    nop

    .line 1386
    sget-object v4, Lcom/onesignal/OneSignal;->osUtils:Lcom/onesignal/OSUtils;

    invoke-virtual {v4}, Lcom/onesignal/OSUtils;->getNetType()Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "net_type"

    invoke-virtual {v2, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1387
    sget-object v4, Lcom/onesignal/OneSignal;->osUtils:Lcom/onesignal/OSUtils;

    invoke-virtual {v4}, Lcom/onesignal/OSUtils;->getCarrierName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "carrier"

    invoke-virtual {v2, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1388
    invoke-static {}, Lcom/onesignal/RootToolsInternalMethods;->isRooted()Z

    move-result v4

    const-string v5, "rooted"

    invoke-virtual {v2, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1390
    invoke-static {v2}, Lcom/onesignal/OneSignalStateSynchronizer;->updateDeviceInfo(Lorg/json/JSONObject;)V

    .line 1392
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 1393
    .local v4, "pushState":Lorg/json/JSONObject;
    sget-object v5, Lcom/onesignal/OneSignal;->lastRegistrationId:Ljava/lang/String;

    const-string v6, "identifier"

    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1394
    sget v5, Lcom/onesignal/OneSignal;->subscribableStatus:I

    const-string v6, "subscribableStatus"

    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1395
    invoke-static {}, Lcom/onesignal/OneSignal;->areNotificationsEnabledForSubscribedState()Z

    move-result v5

    const-string v6, "androidPermission"

    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1396
    sget-object v5, Lcom/onesignal/OneSignal;->osUtils:Lcom/onesignal/OSUtils;

    invoke-virtual {v5}, Lcom/onesignal/OSUtils;->getDeviceType()I

    move-result v5

    const-string v6, "device_type"

    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1397
    invoke-static {v4}, Lcom/onesignal/OneSignalStateSynchronizer;->updatePushState(Lorg/json/JSONObject;)V

    .line 1399
    sget-boolean v5, Lcom/onesignal/OneSignal;->shareLocation:Z

    if-eqz v5, :cond_1

    sget-object v5, Lcom/onesignal/OneSignal;->lastLocationPoint:Lcom/onesignal/LocationController$LocationPoint;

    if-eqz v5, :cond_1

    .line 1400
    invoke-static {v5}, Lcom/onesignal/OneSignalStateSynchronizer;->updateLocation(Lcom/onesignal/LocationController$LocationPoint;)V

    .line 1402
    :cond_1
    const/4 v5, 0x1

    invoke-static {v5}, Lcom/onesignal/OneSignalStateSynchronizer;->readyToUpdate(Z)V

    .line 1404
    sput-boolean v3, Lcom/onesignal/OneSignal;->waitingToPostStateSync:Z

    .line 1405
    return-void
.end method

.method public static removeEmailSubscriptionObserver(Lcom/onesignal/OSEmailSubscriptionObserver;)V
    .locals 2
    .param p0, "observer"    # Lcom/onesignal/OSEmailSubscriptionObserver;

    .line 2891
    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 2892
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v1, "OneSignal.init has not been called. Could not modify email subscription observer"

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 2893
    return-void

    .line 2896
    :cond_0
    invoke-static {}, Lcom/onesignal/OneSignal;->getEmailSubscriptionStateChangesObserver()Lcom/onesignal/OSObservable;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/onesignal/OSObservable;->removeObserver(Ljava/lang/Object;)V

    .line 2897
    return-void
.end method

.method public static removeExternalUserId()V
    .locals 1

    .line 1588
    const-string v0, "removeExternalUserId()"

    invoke-static {v0}, Lcom/onesignal/OneSignal;->shouldLogUserPrivacyConsentErrorMessageForMethodName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1589
    return-void

    .line 1591
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/onesignal/OneSignal;->removeExternalUserId(Lcom/onesignal/OneSignal$OSExternalUserIdUpdateCompletionHandler;)V

    .line 1592
    return-void
.end method

.method public static removeExternalUserId(Lcom/onesignal/OneSignal$OSExternalUserIdUpdateCompletionHandler;)V
    .locals 1
    .param p0, "completionHandler"    # Lcom/onesignal/OneSignal$OSExternalUserIdUpdateCompletionHandler;

    .line 1595
    const-string v0, "removeExternalUserId()"

    invoke-static {v0}, Lcom/onesignal/OneSignal;->shouldLogUserPrivacyConsentErrorMessageForMethodName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1596
    return-void

    .line 1599
    :cond_0
    const-string v0, ""

    invoke-static {v0, p0}, Lcom/onesignal/OneSignal;->setExternalUserId(Ljava/lang/String;Lcom/onesignal/OneSignal$OSExternalUserIdUpdateCompletionHandler;)V

    .line 1600
    return-void
.end method

.method public static removeInAppMessageClickHandler()V
    .locals 2

    .line 2784
    sget-object v0, Lcom/onesignal/OneSignal;->mInitBuilder:Lcom/onesignal/OneSignal$Builder;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/onesignal/OneSignal$Builder;->mInAppMessageClickHandler:Lcom/onesignal/OneSignal$InAppMessageClickHandler;

    .line 2785
    return-void
.end method

.method public static removeNotificationOpenedHandler()V
    .locals 2

    .line 2780
    sget-object v0, Lcom/onesignal/OneSignal;->mInitBuilder:Lcom/onesignal/OneSignal$Builder;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/onesignal/OneSignal$Builder;->mNotificationOpenedHandler:Lcom/onesignal/OneSignal$NotificationOpenedHandler;

    .line 2781
    return-void
.end method

.method public static removeNotificationReceivedHandler()V
    .locals 2

    .line 2788
    sget-object v0, Lcom/onesignal/OneSignal;->mInitBuilder:Lcom/onesignal/OneSignal$Builder;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/onesignal/OneSignal$Builder;->mNotificationReceivedHandler:Lcom/onesignal/OneSignal$NotificationReceivedHandler;

    .line 2789
    return-void
.end method

.method public static removePermissionObserver(Lcom/onesignal/OSPermissionObserver;)V
    .locals 2
    .param p0, "observer"    # Lcom/onesignal/OSPermissionObserver;

    .line 2820
    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 2821
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v1, "OneSignal.init has not been called. Could not modify permission observer"

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 2822
    return-void

    .line 2825
    :cond_0
    invoke-static {}, Lcom/onesignal/OneSignal;->getPermissionStateChangesObserver()Lcom/onesignal/OSObservable;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/onesignal/OSObservable;->removeObserver(Ljava/lang/Object;)V

    .line 2826
    return-void
.end method

.method public static removeSubscriptionObserver(Lcom/onesignal/OSSubscriptionObserver;)V
    .locals 2
    .param p0, "observer"    # Lcom/onesignal/OSSubscriptionObserver;

    .line 2857
    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 2858
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v1, "OneSignal.init has not been called. Could not modify subscription observer"

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 2859
    return-void

    .line 2862
    :cond_0
    invoke-static {}, Lcom/onesignal/OneSignal;->getSubscriptionStateChangesObserver()Lcom/onesignal/OSObservable;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/onesignal/OSObservable;->removeObserver(Ljava/lang/Object;)V

    .line 2863
    return-void
.end method

.method public static removeTriggerForKey(Ljava/lang/String;)V
    .locals 2
    .param p0, "key"    # Ljava/lang/String;

    .line 2986
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2987
    .local v0, "triggerKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2989
    invoke-static {}, Lcom/onesignal/OneSignal;->getInAppMessageController()Lcom/onesignal/OSInAppMessageController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/onesignal/OSInAppMessageController;->removeTriggersForKeys(Ljava/util/Collection;)V

    .line 2990
    return-void
.end method

.method public static removeTriggersForKeys(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2964
    .local p0, "keys":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-static {}, Lcom/onesignal/OneSignal;->getInAppMessageController()Lcom/onesignal/OSInAppMessageController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/onesignal/OSInAppMessageController;->removeTriggersForKeys(Ljava/util/Collection;)V

    .line 2965
    return-void
.end method

.method public static removeTriggersForKeysFromJsonArrayString(Ljava/lang/String;)V
    .locals 4
    .param p0, "keys"    # Ljava/lang/String;

    .line 2971
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 2972
    .local v0, "jsonArray":Lorg/json/JSONArray;
    nop

    .line 2973
    invoke-static {v0}, Lcom/onesignal/JSONUtils;->jsonArrayToList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v1

    .line 2972
    invoke-static {v1}, Lcom/onesignal/OSUtils;->extractStringsFromCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v1

    .line 2976
    .local v1, "keysCollection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 2977
    sget-object v2, Lcom/onesignal/OneSignal$LOG_LEVEL;->WARN:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v3, "removeTriggersForKeysFromJsonArrayString: Skipped removing non-String type keys "

    invoke-static {v2, v3}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 2978
    :cond_0
    invoke-static {}, Lcom/onesignal/OneSignal;->getInAppMessageController()Lcom/onesignal/OSInAppMessageController;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/onesignal/OSInAppMessageController;->removeTriggersForKeys(Ljava/util/Collection;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2981
    .end local v0    # "jsonArray":Lorg/json/JSONArray;
    .end local v1    # "keysCollection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    goto :goto_0

    .line 2979
    :catch_0
    move-exception v0

    .line 2980
    .local v0, "e":Lorg/json/JSONException;
    sget-object v1, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v2, "removeTriggersForKeysFromJsonArrayString, invalid json"

    invoke-static {v1, v2, v0}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2982
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_0
    return-void
.end method

.method public static requiresUserPrivacyConsent()Z
    .locals 1

    .line 1127
    sget-boolean v0, Lcom/onesignal/OneSignal;->requiresUserPrivacyConsent:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/onesignal/OneSignal;->userProvidedPrivacyConsent()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static runGetTags()V
    .locals 1

    .line 1853
    invoke-static {}, Lcom/onesignal/OneSignal;->getUserId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1854
    return-void

    .line 1857
    :cond_0
    invoke-static {}, Lcom/onesignal/OneSignal;->internalFireGetTagsCallbacks()V

    .line 1858
    return-void
.end method

.method private static runNotificationOpenedCallback(Lorg/json/JSONArray;ZZ)V
    .locals 1
    .param p0, "dataArray"    # Lorg/json/JSONArray;
    .param p1, "shown"    # Z
    .param p2, "fromAlert"    # Z

    .line 2080
    sget-object v0, Lcom/onesignal/OneSignal;->mInitBuilder:Lcom/onesignal/OneSignal$Builder;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/onesignal/OneSignal$Builder;->mNotificationOpenedHandler:Lcom/onesignal/OneSignal$NotificationOpenedHandler;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2085
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/onesignal/OneSignal;->generateOsNotificationOpenResult(Lorg/json/JSONArray;ZZ)Lcom/onesignal/OSNotificationOpenResult;

    move-result-object v0

    invoke-static {v0}, Lcom/onesignal/OneSignal;->fireNotificationOpenedHandler(Lcom/onesignal/OSNotificationOpenResult;)V

    .line 2086
    return-void

    .line 2081
    :cond_1
    :goto_0
    sget-object v0, Lcom/onesignal/OneSignal;->unprocessedOpenedNotifis:Ljava/util/Collection;

    invoke-interface {v0, p0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2082
    return-void
.end method

.method private static saveAppId(Ljava/lang/String;)V
    .locals 2
    .param p0, "appId"    # Ljava/lang/String;

    .line 2245
    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 2246
    return-void

    .line 2248
    :cond_0
    sget-object v0, Lcom/onesignal/OneSignalPrefs;->PREFS_ONESIGNAL:Ljava/lang/String;

    const-string v1, "GT_APP_ID"

    invoke-static {v0, v1, p0}, Lcom/onesignal/OneSignalPrefs;->saveString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2252
    return-void
.end method

.method static saveEmailId(Ljava/lang/String;)V
    .locals 3
    .param p0, "id"    # Ljava/lang/String;

    .line 2328
    sput-object p0, Lcom/onesignal/OneSignal;->emailId:Ljava/lang/String;

    .line 2329
    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 2330
    return-void

    .line 2332
    :cond_0
    sget-object v0, Lcom/onesignal/OneSignalPrefs;->PREFS_ONESIGNAL:Ljava/lang/String;

    sget-object v1, Lcom/onesignal/OneSignal;->emailId:Ljava/lang/String;

    .line 2335
    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/onesignal/OneSignal;->emailId:Ljava/lang/String;

    .line 2332
    :goto_0
    const-string v2, "OS_EMAIL_ID"

    invoke-static {v0, v2, v1}, Lcom/onesignal/OneSignalPrefs;->saveString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2336
    return-void
.end method

.method static saveFilterOtherGCMReceivers(Z)V
    .locals 2
    .param p0, "set"    # Z

    .line 2346
    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 2347
    return-void

    .line 2349
    :cond_0
    sget-object v0, Lcom/onesignal/OneSignalPrefs;->PREFS_ONESIGNAL:Ljava/lang/String;

    const-string v1, "OS_FILTER_OTHER_GCM_RECEIVERS"

    invoke-static {v0, v1, p0}, Lcom/onesignal/OneSignalPrefs;->saveBool(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2353
    return-void
.end method

.method static saveUserConsentStatus(Z)V
    .locals 2
    .param p0, "consent"    # Z

    .line 2276
    sget-object v0, Lcom/onesignal/OneSignalPrefs;->PREFS_ONESIGNAL:Ljava/lang/String;

    const-string v1, "ONESIGNAL_USER_PROVIDED_CONSENT"

    invoke-static {v0, v1, p0}, Lcom/onesignal/OneSignalPrefs;->saveBool(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2280
    return-void
.end method

.method static saveUserId(Ljava/lang/String;)V
    .locals 3
    .param p0, "id"    # Ljava/lang/String;

    .line 2303
    sput-object p0, Lcom/onesignal/OneSignal;->userId:Ljava/lang/String;

    .line 2304
    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 2305
    return-void

    .line 2307
    :cond_0
    sget-object v0, Lcom/onesignal/OneSignalPrefs;->PREFS_ONESIGNAL:Ljava/lang/String;

    sget-object v1, Lcom/onesignal/OneSignal;->userId:Ljava/lang/String;

    const-string v2, "GT_PLAYER_ID"

    invoke-static {v0, v2, v1}, Lcom/onesignal/OneSignalPrefs;->saveString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2311
    return-void
.end method

.method private static scheduleSyncService()Z
    .locals 3

    .line 1279
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->persist()Z

    move-result v0

    .line 1280
    .local v0, "unsyncedChanges":Z
    if-eqz v0, :cond_0

    .line 1281
    sget-object v1, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/onesignal/OneSignalSyncServiceUtils;->scheduleSyncTask(Landroid/content/Context;)V

    .line 1283
    :cond_0
    sget-object v1, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/onesignal/LocationController;->scheduleUpdate(Landroid/content/Context;)Z

    move-result v1

    .line 1284
    .local v1, "locationScheduled":Z
    if-nez v1, :cond_2

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v2, 0x1

    :goto_1
    return v2
.end method

.method static sendClickActionOutcomes(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onesignal/OSInAppMessageOutcome;",
            ">;)V"
        }
    .end annotation

    .line 3122
    .local p0, "outcomes":Ljava/util/List;, "Ljava/util/List<Lcom/onesignal/OSInAppMessageOutcome;>;"
    sget-object v0, Lcom/onesignal/OneSignal;->outcomeEventsController:Lcom/onesignal/OSOutcomeEventsController;

    if-nez v0, :cond_0

    .line 3123
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v1, "Make sure OneSignal.init is called first"

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 3124
    return-void

    .line 3127
    :cond_0
    invoke-virtual {v0, p0}, Lcom/onesignal/OSOutcomeEventsController;->sendClickActionOutcomes(Ljava/util/List;)V

    .line 3128
    return-void
.end method

.method public static sendOutcome(Ljava/lang/String;)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 3131
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/onesignal/OneSignal;->sendOutcome(Ljava/lang/String;Lcom/onesignal/OneSignal$OutcomeCallback;)V

    .line 3132
    return-void
.end method

.method public static sendOutcome(Ljava/lang/String;Lcom/onesignal/OneSignal$OutcomeCallback;)V
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "callback"    # Lcom/onesignal/OneSignal$OutcomeCallback;

    .line 3135
    invoke-static {p0}, Lcom/onesignal/OneSignal;->isValidOutcomeEntry(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3136
    return-void

    .line 3138
    :cond_0
    sget-object v0, Lcom/onesignal/OneSignal;->outcomeEventsController:Lcom/onesignal/OSOutcomeEventsController;

    if-nez v0, :cond_1

    .line 3139
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v1, "Make sure OneSignal.init is called first"

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 3140
    return-void

    .line 3143
    :cond_1
    invoke-virtual {v0, p0, p1}, Lcom/onesignal/OSOutcomeEventsController;->sendOutcomeEvent(Ljava/lang/String;Lcom/onesignal/OneSignal$OutcomeCallback;)V

    .line 3144
    return-void
.end method

.method public static sendOutcomeWithValue(Ljava/lang/String;F)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "value"    # F

    .line 3163
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/onesignal/OneSignal;->sendOutcomeWithValue(Ljava/lang/String;FLcom/onesignal/OneSignal$OutcomeCallback;)V

    .line 3164
    return-void
.end method

.method public static sendOutcomeWithValue(Ljava/lang/String;FLcom/onesignal/OneSignal$OutcomeCallback;)V
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "value"    # F
    .param p2, "callback"    # Lcom/onesignal/OneSignal$OutcomeCallback;

    .line 3167
    invoke-static {p0}, Lcom/onesignal/OneSignal;->isValidOutcomeEntry(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Lcom/onesignal/OneSignal;->isValidOutcomeValue(F)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3170
    :cond_0
    sget-object v0, Lcom/onesignal/OneSignal;->outcomeEventsController:Lcom/onesignal/OSOutcomeEventsController;

    if-nez v0, :cond_1

    .line 3171
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v1, "Make sure OneSignal.init is called first"

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 3172
    return-void

    .line 3175
    :cond_1
    invoke-virtual {v0, p0, p1, p2}, Lcom/onesignal/OSOutcomeEventsController;->sendOutcomeEventWithValue(Ljava/lang/String;FLcom/onesignal/OneSignal$OutcomeCallback;)V

    .line 3176
    return-void

    .line 3168
    :cond_2
    :goto_0
    return-void
.end method

.method static sendPurchases(Lorg/json/JSONArray;ZLcom/onesignal/OneSignalRestClient$ResponseHandler;)V
    .locals 5
    .param p0, "purchases"    # Lorg/json/JSONArray;
    .param p1, "newAsExisting"    # Z
    .param p2, "responseHandler"    # Lcom/onesignal/OneSignalRestClient$ResponseHandler;

    .line 2020
    const-string v0, "/on_purchase"

    const-string v1, "players/"

    const-string v2, "sendPurchases()"

    invoke-static {v2}, Lcom/onesignal/OneSignal;->shouldLogUserPrivacyConsentErrorMessageForMethodName(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2021
    return-void

    .line 2023
    :cond_0
    invoke-static {}, Lcom/onesignal/OneSignal;->getUserId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    .line 2024
    new-instance v0, Lcom/onesignal/OneSignal$IAPUpdateJob;

    invoke-direct {v0, p0}, Lcom/onesignal/OneSignal$IAPUpdateJob;-><init>(Lorg/json/JSONArray;)V

    sput-object v0, Lcom/onesignal/OneSignal;->iapUpdateJob:Lcom/onesignal/OneSignal$IAPUpdateJob;

    .line 2025
    iput-boolean p1, v0, Lcom/onesignal/OneSignal$IAPUpdateJob;->newAsExisting:Z

    .line 2026
    sget-object v0, Lcom/onesignal/OneSignal;->iapUpdateJob:Lcom/onesignal/OneSignal$IAPUpdateJob;

    iput-object p2, v0, Lcom/onesignal/OneSignal$IAPUpdateJob;->restResponseHandler:Lcom/onesignal/OneSignalRestClient$ResponseHandler;

    .line 2028
    return-void

    .line 2032
    :cond_1
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 2033
    .local v2, "jsonBody":Lorg/json/JSONObject;
    const-string v3, "app_id"

    invoke-static {}, Lcom/onesignal/OneSignal;->getSavedAppId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2034
    if-eqz p1, :cond_2

    .line 2035
    const-string v3, "existing"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 2036
    :cond_2
    const-string v3, "purchases"

    invoke-virtual {v2, v3, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2038
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/onesignal/OneSignal;->getUserId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2, p2}, Lcom/onesignal/OneSignalRestClient;->post(Ljava/lang/String;Lorg/json/JSONObject;Lcom/onesignal/OneSignalRestClient$ResponseHandler;)V

    .line 2039
    invoke-static {}, Lcom/onesignal/OneSignal;->getEmailId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 2040
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/onesignal/OneSignal;->getEmailId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v2, v1}, Lcom/onesignal/OneSignalRestClient;->post(Ljava/lang/String;Lorg/json/JSONObject;Lcom/onesignal/OneSignalRestClient$ResponseHandler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2043
    .end local v2    # "jsonBody":Lorg/json/JSONObject;
    :cond_3
    goto :goto_0

    .line 2041
    :catchall_0
    move-exception v0

    .line 2042
    .local v0, "t":Ljava/lang/Throwable;
    sget-object v1, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v2, "Failed to generate JSON for sendPurchases."

    invoke-static {v1, v2, v0}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2044
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method public static sendTag(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .line 1618
    const-string v0, "sendTag()"

    invoke-static {v0}, Lcom/onesignal/OneSignal;->shouldLogUserPrivacyConsentErrorMessageForMethodName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1619
    return-void

    .line 1622
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/onesignal/OneSignal;->sendTags(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1625
    goto :goto_0

    .line 1623
    :catch_0
    move-exception v0

    .line 1624
    .local v0, "t":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 1626
    .end local v0    # "t":Lorg/json/JSONException;
    :goto_0
    return-void
.end method

.method public static sendTags(Ljava/lang/String;)V
    .locals 3
    .param p0, "jsonString"    # Ljava/lang/String;

    .line 1630
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/onesignal/OneSignal;->sendTags(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1633
    goto :goto_0

    .line 1631
    :catch_0
    move-exception v0

    .line 1632
    .local v0, "t":Lorg/json/JSONException;
    sget-object v1, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v2, "Generating JSONObject for sendTags failed!"

    invoke-static {v1, v2, v0}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1634
    .end local v0    # "t":Lorg/json/JSONException;
    :goto_0
    return-void
.end method

.method public static sendTags(Lorg/json/JSONObject;)V
    .locals 1
    .param p0, "keyValues"    # Lorg/json/JSONObject;

    .line 1646
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/onesignal/OneSignal;->sendTags(Lorg/json/JSONObject;Lcom/onesignal/OneSignal$ChangeTagsUpdateHandler;)V

    .line 1647
    return-void
.end method

.method public static sendTags(Lorg/json/JSONObject;Lcom/onesignal/OneSignal$ChangeTagsUpdateHandler;)V
    .locals 4
    .param p0, "keyValues"    # Lorg/json/JSONObject;
    .param p1, "changeTagsUpdateHandler"    # Lcom/onesignal/OneSignal$ChangeTagsUpdateHandler;

    .line 1665
    const-string v0, "sendTags()"

    invoke-static {v0}, Lcom/onesignal/OneSignal;->shouldLogUserPrivacyConsentErrorMessageForMethodName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1666
    return-void

    .line 1668
    :cond_0
    new-instance v0, Lcom/onesignal/OneSignal$12;

    invoke-direct {v0, p0, p1}, Lcom/onesignal/OneSignal$12;-><init>(Lorg/json/JSONObject;Lcom/onesignal/OneSignal$ChangeTagsUpdateHandler;)V

    .line 1709
    .local v0, "sendTagsRunnable":Ljava/lang/Runnable;
    sget-object v1, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/onesignal/OneSignal;->shouldRunTaskThroughQueue()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 1719
    :cond_1
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1720
    return-void

    .line 1710
    :cond_2
    :goto_0
    sget-object v1, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v2, "You must initialize OneSignal before modifying tags!Moving this operation to a pending task queue."

    invoke-static {v1, v2}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 1712
    if-eqz p1, :cond_3

    .line 1713
    new-instance v1, Lcom/onesignal/OneSignal$SendTagsError;

    const/4 v3, -0x1

    invoke-direct {v1, v3, v2}, Lcom/onesignal/OneSignal$SendTagsError;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, v1}, Lcom/onesignal/OneSignal$ChangeTagsUpdateHandler;->onFailure(Lcom/onesignal/OneSignal$SendTagsError;)V

    .line 1715
    :cond_3
    new-instance v1, Lcom/onesignal/OneSignal$PendingTaskRunnable;

    invoke-direct {v1, v0}, Lcom/onesignal/OneSignal$PendingTaskRunnable;-><init>(Ljava/lang/Runnable;)V

    invoke-static {v1}, Lcom/onesignal/OneSignal;->addTaskToQueue(Lcom/onesignal/OneSignal$PendingTaskRunnable;)V

    .line 1716
    return-void
.end method

.method public static sendUniqueOutcome(Ljava/lang/String;)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 3147
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/onesignal/OneSignal;->sendUniqueOutcome(Ljava/lang/String;Lcom/onesignal/OneSignal$OutcomeCallback;)V

    .line 3148
    return-void
.end method

.method public static sendUniqueOutcome(Ljava/lang/String;Lcom/onesignal/OneSignal$OutcomeCallback;)V
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "callback"    # Lcom/onesignal/OneSignal$OutcomeCallback;

    .line 3151
    invoke-static {p0}, Lcom/onesignal/OneSignal;->isValidOutcomeEntry(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3152
    return-void

    .line 3154
    :cond_0
    sget-object v0, Lcom/onesignal/OneSignal;->outcomeEventsController:Lcom/onesignal/OSOutcomeEventsController;

    if-nez v0, :cond_1

    .line 3155
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v1, "Make sure OneSignal.init is called first"

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 3156
    return-void

    .line 3159
    :cond_1
    invoke-virtual {v0, p0, p1}, Lcom/onesignal/OSOutcomeEventsController;->sendUniqueOutcomeEvent(Ljava/lang/String;Lcom/onesignal/OneSignal$OutcomeCallback;)V

    .line 3160
    return-void
.end method

.method public static setAppContext(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .line 623
    if-nez p0, :cond_0

    .line 624
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->WARN:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v1, "setAppContext(null) is not valid, ignoring!"

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 625
    return-void

    .line 628
    :cond_0
    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 629
    .local v0, "wasAppContextNull":Z
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sput-object v1, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    .line 632
    check-cast v1, Landroid/app/Application;

    invoke-static {v1}, Lcom/onesignal/ActivityLifecycleListener;->registerActivityLifecycleCallbacks(Landroid/app/Application;)V

    .line 634
    if-eqz v0, :cond_3

    .line 635
    sget-object v1, Lcom/onesignal/OneSignal;->outcomeEventsFactory:Lcom/onesignal/outcomes/OSOutcomeEventsFactory;

    if-nez v1, :cond_2

    .line 636
    new-instance v1, Lcom/onesignal/outcomes/OSOutcomeEventsFactory;

    sget-object v2, Lcom/onesignal/OneSignal;->logger:Lcom/onesignal/OSLogger;

    sget-object v3, Lcom/onesignal/OneSignal;->apiClient:Lcom/onesignal/OneSignalAPIClient;

    invoke-static {}, Lcom/onesignal/OneSignal;->getDBHelperInstance()Lcom/onesignal/OneSignalDbHelper;

    move-result-object v4

    sget-object v5, Lcom/onesignal/OneSignal;->preferences:Lcom/onesignal/OSSharedPreferences;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/onesignal/outcomes/OSOutcomeEventsFactory;-><init>(Lcom/onesignal/OSLogger;Lcom/onesignal/OneSignalAPIClient;Lcom/onesignal/OneSignalDb;Lcom/onesignal/OSSharedPreferences;)V

    sput-object v1, Lcom/onesignal/OneSignal;->outcomeEventsFactory:Lcom/onesignal/outcomes/OSOutcomeEventsFactory;

    .line 638
    :cond_2
    sget-object v1, Lcom/onesignal/OneSignal;->sessionManager:Lcom/onesignal/OSSessionManager;

    invoke-virtual {v1}, Lcom/onesignal/OSSessionManager;->initSessionFromCache()V

    .line 639
    new-instance v1, Lcom/onesignal/OSOutcomeEventsController;

    sget-object v2, Lcom/onesignal/OneSignal;->sessionManager:Lcom/onesignal/OSSessionManager;

    sget-object v3, Lcom/onesignal/OneSignal;->outcomeEventsFactory:Lcom/onesignal/outcomes/OSOutcomeEventsFactory;

    invoke-direct {v1, v2, v3}, Lcom/onesignal/OSOutcomeEventsController;-><init>(Lcom/onesignal/OSSessionManager;Lcom/onesignal/outcomes/OSOutcomeEventsFactory;)V

    sput-object v1, Lcom/onesignal/OneSignal;->outcomeEventsController:Lcom/onesignal/OSOutcomeEventsController;

    .line 642
    invoke-static {}, Lcom/onesignal/OneSignalPrefs;->startDelayedWrite()V

    .line 644
    invoke-static {p0}, Lcom/onesignal/OneSignalCacheCleaner;->cleanOldCachedData(Landroid/content/Context;)V

    .line 646
    :cond_3
    return-void
.end method

.method public static setEmail(Ljava/lang/String;)V
    .locals 1
    .param p0, "email"    # Ljava/lang/String;

    .line 1444
    const/4 v0, 0x0

    invoke-static {p0, v0, v0}, Lcom/onesignal/OneSignal;->setEmail(Ljava/lang/String;Ljava/lang/String;Lcom/onesignal/OneSignal$EmailUpdateHandler;)V

    .line 1445
    return-void
.end method

.method public static setEmail(Ljava/lang/String;Lcom/onesignal/OneSignal$EmailUpdateHandler;)V
    .locals 1
    .param p0, "email"    # Ljava/lang/String;
    .param p1, "callback"    # Lcom/onesignal/OneSignal$EmailUpdateHandler;

    .line 1440
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/onesignal/OneSignal;->setEmail(Ljava/lang/String;Ljava/lang/String;Lcom/onesignal/OneSignal$EmailUpdateHandler;)V

    .line 1441
    return-void
.end method

.method public static setEmail(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "email"    # Ljava/lang/String;
    .param p1, "emailAuthHash"    # Ljava/lang/String;

    .line 1448
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/onesignal/OneSignal;->setEmail(Ljava/lang/String;Ljava/lang/String;Lcom/onesignal/OneSignal$EmailUpdateHandler;)V

    .line 1449
    return-void
.end method

.method public static setEmail(Ljava/lang/String;Ljava/lang/String;Lcom/onesignal/OneSignal$EmailUpdateHandler;)V
    .locals 3
    .param p0, "email"    # Ljava/lang/String;
    .param p1, "emailAuthHash"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/onesignal/OneSignal$EmailUpdateHandler;

    .line 1464
    const-string v0, "setEmail()"

    invoke-static {v0}, Lcom/onesignal/OneSignal;->shouldLogUserPrivacyConsentErrorMessageForMethodName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1465
    return-void

    .line 1467
    :cond_0
    invoke-static {p0}, Lcom/onesignal/OSUtils;->isValidEmail(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1468
    const-string v0, "Email is invalid"

    .line 1469
    .local v0, "errorMessage":Ljava/lang/String;
    if-eqz p2, :cond_1

    .line 1470
    new-instance v1, Lcom/onesignal/OneSignal$EmailUpdateError;

    sget-object v2, Lcom/onesignal/OneSignal$EmailErrorType;->VALIDATION:Lcom/onesignal/OneSignal$EmailErrorType;

    invoke-direct {v1, v2, v0}, Lcom/onesignal/OneSignal$EmailUpdateError;-><init>(Lcom/onesignal/OneSignal$EmailErrorType;Ljava/lang/String;)V

    invoke-interface {p2, v1}, Lcom/onesignal/OneSignal$EmailUpdateHandler;->onFailure(Lcom/onesignal/OneSignal$EmailUpdateError;)V

    .line 1471
    :cond_1
    sget-object v1, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    invoke-static {v1, v0}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 1472
    return-void

    .line 1475
    .end local v0    # "errorMessage":Ljava/lang/String;
    :cond_2
    sget-object v0, Lcom/onesignal/OneSignal;->remoteParams:Lcom/onesignal/OneSignalRemoteParams$Params;

    if-eqz v0, :cond_4

    iget-boolean v0, v0, Lcom/onesignal/OneSignalRemoteParams$Params;->useEmailAuth:Z

    if-eqz v0, :cond_4

    if-nez p1, :cond_4

    .line 1476
    const-string v0, "Email authentication (auth token) is set to REQUIRED for this application. Please provide an auth token from your backend server or change the setting in the OneSignal dashboard."

    .line 1477
    .restart local v0    # "errorMessage":Ljava/lang/String;
    if-eqz p2, :cond_3

    .line 1478
    new-instance v1, Lcom/onesignal/OneSignal$EmailUpdateError;

    sget-object v2, Lcom/onesignal/OneSignal$EmailErrorType;->REQUIRES_EMAIL_AUTH:Lcom/onesignal/OneSignal$EmailErrorType;

    invoke-direct {v1, v2, v0}, Lcom/onesignal/OneSignal$EmailUpdateError;-><init>(Lcom/onesignal/OneSignal$EmailErrorType;Ljava/lang/String;)V

    invoke-interface {p2, v1}, Lcom/onesignal/OneSignal$EmailUpdateHandler;->onFailure(Lcom/onesignal/OneSignal$EmailUpdateError;)V

    .line 1479
    :cond_3
    sget-object v1, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    invoke-static {v1, v0}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 1480
    return-void

    .line 1483
    .end local v0    # "errorMessage":Ljava/lang/String;
    :cond_4
    sput-object p2, Lcom/onesignal/OneSignal;->emailUpdateHandler:Lcom/onesignal/OneSignal$EmailUpdateHandler;

    .line 1485
    new-instance v0, Lcom/onesignal/OneSignal$9;

    invoke-direct {v0, p0, p1}, Lcom/onesignal/OneSignal$9;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1500
    .local v0, "runSetEmail":Ljava/lang/Runnable;
    sget-object v1, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    if-eqz v1, :cond_6

    invoke-static {}, Lcom/onesignal/OneSignal;->shouldRunTaskThroughQueue()Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_0

    .line 1506
    :cond_5
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1507
    return-void

    .line 1501
    :cond_6
    :goto_0
    sget-object v1, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v2, "You should initialize OneSignal before calling setEmail! Moving this operation to a pending task queue."

    invoke-static {v1, v2}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 1503
    new-instance v1, Lcom/onesignal/OneSignal$PendingTaskRunnable;

    invoke-direct {v1, v0}, Lcom/onesignal/OneSignal$PendingTaskRunnable;-><init>(Ljava/lang/Runnable;)V

    invoke-static {v1}, Lcom/onesignal/OneSignal;->addTaskToQueue(Lcom/onesignal/OneSignal$PendingTaskRunnable;)V

    .line 1504
    return-void
.end method

.method public static setExternalUserId(Ljava/lang/String;)V
    .locals 1
    .param p0, "externalId"    # Ljava/lang/String;

    .line 1552
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/onesignal/OneSignal;->setExternalUserId(Ljava/lang/String;Lcom/onesignal/OneSignal$OSExternalUserIdUpdateCompletionHandler;)V

    .line 1553
    return-void
.end method

.method public static setExternalUserId(Ljava/lang/String;Lcom/onesignal/OneSignal$OSExternalUserIdUpdateCompletionHandler;)V
    .locals 2
    .param p0, "externalId"    # Ljava/lang/String;
    .param p1, "completionCallback"    # Lcom/onesignal/OneSignal$OSExternalUserIdUpdateCompletionHandler;

    .line 1557
    const-string v0, "setExternalUserId()"

    invoke-static {v0}, Lcom/onesignal/OneSignal;->shouldLogUserPrivacyConsentErrorMessageForMethodName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1558
    return-void

    .line 1560
    :cond_0
    new-instance v0, Lcom/onesignal/OneSignal$11;

    invoke-direct {v0, p0, p1}, Lcom/onesignal/OneSignal$11;-><init>(Ljava/lang/String;Lcom/onesignal/OneSignal$OSExternalUserIdUpdateCompletionHandler;)V

    .line 1579
    .local v0, "runSetExternalUserId":Ljava/lang/Runnable;
    sget-object v1, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/onesignal/OneSignal;->shouldRunTaskThroughQueue()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 1584
    :cond_1
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1585
    return-void

    .line 1580
    :cond_2
    :goto_0
    new-instance v1, Lcom/onesignal/OneSignal$PendingTaskRunnable;

    invoke-direct {v1, v0}, Lcom/onesignal/OneSignal$PendingTaskRunnable;-><init>(Ljava/lang/Runnable;)V

    invoke-static {v1}, Lcom/onesignal/OneSignal;->addTaskToQueue(Lcom/onesignal/OneSignal$PendingTaskRunnable;)V

    .line 1581
    return-void
.end method

.method public static setInFocusDisplaying(I)V
    .locals 1
    .param p0, "displayOption"    # I

    .line 2482
    invoke-static {p0}, Lcom/onesignal/OneSignal;->getInFocusDisplaying(I)Lcom/onesignal/OneSignal$OSInFocusDisplayOption;

    move-result-object v0

    invoke-static {v0}, Lcom/onesignal/OneSignal;->setInFocusDisplaying(Lcom/onesignal/OneSignal$OSInFocusDisplayOption;)V

    .line 2483
    return-void
.end method

.method public static setInFocusDisplaying(Lcom/onesignal/OneSignal$OSInFocusDisplayOption;)V
    .locals 2
    .param p0, "displayOption"    # Lcom/onesignal/OneSignal$OSInFocusDisplayOption;

    .line 2477
    sget-object v0, Lcom/onesignal/OneSignal;->mInitBuilder:Lcom/onesignal/OneSignal$Builder;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/onesignal/OneSignal$Builder;->mDisplayOptionCarryOver:Z

    .line 2478
    sget-object v0, Lcom/onesignal/OneSignal;->mInitBuilder:Lcom/onesignal/OneSignal$Builder;

    iput-object p0, v0, Lcom/onesignal/OneSignal$Builder;->mDisplayOption:Lcom/onesignal/OneSignal$OSInFocusDisplayOption;

    .line 2479
    return-void
.end method

.method static setLastSessionTime(J)V
    .locals 2
    .param p0, "time"    # J

    .line 2451
    sget-object v0, Lcom/onesignal/OneSignalPrefs;->PREFS_ONESIGNAL:Ljava/lang/String;

    const-string v1, "OS_LAST_SESSION_TIME"

    invoke-static {v0, v1, p0, p1}, Lcom/onesignal/OneSignalPrefs;->saveLong(Ljava/lang/String;Ljava/lang/String;J)V

    .line 2455
    return-void
.end method

.method public static setLocationShared(Z)V
    .locals 3
    .param p0, "enable"    # Z

    .line 2547
    const-string v0, "setLocationShared()"

    invoke-static {v0}, Lcom/onesignal/OneSignal;->shouldLogUserPrivacyConsentErrorMessageForMethodName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2548
    return-void

    .line 2550
    :cond_0
    sput-boolean p0, Lcom/onesignal/OneSignal;->shareLocation:Z

    .line 2551
    if-nez p0, :cond_1

    .line 2552
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->clearLocation()V

    .line 2553
    :cond_1
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "shareLocation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/onesignal/OneSignal;->shareLocation:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 2554
    return-void
.end method

.method public static setLogLevel(II)V
    .locals 2
    .param p0, "inLogCatLevel"    # I
    .param p1, "inVisualLogLevel"    # I

    .line 1165
    invoke-static {p0}, Lcom/onesignal/OneSignal;->getLogLevel(I)Lcom/onesignal/OneSignal$LOG_LEVEL;

    move-result-object v0

    invoke-static {p1}, Lcom/onesignal/OneSignal;->getLogLevel(I)Lcom/onesignal/OneSignal$LOG_LEVEL;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->setLogLevel(Lcom/onesignal/OneSignal$LOG_LEVEL;Lcom/onesignal/OneSignal$LOG_LEVEL;)V

    .line 1166
    return-void
.end method

.method public static setLogLevel(Lcom/onesignal/OneSignal$LOG_LEVEL;Lcom/onesignal/OneSignal$LOG_LEVEL;)V
    .locals 0
    .param p0, "inLogCatLevel"    # Lcom/onesignal/OneSignal$LOG_LEVEL;
    .param p1, "inVisualLogLevel"    # Lcom/onesignal/OneSignal$LOG_LEVEL;

    .line 1141
    sput-object p0, Lcom/onesignal/OneSignal;->logCatLevel:Lcom/onesignal/OneSignal$LOG_LEVEL;

    sput-object p1, Lcom/onesignal/OneSignal;->visualLogLevel:Lcom/onesignal/OneSignal$LOG_LEVEL;

    .line 1142
    return-void
.end method

.method public static setRequiresUserPrivacyConsent(Z)V
    .locals 2
    .param p0, "required"    # Z

    .line 1114
    sget-boolean v0, Lcom/onesignal/OneSignal;->requiresUserPrivacyConsent:Z

    if-eqz v0, :cond_0

    if-nez p0, :cond_0

    .line 1115
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v1, "Cannot change requiresUserPrivacyConsent() from TRUE to FALSE"

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 1116
    return-void

    .line 1119
    :cond_0
    sput-boolean p0, Lcom/onesignal/OneSignal;->requiresUserPrivacyConsent:Z

    .line 1120
    return-void
.end method

.method static setSessionManager(Lcom/onesignal/OSSessionManager;)V
    .locals 0
    .param p0, "sessionManager"    # Lcom/onesignal/OSSessionManager;

    .line 3100
    sput-object p0, Lcom/onesignal/OneSignal;->sessionManager:Lcom/onesignal/OSSessionManager;

    .line 3101
    return-void
.end method

.method static setSharedPreferences(Lcom/onesignal/OSSharedPreferences;)V
    .locals 0
    .param p0, "preferences"    # Lcom/onesignal/OSSharedPreferences;

    .line 3104
    sput-object p0, Lcom/onesignal/OneSignal;->preferences:Lcom/onesignal/OSSharedPreferences;

    .line 3105
    return-void
.end method

.method public static setSubscription(Z)V
    .locals 3
    .param p0, "enable"    # Z

    .line 2523
    const-string v0, "setSubscription()"

    invoke-static {v0}, Lcom/onesignal/OneSignal;->shouldLogUserPrivacyConsentErrorMessageForMethodName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2524
    return-void

    .line 2526
    :cond_0
    new-instance v0, Lcom/onesignal/OneSignal$20;

    invoke-direct {v0, p0}, Lcom/onesignal/OneSignal$20;-><init>(Z)V

    .line 2534
    .local v0, "runSetSubscription":Ljava/lang/Runnable;
    sget-object v1, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/onesignal/OneSignal;->shouldRunTaskThroughQueue()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 2541
    :cond_1
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 2542
    return-void

    .line 2535
    :cond_2
    :goto_0
    sget-object v1, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v2, "OneSignal.init has not been called. Moving subscription action to a waiting task queue."

    invoke-static {v1, v2}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 2537
    new-instance v1, Lcom/onesignal/OneSignal$PendingTaskRunnable;

    invoke-direct {v1, v0}, Lcom/onesignal/OneSignal$PendingTaskRunnable;-><init>(Ljava/lang/Runnable;)V

    invoke-static {v1}, Lcom/onesignal/OneSignal;->addTaskToQueue(Lcom/onesignal/OneSignal$PendingTaskRunnable;)V

    .line 2538
    return-void
.end method

.method static setTrackerFactory(Lcom/onesignal/influence/OSTrackerFactory;)V
    .locals 0
    .param p0, "trackerFactory"    # Lcom/onesignal/influence/OSTrackerFactory;

    .line 3096
    sput-object p0, Lcom/onesignal/OneSignal;->trackerFactory:Lcom/onesignal/influence/OSTrackerFactory;

    .line 3097
    return-void
.end method

.method private static setupPrivacyConsent(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 778
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 779
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 782
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v2, "com.onesignal.PrivacyConsent"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 783
    .local v2, "requireSetting":Ljava/lang/String;
    const-string v3, "ENABLE"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Lcom/onesignal/OneSignal;->setRequiresUserPrivacyConsent(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 786
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v2    # "requireSetting":Ljava/lang/String;
    goto :goto_0

    .line 784
    :catchall_0
    move-exception v0

    .line 785
    .local v0, "t":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 787
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method private static shouldInitDirectSessionFromNotificationOpen(Landroid/content/Context;ZZZ)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fromAlert"    # Z
    .param p2, "urlOpened"    # Z
    .param p3, "defaultOpenActionDisabled"    # Z

    .line 2205
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    sget-boolean v0, Lcom/onesignal/OneSignal;->foreground:Z

    if-nez v0, :cond_0

    .line 2209
    invoke-static {p0}, Lcom/onesignal/OneSignal;->startOrResumeApp(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2205
    :goto_0
    return v0
.end method

.method static shouldLogUserPrivacyConsentErrorMessageForMethodName(Ljava/lang/String;)Z
    .locals 3
    .param p0, "methodName"    # Ljava/lang/String;

    .line 1131
    invoke-static {}, Lcom/onesignal/OneSignal;->requiresUserPrivacyConsent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1132
    if-eqz p0, :cond_0

    .line 1133
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->WARN:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Method "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " was called before the user provided privacy consent. Your application is set to require the user\'s privacy consent before the OneSignal SDK can be initialized. Please ensure the user has provided consent before calling this method. You can check the latest OneSignal consent status by calling OneSignal.userProvidedPrivacyConsent()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 1134
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 1137
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private static shouldRunTaskThroughQueue()Z
    .locals 3

    .line 941
    sget-boolean v0, Lcom/onesignal/OneSignal;->initDone:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v2, Lcom/onesignal/OneSignal;->pendingTaskExecutor:Ljava/util/concurrent/ExecutorService;

    if-nez v2, :cond_0

    .line 942
    return v1

    .line 945
    :cond_0
    const/4 v2, 0x1

    if-nez v0, :cond_1

    sget-object v0, Lcom/onesignal/OneSignal;->pendingTaskExecutor:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_1

    .line 946
    return v2

    .line 949
    :cond_1
    sget-object v0, Lcom/onesignal/OneSignal;->pendingTaskExecutor:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_2

    .line 950
    return v2

    .line 952
    :cond_2
    return v1
.end method

.method public static startInit(Landroid/content/Context;)Lcom/onesignal/OneSignal$Builder;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 664
    new-instance v0, Lcom/onesignal/OneSignal$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/onesignal/OneSignal$Builder;-><init>(Landroid/content/Context;Lcom/onesignal/OneSignal$1;)V

    return-object v0
.end method

.method private static startLocationUpdate()V
    .locals 5

    .line 970
    new-instance v0, Lcom/onesignal/OneSignal$3;

    invoke-direct {v0}, Lcom/onesignal/OneSignal$3;-><init>()V

    .line 982
    .local v0, "locationHandler":Lcom/onesignal/LocationController$LocationHandler;
    sget-object v1, Lcom/onesignal/OneSignal;->mInitBuilder:Lcom/onesignal/OneSignal$Builder;

    iget-boolean v1, v1, Lcom/onesignal/OneSignal$Builder;->mPromptLocation:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/onesignal/OneSignal;->promptedLocation:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 984
    .local v1, "doPrompt":Z
    :goto_0
    sget-boolean v4, Lcom/onesignal/OneSignal;->promptedLocation:Z

    if-nez v4, :cond_2

    sget-object v4, Lcom/onesignal/OneSignal;->mInitBuilder:Lcom/onesignal/OneSignal$Builder;

    iget-boolean v4, v4, Lcom/onesignal/OneSignal$Builder;->mPromptLocation:Z

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :cond_2
    :goto_1
    sput-boolean v2, Lcom/onesignal/OneSignal;->promptedLocation:Z

    .line 986
    sget-object v2, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {v2, v1, v3, v0}, Lcom/onesignal/LocationController;->getLocation(Landroid/content/Context;ZZLcom/onesignal/LocationController$LocationHandler;)V

    .line 987
    return-void
.end method

.method static startOrResumeApp(Landroid/content/Context;)Z
    .locals 2
    .param p0, "inContext"    # Landroid/content/Context;

    .line 2187
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 2189
    .local v0, "launchIntent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 2190
    const/high16 v1, 0x10020000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2191
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 2192
    const/4 v1, 0x1

    return v1

    .line 2194
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private static startPendingTasks()V
    .locals 2

    .line 898
    sget-object v0, Lcom/onesignal/OneSignal;->taskQueueWaitingForInit:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 899
    new-instance v0, Lcom/onesignal/OneSignal$2;

    invoke-direct {v0}, Lcom/onesignal/OneSignal$2;-><init>()V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/onesignal/OneSignal;->pendingTaskExecutor:Ljava/util/concurrent/ExecutorService;

    .line 908
    :goto_0
    sget-object v0, Lcom/onesignal/OneSignal;->taskQueueWaitingForInit:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 909
    sget-object v0, Lcom/onesignal/OneSignal;->pendingTaskExecutor:Ljava/util/concurrent/ExecutorService;

    sget-object v1, Lcom/onesignal/OneSignal;->taskQueueWaitingForInit:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_0

    .line 912
    :cond_0
    return-void
.end method

.method private static startRegistrationOrOnSession()V
    .locals 2

    .line 956
    sget-boolean v0, Lcom/onesignal/OneSignal;->waitingToPostStateSync:Z

    if-eqz v0, :cond_0

    .line 957
    return-void

    .line 958
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/onesignal/OneSignal;->waitingToPostStateSync:Z

    .line 960
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->getSyncAsNewSession()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 961
    sput-boolean v1, Lcom/onesignal/OneSignal;->locationFired:Z

    .line 963
    :cond_1
    invoke-static {}, Lcom/onesignal/OneSignal;->startLocationUpdate()V

    .line 965
    sput-boolean v1, Lcom/onesignal/OneSignal;->registerForPushFired:Z

    .line 966
    invoke-static {}, Lcom/onesignal/OneSignal;->makeAndroidParamsRequest()V

    .line 967
    return-void
.end method

.method public static syncHashedEmail(Ljava/lang/String;)V
    .locals 3
    .param p0, "email"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1414
    const-string v0, "SyncHashedEmail()"

    invoke-static {v0}, Lcom/onesignal/OneSignal;->shouldLogUserPrivacyConsentErrorMessageForMethodName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1415
    return-void

    .line 1418
    :cond_0
    invoke-static {p0}, Lcom/onesignal/OSUtils;->isValidEmail(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1419
    return-void

    .line 1421
    :cond_1
    new-instance v0, Lcom/onesignal/OneSignal$8;

    invoke-direct {v0, p0}, Lcom/onesignal/OneSignal$8;-><init>(Ljava/lang/String;)V

    .line 1430
    .local v0, "runSyncHashedEmail":Ljava/lang/Runnable;
    sget-object v1, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/onesignal/OneSignal;->shouldRunTaskThroughQueue()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 1436
    :cond_2
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1437
    return-void

    .line 1431
    :cond_3
    :goto_0
    sget-object v1, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v2, "You should initialize OneSignal before calling syncHashedEmail! Moving this operation to a pending task queue."

    invoke-static {v1, v2}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 1433
    new-instance v1, Lcom/onesignal/OneSignal$PendingTaskRunnable;

    invoke-direct {v1, v0}, Lcom/onesignal/OneSignal$PendingTaskRunnable;-><init>(Ljava/lang/Runnable;)V

    invoke-static {v1}, Lcom/onesignal/OneSignal;->addTaskToQueue(Lcom/onesignal/OneSignal$PendingTaskRunnable;)V

    .line 1434
    return-void
.end method

.method static updateEmailIdDependents(Ljava/lang/String;)V
    .locals 2
    .param p0, "emailId"    # Ljava/lang/String;

    .line 2375
    invoke-static {p0}, Lcom/onesignal/OneSignal;->saveEmailId(Ljava/lang/String;)V

    .line 2376
    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/onesignal/OneSignal;->getCurrentEmailSubscriptionState(Landroid/content/Context;)Lcom/onesignal/OSEmailSubscriptionState;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/onesignal/OSEmailSubscriptionState;->setEmailUserId(Ljava/lang/String;)V

    .line 2378
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "parent_player_id"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    .line 2379
    .local v0, "updateJson":Lorg/json/JSONObject;
    invoke-static {v0}, Lcom/onesignal/OneSignalStateSynchronizer;->updatePushState(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2382
    .end local v0    # "updateJson":Lorg/json/JSONObject;
    goto :goto_0

    .line 2380
    :catch_0
    move-exception v0

    .line 2381
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 2383
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_0
    return-void
.end method

.method static updateUserIdDependents(Ljava/lang/String;)V
    .locals 3
    .param p0, "userId"    # Ljava/lang/String;

    .line 2358
    invoke-static {p0}, Lcom/onesignal/OneSignal;->saveUserId(Ljava/lang/String;)V

    .line 2359
    invoke-static {}, Lcom/onesignal/OneSignal;->fireIdsAvailableCallback()V

    .line 2360
    invoke-static {}, Lcom/onesignal/OneSignal;->internalFireGetTagsCallbacks()V

    .line 2362
    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/onesignal/OneSignal;->getCurrentSubscriptionState(Landroid/content/Context;)Lcom/onesignal/OSSubscriptionState;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/onesignal/OSSubscriptionState;->setUserId(Ljava/lang/String;)V

    .line 2364
    sget-object v0, Lcom/onesignal/OneSignal;->iapUpdateJob:Lcom/onesignal/OneSignal$IAPUpdateJob;

    if-eqz v0, :cond_0

    .line 2365
    iget-object v0, v0, Lcom/onesignal/OneSignal$IAPUpdateJob;->toReport:Lorg/json/JSONArray;

    sget-object v1, Lcom/onesignal/OneSignal;->iapUpdateJob:Lcom/onesignal/OneSignal$IAPUpdateJob;

    iget-boolean v1, v1, Lcom/onesignal/OneSignal$IAPUpdateJob;->newAsExisting:Z

    sget-object v2, Lcom/onesignal/OneSignal;->iapUpdateJob:Lcom/onesignal/OneSignal$IAPUpdateJob;

    iget-object v2, v2, Lcom/onesignal/OneSignal$IAPUpdateJob;->restResponseHandler:Lcom/onesignal/OneSignalRestClient$ResponseHandler;

    invoke-static {v0, v1, v2}, Lcom/onesignal/OneSignal;->sendPurchases(Lorg/json/JSONArray;ZLcom/onesignal/OneSignalRestClient$ResponseHandler;)V

    .line 2366
    const/4 v0, 0x0

    sput-object v0, Lcom/onesignal/OneSignal;->iapUpdateJob:Lcom/onesignal/OneSignal$IAPUpdateJob;

    .line 2369
    :cond_0
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->refreshEmailState()V

    .line 2371
    sget-object v0, Lcom/onesignal/OneSignal;->appId:Ljava/lang/String;

    invoke-static {}, Lcom/onesignal/AdvertisingIdProviderGPS;->getLastValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lcom/onesignal/OneSignalChromeTabAndroidFrame;->setup(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2372
    return-void
.end method

.method public static userProvidedPrivacyConsent()Z
    .locals 1

    .line 814
    invoke-static {}, Lcom/onesignal/OneSignal;->getSavedUserConsentStatus()Z

    move-result v0

    return v0
.end method
