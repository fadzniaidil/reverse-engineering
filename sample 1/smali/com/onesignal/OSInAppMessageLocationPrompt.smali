.class Lcom/onesignal/OSInAppMessageLocationPrompt;
.super Lcom/onesignal/OSInAppMessagePrompt;
.source "OSInAppMessageLocationPrompt.java"


# static fields
.field static final LOCATION_PROMPT_KEY:Ljava/lang/String; = "location"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/onesignal/OSInAppMessagePrompt;-><init>()V

    return-void
.end method


# virtual methods
.method getPromptKey()Ljava/lang/String;
    .locals 1

    .line 14
    const-string v0, "location"

    return-object v0
.end method

.method handlePrompt(Lcom/onesignal/OneSignal$OSPromptActionCompletionCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/onesignal/OneSignal$OSPromptActionCompletionCallback;

    .line 9
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/onesignal/OneSignal;->promptLocation(Lcom/onesignal/OneSignal$OSPromptActionCompletionCallback;Z)V

    .line 10
    return-void
.end method
