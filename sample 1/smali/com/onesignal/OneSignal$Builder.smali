.class public Lcom/onesignal/OneSignal$Builder;
.super Ljava/lang/Object;
.source "OneSignal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onesignal/OneSignal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field mDisableGmsMissingPrompt:Z

.field mDisplayOption:Lcom/onesignal/OneSignal$OSInFocusDisplayOption;

.field mDisplayOptionCarryOver:Z

.field mFilterOtherGCMReceivers:Z

.field mInAppMessageClickHandler:Lcom/onesignal/OneSignal$InAppMessageClickHandler;

.field mNotificationOpenedHandler:Lcom/onesignal/OneSignal$NotificationOpenedHandler;

.field mNotificationReceivedHandler:Lcom/onesignal/OneSignal$NotificationReceivedHandler;

.field mPromptLocation:Z

.field mUnsubscribeWhenNotificationsAreDisabled:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 267
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 265
    sget-object v0, Lcom/onesignal/OneSignal$OSInFocusDisplayOption;->InAppAlert:Lcom/onesignal/OneSignal$OSInFocusDisplayOption;

    iput-object v0, p0, Lcom/onesignal/OneSignal$Builder;->mDisplayOption:Lcom/onesignal/OneSignal$OSInFocusDisplayOption;

    .line 267
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 265
    sget-object v0, Lcom/onesignal/OneSignal$OSInFocusDisplayOption;->InAppAlert:Lcom/onesignal/OneSignal$OSInFocusDisplayOption;

    iput-object v0, p0, Lcom/onesignal/OneSignal$Builder;->mDisplayOption:Lcom/onesignal/OneSignal$OSInFocusDisplayOption;

    .line 270
    iput-object p1, p0, Lcom/onesignal/OneSignal$Builder;->mContext:Landroid/content/Context;

    .line 271
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/onesignal/OneSignal$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # Lcom/onesignal/OneSignal$1;

    .line 249
    invoke-direct {p0, p1}, Lcom/onesignal/OneSignal$Builder;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/onesignal/OneSignal$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/onesignal/OneSignal$1;

    .line 249
    invoke-direct {p0}, Lcom/onesignal/OneSignal$Builder;-><init>()V

    return-void
.end method

.method private setDisplayOptionCarryOver(Z)V
    .locals 0
    .param p1, "carryOver"    # Z

    .line 274
    iput-boolean p1, p0, Lcom/onesignal/OneSignal$Builder;->mDisplayOptionCarryOver:Z

    .line 275
    return-void
.end method


# virtual methods
.method public autoPromptLocation(Z)Lcom/onesignal/OneSignal$Builder;
    .locals 0
    .param p1, "enable"    # Z

    .line 336
    iput-boolean p1, p0, Lcom/onesignal/OneSignal$Builder;->mPromptLocation:Z

    .line 337
    return-object p0
.end method

.method public disableGmsMissingPrompt(Z)Lcom/onesignal/OneSignal$Builder;
    .locals 0
    .param p1, "disable"    # Z

    .line 348
    iput-boolean p1, p0, Lcom/onesignal/OneSignal$Builder;->mDisableGmsMissingPrompt:Z

    .line 349
    return-object p0
.end method

.method public filterOtherGCMReceivers(Z)Lcom/onesignal/OneSignal$Builder;
    .locals 0
    .param p1, "set"    # Z

    .line 385
    iput-boolean p1, p0, Lcom/onesignal/OneSignal$Builder;->mFilterOtherGCMReceivers:Z

    .line 386
    return-object p0
.end method

.method public inFocusDisplaying(Lcom/onesignal/OneSignal$OSInFocusDisplayOption;)Lcom/onesignal/OneSignal$Builder;
    .locals 1
    .param p1, "displayOption"    # Lcom/onesignal/OneSignal$OSInFocusDisplayOption;

    .line 353
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/onesignal/OneSignal$Builder;->mDisplayOptionCarryOver:Z

    .line 354
    iput-object p1, p0, Lcom/onesignal/OneSignal$Builder;->mDisplayOption:Lcom/onesignal/OneSignal$OSInFocusDisplayOption;

    .line 355
    return-object p0
.end method

.method public init()V
    .locals 0

    .line 390
    invoke-static {p0}, Lcom/onesignal/OneSignal;->access$000(Lcom/onesignal/OneSignal$Builder;)V

    .line 391
    return-void
.end method

.method public setInAppMessageClickHandler(Lcom/onesignal/OneSignal$InAppMessageClickHandler;)Lcom/onesignal/OneSignal$Builder;
    .locals 0
    .param p1, "handler"    # Lcom/onesignal/OneSignal$InAppMessageClickHandler;

    .line 318
    iput-object p1, p0, Lcom/onesignal/OneSignal$Builder;->mInAppMessageClickHandler:Lcom/onesignal/OneSignal$InAppMessageClickHandler;

    .line 319
    return-object p0
.end method

.method public setNotificationOpenedHandler(Lcom/onesignal/OneSignal$NotificationOpenedHandler;)Lcom/onesignal/OneSignal$Builder;
    .locals 0
    .param p1, "handler"    # Lcom/onesignal/OneSignal$NotificationOpenedHandler;

    .line 291
    iput-object p1, p0, Lcom/onesignal/OneSignal$Builder;->mNotificationOpenedHandler:Lcom/onesignal/OneSignal$NotificationOpenedHandler;

    .line 292
    return-object p0
.end method

.method public setNotificationReceivedHandler(Lcom/onesignal/OneSignal$NotificationReceivedHandler;)Lcom/onesignal/OneSignal$Builder;
    .locals 0
    .param p1, "handler"    # Lcom/onesignal/OneSignal$NotificationReceivedHandler;

    .line 308
    iput-object p1, p0, Lcom/onesignal/OneSignal$Builder;->mNotificationReceivedHandler:Lcom/onesignal/OneSignal$NotificationReceivedHandler;

    .line 309
    return-object p0
.end method

.method public unsubscribeWhenNotificationsAreDisabled(Z)Lcom/onesignal/OneSignal$Builder;
    .locals 0
    .param p1, "set"    # Z

    .line 368
    iput-boolean p1, p0, Lcom/onesignal/OneSignal$Builder;->mUnsubscribeWhenNotificationsAreDisabled:Z

    .line 369
    return-object p0
.end method
