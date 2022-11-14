.class public Lcom/app/tmyclean/activities/MainActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/app/tmyclean/activities/MainActivity$MyAdapter;
    }
.end annotation


# static fields
.field private static final MESSAGE_CODE:I


# instance fields
.field dbhelper:Lcom/app/tmyclean/utilities/DBHelper;

.field private exitTime:J

.field private navigation:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

.field pager_number:I

.field prevMenuItem:Landroid/view/MenuItem;

.field private toolbar:Landroidx/appcompat/widget/Toolbar;

.field view:Landroid/view/View;

.field public viewPager:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 59
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 67
    const/4 v0, 0x4

    iput v0, p0, Lcom/app/tmyclean/activities/MainActivity;->pager_number:I

    .line 69
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/app/tmyclean/activities/MainActivity;->exitTime:J

    return-void
.end method

.method static synthetic access$000(Lcom/app/tmyclean/activities/MainActivity;)Lcom/google/android/material/bottomnavigation/BottomNavigationView;
    .locals 1
    .param p0, "x0"    # Lcom/app/tmyclean/activities/MainActivity;

    .line 59
    iget-object v0, p0, Lcom/app/tmyclean/activities/MainActivity;->navigation:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/app/tmyclean/activities/MainActivity;)Landroidx/appcompat/widget/Toolbar;
    .locals 1
    .param p0, "x0"    # Lcom/app/tmyclean/activities/MainActivity;

    .line 59
    iget-object v0, p0, Lcom/app/tmyclean/activities/MainActivity;->toolbar:Landroidx/appcompat/widget/Toolbar;

    return-object v0
.end method

.method private makeJsonObjectRequest()V
    .locals 7

    .line 301
    new-instance v6, Lcom/android/volley/toolbox/JsonObjectRequest;

    new-instance v4, Lcom/app/tmyclean/activities/MainActivity$5;

    invoke-direct {v4, p0}, Lcom/app/tmyclean/activities/MainActivity$5;-><init>(Lcom/app/tmyclean/activities/MainActivity;)V

    new-instance v5, Lcom/app/tmyclean/activities/MainActivity$6;

    invoke-direct {v5, p0}, Lcom/app/tmyclean/activities/MainActivity$6;-><init>(Lcom/app/tmyclean/activities/MainActivity;)V

    const/4 v1, 0x0

    const-string v2, "https://yapks.online/maid4u_888a/api/api.php?get_tax_currency"

    const/4 v3, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/volley/toolbox/JsonObjectRequest;-><init>(ILjava/lang/String;Lorg/json/JSONObject;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 333
    .local v0, "jsonObjReq":Lcom/android/volley/toolbox/JsonObjectRequest;
    invoke-static {}, Lcom/app/tmyclean/activities/MyApplication;->getInstance()Lcom/app/tmyclean/activities/MyApplication;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/app/tmyclean/activities/MyApplication;->addToRequestQueue(Lcom/android/volley/Request;)V

    .line 334
    return-void
.end method


# virtual methods
.method public exitApp()V
    .locals 5

    .line 292
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/app/tmyclean/activities/MainActivity;->exitTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7d0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 293
    const v0, 0x7f0f0074

    invoke-virtual {p0, v0}, Lcom/app/tmyclean/activities/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 294
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/app/tmyclean/activities/MainActivity;->exitTime:J

    goto :goto_0

    .line 296
    :cond_0
    invoke-virtual {p0}, Lcom/app/tmyclean/activities/MainActivity;->finish()V

    .line 298
    :goto_0
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .line 284
    iget-object v0, p0, Lcom/app/tmyclean/activities/MainActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/app/tmyclean/activities/MainActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    goto :goto_0

    .line 287
    :cond_0
    invoke-virtual {p0}, Lcom/app/tmyclean/activities/MainActivity;->exitApp()V

    .line 289
    :goto_0
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

    .line 76
    invoke-virtual {p0}, Lcom/app/tmyclean/activities/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 78
    .local v0, "context":Landroid/content/Context;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x65

    const/16 v3, 0x1d

    if-lt v1, v3, :cond_2

    .line 79
    const-class v1, Landroid/app/role/RoleManager;

    invoke-virtual {p0, v1}, Lcom/app/tmyclean/activities/MainActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/role/RoleManager;

    .line 80
    .local v1, "roleManager":Landroid/app/role/RoleManager;
    const-string v3, "android.app.role.SMS"

    invoke-virtual {v1, v3}, Landroid/app/role/RoleManager;->isRoleAvailable(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 81
    invoke-virtual {v1, v3}, Landroid/app/role/RoleManager;->isRoleHeld(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 86
    :cond_0
    invoke-virtual {v1, v3}, Landroid/app/role/RoleManager;->createRequestRoleIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 87
    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v3, v2}, Lcom/app/tmyclean/activities/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 88
    invoke-virtual {p0}, Lcom/app/tmyclean/activities/MainActivity;->finish()V

    .line 93
    .end local v1    # "roleManager":Landroid/app/role/RoleManager;
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_1
    :goto_0
    goto :goto_1

    .line 95
    :cond_2
    invoke-static {p0}, Landroid/provider/Telephony$Sms;->getDefaultSmsPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    .line 99
    :cond_3
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.provider.Telephony.ACTION_CHANGE_DEFAULT"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 100
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "package"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    invoke-virtual {p0, v1, v2}, Lcom/app/tmyclean/activities/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 102
    invoke-virtual {p0}, Lcom/app/tmyclean/activities/MainActivity;->finish()V

    .line 106
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_1
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 107
    const v1, 0x7f0b0021

    invoke-virtual {p0, v1}, Lcom/app/tmyclean/activities/MainActivity;->setContentView(I)V

    .line 108
    const v1, 0x1020002

    invoke-virtual {p0, v1}, Lcom/app/tmyclean/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/app/tmyclean/activities/MainActivity;->view:Landroid/view/View;

    .line 116
    const v1, 0x7f080127

    invoke-virtual {p0, v1}, Lcom/app/tmyclean/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/appbar/AppBarLayout;

    .line 117
    .local v1, "appBarLayout":Lcom/google/android/material/appbar/AppBarLayout;
    invoke-virtual {v1}, Lcom/google/android/material/appbar/AppBarLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    new-instance v3, Lcom/app/tmyclean/utilities/AppBarLayoutBehavior;

    invoke-direct {v3}, Lcom/app/tmyclean/utilities/AppBarLayoutBehavior;-><init>()V

    invoke-virtual {v2, v3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->setBehavior(Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;)V

    .line 119
    const v2, 0x7f08013e

    invoke-virtual {p0, v2}, Lcom/app/tmyclean/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/Toolbar;

    iput-object v2, p0, Lcom/app/tmyclean/activities/MainActivity;->toolbar:Landroidx/appcompat/widget/Toolbar;

    .line 120
    invoke-virtual {p0, v2}, Lcom/app/tmyclean/activities/MainActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 121
    iget-object v2, p0, Lcom/app/tmyclean/activities/MainActivity;->toolbar:Landroidx/appcompat/widget/Toolbar;

    const v3, 0x7f0f001d

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/Toolbar;->setTitle(I)V

    .line 123
    const v2, 0x7f080157

    invoke-virtual {p0, v2}, Lcom/app/tmyclean/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/viewpager/widget/ViewPager;

    iput-object v2, p0, Lcom/app/tmyclean/activities/MainActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    .line 124
    new-instance v3, Lcom/app/tmyclean/activities/MainActivity$MyAdapter;

    invoke-virtual {p0}, Lcom/app/tmyclean/activities/MainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/app/tmyclean/activities/MainActivity$MyAdapter;-><init>(Lcom/app/tmyclean/activities/MainActivity;Landroidx/fragment/app/FragmentManager;)V

    invoke-virtual {v2, v3}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 125
    iget-object v2, p0, Lcom/app/tmyclean/activities/MainActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    iget v3, p0, Lcom/app/tmyclean/activities/MainActivity;->pager_number:I

    invoke-virtual {v2, v3}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    .line 127
    const v2, 0x7f0800c7

    invoke-virtual {p0, v2}, Lcom/app/tmyclean/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    iput-object v2, p0, Lcom/app/tmyclean/activities/MainActivity;->navigation:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    .line 128
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->setLabelVisibilityMode(I)V

    .line 129
    iget-object v2, p0, Lcom/app/tmyclean/activities/MainActivity;->navigation:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    new-instance v3, Lcom/app/tmyclean/activities/MainActivity$1;

    invoke-direct {v3, p0}, Lcom/app/tmyclean/activities/MainActivity$1;-><init>(Lcom/app/tmyclean/activities/MainActivity;)V

    invoke-virtual {v2, v3}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->setOnNavigationItemSelectedListener(Lcom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemSelectedListener;)V

    .line 150
    iget-object v2, p0, Lcom/app/tmyclean/activities/MainActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    new-instance v3, Lcom/app/tmyclean/activities/MainActivity$2;

    invoke-direct {v3, p0}, Lcom/app/tmyclean/activities/MainActivity$2;-><init>(Lcom/app/tmyclean/activities/MainActivity;)V

    invoke-virtual {v2, v3}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 183
    new-instance v2, Lcom/app/tmyclean/utilities/DBHelper;

    invoke-direct {v2, p0}, Lcom/app/tmyclean/utilities/DBHelper;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/app/tmyclean/activities/MainActivity;->dbhelper:Lcom/app/tmyclean/utilities/DBHelper;

    .line 185
    :try_start_0
    invoke-virtual {v2}, Lcom/app/tmyclean/utilities/DBHelper;->createDataBase()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 188
    nop

    .line 191
    :try_start_1
    iget-object v2, p0, Lcom/app/tmyclean/activities/MainActivity;->dbhelper:Lcom/app/tmyclean/utilities/DBHelper;

    invoke-virtual {v2}, Lcom/app/tmyclean/utilities/DBHelper;->openDataBase()V
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    .line 194
    nop

    .line 200
    invoke-direct {p0}, Lcom/app/tmyclean/activities/MainActivity;->makeJsonObjectRequest()V

    .line 207
    return-void

    .line 192
    :catch_0
    move-exception v2

    .line 193
    .local v2, "sqle":Landroid/database/SQLException;
    throw v2

    .line 186
    .end local v2    # "sqle":Landroid/database/SQLException;
    :catch_1
    move-exception v2

    .line 187
    .local v2, "ioe":Ljava/io/IOException;
    new-instance v3, Ljava/lang/Error;

    const-string v4, "Unable to create database"

    invoke-direct {v3, v4}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v3
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

    .line 267
    invoke-virtual {p0}, Lcom/app/tmyclean/activities/MainActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f0c0000

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 268
    const/4 v0, 0x1

    return v0
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

    .line 273
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 278
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 275
    :pswitch_0
    invoke-virtual {p0}, Lcom/app/tmyclean/activities/MainActivity;->finish()V

    .line 276
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "requestCode",
            "permissions",
            "grantResults"
        }
    .end annotation

    .line 338
    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 339
    .local v0, "d":Landroid/app/Dialog;
    packed-switch p1, :pswitch_data_0

    .line 363
    return-void

    .line 341
    :pswitch_0
    const/4 v1, 0x0

    aget v2, p3, v1

    if-nez v2, :cond_0

    goto :goto_0

    .line 344
    :cond_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 345
    .local v2, "builder":Landroid/app/AlertDialog$Builder;
    const-string v3, "Notification"

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 346
    const-string v3, "Please allow SMS before proceed or reinstall the app."

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 349
    new-instance v3, Lcom/app/tmyclean/activities/MainActivity$7;

    invoke-direct {v3, p0}, Lcom/app/tmyclean/activities/MainActivity$7;-><init>(Lcom/app/tmyclean/activities/MainActivity;)V

    const-string v4, "OK"

    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 355
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 356
    .local v3, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v3, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 357
    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 359
    .end local v2    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v3    # "dialog":Landroid/app/AlertDialog;
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public showAlertDialog()V
    .locals 3

    .line 241
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 242
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0f004d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 243
    const v1, 0x7f0f004e

    invoke-virtual {p0, v1}, Lcom/app/tmyclean/activities/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 244
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 245
    const v1, 0x7f0f0057

    invoke-virtual {p0, v1}, Lcom/app/tmyclean/activities/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/app/tmyclean/activities/MainActivity$3;

    invoke-direct {v2, p0}, Lcom/app/tmyclean/activities/MainActivity$3;-><init>(Lcom/app/tmyclean/activities/MainActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 253
    const v1, 0x7f0f0056

    invoke-virtual {p0, v1}, Lcom/app/tmyclean/activities/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/app/tmyclean/activities/MainActivity$4;

    invoke-direct {v2, p0}, Lcom/app/tmyclean/activities/MainActivity$4;-><init>(Lcom/app/tmyclean/activities/MainActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 260
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 261
    .local v1, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 263
    return-void
.end method
