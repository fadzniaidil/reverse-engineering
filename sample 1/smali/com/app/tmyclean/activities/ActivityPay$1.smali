.class Lcom/app/tmyclean/activities/ActivityPay$1;
.super Landroid/webkit/WebViewClient;
.source "ActivityPay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/app/tmyclean/activities/ActivityPay;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/app/tmyclean/activities/ActivityPay;


# direct methods
.method constructor <init>(Lcom/app/tmyclean/activities/ActivityPay;)V
    .locals 0
    .param p1, "this$0"    # Lcom/app/tmyclean/activities/ActivityPay;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 35
    iput-object p1, p0, Lcom/app/tmyclean/activities/ActivityPay$1;->this$0:Lcom/app/tmyclean/activities/ActivityPay;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "url"
        }
    .end annotation

    .line 39
    const-string v0, "end.html"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/app/tmyclean/activities/ActivityPay$1;->this$0:Lcom/app/tmyclean/activities/ActivityPay;

    invoke-virtual {v0}, Lcom/app/tmyclean/activities/ActivityPay;->finish()V

    goto :goto_0

    .line 45
    :cond_0
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 47
    :goto_0
    const/4 v0, 0x1

    return v0
.end method
