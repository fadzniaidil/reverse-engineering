.class final Lcom/onesignal/OneSignal$21;
.super Ljava/lang/Object;
.source "OneSignal.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/OneSignal;->promptLocation(Lcom/onesignal/OneSignal$OSPromptActionCompletionCallback;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/onesignal/OneSignal$OSPromptActionCompletionCallback;

.field final synthetic val$fallbackToSettings:Z


# direct methods
.method constructor <init>(Lcom/onesignal/OneSignal$OSPromptActionCompletionCallback;Z)V
    .locals 0

    .line 2582
    iput-object p1, p0, Lcom/onesignal/OneSignal$21;->val$callback:Lcom/onesignal/OneSignal$OSPromptActionCompletionCallback;

    iput-boolean p2, p0, Lcom/onesignal/OneSignal$21;->val$fallbackToSettings:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 2585
    new-instance v0, Lcom/onesignal/OneSignal$21$1;

    invoke-direct {v0, p0}, Lcom/onesignal/OneSignal$21$1;-><init>(Lcom/onesignal/OneSignal$21;)V

    .line 2608
    .local v0, "locationHandler":Lcom/onesignal/LocationController$LocationHandler;
    sget-object v1, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    iget-boolean v2, p0, Lcom/onesignal/OneSignal$21;->val$fallbackToSettings:Z

    const/4 v3, 0x1

    invoke-static {v1, v3, v2, v0}, Lcom/onesignal/LocationController;->getLocation(Landroid/content/Context;ZZLcom/onesignal/LocationController$LocationHandler;)V

    .line 2609
    invoke-static {v3}, Lcom/onesignal/OneSignal;->access$2602(Z)Z

    .line 2610
    return-void
.end method
