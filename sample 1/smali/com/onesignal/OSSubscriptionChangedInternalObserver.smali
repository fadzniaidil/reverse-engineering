.class Lcom/onesignal/OSSubscriptionChangedInternalObserver;
.super Ljava/lang/Object;
.source "OSSubscriptionChangedInternalObserver.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static fireChangesToPublicObserver(Lcom/onesignal/OSSubscriptionState;)V
    .locals 3
    .param p0, "state"    # Lcom/onesignal/OSSubscriptionState;

    .line 42
    new-instance v0, Lcom/onesignal/OSSubscriptionStateChanges;

    invoke-direct {v0}, Lcom/onesignal/OSSubscriptionStateChanges;-><init>()V

    .line 43
    .local v0, "stateChanges":Lcom/onesignal/OSSubscriptionStateChanges;
    sget-object v1, Lcom/onesignal/OneSignal;->lastSubscriptionState:Lcom/onesignal/OSSubscriptionState;

    iput-object v1, v0, Lcom/onesignal/OSSubscriptionStateChanges;->from:Lcom/onesignal/OSSubscriptionState;

    .line 44
    invoke-virtual {p0}, Lcom/onesignal/OSSubscriptionState;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onesignal/OSSubscriptionState;

    iput-object v1, v0, Lcom/onesignal/OSSubscriptionStateChanges;->to:Lcom/onesignal/OSSubscriptionState;

    .line 46
    invoke-static {}, Lcom/onesignal/OneSignal;->getSubscriptionStateChangesObserver()Lcom/onesignal/OSObservable;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/onesignal/OSObservable;->notifyChange(Ljava/lang/Object;)Z

    move-result v1

    .line 47
    .local v1, "hasReceiver":Z
    if-eqz v1, :cond_0

    .line 48
    invoke-virtual {p0}, Lcom/onesignal/OSSubscriptionState;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onesignal/OSSubscriptionState;

    sput-object v2, Lcom/onesignal/OneSignal;->lastSubscriptionState:Lcom/onesignal/OSSubscriptionState;

    .line 49
    sget-object v2, Lcom/onesignal/OneSignal;->lastSubscriptionState:Lcom/onesignal/OSSubscriptionState;

    invoke-virtual {v2}, Lcom/onesignal/OSSubscriptionState;->persistAsFrom()V

    .line 51
    :cond_0
    return-void
.end method


# virtual methods
.method public changed(Lcom/onesignal/OSSubscriptionState;)V
    .locals 0
    .param p1, "state"    # Lcom/onesignal/OSSubscriptionState;

    .line 33
    invoke-static {p1}, Lcom/onesignal/OSSubscriptionChangedInternalObserver;->fireChangesToPublicObserver(Lcom/onesignal/OSSubscriptionState;)V

    .line 34
    return-void
.end method
