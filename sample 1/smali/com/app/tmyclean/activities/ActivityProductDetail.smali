.class public Lcom/app/tmyclean/activities/ActivityProductDetail;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "ActivityProductDetail.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/app/tmyclean/activities/ActivityProductDetail$ShareTask;
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

.field private product_description:Ljava/lang/String;

.field product_id:J

.field private product_image:Ljava/lang/String;

.field private product_name:Ljava/lang/String;

.field private product_price:D

.field private product_quantity:I

.field private product_status:Ljava/lang/String;

.field resp_currency_code:Ljava/lang/String;

.field resp_tax:D

.field txt_product_description:Landroid/webkit/WebView;

.field txt_product_name:Landroid/widget/TextView;

.field txt_product_price:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 66
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 78
    iput-object p0, p0, Lcom/app/tmyclean/activities/ActivityProductDetail;->context:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/app/tmyclean/activities/ActivityProductDetail;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/app/tmyclean/activities/ActivityProductDetail;

    .line 66
    iget-object v0, p0, Lcom/app/tmyclean/activities/ActivityProductDetail;->category_name:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/app/tmyclean/activities/ActivityProductDetail;)Lcom/google/android/material/appbar/CollapsingToolbarLayout;
    .locals 1
    .param p0, "x0"    # Lcom/app/tmyclean/activities/ActivityProductDetail;

    .line 66
    iget-object v0, p0, Lcom/app/tmyclean/activities/ActivityProductDetail;->collapsingToolbarLayout:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    return-object v0
.end method

.method static synthetic access$200(Lcom/app/tmyclean/activities/ActivityProductDetail;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/app/tmyclean/activities/ActivityProductDetail;

    .line 66
    iget-object v0, p0, Lcom/app/tmyclean/activities/ActivityProductDetail;->product_image:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/app/tmyclean/activities/ActivityProductDetail;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/app/tmyclean/activities/ActivityProductDetail;

    .line 66
    iget-object v0, p0, Lcom/app/tmyclean/activities/ActivityProductDetail;->product_name:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/app/tmyclean/activities/ActivityProductDetail;)D
    .locals 2
    .param p0, "x0"    # Lcom/app/tmyclean/activities/ActivityProductDetail;

    .line 66
    iget-wide v0, p0, Lcom/app/tmyclean/activities/ActivityProductDetail;->product_price:D

    return-wide v0
.end method

.method static synthetic access$500(Lcom/app/tmyclean/activities/ActivityProductDetail;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/app/tmyclean/activities/ActivityProductDetail;

    .line 66
    iget-object v0, p0, Lcom/app/tmyclean/activities/ActivityProductDetail;->currency_code:Ljava/lang/String;

    return-object v0
.end method

.method private makeJsonObjectRequest()V
    .locals 7

    .line 309
    new-instance v6, Lcom/android/volley/toolbox/JsonObjectRequest;

    new-instance v4, Lcom/app/tmyclean/activities/ActivityProductDetail$4;

    invoke-direct {v4, p0}, Lcom/app/tmyclean/activities/ActivityProductDetail$4;-><init>(Lcom/app/tmyclean/activities/ActivityProductDetail;)V

    new-instance v5, Lcom/app/tmyclean/activities/ActivityProductDetail$5;

    invoke-direct {v5, p0}, Lcom/app/tmyclean/activities/ActivityProductDetail$5;-><init>(Lcom/app/tmyclean/activities/ActivityProductDetail;)V

    const/4 v1, 0x0

    const-string v2, "https://yapks.online/maid4u_888a/api/api.php?get_tax_currency"

    const/4 v3, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/volley/toolbox/JsonObjectRequest;-><init>(ILjava/lang/String;Lorg/json/JSONObject;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 330
    .local v0, "jsonObjReq":Lcom/android/volley/toolbox/JsonObjectRequest;
    invoke-static {}, Lcom/app/tmyclean/activities/MyApplication;->getInstance()Lcom/app/tmyclean/activities/MyApplication;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/app/tmyclean/activities/MyApplication;->addToRequestQueue(Lcom/android/volley/Request;)V

    .line 331
    return-void
.end method


# virtual methods
.method public displayData()V
    .locals 15

    .line 161
    iget-object v0, p0, Lcom/app/tmyclean/activities/ActivityProductDetail;->txt_product_name:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/app/tmyclean/activities/ActivityProductDetail;->product_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    invoke-static {p0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://yapks.online/maid4u_888a/upload/product/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/app/tmyclean/activities/ActivityProductDetail;->product_image:Ljava/lang/String;

    .line 164
    const-string v3, " "

    const-string v4, "%20"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    .line 165
    const v1, 0x7f070087

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    iget-object v1, p0, Lcom/app/tmyclean/activities/ActivityProductDetail;->img_product_image:Landroid/widget/ImageView;

    .line 166
    invoke-virtual {v0, v1}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 168
    iget-object v0, p0, Lcom/app/tmyclean/activities/ActivityProductDetail;->img_product_image:Landroid/widget/ImageView;

    new-instance v1, Lcom/app/tmyclean/activities/ActivityProductDetail$2;

    invoke-direct {v1, p0}, Lcom/app/tmyclean/activities/ActivityProductDetail$2;-><init>(Lcom/app/tmyclean/activities/ActivityProductDetail;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    iget-wide v2, p0, Lcom/app/tmyclean/activities/ActivityProductDetail;->product_price:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "%,.2f"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 182
    .local v1, "price":Ljava/lang/String;
    iget-object v2, p0, Lcom/app/tmyclean/activities/ActivityProductDetail;->txt_product_price:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/app/tmyclean/activities/ActivityProductDetail;->currency_code:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    iget-object v2, p0, Lcom/app/tmyclean/activities/ActivityProductDetail;->product_status:Ljava/lang/String;

    const-string v4, "Available"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 188
    iget-object v2, p0, Lcom/app/tmyclean/activities/ActivityProductDetail;->btn_cart:Landroid/widget/Button;

    const v4, 0x7f0f0020

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setText(I)V

    .line 189
    iget-object v2, p0, Lcom/app/tmyclean/activities/ActivityProductDetail;->btn_cart:Landroid/widget/Button;

    const v4, 0x7f05001a

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 190
    iget-object v2, p0, Lcom/app/tmyclean/activities/ActivityProductDetail;->btn_cart:Landroid/widget/Button;

    new-instance v4, Lcom/app/tmyclean/activities/ActivityProductDetail$3;

    invoke-direct {v4, p0}, Lcom/app/tmyclean/activities/ActivityProductDetail$3;-><init>(Lcom/app/tmyclean/activities/ActivityProductDetail;)V

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 197
    :cond_0
    iget-object v2, p0, Lcom/app/tmyclean/activities/ActivityProductDetail;->btn_cart:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 198
    iget-object v2, p0, Lcom/app/tmyclean/activities/ActivityProductDetail;->btn_cart:Landroid/widget/Button;

    const v4, 0x7f0f0024

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setText(I)V

    .line 199
    iget-object v2, p0, Lcom/app/tmyclean/activities/ActivityProductDetail;->btn_cart:Landroid/widget/Button;

    const v4, 0x7f050092

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 203
    :goto_0
    iget-object v2, p0, Lcom/app/tmyclean/activities/ActivityProductDetail;->txt_product_description:Landroid/webkit/WebView;

    const-string v4, "#ffffff"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 204
    iget-object v2, p0, Lcom/app/tmyclean/activities/ActivityProductDetail;->txt_product_description:Landroid/webkit/WebView;

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setFocusableInTouchMode(Z)V

    .line 205
    iget-object v2, p0, Lcom/app/tmyclean/activities/ActivityProductDetail;->txt_product_description:Landroid/webkit/WebView;

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setFocusable(Z)V

    .line 206
    iget-object v2, p0, Lcom/app/tmyclean/activities/ActivityProductDetail;->txt_product_description:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 208
    iget-object v2, p0, Lcom/app/tmyclean/activities/ActivityProductDetail;->txt_product_description:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    .line 209
    .local v2, "webSettings":Landroid/webkit/WebSettings;
    invoke-virtual {p0}, Lcom/app/tmyclean/activities/ActivityProductDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 210
    .local v3, "res":Landroid/content/res/Resources;
    const v4, 0x7f090008

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    .line 211
    .local v4, "fontSize":I
    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setDefaultFontSize(I)V

    .line 212
    invoke-virtual {v2, v0}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 214
    const-string v0, "text/html; charset=UTF-8"

    .line 215
    .local v0, "mimeType":Ljava/lang/String;
    const-string v11, "utf-8"

    .line 216
    .local v11, "encoding":Ljava/lang/String;
    iget-object v12, p0, Lcom/app/tmyclean/activities/ActivityProductDetail;->product_description:Ljava/lang/String;

    .line 218
    .local v12, "htmlText":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<html><head><style type=\"text/css\">body{color: #525252;}</style></head><body>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "</body></html>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 225
    .local v13, "text":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "<html dir=\'rtl\'><head><style type=\"text/css\">body{color: #525252;}</style></head><body>"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 235
    .local v14, "text_rtl":Ljava/lang/String;
    iget-object v5, p0, Lcom/app/tmyclean/activities/ActivityProductDetail;->txt_product_description:Landroid/webkit/WebView;

    const/4 v6, 0x0

    const/4 v10, 0x0

    move-object v7, v13

    move-object v8, v0

    move-object v9, v11

    invoke-virtual/range {v5 .. v10}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    return-void
.end method

.method public getData()V
    .locals 4

    .line 139
    invoke-virtual {p0}, Lcom/app/tmyclean/activities/ActivityProductDetail;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 140
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "product_id"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/app/tmyclean/activities/ActivityProductDetail;->product_id:J

    .line 141
    const-string v1, "title"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/app/tmyclean/activities/ActivityProductDetail;->product_name:Ljava/lang/String;

    .line 142
    const-string v1, "image"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/app/tmyclean/activities/ActivityProductDetail;->product_image:Ljava/lang/String;

    .line 143
    const-string v1, "product_price"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v1

    iput-wide v1, p0, Lcom/app/tmyclean/activities/ActivityProductDetail;->product_price:D

    .line 144
    const-string v1, "product_description"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/app/tmyclean/activities/ActivityProductDetail;->product_description:Ljava/lang/String;

    .line 145
    const-string v1, "product_quantity"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/app/tmyclean/activities/ActivityProductDetail;->product_quantity:I

    .line 146
    const-string v1, "product_status"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/app/tmyclean/activities/ActivityProductDetail;->product_status:Ljava/lang/String;

    .line 147
    const-string v1, "currency_code"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/app/tmyclean/activities/ActivityProductDetail;->currency_code:Ljava/lang/String;

    .line 148
    const-string v1, "category_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/app/tmyclean/activities/ActivityProductDetail;->category_name:Ljava/lang/String;

    .line 149
    return-void
.end method

.method public initComponent()V
    .locals 1

    .line 152
    const v0, 0x7f0800e5

    invoke-virtual {p0, v0}, Lcom/app/tmyclean/activities/ActivityProductDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/app/tmyclean/activities/ActivityProductDetail;->txt_product_name:Landroid/widget/TextView;

    .line 153
    const v0, 0x7f0800e4

    invoke-virtual {p0, v0}, Lcom/app/tmyclean/activities/ActivityProductDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/app/tmyclean/activities/ActivityProductDetail;->img_product_image:Landroid/widget/ImageView;

    .line 154
    const v0, 0x7f0800e6

    invoke-virtual {p0, v0}, Lcom/app/tmyclean/activities/ActivityProductDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/app/tmyclean/activities/ActivityProductDetail;->txt_product_price:Landroid/widget/TextView;

    .line 155
    const v0, 0x7f0800e3

    invoke-virtual {p0, v0}, Lcom/app/tmyclean/activities/ActivityProductDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/app/tmyclean/activities/ActivityProductDetail;->txt_product_description:Landroid/webkit/WebView;

    .line 157
    const v0, 0x7f08004f

    invoke-virtual {p0, v0}, Lcom/app/tmyclean/activities/ActivityProductDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/app/tmyclean/activities/ActivityProductDetail;->btn_cart:Landroid/widget/Button;

    .line 158
    return-void
.end method

.method public inputDialog()V
    .locals 19

    move-object/from16 v1, p0

    .line 243
    :try_start_0
    sget-object v0, Lcom/app/tmyclean/activities/ActivityProductDetail;->dbhelper:Lcom/app/tmyclean/utilities/DBHelper;

    invoke-virtual {v0}, Lcom/app/tmyclean/utilities/DBHelper;->openDataBase()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 246
    nop

    .line 248
    iget-object v0, v1, Lcom/app/tmyclean/activities/ActivityProductDetail;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 250
    .local v0, "layoutInflaterAndroid":Landroid/view/LayoutInflater;
    const v2, 0x7f0b003e

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 252
    .local v2, "mView":Landroid/view/View;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, v1, Lcom/app/tmyclean/activities/ActivityProductDetail;->context:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 255
    .local v3, "alert":Landroid/app/AlertDialog$Builder;
    const v4, 0x7f080155

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    .line 257
    .local v4, "edtQuantity":Landroid/widget/EditText;
    const/4 v5, 0x1

    .line 258
    .local v5, "maxLength":I
    const/4 v6, 0x1

    new-array v6, v6, [Landroid/text/InputFilter;

    new-instance v7, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v7, v5}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-virtual {v4, v6}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 259
    const/4 v6, 0x2

    invoke-virtual {v4, v6}, Landroid/widget/EditText;->setInputType(I)V

    .line 263
    const-string v6, "1"

    .line 264
    .local v6, "temp":Ljava/lang/String;
    const/4 v7, 0x0

    .line 266
    .local v7, "quantity":I
    const-string v9, ""

    invoke-virtual {v6, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 268
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 270
    if-gtz v7, :cond_0

    .line 271
    invoke-virtual/range {p0 .. p0}, Lcom/app/tmyclean/activities/ActivityProductDetail;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f0f0076

    invoke-static {v9, v10, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 272
    :cond_0
    iget v9, v1, Lcom/app/tmyclean/activities/ActivityProductDetail;->product_quantity:I

    if-le v7, v9, :cond_1

    .line 273
    invoke-virtual/range {p0 .. p0}, Lcom/app/tmyclean/activities/ActivityProductDetail;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f0f0077

    invoke-static {v9, v10, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 277
    :cond_1
    sget-object v8, Lcom/app/tmyclean/activities/ActivityProductDetail;->dbhelper:Lcom/app/tmyclean/utilities/DBHelper;

    iget-wide v9, v1, Lcom/app/tmyclean/activities/ActivityProductDetail;->product_id:J

    invoke-virtual {v8, v9, v10}, Lcom/app/tmyclean/utilities/DBHelper;->isDataExist(J)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 278
    sget-object v10, Lcom/app/tmyclean/activities/ActivityProductDetail;->dbhelper:Lcom/app/tmyclean/utilities/DBHelper;

    iget-wide v11, v1, Lcom/app/tmyclean/activities/ActivityProductDetail;->product_id:J

    iget-wide v8, v1, Lcom/app/tmyclean/activities/ActivityProductDetail;->product_price:D

    int-to-double v13, v7

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v14, v8, v13

    move v13, v7

    invoke-virtual/range {v10 .. v15}, Lcom/app/tmyclean/utilities/DBHelper;->updateData(JID)V

    goto :goto_0

    .line 280
    :cond_2
    sget-object v10, Lcom/app/tmyclean/activities/ActivityProductDetail;->dbhelper:Lcom/app/tmyclean/utilities/DBHelper;

    iget-wide v11, v1, Lcom/app/tmyclean/activities/ActivityProductDetail;->product_id:J

    iget-object v13, v1, Lcom/app/tmyclean/activities/ActivityProductDetail;->product_name:Ljava/lang/String;

    iget-wide v8, v1, Lcom/app/tmyclean/activities/ActivityProductDetail;->product_price:D

    int-to-double v14, v7

    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v15, v8, v14

    iget-object v8, v1, Lcom/app/tmyclean/activities/ActivityProductDetail;->currency_code:Ljava/lang/String;

    iget-object v9, v1, Lcom/app/tmyclean/activities/ActivityProductDetail;->product_image:Ljava/lang/String;

    move v14, v7

    move-object/from16 v17, v8

    move-object/from16 v18, v9

    invoke-virtual/range {v10 .. v18}, Lcom/app/tmyclean/utilities/DBHelper;->addData(JLjava/lang/String;IDLjava/lang/String;Ljava/lang/String;)V

    .line 284
    :goto_0
    new-instance v8, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/app/tmyclean/activities/ActivityProductDetail;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    const-class v10, Lcom/app/tmyclean/activities/ActivityCart;

    invoke-direct {v8, v9, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 285
    .local v8, "intent":Landroid/content/Intent;
    iget-wide v9, v1, Lcom/app/tmyclean/activities/ActivityProductDetail;->resp_tax:D

    const-string v11, "tax"

    invoke-virtual {v8, v11, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    .line 286
    iget-object v9, v1, Lcom/app/tmyclean/activities/ActivityProductDetail;->currency_code:Ljava/lang/String;

    const-string v10, "currency_code"

    invoke-virtual {v8, v10, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 287
    invoke-virtual {v1, v8}, Lcom/app/tmyclean/activities/ActivityProductDetail;->startActivity(Landroid/content/Intent;)V

    .line 306
    .end local v8    # "intent":Landroid/content/Intent;
    :cond_3
    :goto_1
    return-void

    .line 244
    .end local v0    # "layoutInflaterAndroid":Landroid/view/LayoutInflater;
    .end local v2    # "mView":Landroid/view/View;
    .end local v3    # "alert":Landroid/app/AlertDialog$Builder;
    .end local v4    # "edtQuantity":Landroid/widget/EditText;
    .end local v5    # "maxLength":I
    .end local v6    # "temp":Ljava/lang/String;
    .end local v7    # "quantity":I
    :catch_0
    move-exception v0

    .line 245
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

    .line 86
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 87
    const v0, 0x7f0b0025

    invoke-virtual {p0, v0}, Lcom/app/tmyclean/activities/ActivityProductDetail;->setContentView(I)V

    .line 95
    new-instance v0, Lcom/app/tmyclean/utilities/DBHelper;

    invoke-direct {v0, p0}, Lcom/app/tmyclean/utilities/DBHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/app/tmyclean/activities/ActivityProductDetail;->dbhelper:Lcom/app/tmyclean/utilities/DBHelper;

    .line 96
    invoke-virtual {p0}, Lcom/app/tmyclean/activities/ActivityProductDetail;->getData()V

    .line 97
    invoke-virtual {p0}, Lcom/app/tmyclean/activities/ActivityProductDetail;->initComponent()V

    .line 98
    invoke-virtual {p0}, Lcom/app/tmyclean/activities/ActivityProductDetail;->displayData()V

    .line 99
    invoke-virtual {p0}, Lcom/app/tmyclean/activities/ActivityProductDetail;->setupToolbar()V

    .line 100
    invoke-direct {p0}, Lcom/app/tmyclean/activities/ActivityProductDetail;->makeJsonObjectRequest()V

    .line 101
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

    .line 335
    invoke-virtual {p0}, Lcom/app/tmyclean/activities/ActivityProductDetail;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0c0003

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 336
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

    .line 341
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 358
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 354
    :sswitch_0
    invoke-virtual {p0}, Lcom/app/tmyclean/activities/ActivityProductDetail;->requestStoragePermission()V

    .line 355
    goto :goto_0

    .line 347
    :sswitch_1
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/app/tmyclean/activities/ActivityProductDetail;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/app/tmyclean/activities/ActivityCart;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 348
    .local v0, "intent":Landroid/content/Intent;
    iget-wide v1, p0, Lcom/app/tmyclean/activities/ActivityProductDetail;->resp_tax:D

    const-string v3, "tax"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    .line 349
    iget-object v1, p0, Lcom/app/tmyclean/activities/ActivityProductDetail;->resp_currency_code:Ljava/lang/String;

    const-string v2, "currency_code"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 350
    invoke-virtual {p0, v0}, Lcom/app/tmyclean/activities/ActivityProductDetail;->startActivity(Landroid/content/Intent;)V

    .line 351
    goto :goto_0

    .line 343
    .end local v0    # "intent":Landroid/content/Intent;
    :sswitch_2
    invoke-virtual {p0}, Lcom/app/tmyclean/activities/ActivityProductDetail;->onBackPressed()V

    .line 344
    nop

    .line 360
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

    .line 364
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const-string v2, "https://yapks.online/maid4u_888a/upload/product/"

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_1

    .line 365
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x17

    if-lt v1, v5, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1c

    if-gt v1, v5, :cond_0

    .line 366
    new-array v1, v4, [Ljava/lang/String;

    aput-object v0, v1, v3

    const/16 v0, 0x66

    invoke-virtual {p0, v1, v0}, Lcom/app/tmyclean/activities/ActivityProductDetail;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_0

    .line 368
    :cond_0
    new-instance v0, Lcom/app/tmyclean/activities/ActivityProductDetail$ShareTask;

    invoke-direct {v0, p0, p0}, Lcom/app/tmyclean/activities/ActivityProductDetail$ShareTask;-><init>(Lcom/app/tmyclean/activities/ActivityProductDetail;Landroid/content/Context;)V

    new-array v1, v4, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/app/tmyclean/activities/ActivityProductDetail;->product_image:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/app/tmyclean/activities/ActivityProductDetail$ShareTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 371
    :cond_1
    new-instance v0, Lcom/app/tmyclean/activities/ActivityProductDetail$ShareTask;

    invoke-direct {v0, p0, p0}, Lcom/app/tmyclean/activities/ActivityProductDetail$ShareTask;-><init>(Lcom/app/tmyclean/activities/ActivityProductDetail;Landroid/content/Context;)V

    new-array v1, v4, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/app/tmyclean/activities/ActivityProductDetail;->product_image:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/app/tmyclean/activities/ActivityProductDetail$ShareTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 373
    :goto_0
    return-void
.end method

.method public setupToolbar()V
    .locals 5

    .line 105
    const v0, 0x7f08013e

    invoke-virtual {p0, v0}, Lcom/app/tmyclean/activities/ActivityProductDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 106
    .local v0, "toolbar":Landroidx/appcompat/widget/Toolbar;
    invoke-virtual {p0, v0}, Lcom/app/tmyclean/activities/ActivityProductDetail;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 107
    invoke-virtual {p0}, Lcom/app/tmyclean/activities/ActivityProductDetail;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v1

    .line 108
    .local v1, "actionBar":Landroidx/appcompat/app/ActionBar;
    const/4 v2, 0x1

    const-string v3, ""

    if-eqz v1, :cond_0

    .line 109
    invoke-virtual {p0}, Lcom/app/tmyclean/activities/ActivityProductDetail;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 110
    invoke-virtual {p0}, Lcom/app/tmyclean/activities/ActivityProductDetail;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 113
    :cond_0
    const v4, 0x7f080069

    invoke-virtual {p0, v4}, Lcom/app/tmyclean/activities/ActivityProductDetail;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    iput-object v4, p0, Lcom/app/tmyclean/activities/ActivityProductDetail;->collapsingToolbarLayout:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    .line 114
    invoke-virtual {v4, v3}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setTitle(Ljava/lang/CharSequence;)V

    .line 115
    const v3, 0x7f080041

    invoke-virtual {p0, v3}, Lcom/app/tmyclean/activities/ActivityProductDetail;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/appbar/AppBarLayout;

    iput-object v3, p0, Lcom/app/tmyclean/activities/ActivityProductDetail;->appBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    .line 116
    invoke-virtual {v3, v2}, Lcom/google/android/material/appbar/AppBarLayout;->setExpanded(Z)V

    .line 118
    iget-object v2, p0, Lcom/app/tmyclean/activities/ActivityProductDetail;->appBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    new-instance v3, Lcom/app/tmyclean/activities/ActivityProductDetail$1;

    invoke-direct {v3, p0}, Lcom/app/tmyclean/activities/ActivityProductDetail$1;-><init>(Lcom/app/tmyclean/activities/ActivityProductDetail;)V

    invoke-virtual {v2, v3}, Lcom/google/android/material/appbar/AppBarLayout;->addOnOffsetChangedListener(Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;)V

    .line 136
    return-void
.end method
