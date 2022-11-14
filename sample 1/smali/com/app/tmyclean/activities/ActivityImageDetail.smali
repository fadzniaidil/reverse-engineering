.class public Lcom/app/tmyclean/activities/ActivityImageDetail;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "ActivityImageDetail.java"


# instance fields
.field product_image:Lcom/app/tmyclean/utilities/TouchImageView;

.field str_image:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private initToolbar()V
    .locals 4

    .line 55
    const v0, 0x7f08013e

    invoke-virtual {p0, v0}, Lcom/app/tmyclean/activities/ActivityImageDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 56
    .local v0, "toolbar":Landroidx/appcompat/widget/Toolbar;
    invoke-virtual {p0, v0}, Lcom/app/tmyclean/activities/ActivityImageDetail;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 57
    invoke-virtual {p0}, Lcom/app/tmyclean/activities/ActivityImageDetail;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v1

    .line 58
    .local v1, "actionBar":Landroidx/appcompat/app/ActionBar;
    if-eqz v1, :cond_0

    .line 59
    invoke-virtual {p0}, Lcom/app/tmyclean/activities/ActivityImageDetail;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 61
    :cond_0
    return-void
.end method


# virtual methods
.method public downloadImage()V
    .locals 3

    .line 99
    iget-object v0, p0, Lcom/app/tmyclean/activities/ActivityImageDetail;->str_image:Ljava/lang/String;

    .line 100
    .local v0, "image_name":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://yapks.online/maid4u_888a/upload/product/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/app/tmyclean/activities/ActivityImageDetail;->str_image:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 101
    .local v1, "image_url":Ljava/lang/String;
    const-string v2, "image/jpeg"

    invoke-static {p0, v0, v1, v2}, Lcom/app/tmyclean/utilities/Utils;->downloadImage(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 32
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    const v0, 0x7f0b0020

    invoke-virtual {p0, v0}, Lcom/app/tmyclean/activities/ActivityImageDetail;->setContentView(I)V

    .line 41
    invoke-virtual {p0}, Lcom/app/tmyclean/activities/ActivityImageDetail;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "image"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/app/tmyclean/activities/ActivityImageDetail;->str_image:Ljava/lang/String;

    .line 43
    const v0, 0x7f0800a2

    invoke-virtual {p0, v0}, Lcom/app/tmyclean/activities/ActivityImageDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/app/tmyclean/utilities/TouchImageView;

    iput-object v0, p0, Lcom/app/tmyclean/activities/ActivityImageDetail;->product_image:Lcom/app/tmyclean/utilities/TouchImageView;

    .line 45
    invoke-static {p0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://yapks.online/maid4u_888a/upload/product/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/app/tmyclean/activities/ActivityImageDetail;->str_image:Ljava/lang/String;

    .line 46
    const-string v3, " "

    const-string v4, "%20"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    .line 47
    const v1, 0x7f070087

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    iget-object v1, p0, Lcom/app/tmyclean/activities/ActivityImageDetail;->product_image:Lcom/app/tmyclean/utilities/TouchImageView;

    .line 48
    invoke-virtual {v0, v1}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 50
    invoke-direct {p0}, Lcom/app/tmyclean/activities/ActivityImageDetail;->initToolbar()V

    .line 52
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "menu"
        }
    .end annotation

    .line 65
    invoke-virtual {p0}, Lcom/app/tmyclean/activities/ActivityImageDetail;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0c0002

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 66
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "menuItem"    # Landroid/view/MenuItem;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "menuItem"
        }
    .end annotation

    .line 71
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    const-wide/16 v2, 0x12c

    sparse-switch v0, :sswitch_data_0

    .line 82
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 78
    :sswitch_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v4, Lcom/app/tmyclean/activities/-$$Lambda$Ua8-6rOBNb9JmVNnrTK9Pidmgnc;

    invoke-direct {v4, p0}, Lcom/app/tmyclean/activities/-$$Lambda$Ua8-6rOBNb9JmVNnrTK9Pidmgnc;-><init>(Lcom/app/tmyclean/activities/ActivityImageDetail;)V

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 79
    return v1

    .line 74
    :sswitch_1
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v4, Lcom/app/tmyclean/activities/-$$Lambda$ioEKAPrf4vYdoP3LUvBiyjjAO1U;

    invoke-direct {v4, p0}, Lcom/app/tmyclean/activities/-$$Lambda$ioEKAPrf4vYdoP3LUvBiyjjAO1U;-><init>(Lcom/app/tmyclean/activities/ActivityImageDetail;)V

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 75
    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f080067 -> :sswitch_1
        0x7f0800f2 -> :sswitch_0
    .end sparse-switch
.end method

.method public requestStoragePermission()V
    .locals 3

    .line 87
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    .line 88
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-gt v1, v2, :cond_0

    .line 89
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/16 v0, 0x66

    invoke-virtual {p0, v1, v0}, Lcom/app/tmyclean/activities/ActivityImageDetail;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_0

    .line 91
    :cond_0
    invoke-virtual {p0}, Lcom/app/tmyclean/activities/ActivityImageDetail;->downloadImage()V

    goto :goto_0

    .line 94
    :cond_1
    invoke-virtual {p0}, Lcom/app/tmyclean/activities/ActivityImageDetail;->downloadImage()V

    .line 96
    :goto_0
    return-void
.end method
