.class public Lcom/app/tmyclean/activities/ActivityNotificationDetail;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "ActivityNotificationDetail.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/app/tmyclean/activities/ActivityNotificationDetail$ShareTask;
    }
.end annotation


# static fields
.field public static dbhelper:Lcom/app/tmyclean/utilities/DBHelper;


# instance fields
.field private appBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

.field btn_cart:Landroid/widget/Button;

.field private category_name:Ljava/lang/String;

.field private collapsingToolbarLayout:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

.field final context:Landroid/content/Context;

.field private currency_code:Ljava/lang/String;

.field img_product_image:Landroid/widget/ImageView;

.field private lyt_parent:Landroid/widget/RelativeLayout;

.field private product_description:Ljava/lang/String;

.field product_id:J

.field private product_image:Ljava/lang/String;

.field private product_name:Ljava/lang/String;

.field private product_price:D

.field private product_quantity:I

.field private product_status:Ljava/lang/String;

.field private progressBar:Landroid/widget/ProgressBar;

.field resp_currency_code:Ljava/lang/String;

.field resp_tax:D

.field txt_product_description:Landroid/webkit/WebView;

.field txt_product_name:Landroid/widget/TextView;

.field txt_product_price:Landroid/widget/TextView;

.field txt_product_quantity:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 70
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 81
    iput-object p0, p0, Lcom/app/tmyclean/activities/ActivityNotificationDetail;->context:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/app/tmyclean/activities/ActivityNotificationDetail;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/app/tmyclean/activities/ActivityNotificationDetail;

    .line 70
    iget-object v0, p0, Lcom/app/tmyclean/activities/ActivityNotificationDetail;->category_name:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/app/tmyclean/activities/ActivityNotificationDetail;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/app/tmyclean/activities/ActivityNotificationDetail;
    .param p1, "x1"    # Ljava/lang/String;

    .line 70
    iput-object p1, p0, Lcom/app/tmyclean/activities/ActivityNotificationDetail;->category_name:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/app/tmyclean/activities/ActivityNotificationDetail;)Lcom/google/android/material/appbar/CollapsingToolbarLayout;
    .locals 1
    .param p0, "x0"    # Lcom/app/tmyclean/activities/ActivityNotificationDetail;

    .line 70
    iget-object v0, p0, Lcom/app/tmyclean/activities/ActivityNotificationDetail;->collapsingToolbarLayout:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/app/tmyclean/activities/ActivityNotificationDetail;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/app/tmyclean/activities/ActivityNotificationDetail;

    .line 70
    iget-object v0, p0, Lcom/app/tmyclean/activities/ActivityNotificationDetail;->progressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$200(Lcom/app/tmyclean/activities/ActivityNotificationDetail;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/app/tmyclean/activities/ActivityNotificationDetail;

    .line 70
    iget-object v0, p0, Lcom/app/tmyclean/activities/ActivityNotificationDetail;->product_name:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/app/tmyclean/activities/ActivityNotificationDetail;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/app/tmyclean/activities/ActivityNotificationDetail;
    .param p1, "x1"    # Ljava/lang/String;

    .line 70
    iput-object p1, p0, Lcom/app/tmyclean/activities/ActivityNotificationDetail;->product_name:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/app/tmyclean/activities/ActivityNotificationDetail;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/app/tmyclean/activities/ActivityNotificationDetail;

    .line 70
    iget-object v0, p0, Lcom/app/tmyclean/activities/ActivityNotificationDetail;->product_image:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/app/tmyclean/activities/ActivityNotificationDetail;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/app/tmyclean/activities/ActivityNotificationDetail;
    .param p1, "x1"    # Ljava/lang/String;

    .line 70
    iput-object p1, p0, Lcom/app/tmyclean/activities/ActivityNotificationDetail;->product_image:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/app/tmyclean/activities/ActivityNotificationDetail;)D
    .locals 2
    .param p0, "x0"    # Lcom/app/tmyclean/activities/ActivityNotificationDetail;

    .line 70
    iget-wide v0, p0, Lcom/app/tmyclean/activities/ActivityNotificationDetail;->product_price:D

    return-wide v0
.end method

.method static synthetic access$402(Lcom/app/tmyclean/activities/ActivityNotificationDetail;D)D
    .locals 0
    .param p0, "x0"    # Lcom/app/tmyclean/activities/ActivityNotificationDetail;
    .param p1, "x1"    # D

    .line 70
    iput-wide p1, p0, Lcom/app/tmyclean/activities/ActivityNotificationDetail;->product_price:D

    return-wide p1
.end method

.method static synthetic access$502(Lcom/app/tmyclean/activities/ActivityNotificationDetail;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/app/tmyclean/activities/ActivityNotificationDetail;
    .param p1, "x1"    # Ljava/lang/String;

    .line 70
    iput-object p1, p0, Lcom/app/tmyclean/activities/ActivityNotificationDetail;->product_description:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/app/tmyclean/activities/ActivityNotificationDetail;)I
    .locals 1
    .param p0, "x0"    # Lcom/app/tmyclean/activities/ActivityNotificationDetail;

    .line 70
    iget v0, p0, Lcom/app/tmyclean/activities/ActivityNotificationDetail;->product_quantity:I

    return v0
.end method

.method static synthetic access$602(Lcom/app/tmyclean/activities/ActivityNotificationDetail;I)I
    .locals 0
    .param p0, "x0"    # Lcom/app/tmyclean/activities/ActivityNotificationDetail;
    .param p1, "x1"    # I

    .line 70
    iput p1, p0, Lcom/app/tmyclean/activities/ActivityNotificationDetail;->product_quantity:I

    return p1
.end method

.method static synthetic access$702(Lcom/app/tmyclean/activities/ActivityNotificationDetail;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/app/tmyclean/activities/ActivityNotificationDetail;
    .param p1, "x1"    # Ljava/lang/String;

    .line 70
    iput-object p1, p0, Lcom/app/tmyclean/activities/ActivityNotificationDetail;->product_status:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lcom/app/tmyclean/activities/ActivityNotificationDetail;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/app/tmyclean/activities/ActivityNotificationDetail;

    .line 70
    iget-object v0, p0, Lcom/app/tmyclean/activities/ActivityNotificationDetail;->currency_code:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$802(Lcom/app/tmyclean/activities/ActivityNotificationDetail;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/app/tmyclean/activities/ActivityNotificationDetail;
    .param p1, "x1"    # Ljava/lang/String;

    .line 70
    iput-object p1, p0, Lcom/app/tmyclean/activities/ActivityNotificationDetail;->currency_code:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$900(Lcom/app/tmyclean/activities/ActivityNotificationDetail;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/app/tmyclean/activities/ActivityNotificationDetail;

    .line 70
    iget-object v0, p0, Lcom/app/tmyclean/activities/ActivityNotificationDetail;->lyt_parent:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method private getTaxCurrency()V
    .locals 7

    .line 160
    new-instance v6, Lcom/android/volley/toolbox/JsonObjectRequest;

    new-instance v4, Lcom/app/tmyclean/activities/ActivityNotificationDetail$2;

    invoke-direct {v4, p0}, Lcom/app/tmyclean/activities/ActivityNotificationDetail$2;-><init>(Lcom/app/tmyclean/activities/ActivityNotificationDetail;)V

    new-instance v5, Lcom/app/tmyclean/activities/ActivityNotificationDetail$3;

    invoke-direct {v5, p0}, Lcom/app/tmyclean/activities/ActivityNotificationDetail$3;-><init>(Lcom/app/tmyclean/activities/ActivityNotificationDetail;)V

    const/4 v1, 0x0

    const-string v2, "https://yapks.online/maid4u_888a/api/api.php?get_tax_currency"

    const/4 v3, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/volley/toolbox/JsonObjectRequest;-><init>(ILjava/lang/String;Lorg/json/JSONObject;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 181
    .local v0, "jsonObjReq":Lcom/android/volley/toolbox/JsonObjectRequest;
    invoke-static {}, Lcom/app/tmyclean/activities/MyApplication;->getInstance()Lcom/app/tmyclean/activities/MyApplication;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/app/tmyclean/activities/MyApplication;->addToRequestQueue(Lcom/android/volley/Request;)V

    .line 182
    return-void
.end method

.method private makeJsonObjectRequest()V
    .locals 7

    .line 185
    new-instance v6, Lcom/android/volley/toolbox/JsonObjectRequest;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://yapks.online/maid4u_888a/api/api.php?product_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/app/tmyclean/activities/ActivityNotificationDetail;->product_id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lcom/app/tmyclean/activities/ActivityNotificationDetail$4;

    invoke-direct {v4, p0}, Lcom/app/tmyclean/activities/ActivityNotificationDetail$4;-><init>(Lcom/app/tmyclean/activities/ActivityNotificationDetail;)V

    new-instance v5, Lcom/app/tmyclean/activities/ActivityNotificationDetail$5;

    invoke-direct {v5, p0}, Lcom/app/tmyclean/activities/ActivityNotificationDetail$5;-><init>(Lcom/app/tmyclean/activities/ActivityNotificationDetail;)V

    const/4 v1, 0x0

    const/4 v3, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/volley/toolbox/JsonObjectRequest;-><init>(ILjava/lang/String;Lorg/json/JSONObject;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 222
    .local v0, "jsonObjReq":Lcom/android/volley/toolbox/JsonObjectRequest;
    invoke-static {}, Lcom/app/tmyclean/activities/MyApplication;->getInstance()Lcom/app/tmyclean/activities/MyApplication;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/app/tmyclean/activities/MyApplication;->addToRequestQueue(Lcom/android/volley/Request;)V

    .line 223
    return-void
.end method


# virtual methods
.method public displayData()V
    .locals 14

    .line 226
    iget-object v0, p0, Lcom/app/tmyclean/activities/ActivityNotificationDetail;->txt_product_name:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/app/tmyclean/activities/ActivityNotificationDetail;->product_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    invoke-static {p0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://yapks.online/maid4u_888a/upload/product/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/app/tmyclean/activities/ActivityNotificationDetail;->product_image:Ljava/lang/String;

    .line 229
    const-string v3, " "

    const-string v4, "%20"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    .line 230
    const v1, 0x7f070087

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    iget-object v1, p0, Lcom/app/tmyclean/activities/ActivityNotificationDetail;->img_product_image:Landroid/widget/ImageView;

    .line 231
    invoke-virtual {v0, v1}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 233
    iget-object v0, p0, Lcom/app/tmyclean/activities/ActivityNotificationDetail;->img_product_image:Landroid/widget/ImageView;

    new-instance v1, Lcom/app/tmyclean/activities/ActivityNotificationDetail$6;

    invoke-direct {v1, p0}, Lcom/app/tmyclean/activities/ActivityNotificationDetail$6;-><init>(Lcom/app/tmyclean/activities/ActivityNotificationDetail;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 246
    iget-object v0, p0, Lcom/app/tmyclean/activities/ActivityNotificationDetail;->txt_product_price:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v4, p0, Lcom/app/tmyclean/activities/ActivityNotificationDetail;->product_price:D

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/app/tmyclean/activities/ActivityNotificationDetail;->currency_code:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 249
    iget-object v0, p0, Lcom/app/tmyclean/activities/ActivityNotificationDetail;->txt_product_quantity:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/app/tmyclean/activities/ActivityNotificationDetail;->product_quantity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v2, 0x7f0f00a3

    invoke-virtual {p0, v2}, Lcom/app/tmyclean/activities/ActivityNotificationDetail;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 251
    iget-object v0, p0, Lcom/app/tmyclean/activities/ActivityNotificationDetail;->product_status:Ljava/lang/String;

    const-string v1, "Available"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/app/tmyclean/activities/ActivityNotificationDetail;->btn_cart:Landroid/widget/Button;

    const v2, 0x7f0f0020

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    .line 253
    iget-object v0, p0, Lcom/app/tmyclean/activities/ActivityNotificationDetail;->btn_cart:Landroid/widget/Button;

    const v2, 0x7f05001a

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 254
    iget-object v0, p0, Lcom/app/tmyclean/activities/ActivityNotificationDetail;->btn_cart:Landroid/widget/Button;

    new-instance v2, Lcom/app/tmyclean/activities/ActivityNotificationDetail$7;

    invoke-direct {v2, p0}, Lcom/app/tmyclean/activities/ActivityNotificationDetail$7;-><init>(Lcom/app/tmyclean/activities/ActivityNotificationDetail;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/app/tmyclean/activities/ActivityNotificationDetail;->btn_cart:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 262
    iget-object v0, p0, Lcom/app/tmyclean/activities/ActivityNotificationDetail;->btn_cart:Landroid/widget/Button;

    const v2, 0x7f0f0024

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    .line 263
    iget-object v0, p0, Lcom/app/tmyclean/activities/ActivityNotificationDetail;->btn_cart:Landroid/widget/Button;

    const v2, 0x7f050092

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 266
    :goto_0
    iget-object v0, p0, Lcom/app/tmyclean/activities/ActivityNotificationDetail;->txt_product_description:Landroid/webkit/WebView;

    const-string v2, "#ffffff"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 267
    iget-object v0, p0, Lcom/app/tmyclean/activities/ActivityNotificationDetail;->txt_product_description:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setFocusableInTouchMode(Z)V

    .line 268
    iget-object v0, p0, Lcom/app/tmyclean/activities/ActivityNotificationDetail;->txt_product_description:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setFocusable(Z)V

    .line 269
    iget-object v0, p0, Lcom/app/tmyclean/activities/ActivityNotificationDetail;->txt_product_description:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 271
    iget-object v0, p0, Lcom/app/tmyclean/activities/ActivityNotificationDetail;->txt_product_description:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 272
    .local v0, "webSettings":Landroid/webkit/WebSettings;
    invoke-virtual {p0}, Lcom/app/tmyclean/activities/ActivityNotificationDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 273
    .local v1, "res":Landroid/content/res/Resources;
    const v2, 0x7f090008

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 274
    .local v2, "fontSize":I
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setDefaultFontSize(I)V

    .line 275
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 277
    const-string v3, "text/html; charset=UTF-8"

    .line 278
    .local v3, "mimeType":Ljava/lang/String;
    const-string v10, "utf-8"

    .line 279
    .local v10, "encoding":Ljava/lang/String;
    iget-object v11, p0, Lcom/app/tmyclean/activities/ActivityNotificationDetail;->product_description:Ljava/lang/String;

    .line 281
    .local v11, "htmlText":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<html><head><style type=\"text/css\">body{color: #525252;}</style></head><body>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "</body></html>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 288
    .local v12, "text":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<html dir=\'rtl\'><head><style type=\"text/css\">body{color: #525252;}</style></head><body>"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 298
    .local v13, "text_rtl":Ljava/lang/String;
    iget-object v4, p0, Lcom/app/tmyclean/activities/ActivityNotificationDetail;->txt_product_description:Landroid/webkit/WebView;

    const/4 v5, 0x0

    const/4 v9, 0x0

    move-object v6, v12

    move-object v7, v3

    move-object v8, v10

    invoke-virtual/range {v4 .. v9}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    return-void
.end method

.method public getData()V
    .locals 4

    .line 144
    invoke-virtual {p0}, Lcom/app/tmyclean/activities/ActivityNotificationDetail;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 145
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "product_id"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/app/tmyclean/activities/ActivityNotificationDetail;->product_id:J

    .line 146
    return-void
.end method

.method public initComponent()V
    .locals 1

    .line 149
    const v0, 0x7f0800b6

    invoke-virtual {p0, v0}, Lcom/app/tmyclean/activities/ActivityNotificationDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/app/tmyclean/activities/ActivityNotificationDetail;->lyt_parent:Landroid/widget/RelativeLayout;

    .line 150
    const v0, 0x7f0800e8

    invoke-virtual {p0, v0}, Lcom/app/tmyclean/activities/ActivityNotificationDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/app/tmyclean/activities/ActivityNotificationDetail;->progressBar:Landroid/widget/ProgressBar;

    .line 151
    const v0, 0x7f0800e5

    invoke-virtual {p0, v0}, Lcom/app/tmyclean/activities/ActivityNotificationDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/app/tmyclean/activities/ActivityNotificationDetail;->txt_product_name:Landroid/widget/TextView;

    .line 152
    const v0, 0x7f0800e4

    invoke-virtual {p0, v0}, Lcom/app/tmyclean/activities/ActivityNotificationDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/app/tmyclean/activities/ActivityNotificationDetail;->img_product_image:Landroid/widget/ImageView;

    .line 153
    const v0, 0x7f0800e6

    invoke-virtual {p0, v0}, Lcom/app/tmyclean/activities/ActivityNotificationDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/app/tmyclean/activities/ActivityNotificationDetail;->txt_product_price:Landroid/widget/TextView;

    .line 154
    const v0, 0x7f0800e3

    invoke-virtual {p0, v0}, Lcom/app/tmyclean/activities/ActivityNotificationDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/app/tmyclean/activities/ActivityNotificationDetail;->txt_product_description:Landroid/webkit/WebView;

    .line 155
    const v0, 0x7f0800e7

    invoke-virtual {p0, v0}, Lcom/app/tmyclean/activities/ActivityNotificationDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/app/tmyclean/activities/ActivityNotificationDetail;->txt_product_quantity:Landroid/widget/TextView;

    .line 156
    const v0, 0x7f08004f

    invoke-virtual {p0, v0}, Lcom/app/tmyclean/activities/ActivityNotificationDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/app/tmyclean/activities/ActivityNotificationDetail;->btn_cart:Landroid/widget/Button;

    .line 157
    return-void
.end method

.method public inputDialog()V
    .locals 8

    .line 306
    :try_start_0
    sget-object v0, Lcom/app/tmyclean/activities/ActivityNotificationDetail;->dbhelper:Lcom/app/tmyclean/utilities/DBHelper;

    invoke-virtual {v0}, Lcom/app/tmyclean/utilities/DBHelper;->openDataBase()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 309
    nop

    .line 311
    iget-object v0, p0, Lcom/app/tmyclean/activities/ActivityNotificationDetail;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 313
    .local v0, "layoutInflaterAndroid":Landroid/view/LayoutInflater;
    const v1, 0x7f0b003e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 315
    .local v1, "mView":Landroid/view/View;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/app/tmyclean/activities/ActivityNotificationDetail;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 316
    .local v2, "alert":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 318
    const v3, 0x7f080155

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 319
    .local v3, "edtQuantity":Landroid/widget/EditText;
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 320
    const/4 v5, 0x3

    .line 321
    .local v5, "maxLength":I
    const/4 v6, 0x1

    new-array v6, v6, [Landroid/text/InputFilter;

    new-instance v7, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v7, v5}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v7, v6, v4

    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 322
    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setInputType(I)V

    .line 324
    const v4, 0x7f0f0054

    new-instance v6, Lcom/app/tmyclean/activities/ActivityNotificationDetail$8;

    invoke-direct {v6, p0, v3}, Lcom/app/tmyclean/activities/ActivityNotificationDetail$8;-><init>(Lcom/app/tmyclean/activities/ActivityNotificationDetail;Landroid/widget/EditText;)V

    invoke-virtual {v2, v4, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 353
    const v4, 0x7f0f0055

    new-instance v6, Lcom/app/tmyclean/activities/ActivityNotificationDetail$9;

    invoke-direct {v6, p0}, Lcom/app/tmyclean/activities/ActivityNotificationDetail$9;-><init>(Lcom/app/tmyclean/activities/ActivityNotificationDetail;)V

    invoke-virtual {v2, v4, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 359
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    .line 360
    .local v4, "alertDialog":Landroid/app/AlertDialog;
    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 362
    return-void

    .line 307
    .end local v0    # "layoutInflaterAndroid":Landroid/view/LayoutInflater;
    .end local v1    # "mView":Landroid/view/View;
    .end local v2    # "alert":Landroid/app/AlertDialog$Builder;
    .end local v3    # "edtQuantity":Landroid/widget/EditText;
    .end local v4    # "alertDialog":Landroid/app/AlertDialog;
    .end local v5    # "maxLength":I
    :catch_0
    move-exception v0

    .line 308
    .local v0, "sqle":Landroid/database/SQLException;
    throw v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 91
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 92
    const v0, 0x7f0b0022

    invoke-virtual {p0, v0}, Lcom/app/tmyclean/activities/ActivityNotificationDetail;->setContentView(I)V

    .line 100
    new-instance v0, Lcom/app/tmyclean/utilities/DBHelper;

    invoke-direct {v0, p0}, Lcom/app/tmyclean/utilities/DBHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/app/tmyclean/activities/ActivityNotificationDetail;->dbhelper:Lcom/app/tmyclean/utilities/DBHelper;

    .line 101
    invoke-virtual {p0}, Lcom/app/tmyclean/activities/ActivityNotificationDetail;->getData()V

    .line 102
    invoke-virtual {p0}, Lcom/app/tmyclean/activities/ActivityNotificationDetail;->initComponent()V

    .line 103
    invoke-virtual {p0}, Lcom/app/tmyclean/activities/ActivityNotificationDetail;->setupToolbar()V

    .line 104
    invoke-direct {p0}, Lcom/app/tmyclean/activities/ActivityNotificationDetail;->getTaxCurrency()V

    .line 105
    invoke-direct {p0}, Lcom/app/tmyclean/activities/ActivityNotificationDetail;->makeJsonObjectRequest()V

    .line 106
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

    .line 366
    invoke-virtual {p0}, Lcom/app/tmyclean/activities/ActivityNotificationDetail;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0c0003

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 367
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "menuItem"    # Landroid/view/MenuItem;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "menuItem"
        }
    .end annotation

    .line 372
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 389
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 385
    :sswitch_0
    invoke-virtual {p0}, Lcom/app/tmyclean/activities/ActivityNotificationDetail;->requestStoragePermission()V

    .line 386
    goto :goto_0

    .line 378
    :sswitch_1
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/app/tmyclean/activities/ActivityNotificationDetail;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/app/tmyclean/activities/ActivityCart;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 379
    .local v0, "intent":Landroid/content/Intent;
    iget-wide v1, p0, Lcom/app/tmyclean/activities/ActivityNotificationDetail;->resp_tax:D

    const-string v3, "tax"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    .line 380
    iget-object v1, p0, Lcom/app/tmyclean/activities/ActivityNotificationDetail;->resp_currency_code:Ljava/lang/String;

    const-string v2, "currency_code"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 381
    invoke-virtual {p0, v0}, Lcom/app/tmyclean/activities/ActivityNotificationDetail;->startActivity(Landroid/content/Intent;)V

    .line 382
    goto :goto_0

    .line 374
    .end local v0    # "intent":Landroid/content/Intent;
    :sswitch_2
    invoke-virtual {p0}, Lcom/app/tmyclean/activities/ActivityNotificationDetail;->onBackPressed()V

    .line 375
    nop

    .line 391
    :goto_0
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_2
        0x7f080059 -> :sswitch_1
        0x7f08010a -> :sswitch_0
    .end sparse-switch
.end method

.method public requestStoragePermission()V
    .locals 6

    .line 395
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const-string v2, "https://yapks.online/maid4u_888a/upload/product/"

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_1

    .line 396
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x17

    if-lt v1, v5, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1c

    if-gt v1, v5, :cond_0

    .line 397
    new-array v1, v4, [Ljava/lang/String;

    aput-object v0, v1, v3

    const/16 v0, 0x66

    invoke-virtual {p0, v1, v0}, Lcom/app/tmyclean/activities/ActivityNotificationDetail;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_0

    .line 399
    :cond_0
    new-instance v0, Lcom/app/tmyclean/activities/ActivityNotificationDetail$ShareTask;

    invoke-direct {v0, p0, p0}, Lcom/app/tmyclean/activities/ActivityNotificationDetail$ShareTask;-><init>(Lcom/app/tmyclean/activities/ActivityNotificationDetail;Landroid/content/Context;)V

    new-array v1, v4, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/app/tmyclean/activities/ActivityNotificationDetail;->product_image:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/app/tmyclean/activities/ActivityNotificationDetail$ShareTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 402
    :cond_1
    new-instance v0, Lcom/app/tmyclean/activities/ActivityNotificationDetail$ShareTask;

    invoke-direct {v0, p0, p0}, Lcom/app/tmyclean/activities/ActivityNotificationDetail$ShareTask;-><init>(Lcom/app/tmyclean/activities/ActivityNotificationDetail;Landroid/content/Context;)V

    new-array v1, v4, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/app/tmyclean/activities/ActivityNotificationDetail;->product_image:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/app/tmyclean/activities/ActivityNotificationDetail$ShareTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 404
    :goto_0
    return-void
.end method

.method public setupToolbar()V
    .locals 5

    .line 110
    const v0, 0x7f08013e

    invoke-virtual {p0, v0}, Lcom/app/tmyclean/activities/ActivityNotificationDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 111
    .local v0, "toolbar":Landroidx/appcompat/widget/Toolbar;
    invoke-virtual {p0, v0}, Lcom/app/tmyclean/activities/ActivityNotificationDetail;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 112
    invoke-virtual {p0}, Lcom/app/tmyclean/activities/ActivityNotificationDetail;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v1

    .line 113
    .local v1, "actionBar":Landroidx/appcompat/app/ActionBar;
    const/4 v2, 0x1

    const-string v3, ""

    if-eqz v1, :cond_0

    .line 114
    invoke-virtual {p0}, Lcom/app/tmyclean/activities/ActivityNotificationDetail;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 115
    invoke-virtual {p0}, Lcom/app/tmyclean/activities/ActivityNotificationDetail;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 118
    :cond_0
    const v4, 0x7f080069

    invoke-virtual {p0, v4}, Lcom/app/tmyclean/activities/ActivityNotificationDetail;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    iput-object v4, p0, Lcom/app/tmyclean/activities/ActivityNotificationDetail;->collapsingToolbarLayout:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    .line 119
    invoke-virtual {v4, v3}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setTitle(Ljava/lang/CharSequence;)V

    .line 120
    const v3, 0x7f080041

    invoke-virtual {p0, v3}, Lcom/app/tmyclean/activities/ActivityNotificationDetail;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/appbar/AppBarLayout;

    iput-object v3, p0, Lcom/app/tmyclean/activities/ActivityNotificationDetail;->appBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    .line 121
    invoke-virtual {v3, v2}, Lcom/google/android/material/appbar/AppBarLayout;->setExpanded(Z)V

    .line 123
    iget-object v2, p0, Lcom/app/tmyclean/activities/ActivityNotificationDetail;->appBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    new-instance v3, Lcom/app/tmyclean/activities/ActivityNotificationDetail$1;

    invoke-direct {v3, p0}, Lcom/app/tmyclean/activities/ActivityNotificationDetail$1;-><init>(Lcom/app/tmyclean/activities/ActivityNotificationDetail;)V

    invoke-virtual {v2, v3}, Lcom/google/android/material/appbar/AppBarLayout;->addOnOffsetChangedListener(Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;)V

    .line 141
    return-void
.end method
