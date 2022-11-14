.class public Lcom/app/tmyclean/activities/ActivityPay;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "ActivityPay.java"


# instance fields
.field str_bank:Ljava/lang/String;

.field private webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/app/tmyclean/activities/ActivityPay;->webView:Landroid/webkit/WebView;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 26
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    const v0, 0x7f0b0023

    invoke-virtual {p0, v0}, Lcom/app/tmyclean/activities/ActivityPay;->setContentView(I)V

    .line 28
    invoke-virtual {p0}, Lcom/app/tmyclean/activities/ActivityPay;->setupToolbar()V

    .line 29
    invoke-virtual {p0}, Lcom/app/tmyclean/activities/ActivityPay;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "bank"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/app/tmyclean/activities/ActivityPay;->str_bank:Ljava/lang/String;

    .line 30
    const v0, 0x7f0800de

    invoke-virtual {p0, v0}, Lcom/app/tmyclean/activities/ActivityPay;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/app/tmyclean/activities/ActivityPay;->webView:Landroid/webkit/WebView;

    .line 32
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 33
    .local v0, "webSettings":Landroid/webkit/WebSettings;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 34
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 35
    iget-object v1, p0, Lcom/app/tmyclean/activities/ActivityPay;->webView:Landroid/webkit/WebView;

    new-instance v2, Lcom/app/tmyclean/activities/ActivityPay$1;

    invoke-direct {v2, p0}, Lcom/app/tmyclean/activities/ActivityPay$1;-><init>(Lcom/app/tmyclean/activities/ActivityPay;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 50
    invoke-virtual {p0}, Lcom/app/tmyclean/activities/ActivityPay;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "android_id"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 52
    .local v1, "android_id":Ljava/lang/String;
    const-string v2, "file:///android_asset/FPX.html"

    .line 54
    .local v2, "url":Ljava/lang/String;
    const/4 v3, 0x0

    .line 56
    .local v3, "getData":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "?agent_id=1062&sid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "&app="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "yellow"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "&bank="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/app/tmyclean/activities/ActivityPay;->str_bank:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 59
    iget-object v4, p0, Lcom/app/tmyclean/activities/ActivityPay;->webView:Landroid/webkit/WebView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "item"
        }
    .end annotation

    .line 72
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 79
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 75
    :pswitch_0
    invoke-virtual {p0}, Lcom/app/tmyclean/activities/ActivityPay;->finish()V

    .line 76
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public setupToolbar()V
    .locals 4

    .line 86
    const v0, 0x7f08013e

    invoke-virtual {p0, v0}, Lcom/app/tmyclean/activities/ActivityPay;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 87
    .local v0, "toolbar":Landroidx/appcompat/widget/Toolbar;
    invoke-virtual {p0, v0}, Lcom/app/tmyclean/activities/ActivityPay;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 88
    invoke-virtual {p0}, Lcom/app/tmyclean/activities/ActivityPay;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v1

    .line 89
    .local v1, "actionBar":Landroidx/appcompat/app/ActionBar;
    if-eqz v1, :cond_0

    .line 90
    invoke-virtual {p0}, Lcom/app/tmyclean/activities/ActivityPay;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 91
    invoke-virtual {p0}, Lcom/app/tmyclean/activities/ActivityPay;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v2

    const-string v3, "Secure Payment"

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 93
    :cond_0
    return-void
.end method
