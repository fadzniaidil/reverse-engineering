.class public Lcom/onesignal/PushRegistratorADM;
.super Ljava/lang/Object;
.source "PushRegistratorADM.java"

# interfaces
.implements Lcom/onesignal/PushRegistrator;


# static fields
.field private static callbackSuccessful:Z

.field private static registeredCallback:Lcom/onesignal/PushRegistrator$RegisteredHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    const/4 v0, 0x0

    sput-boolean v0, Lcom/onesignal/PushRegistratorADM;->callbackSuccessful:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 34
    sget-boolean v0, Lcom/onesignal/PushRegistratorADM;->callbackSuccessful:Z

    return v0
.end method

.method public static fireCallback(Ljava/lang/String;)V
    .locals 2
    .param p0, "id"    # Ljava/lang/String;

    .line 66
    sget-object v0, Lcom/onesignal/PushRegistratorADM;->registeredCallback:Lcom/onesignal/PushRegistrator$RegisteredHandler;

    if-nez v0, :cond_0

    .line 67
    return-void

    .line 68
    :cond_0
    const/4 v1, 0x1

    sput-boolean v1, Lcom/onesignal/PushRegistratorADM;->callbackSuccessful:Z

    .line 69
    invoke-interface {v0, p0, v1}, Lcom/onesignal/PushRegistrator$RegisteredHandler;->complete(Ljava/lang/String;I)V

    .line 70
    return-void
.end method


# virtual methods
.method public registerForPush(Landroid/content/Context;Ljava/lang/String;Lcom/onesignal/PushRegistrator$RegisteredHandler;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "noKeyNeeded"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/onesignal/PushRegistrator$RegisteredHandler;

    .line 41
    sput-object p3, Lcom/onesignal/PushRegistratorADM;->registeredCallback:Lcom/onesignal/PushRegistrator$RegisteredHandler;

    .line 42
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/onesignal/PushRegistratorADM$1;

    invoke-direct {v1, p0, p1, p3}, Lcom/onesignal/PushRegistratorADM$1;-><init>(Lcom/onesignal/PushRegistratorADM;Landroid/content/Context;Lcom/onesignal/PushRegistrator$RegisteredHandler;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 62
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 63
    return-void
.end method
