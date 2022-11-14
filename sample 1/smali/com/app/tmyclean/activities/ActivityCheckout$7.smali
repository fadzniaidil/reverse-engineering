.class Lcom/app/tmyclean/activities/ActivityCheckout$7;
.super Ljava/lang/Object;
.source "ActivityCheckout.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/app/tmyclean/activities/ActivityCheckout;->requestAction()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/app/tmyclean/activities/ActivityCheckout;


# direct methods
.method constructor <init>(Lcom/app/tmyclean/activities/ActivityCheckout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/app/tmyclean/activities/ActivityCheckout;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 348
    iput-object p1, p0, Lcom/app/tmyclean/activities/ActivityCheckout$7;->this$0:Lcom/app/tmyclean/activities/ActivityCheckout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "ServerResponse"
        }
    .end annotation

    .line 348
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/app/tmyclean/activities/ActivityCheckout$7;->onResponse(Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;)V
    .locals 4
    .param p1, "ServerResponse"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "ServerResponse"
        }
    .end annotation

    .line 352
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 353
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lcom/app/tmyclean/activities/ActivityCheckout$7$1;

    invoke-direct {v1, p0}, Lcom/app/tmyclean/activities/ActivityCheckout$7$1;-><init>(Lcom/app/tmyclean/activities/ActivityCheckout$7;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 361
    return-void
.end method
