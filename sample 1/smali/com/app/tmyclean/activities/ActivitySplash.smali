.class public Lcom/app/tmyclean/activities/ActivitySplash;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "ActivitySplash.java"


# instance fields
.field id:J

.field isCancelled:Ljava/lang/Boolean;

.field private progressBar:Landroid/widget/ProgressBar;

.field url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 16
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 18
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/app/tmyclean/activities/ActivitySplash;->isCancelled:Ljava/lang/Boolean;

    .line 20
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/app/tmyclean/activities/ActivitySplash;->id:J

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/app/tmyclean/activities/ActivitySplash;->url:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public synthetic lambda$onCreate$0$ActivitySplash()V
    .locals 5

    .line 43
    iget-object v0, p0, Lcom/app/tmyclean/activities/ActivitySplash;->progressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 45
    iget-object v0, p0, Lcom/app/tmyclean/activities/ActivitySplash;->isCancelled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_4

    .line 46
    iget-wide v0, p0, Lcom/app/tmyclean/activities/ActivitySplash;->id:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_2

    .line 47
    iget-object v0, p0, Lcom/app/tmyclean/activities/ActivitySplash;->url:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/app/tmyclean/activities/ActivitySplash;->url:Ljava/lang/String;

    const-string v1, "no_url"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 52
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/app/tmyclean/activities/ActivitySplash;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/app/tmyclean/activities/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 53
    .local v0, "a":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/app/tmyclean/activities/ActivitySplash;->startActivity(Landroid/content/Intent;)V

    .line 55
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/app/tmyclean/activities/ActivitySplash;->url:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 56
    .local v1, "b":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/app/tmyclean/activities/ActivitySplash;->startActivity(Landroid/content/Intent;)V

    .line 58
    invoke-virtual {p0}, Lcom/app/tmyclean/activities/ActivitySplash;->finish()V

    .line 59
    .end local v0    # "a":Landroid/content/Intent;
    .end local v1    # "b":Landroid/content/Intent;
    goto :goto_1

    .line 48
    :cond_1
    :goto_0
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/app/tmyclean/activities/ActivitySplash;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/app/tmyclean/activities/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 49
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/app/tmyclean/activities/ActivitySplash;->startActivity(Landroid/content/Intent;)V

    .line 50
    invoke-virtual {p0}, Lcom/app/tmyclean/activities/ActivitySplash;->finish()V

    .line 51
    .end local v0    # "intent":Landroid/content/Intent;
    goto :goto_1

    .line 60
    :cond_2
    const-wide/32 v2, 0x3c34eb12

    cmp-long v4, v0, v2

    if-nez v4, :cond_3

    .line 62
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/app/tmyclean/activities/ActivitySplash;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/app/tmyclean/activities/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 63
    .local v0, "a":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/app/tmyclean/activities/ActivitySplash;->startActivity(Landroid/content/Intent;)V

    .line 65
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/app/tmyclean/activities/ActivitySplash;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/app/tmyclean/activities/ActivityHistory;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 66
    .restart local v1    # "b":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/app/tmyclean/activities/ActivitySplash;->startActivity(Landroid/content/Intent;)V

    .line 68
    invoke-virtual {p0}, Lcom/app/tmyclean/activities/ActivitySplash;->finish()V

    .line 70
    .end local v0    # "a":Landroid/content/Intent;
    .end local v1    # "b":Landroid/content/Intent;
    goto :goto_1

    .line 72
    :cond_3
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/app/tmyclean/activities/ActivitySplash;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/app/tmyclean/activities/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 73
    .restart local v0    # "a":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/app/tmyclean/activities/ActivitySplash;->startActivity(Landroid/content/Intent;)V

    .line 75
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/app/tmyclean/activities/ActivitySplash;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/app/tmyclean/activities/ActivityNotificationDetail;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 76
    .restart local v1    # "b":Landroid/content/Intent;
    iget-wide v2, p0, Lcom/app/tmyclean/activities/ActivitySplash;->id:J

    const-string v4, "product_id"

    invoke-virtual {v1, v4, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 77
    invoke-virtual {p0, v1}, Lcom/app/tmyclean/activities/ActivitySplash;->startActivity(Landroid/content/Intent;)V

    .line 79
    invoke-virtual {p0}, Lcom/app/tmyclean/activities/ActivitySplash;->finish()V

    .line 83
    .end local v0    # "a":Landroid/content/Intent;
    .end local v1    # "b":Landroid/content/Intent;
    :cond_4
    :goto_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 25
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    const v0, 0x7f0b0026

    invoke-virtual {p0, v0}, Lcom/app/tmyclean/activities/ActivitySplash;->setContentView(I)V

    .line 34
    const v0, 0x7f0800e8

    invoke-virtual {p0, v0}, Lcom/app/tmyclean/activities/ActivitySplash;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/app/tmyclean/activities/ActivitySplash;->progressBar:Landroid/widget/ProgressBar;

    .line 36
    invoke-virtual {p0}, Lcom/app/tmyclean/activities/ActivitySplash;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "nid"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    invoke-virtual {p0}, Lcom/app/tmyclean/activities/ActivitySplash;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/app/tmyclean/activities/ActivitySplash;->id:J

    .line 38
    invoke-virtual {p0}, Lcom/app/tmyclean/activities/ActivitySplash;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "external_link"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/app/tmyclean/activities/ActivitySplash;->url:Ljava/lang/String;

    .line 41
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/app/tmyclean/activities/-$$Lambda$ActivitySplash$NMU381qSvQlHU8lxc2kKm-GxSXQ;

    invoke-direct {v1, p0}, Lcom/app/tmyclean/activities/-$$Lambda$ActivitySplash$NMU381qSvQlHU8lxc2kKm-GxSXQ;-><init>(Lcom/app/tmyclean/activities/ActivitySplash;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 85
    return-void
.end method
