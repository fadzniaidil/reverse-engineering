.class public Lcom/app/tmyclean/activities/ActivityCheckout;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "ActivityCheckout.java"


# static fields
.field private static final ALLOWED_CHARACTERS:Ljava/lang/String; = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ"


# instance fields
.field Result:Ljava/lang/String;

.field private arrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field btn_submit_order:Landroid/widget/Button;

.field btn_submit_voucher:Landroid/widget/Button;

.field data:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field data_order_list:Ljava/lang/String;

.field date:Ljava/lang/String;

.field dateFormat:Ljava/text/SimpleDateFormat;

.field datePicker:Landroid/app/DatePickerDialog;

.field dbhelper:Lcom/app/tmyclean/utilities/DBHelper;

.field editDate:Landroid/widget/EditText;

.field editTime:Landroid/widget/EditText;

.field edt_address:Landroid/widget/EditText;

.field edt_comment:Landroid/widget/EditText;

.field edt_date:Landroid/widget/EditText;

.field edt_email:Landroid/widget/EditText;

.field edt_name:Landroid/widget/EditText;

.field edt_order_list:Landroid/widget/EditText;

.field edt_order_total:Landroid/widget/EditText;

.field edt_phone:Landroid/widget/EditText;

.field edt_shipping:Landroid/widget/EditText;

.field edt_time:Landroid/widget/EditText;

.field progressDialog:Landroid/app/ProgressDialog;

.field private rand:Ljava/lang/String;

.field requestQueue:Lcom/android/volley/RequestQueue;

.field resp_voucher:Ljava/lang/String;

.field private result:Lorg/json/JSONArray;

.field sharedPref:Lcom/app/tmyclean/utilities/SharedPref;

.field private spinner:Landroid/widget/Spinner;

.field str_address:Ljava/lang/String;

.field str_comment:Ljava/lang/String;

.field str_currency_code:Ljava/lang/String;

.field str_date:Ljava/lang/String;

.field str_email:Ljava/lang/String;

.field str_name:Ljava/lang/String;

.field str_order_list:Ljava/lang/String;

.field str_order_total:Ljava/lang/String;

.field str_phone:Ljava/lang/String;

.field str_shipping:Ljava/lang/String;

.field str_sid:Ljava/lang/String;

.field str_tax:D

.field str_time:Ljava/lang/String;

.field view:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 57
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 63
    const-string v0, ""

    iput-object v0, p0, Lcom/app/tmyclean/activities/ActivityCheckout;->data_order_list:Ljava/lang/String;

    .line 71
    const/16 v0, 0x9

    invoke-static {v0}, Lcom/app/tmyclean/activities/ActivityCheckout;->getRandomString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/app/tmyclean/activities/ActivityCheckout;->rand:Ljava/lang/String;

    .line 72
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/app/tmyclean/activities/ActivityCheckout;->dateFormat:Ljava/text/SimpleDateFormat;

    .line 73
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/app/tmyclean/activities/ActivityCheckout;->date:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/app/tmyclean/activities/ActivityCheckout;)Lorg/json/JSONArray;
    .locals 1
    .param p0, "x0"    # Lcom/app/tmyclean/activities/ActivityCheckout;

    .line 57
    iget-object v0, p0, Lcom/app/tmyclean/activities/ActivityCheckout;->result:Lorg/json/JSONArray;

    return-object v0
.end method

.method static synthetic access$002(Lcom/app/tmyclean/activities/ActivityCheckout;Lorg/json/JSONArray;)Lorg/json/JSONArray;
    .locals 0
    .param p0, "x0"    # Lcom/app/tmyclean/activities/ActivityCheckout;
    .param p1, "x1"    # Lorg/json/JSONArray;

    .line 57
    iput-object p1, p0, Lcom/app/tmyclean/activities/ActivityCheckout;->result:Lorg/json/JSONArray;

    return-object p1
.end method

.method static synthetic access$100(Lcom/app/tmyclean/activities/ActivityCheckout;Lorg/json/JSONArray;)V
    .locals 0
    .param p0, "x0"    # Lcom/app/tmyclean/activities/ActivityCheckout;
    .param p1, "x1"    # Lorg/json/JSONArray;

    .line 57
    invoke-direct {p0, p1}, Lcom/app/tmyclean/activities/ActivityCheckout;->getShipping(Lorg/json/JSONArray;)V

    return-void
.end method

.method static synthetic access$200(Lcom/app/tmyclean/activities/ActivityCheckout;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/app/tmyclean/activities/ActivityCheckout;
    .param p1, "x1"    # I

    .line 57
    invoke-direct {p0, p1}, Lcom/app/tmyclean/activities/ActivityCheckout;->setShipping(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/app/tmyclean/activities/ActivityCheckout;)Landroid/widget/Spinner;
    .locals 1
    .param p0, "x0"    # Lcom/app/tmyclean/activities/ActivityCheckout;

    .line 57
    iget-object v0, p0, Lcom/app/tmyclean/activities/ActivityCheckout;->spinner:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$400(Lcom/app/tmyclean/activities/ActivityCheckout;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/app/tmyclean/activities/ActivityCheckout;

    .line 57
    iget-object v0, p0, Lcom/app/tmyclean/activities/ActivityCheckout;->rand:Ljava/lang/String;

    return-object v0
.end method

.method private static getRandomString(I)Ljava/lang/String;
    .locals 5
    .param p0, "sizeOfRandomString"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "sizeOfRandomString"
        }
    .end annotation

    .line 580
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 581
    .local v0, "random":Ljava/util/Random;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 582
    .local v1, "stringBuilder":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p0, :cond_0

    .line 583
    const-string v3, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 582
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 584
    .end local v2    # "i":I
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getShipping(Lorg/json/JSONArray;)V
    .locals 4
    .param p1, "jsonArray"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "jsonArray"
        }
    .end annotation

    .line 252
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 254
    :try_start_0
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 255
    .local v1, "json":Lorg/json/JSONObject;
    iget-object v2, p0, Lcom/app/tmyclean/activities/ActivityCheckout;->arrayList:Ljava/util/ArrayList;

    const-string v3, "shipping_name"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 258
    nop

    .end local v1    # "json":Lorg/json/JSONObject;
    goto :goto_1

    .line 256
    :catch_0
    move-exception v1

    .line 257
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 252
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 261
    .end local v0    # "i":I
    :cond_0
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x7f0b0052

    iget-object v2, p0, Lcom/app/tmyclean/activities/ActivityCheckout;->arrayList:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 262
    .local v0, "myAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v1, 0x7f0b0051

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 263
    iget-object v1, p0, Lcom/app/tmyclean/activities/ActivityCheckout;->spinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 264
    return-void
.end method

.method private getSpinnerData()V
    .locals 4

    .line 210
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/app/tmyclean/activities/ActivityCheckout;->arrayList:Ljava/util/ArrayList;

    .line 211
    const v0, 0x7f080119

    invoke-virtual {p0, v0}, Lcom/app/tmyclean/activities/ActivityCheckout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/app/tmyclean/activities/ActivityCheckout;->spinner:Landroid/widget/Spinner;

    .line 213
    new-instance v0, Lcom/android/volley/toolbox/StringRequest;

    new-instance v1, Lcom/app/tmyclean/activities/ActivityCheckout$3;

    invoke-direct {v1, p0}, Lcom/app/tmyclean/activities/ActivityCheckout$3;-><init>(Lcom/app/tmyclean/activities/ActivityCheckout;)V

    new-instance v2, Lcom/app/tmyclean/activities/ActivityCheckout$4;

    invoke-direct {v2, p0}, Lcom/app/tmyclean/activities/ActivityCheckout$4;-><init>(Lcom/app/tmyclean/activities/ActivityCheckout;)V

    const-string v3, "https://yapks.online/maid4u_888a/api/api.php?get_shipping"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/volley/toolbox/StringRequest;-><init>(Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 246
    .local v0, "stringRequest":Lcom/android/volley/toolbox/StringRequest;
    invoke-static {p0}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;)Lcom/android/volley/RequestQueue;

    move-result-object v1

    .line 247
    .local v1, "requestQueue":Lcom/android/volley/RequestQueue;
    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 249
    return-void
.end method

.method private setShipping(I)Ljava/lang/String;
    .locals 3
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 267
    const-string v0, ""

    .line 269
    .local v0, "name":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Lcom/app/tmyclean/activities/ActivityCheckout;->result:Lorg/json/JSONArray;

    invoke-virtual {v1, p1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 270
    .local v1, "json":Lorg/json/JSONObject;
    const-string v2, "shipping_name"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 273
    .end local v1    # "json":Lorg/json/JSONObject;
    goto :goto_0

    .line 271
    :catch_0
    move-exception v1

    .line 272
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 274
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_0
    return-object v0
.end method


# virtual methods
.method public dialogSuccessOrder()V
    .locals 3

    .line 561
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 562
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0f0036

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 563
    const v1, 0x7f0f0035

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 564
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 565
    new-instance v1, Lcom/app/tmyclean/activities/ActivityCheckout$10;

    invoke-direct {v1, p0}, Lcom/app/tmyclean/activities/ActivityCheckout$10;-><init>(Lcom/app/tmyclean/activities/ActivityCheckout;)V

    const v2, 0x7f0f002f

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 575
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 576
    .local v1, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 577
    return-void
.end method

.method public getDataFromDatabase()V
    .locals 21

    .line 495
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/app/tmyclean/activities/ActivityCheckout;->dbhelper:Lcom/app/tmyclean/utilities/DBHelper;

    invoke-virtual {v1}, Lcom/app/tmyclean/utilities/DBHelper;->getAllData()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/app/tmyclean/activities/ActivityCheckout;->data:Ljava/util/ArrayList;

    .line 496
    const-string v1, ""

    iput-object v1, v0, Lcom/app/tmyclean/activities/ActivityCheckout;->data_order_list:Ljava/lang/String;

    .line 497
    const-wide/16 v2, 0x0

    .line 498
    .local v2, "Order_price":D
    const-wide/16 v4, 0x0

    .line 499
    .local v4, "Total_price":D
    const-wide/16 v6, 0x0

    .line 500
    .local v6, "Total_deposit":D
    const-wide/16 v8, 0x0

    .line 502
    .local v8, "tax":D
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    iget-object v11, v0, Lcom/app/tmyclean/activities/ActivityCheckout;->data:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    const-string v13, "%,.2f"

    const/4 v14, 0x1

    if-ge v10, v11, :cond_0

    .line 503
    iget-object v11, v0, Lcom/app/tmyclean/activities/ActivityCheckout;->data:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/ArrayList;

    .line 505
    .local v11, "row":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    .line 506
    .local v15, "Menu_name":Ljava/lang/String;
    const/4 v12, 0x2

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    .line 508
    .local v12, "Quantity":Ljava/lang/String;
    const/4 v14, 0x3

    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v18

    .line 510
    .local v18, "Sub_total_price":D
    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v17

    const/16 v16, 0x0

    aput-object v17, v14, v16

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 512
    .local v13, "_Sub_total_price":Ljava/lang/String;
    add-double v2, v2, v18

    .line 517
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v16, v2

    .end local v2    # "Order_price":D
    .local v16, "Order_price":D
    iget-object v2, v0, Lcom/app/tmyclean/activities/ActivityCheckout;->data_order_list:Ljava/lang/String;

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " X "

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " : "

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/app/tmyclean/activities/ActivityCheckout;->str_currency_code:Ljava/lang/String;

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",\n"

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/app/tmyclean/activities/ActivityCheckout;->data_order_list:Ljava/lang/String;

    .line 502
    .end local v11    # "row":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .end local v12    # "Quantity":Ljava/lang/String;
    .end local v13    # "_Sub_total_price":Ljava/lang/String;
    .end local v15    # "Menu_name":Ljava/lang/String;
    .end local v18    # "Sub_total_price":D
    add-int/lit8 v10, v10, 0x1

    move-wide/from16 v2, v16

    goto :goto_0

    .line 521
    .end local v10    # "i":I
    .end local v16    # "Order_price":D
    .restart local v2    # "Order_price":D
    :cond_0
    iget-object v10, v0, Lcom/app/tmyclean/activities/ActivityCheckout;->data_order_list:Ljava/lang/String;

    invoke-virtual {v10, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 522
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v0, Lcom/app/tmyclean/activities/ActivityCheckout;->data_order_list:Ljava/lang/String;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v10, 0x7f0f007c

    invoke-virtual {v0, v10}, Lcom/app/tmyclean/activities/ActivityCheckout;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/app/tmyclean/activities/ActivityCheckout;->data_order_list:Ljava/lang/String;

    .line 525
    :cond_1
    iget-wide v10, v0, Lcom/app/tmyclean/activities/ActivityCheckout;->str_tax:D

    const-wide/high16 v14, 0x4059000000000000L    # 100.0

    div-double v14, v10, v14

    mul-double v14, v14, v2

    .line 526
    .end local v8    # "tax":D
    .local v14, "tax":D
    add-double v4, v2, v14

    .line 527
    const-wide v8, 0x3fb999999999999aL    # 0.1

    mul-double v8, v8, v4

    .line 529
    .end local v6    # "Total_deposit":D
    .local v8, "Total_deposit":D
    const/4 v1, 0x1

    new-array v6, v1, [Ljava/lang/Object;

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    const/4 v10, 0x0

    aput-object v7, v6, v10

    invoke-static {v13, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 530
    .local v6, "price_tax":Ljava/lang/String;
    new-array v7, v1, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    aput-object v11, v7, v10

    invoke-static {v13, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 531
    .local v7, "_Order_price":Ljava/lang/String;
    new-array v11, v1, [Ljava/lang/Object;

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    div-double v16, v2, v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    aput-object v12, v11, v10

    invoke-static {v13, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 532
    .local v11, "_Sale_price":Ljava/lang/String;
    new-array v12, v1, [Ljava/lang/Object;

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v16

    aput-object v16, v12, v10

    invoke-static {v13, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 533
    .local v12, "_tax":Ljava/lang/String;
    move-wide/from16 v16, v2

    .end local v2    # "Order_price":D
    .restart local v16    # "Order_price":D
    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v10

    invoke-static {v13, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 534
    .local v2, "_Total_price":Ljava/lang/String;
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v10

    invoke-static {v13, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 548
    .local v1, "_Total_deposit":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v0, Lcom/app/tmyclean/activities/ActivityCheckout;->data_order_list:Ljava/lang/String;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "\n"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/app/tmyclean/activities/ActivityCheckout;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    move-object/from16 v18, v1

    .end local v1    # "_Total_deposit":Ljava/lang/String;
    .local v18, "_Total_deposit":Ljava/lang/String;
    const v1, 0x7f0f00a4

    invoke-virtual {v13, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v0, Lcom/app/tmyclean/activities/ActivityCheckout;->str_currency_code:Ljava/lang/String;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 550
    invoke-virtual/range {p0 .. p0}, Lcom/app/tmyclean/activities/ActivityCheckout;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    move-wide/from16 v19, v4

    .end local v4    # "Total_price":D
    .local v19, "Total_price":D
    const v4, 0x7f0f00aa

    invoke-virtual {v13, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " %) : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/app/tmyclean/activities/ActivityCheckout;->str_currency_code:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 551
    invoke-virtual/range {p0 .. p0}, Lcom/app/tmyclean/activities/ActivityCheckout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0f00ab

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/app/tmyclean/activities/ActivityCheckout;->str_currency_code:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "Deposit: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/app/tmyclean/activities/ActivityCheckout;->str_currency_code:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "10.00"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/app/tmyclean/activities/ActivityCheckout;->data_order_list:Ljava/lang/String;

    .line 554
    iget-object v1, v0, Lcom/app/tmyclean/activities/ActivityCheckout;->edt_order_total:Landroid/widget/EditText;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Lcom/app/tmyclean/activities/ActivityCheckout;->str_currency_code:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 556
    iget-object v1, v0, Lcom/app/tmyclean/activities/ActivityCheckout;->edt_order_list:Landroid/widget/EditText;

    iget-object v3, v0, Lcom/app/tmyclean/activities/ActivityCheckout;->data_order_list:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 558
    return-void
.end method

.method public getDataFromDatabase2()V
    .locals 18

    .line 430
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/app/tmyclean/activities/ActivityCheckout;->dbhelper:Lcom/app/tmyclean/utilities/DBHelper;

    invoke-virtual {v1}, Lcom/app/tmyclean/utilities/DBHelper;->getAllData()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/app/tmyclean/activities/ActivityCheckout;->data:Ljava/util/ArrayList;

    .line 432
    const-wide/16 v1, 0x0

    .line 433
    .local v1, "Order_price":D
    const-wide/16 v3, 0x0

    .line 434
    .local v3, "Total_price":D
    const-wide/16 v5, 0x0

    .line 436
    .local v5, "tax":D
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    iget-object v8, v0, Lcom/app/tmyclean/activities/ActivityCheckout;->data:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x0

    const-string v10, "%,.2f"

    const/4 v11, 0x1

    if-ge v7, v8, :cond_0

    .line 437
    iget-object v8, v0, Lcom/app/tmyclean/activities/ActivityCheckout;->data:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    .line 439
    .local v8, "row":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    .line 440
    .local v12, "Menu_name":Ljava/lang/String;
    const/4 v13, 0x2

    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    .line 442
    .local v13, "Quantity":Ljava/lang/String;
    const/4 v14, 0x3

    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v14

    .line 444
    .local v14, "Sub_total_price":D
    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v16

    aput-object v16, v11, v9

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 446
    .local v9, "_Sub_total_price":Ljava/lang/String;
    add-double/2addr v1, v14

    .line 451
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v0, Lcom/app/tmyclean/activities/ActivityCheckout;->data_order_list:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " X "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v0, Lcom/app/tmyclean/activities/ActivityCheckout;->str_currency_code:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ",\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Lcom/app/tmyclean/activities/ActivityCheckout;->data_order_list:Ljava/lang/String;

    .line 436
    .end local v8    # "row":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .end local v9    # "_Sub_total_price":Ljava/lang/String;
    .end local v12    # "Menu_name":Ljava/lang/String;
    .end local v13    # "Quantity":Ljava/lang/String;
    .end local v14    # "Sub_total_price":D
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 455
    .end local v7    # "i":I
    :cond_0
    iget-object v7, v0, Lcom/app/tmyclean/activities/ActivityCheckout;->data_order_list:Ljava/lang/String;

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 456
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v0, Lcom/app/tmyclean/activities/ActivityCheckout;->data_order_list:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v8, 0x7f0f007c

    invoke-virtual {v0, v8}, Lcom/app/tmyclean/activities/ActivityCheckout;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/app/tmyclean/activities/ActivityCheckout;->data_order_list:Ljava/lang/String;

    .line 459
    :cond_1
    iget-wide v7, v0, Lcom/app/tmyclean/activities/ActivityCheckout;->str_tax:D

    const-wide/high16 v12, 0x4059000000000000L    # 100.0

    div-double v12, v7, v12

    mul-double v12, v12, v1

    .line 460
    .end local v5    # "tax":D
    .local v12, "tax":D
    add-double v3, v1, v12

    .line 462
    new-array v5, v11, [Ljava/lang/Object;

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v10, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 463
    .local v5, "price_tax":Ljava/lang/String;
    new-array v6, v11, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v10, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 464
    .local v6, "_Order_price":Ljava/lang/String;
    new-array v7, v11, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v10, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 465
    .local v7, "_Sale_price":Ljava/lang/String;
    new-array v8, v11, [Ljava/lang/Object;

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v14

    aput-object v14, v8, v9

    invoke-static {v10, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 466
    .local v8, "_tax":Ljava/lang/String;
    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v14

    aput-object v14, v11, v9

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 480
    .local v9, "_Total_price":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v0, Lcom/app/tmyclean/activities/ActivityCheckout;->data_order_list:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/app/tmyclean/activities/ActivityCheckout;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0f00a4

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " "

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v0, Lcom/app/tmyclean/activities/ActivityCheckout;->str_currency_code:Ljava/lang/String;

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 482
    invoke-virtual/range {p0 .. p0}, Lcom/app/tmyclean/activities/ActivityCheckout;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    move-wide/from16 v16, v1

    .end local v1    # "Order_price":D
    .local v16, "Order_price":D
    const v1, 0x7f0f00aa

    invoke-virtual {v15, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " %) : "

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/app/tmyclean/activities/ActivityCheckout;->str_currency_code:Ljava/lang/String;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 483
    invoke-virtual/range {p0 .. p0}, Lcom/app/tmyclean/activities/ActivityCheckout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f00ab

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/app/tmyclean/activities/ActivityCheckout;->str_currency_code:Ljava/lang/String;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Deposit: "

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/app/tmyclean/activities/ActivityCheckout;->str_currency_code:Ljava/lang/String;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "10.00"

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/app/tmyclean/activities/ActivityCheckout;->data_order_list:Ljava/lang/String;

    .line 486
    iget-object v1, v0, Lcom/app/tmyclean/activities/ActivityCheckout;->edt_order_total:Landroid/widget/EditText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v0, Lcom/app/tmyclean/activities/ActivityCheckout;->str_currency_code:Ljava/lang/String;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 489
    iget-object v1, v0, Lcom/app/tmyclean/activities/ActivityCheckout;->edt_order_list:Landroid/widget/EditText;

    iget-object v2, v0, Lcom/app/tmyclean/activities/ActivityCheckout;->data_order_list:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 491
    return-void
.end method

.method public getTaxCurrency()V
    .locals 4

    .line 423
    invoke-virtual {p0}, Lcom/app/tmyclean/activities/ActivityCheckout;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 424
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "tax"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v1

    iput-wide v1, p0, Lcom/app/tmyclean/activities/ActivityCheckout;->str_tax:D

    .line 425
    const-string v1, "currency_code"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/app/tmyclean/activities/ActivityCheckout;->str_currency_code:Ljava/lang/String;

    .line 426
    return-void
.end method

.method public getValueFromEditText()V
    .locals 4

    .line 298
    iget-object v0, p0, Lcom/app/tmyclean/activities/ActivityCheckout;->edt_name:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/app/tmyclean/activities/ActivityCheckout;->str_name:Ljava/lang/String;

    .line 299
    iget-object v0, p0, Lcom/app/tmyclean/activities/ActivityCheckout;->edt_email:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/app/tmyclean/activities/ActivityCheckout;->str_email:Ljava/lang/String;

    .line 300
    iget-object v0, p0, Lcom/app/tmyclean/activities/ActivityCheckout;->edt_phone:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/app/tmyclean/activities/ActivityCheckout;->str_phone:Ljava/lang/String;

    .line 301
    iget-object v0, p0, Lcom/app/tmyclean/activities/ActivityCheckout;->edt_address:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/app/tmyclean/activities/ActivityCheckout;->str_address:Ljava/lang/String;

    .line 302
    iget-object v0, p0, Lcom/app/tmyclean/activities/ActivityCheckout;->edt_shipping:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/app/tmyclean/activities/ActivityCheckout;->str_shipping:Ljava/lang/String;

    .line 303
    iget-object v0, p0, Lcom/app/tmyclean/activities/ActivityCheckout;->edt_order_list:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/app/tmyclean/activities/ActivityCheckout;->str_order_list:Ljava/lang/String;

    .line 304
    iget-object v0, p0, Lcom/app/tmyclean/activities/ActivityCheckout;->edt_order_total:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/app/tmyclean/activities/ActivityCheckout;->str_order_total:Ljava/lang/String;

    .line 305
    iget-object v0, p0, Lcom/app/tmyclean/activities/ActivityCheckout;->edt_date:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/app/tmyclean/activities/ActivityCheckout;->str_date:Ljava/lang/String;

    .line 306
    iget-object v0, p0, Lcom/app/tmyclean/activities/ActivityCheckout;->edt_time:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/app/tmyclean/activities/ActivityCheckout;->str_time:Ljava/lang/String;

    .line 308
    invoke-virtual {p0}, Lcom/app/tmyclean/activities/ActivityCheckout;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/app/tmyclean/activities/ActivityCheckout;->str_sid:Ljava/lang/String;

    .line 310
    iget-object v0, p0, Lcom/app/tmyclean/activities/ActivityCheckout;->str_name:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/app/tmyclean/activities/ActivityCheckout;->str_email:Ljava/lang/String;

    .line 311
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/app/tmyclean/activities/ActivityCheckout;->str_phone:Ljava/lang/String;

    .line 312
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/app/tmyclean/activities/ActivityCheckout;->str_address:Ljava/lang/String;

    .line 313
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/app/tmyclean/activities/ActivityCheckout;->str_shipping:Ljava/lang/String;

    .line 314
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/app/tmyclean/activities/ActivityCheckout;->str_date:Ljava/lang/String;

    .line 315
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/app/tmyclean/activities/ActivityCheckout;->str_time:Ljava/lang/String;

    .line 316
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/app/tmyclean/activities/ActivityCheckout;->str_order_list:Ljava/lang/String;

    .line 317
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 320
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 321
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0f002b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 322
    const v1, 0x7f0f002a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 323
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 324
    invoke-virtual {p0}, Lcom/app/tmyclean/activities/ActivityCheckout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0057

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/app/tmyclean/activities/ActivityCheckout$6;

    invoke-direct {v3, p0}, Lcom/app/tmyclean/activities/ActivityCheckout$6;-><init>(Lcom/app/tmyclean/activities/ActivityCheckout;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 334
    invoke-virtual {p0}, Lcom/app/tmyclean/activities/ActivityCheckout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0056

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 335
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 336
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_1

    .line 318
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/app/tmyclean/activities/ActivityCheckout;->view:Landroid/view/View;

    const v1, 0x7f0f002d

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;II)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    .line 340
    :goto_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 85
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 86
    const v0, 0x7f0b001d

    invoke-virtual {p0, v0}, Lcom/app/tmyclean/activities/ActivityCheckout;->setContentView(I)V

    .line 87
    const v0, 0x1020002

    invoke-virtual {p0, v0}, Lcom/app/tmyclean/activities/ActivityCheckout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/app/tmyclean/activities/ActivityCheckout;->view:Landroid/view/View;

    .line 90
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 94
    .local v0, "calendar":Ljava/util/Calendar;
    const v1, 0x7f080082

    invoke-virtual {p0, v1}, Lcom/app/tmyclean/activities/ActivityCheckout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/app/tmyclean/activities/ActivityCheckout;->editDate:Landroid/widget/EditText;

    .line 95
    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 96
    .local v2, "day":I
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 97
    .local v3, "year":I
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 99
    .local v4, "month":I
    const v5, 0x7f080081

    invoke-virtual {p0, v5}, Lcom/app/tmyclean/activities/ActivityCheckout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iput-object v6, p0, Lcom/app/tmyclean/activities/ActivityCheckout;->editTime:Landroid/widget/EditText;

    .line 102
    new-instance v6, Landroid/app/DatePickerDialog;

    invoke-direct {v6, p0}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/app/tmyclean/activities/ActivityCheckout;->datePicker:Landroid/app/DatePickerDialog;

    .line 105
    iget-object v6, p0, Lcom/app/tmyclean/activities/ActivityCheckout;->editDate:Landroid/widget/EditText;

    new-instance v7, Lcom/app/tmyclean/activities/ActivityCheckout$1;

    invoke-direct {v7, p0, v3, v4, v2}, Lcom/app/tmyclean/activities/ActivityCheckout$1;-><init>(Lcom/app/tmyclean/activities/ActivityCheckout;III)V

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    iget-object v6, p0, Lcom/app/tmyclean/activities/ActivityCheckout;->editTime:Landroid/widget/EditText;

    new-instance v7, Lcom/app/tmyclean/activities/ActivityCheckout$2;

    invoke-direct {v7, p0}, Lcom/app/tmyclean/activities/ActivityCheckout$2;-><init>(Lcom/app/tmyclean/activities/ActivityCheckout;)V

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    new-instance v6, Lcom/app/tmyclean/utilities/SharedPref;

    invoke-direct {v6, p0}, Lcom/app/tmyclean/utilities/SharedPref;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/app/tmyclean/activities/ActivityCheckout;->sharedPref:Lcom/app/tmyclean/utilities/SharedPref;

    .line 161
    invoke-virtual {p0}, Lcom/app/tmyclean/activities/ActivityCheckout;->setupToolbar()V

    .line 162
    invoke-direct {p0}, Lcom/app/tmyclean/activities/ActivityCheckout;->getSpinnerData()V

    .line 163
    invoke-virtual {p0}, Lcom/app/tmyclean/activities/ActivityCheckout;->getTaxCurrency()V

    .line 165
    new-instance v6, Lcom/app/tmyclean/utilities/DBHelper;

    invoke-direct {v6, p0}, Lcom/app/tmyclean/utilities/DBHelper;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/app/tmyclean/activities/ActivityCheckout;->dbhelper:Lcom/app/tmyclean/utilities/DBHelper;

    .line 167
    :try_start_0
    invoke-virtual {v6}, Lcom/app/tmyclean/utilities/DBHelper;->openDataBase()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    nop

    .line 173
    invoke-static {p0}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;)Lcom/android/volley/RequestQueue;

    move-result-object v6

    iput-object v6, p0, Lcom/app/tmyclean/activities/ActivityCheckout;->requestQueue:Lcom/android/volley/RequestQueue;

    .line 174
    new-instance v6, Landroid/app/ProgressDialog;

    invoke-direct {v6, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/app/tmyclean/activities/ActivityCheckout;->progressDialog:Landroid/app/ProgressDialog;

    .line 176
    const v6, 0x7f080057

    invoke-virtual {p0, v6}, Lcom/app/tmyclean/activities/ActivityCheckout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/app/tmyclean/activities/ActivityCheckout;->btn_submit_order:Landroid/widget/Button;

    .line 179
    const v6, 0x7f080086

    invoke-virtual {p0, v6}, Lcom/app/tmyclean/activities/ActivityCheckout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iput-object v6, p0, Lcom/app/tmyclean/activities/ActivityCheckout;->edt_name:Landroid/widget/EditText;

    .line 180
    const v6, 0x7f080085

    invoke-virtual {p0, v6}, Lcom/app/tmyclean/activities/ActivityCheckout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iput-object v6, p0, Lcom/app/tmyclean/activities/ActivityCheckout;->edt_email:Landroid/widget/EditText;

    .line 181
    const v6, 0x7f080089

    invoke-virtual {p0, v6}, Lcom/app/tmyclean/activities/ActivityCheckout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iput-object v6, p0, Lcom/app/tmyclean/activities/ActivityCheckout;->edt_phone:Landroid/widget/EditText;

    .line 182
    const v6, 0x7f080084

    invoke-virtual {p0, v6}, Lcom/app/tmyclean/activities/ActivityCheckout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iput-object v6, p0, Lcom/app/tmyclean/activities/ActivityCheckout;->edt_address:Landroid/widget/EditText;

    .line 183
    const v6, 0x7f08008a

    invoke-virtual {p0, v6}, Lcom/app/tmyclean/activities/ActivityCheckout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iput-object v6, p0, Lcom/app/tmyclean/activities/ActivityCheckout;->edt_shipping:Landroid/widget/EditText;

    .line 184
    const v6, 0x7f080087

    invoke-virtual {p0, v6}, Lcom/app/tmyclean/activities/ActivityCheckout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iput-object v6, p0, Lcom/app/tmyclean/activities/ActivityCheckout;->edt_order_list:Landroid/widget/EditText;

    .line 185
    const v6, 0x7f080088

    invoke-virtual {p0, v6}, Lcom/app/tmyclean/activities/ActivityCheckout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iput-object v6, p0, Lcom/app/tmyclean/activities/ActivityCheckout;->edt_order_total:Landroid/widget/EditText;

    .line 186
    invoke-virtual {p0, v1}, Lcom/app/tmyclean/activities/ActivityCheckout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/app/tmyclean/activities/ActivityCheckout;->edt_date:Landroid/widget/EditText;

    .line 187
    invoke-virtual {p0, v5}, Lcom/app/tmyclean/activities/ActivityCheckout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/app/tmyclean/activities/ActivityCheckout;->edt_time:Landroid/widget/EditText;

    .line 191
    iget-object v1, p0, Lcom/app/tmyclean/activities/ActivityCheckout;->edt_order_list:Landroid/widget/EditText;

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 193
    invoke-virtual {p0}, Lcom/app/tmyclean/activities/ActivityCheckout;->getDataFromDatabase()V

    .line 194
    invoke-virtual {p0}, Lcom/app/tmyclean/activities/ActivityCheckout;->submitOrder()V

    .line 196
    return-void

    .line 168
    :catch_0
    move-exception v1

    .line 169
    .local v1, "sqle":Landroid/database/SQLException;
    throw v1
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

    .line 589
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 596
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 592
    :pswitch_0
    invoke-virtual {p0}, Lcom/app/tmyclean/activities/ActivityCheckout;->finish()V

    .line 593
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onResume()V
    .locals 2

    .line 602
    iget-object v0, p0, Lcom/app/tmyclean/activities/ActivityCheckout;->edt_name:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/app/tmyclean/activities/ActivityCheckout;->sharedPref:Lcom/app/tmyclean/utilities/SharedPref;

    invoke-virtual {v1}, Lcom/app/tmyclean/utilities/SharedPref;->getYourName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 603
    iget-object v0, p0, Lcom/app/tmyclean/activities/ActivityCheckout;->edt_email:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/app/tmyclean/activities/ActivityCheckout;->sharedPref:Lcom/app/tmyclean/utilities/SharedPref;

    invoke-virtual {v1}, Lcom/app/tmyclean/utilities/SharedPref;->getYourEmail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 604
    iget-object v0, p0, Lcom/app/tmyclean/activities/ActivityCheckout;->edt_phone:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/app/tmyclean/activities/ActivityCheckout;->sharedPref:Lcom/app/tmyclean/utilities/SharedPref;

    invoke-virtual {v1}, Lcom/app/tmyclean/utilities/SharedPref;->getYourPhone()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 605
    iget-object v0, p0, Lcom/app/tmyclean/activities/ActivityCheckout;->edt_address:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/app/tmyclean/activities/ActivityCheckout;->sharedPref:Lcom/app/tmyclean/utilities/SharedPref;

    invoke-virtual {v1}, Lcom/app/tmyclean/utilities/SharedPref;->getYourAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 606
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 607
    return-void
.end method

.method public requestAction()V
    .locals 7

    .line 344
    iget-object v0, p0, Lcom/app/tmyclean/activities/ActivityCheckout;->progressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f0f0034

    invoke-virtual {p0, v1}, Lcom/app/tmyclean/activities/ActivityCheckout;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 345
    iget-object v0, p0, Lcom/app/tmyclean/activities/ActivityCheckout;->progressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f0f0033

    invoke-virtual {p0, v1}, Lcom/app/tmyclean/activities/ActivityCheckout;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 346
    iget-object v0, p0, Lcom/app/tmyclean/activities/ActivityCheckout;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 348
    new-instance v0, Lcom/app/tmyclean/activities/ActivityCheckout$9;

    new-instance v5, Lcom/app/tmyclean/activities/ActivityCheckout$7;

    invoke-direct {v5, p0}, Lcom/app/tmyclean/activities/ActivityCheckout$7;-><init>(Lcom/app/tmyclean/activities/ActivityCheckout;)V

    new-instance v6, Lcom/app/tmyclean/activities/ActivityCheckout$8;

    invoke-direct {v6, p0}, Lcom/app/tmyclean/activities/ActivityCheckout$8;-><init>(Lcom/app/tmyclean/activities/ActivityCheckout;)V

    const/4 v3, 0x1

    const-string v4, "https://yapks.online/maid4u_888a/api/api.php?post_order"

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/app/tmyclean/activities/ActivityCheckout$9;-><init>(Lcom/app/tmyclean/activities/ActivityCheckout;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 416
    .local v0, "stringRequest":Lcom/android/volley/toolbox/StringRequest;
    new-instance v1, Lcom/android/volley/DefaultRetryPolicy;

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3, v4}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    .line 417
    .local v1, "retryPolicy":Lcom/android/volley/DefaultRetryPolicy;
    invoke-virtual {v0, v1}, Lcom/android/volley/toolbox/StringRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;

    .line 418
    invoke-static {p0}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;)Lcom/android/volley/RequestQueue;

    move-result-object v2

    .line 419
    .local v2, "requestQueue":Lcom/android/volley/RequestQueue;
    invoke-virtual {v2, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 420
    return-void
.end method

.method public setupToolbar()V
    .locals 4

    .line 199
    const v0, 0x7f08013e

    invoke-virtual {p0, v0}, Lcom/app/tmyclean/activities/ActivityCheckout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 200
    .local v0, "toolbar":Landroidx/appcompat/widget/Toolbar;
    invoke-virtual {p0, v0}, Lcom/app/tmyclean/activities/ActivityCheckout;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 201
    invoke-virtual {p0}, Lcom/app/tmyclean/activities/ActivityCheckout;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v1

    .line 202
    .local v1, "actionBar":Landroidx/appcompat/app/ActionBar;
    if-eqz v1, :cond_0

    .line 203
    invoke-virtual {p0}, Lcom/app/tmyclean/activities/ActivityCheckout;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 204
    invoke-virtual {p0}, Lcom/app/tmyclean/activities/ActivityCheckout;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v2

    const v3, 0x7f0f009a

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/ActionBar;->setTitle(I)V

    .line 206
    :cond_0
    return-void
.end method

.method public submitOrder()V
    .locals 2

    .line 278
    iget-object v0, p0, Lcom/app/tmyclean/activities/ActivityCheckout;->btn_submit_order:Landroid/widget/Button;

    new-instance v1, Lcom/app/tmyclean/activities/ActivityCheckout$5;

    invoke-direct {v1, p0}, Lcom/app/tmyclean/activities/ActivityCheckout$5;-><init>(Lcom/app/tmyclean/activities/ActivityCheckout;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 294
    return-void
.end method
