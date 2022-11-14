.class public Lcom/app/tmyclean/activities/ActivityHelp;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "ActivityHelp.java"


# instance fields
.field content:Landroid/webkit/WebView;

.field str_content:Ljava/lang/String;

.field str_title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 18
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 27
    move-object/from16 v0, p0

    invoke-super/range {p0 .. p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    const v1, 0x7f0b001e

    invoke-virtual {v0, v1}, Lcom/app/tmyclean/activities/ActivityHelp;->setContentView(I)V

    .line 36
    invoke-virtual/range {p0 .. p0}, Lcom/app/tmyclean/activities/ActivityHelp;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 37
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "title"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/app/tmyclean/activities/ActivityHelp;->str_title:Ljava/lang/String;

    .line 38
    const-string v2, "content"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/app/tmyclean/activities/ActivityHelp;->str_content:Ljava/lang/String;

    .line 40
    const v2, 0x7f08013e

    invoke-virtual {v0, v2}, Lcom/app/tmyclean/activities/ActivityHelp;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/Toolbar;

    .line 41
    .local v2, "toolbar":Landroidx/appcompat/widget/Toolbar;
    invoke-virtual {v0, v2}, Lcom/app/tmyclean/activities/ActivityHelp;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 42
    invoke-virtual/range {p0 .. p0}, Lcom/app/tmyclean/activities/ActivityHelp;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v3

    .line 43
    .local v3, "actionBar":Landroidx/appcompat/app/ActionBar;
    const/4 v4, 0x1

    if-eqz v3, :cond_0

    .line 44
    invoke-virtual/range {p0 .. p0}, Lcom/app/tmyclean/activities/ActivityHelp;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 45
    invoke-virtual/range {p0 .. p0}, Lcom/app/tmyclean/activities/ActivityHelp;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v5

    iget-object v6, v0, Lcom/app/tmyclean/activities/ActivityHelp;->str_title:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 48
    :cond_0
    const v5, 0x7f08006c

    invoke-virtual {v0, v5}, Lcom/app/tmyclean/activities/ActivityHelp;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/webkit/WebView;

    iput-object v5, v0, Lcom/app/tmyclean/activities/ActivityHelp;->content:Landroid/webkit/WebView;

    .line 49
    const-string v6, "#ffffff"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 50
    iget-object v5, v0, Lcom/app/tmyclean/activities/ActivityHelp;->content:Landroid/webkit/WebView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/webkit/WebView;->setFocusableInTouchMode(Z)V

    .line 51
    iget-object v5, v0, Lcom/app/tmyclean/activities/ActivityHelp;->content:Landroid/webkit/WebView;

    invoke-virtual {v5, v6}, Landroid/webkit/WebView;->setFocusable(Z)V

    .line 52
    iget-object v5, v0, Lcom/app/tmyclean/activities/ActivityHelp;->content:Landroid/webkit/WebView;

    invoke-virtual {v5}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-virtual {v5, v6}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 54
    iget-object v5, v0, Lcom/app/tmyclean/activities/ActivityHelp;->content:Landroid/webkit/WebView;

    invoke-virtual {v5}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v5

    .line 55
    .local v5, "webSettings":Landroid/webkit/WebSettings;
    invoke-virtual/range {p0 .. p0}, Lcom/app/tmyclean/activities/ActivityHelp;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 56
    .local v6, "res":Landroid/content/res/Resources;
    const v7, 0x7f090008

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    .line 57
    .local v7, "fontSize":I
    invoke-virtual {v5, v7}, Landroid/webkit/WebSettings;->setDefaultFontSize(I)V

    .line 58
    invoke-virtual {v5, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 60
    const-string v4, "text/html; charset=UTF-8"

    .line 61
    .local v4, "mimeType":Ljava/lang/String;
    const-string v14, "utf-8"

    .line 62
    .local v14, "encoding":Ljava/lang/String;
    iget-object v15, v0, Lcom/app/tmyclean/activities/ActivityHelp;->str_content:Ljava/lang/String;

    .line 64
    .local v15, "htmlText":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "<html><head><style type=\"text/css\">body{color: #525252;}</style></head><body>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "</body></html>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 71
    .local v16, "text":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "<html dir=\'rtl\'><head><style type=\"text/css\">body{color: #525252;}</style></head><body>"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 81
    .local v17, "text_rtl":Ljava/lang/String;
    iget-object v8, v0, Lcom/app/tmyclean/activities/ActivityHelp;->content:Landroid/webkit/WebView;

    const/4 v9, 0x0

    const/4 v13, 0x0

    move-object/from16 v10, v16

    move-object v11, v4

    move-object v12, v14

    invoke-virtual/range {v8 .. v13}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 84
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

    .line 88
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 93
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 90
    :pswitch_0
    invoke-virtual {p0}, Lcom/app/tmyclean/activities/ActivityHelp;->finish()V

    .line 91
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
