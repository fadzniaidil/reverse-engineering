.class public Lcom/app/tmyclean/activities/ActivityNotificationDetail$ShareTask;
.super Landroid/os/AsyncTask;
.source "ActivityNotificationDetail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/app/tmyclean/activities/ActivityNotificationDetail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShareTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field bmImg:Landroid/graphics/Bitmap;

.field private context:Landroid/content/Context;

.field file:Ljava/io/File;

.field myFileUrl:Ljava/net/URL;

.field private pDialog:Landroid/app/ProgressDialog;

.field final synthetic this$0:Lcom/app/tmyclean/activities/ActivityNotificationDetail;


# direct methods
.method public constructor <init>(Lcom/app/tmyclean/activities/ActivityNotificationDetail;Landroid/content/Context;)V
    .locals 1
    .param p1, "this$0"    # Lcom/app/tmyclean/activities/ActivityNotificationDetail;
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "context"
        }
    .end annotation

    .line 415
    iput-object p1, p0, Lcom/app/tmyclean/activities/ActivityNotificationDetail$ShareTask;->this$0:Lcom/app/tmyclean/activities/ActivityNotificationDetail;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 412
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/app/tmyclean/activities/ActivityNotificationDetail$ShareTask;->bmImg:Landroid/graphics/Bitmap;

    .line 416
    iput-object p2, p0, Lcom/app/tmyclean/activities/ActivityNotificationDetail$ShareTask;->context:Landroid/content/Context;

    .line 417
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "args"
        }
    .end annotation

    .line 406
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/app/tmyclean/activities/ActivityNotificationDetail$ShareTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "args"
        }
    .end annotation

    .line 432
    const-string v0, "/"

    const/4 v1, 0x1

    :try_start_0
    new-instance v2, Ljava/net/URL;

    const/4 v3, 0x0

    aget-object v3, p1, v3

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/app/tmyclean/activities/ActivityNotificationDetail$ShareTask;->myFileUrl:Ljava/net/URL;

    .line 433
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;

    .line 434
    .local v2, "conn":Ljava/net/HttpURLConnection;
    invoke-virtual {v2, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 435
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->connect()V

    .line 436
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 437
    .local v3, "is":Ljava/io/InputStream;
    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/app/tmyclean/activities/ActivityNotificationDetail$ShareTask;->bmImg:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 440
    .end local v2    # "conn":Ljava/net/HttpURLConnection;
    .end local v3    # "is":Ljava/io/InputStream;
    goto :goto_0

    .line 438
    :catch_0
    move-exception v2

    .line 439
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 442
    .end local v2    # "e":Ljava/io/IOException;
    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/app/tmyclean/activities/ActivityNotificationDetail$ShareTask;->myFileUrl:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 443
    .local v2, "path":Ljava/lang/String;
    const/16 v3, 0x2f

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 444
    .local v1, "idStr":Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    .line 445
    .local v3, "filepath":Ljava/io/File;
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/app/tmyclean/activities/ActivityNotificationDetail$ShareTask;->this$0:Lcom/app/tmyclean/activities/ActivityNotificationDetail;

    invoke-virtual {v6}, Lcom/app/tmyclean/activities/ActivityNotificationDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0f001d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, v4

    .line 446
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 447
    move-object v4, v1

    .line 448
    .local v4, "fileName":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v5, p0, Lcom/app/tmyclean/activities/ActivityNotificationDetail$ShareTask;->file:Ljava/io/File;

    .line 449
    new-instance v5, Ljava/io/FileOutputStream;

    iget-object v6, p0, Lcom/app/tmyclean/activities/ActivityNotificationDetail$ShareTask;->file:Ljava/io/File;

    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 450
    .local v5, "fos":Ljava/io/FileOutputStream;
    iget-object v6, p0, Lcom/app/tmyclean/activities/ActivityNotificationDetail$ShareTask;->bmImg:Landroid/graphics/Bitmap;

    sget-object v7, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v8, 0x63

    invoke-virtual {v6, v7, v8, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 451
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->flush()V

    .line 452
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 456
    .end local v0    # "dir":Ljava/io/File;
    .end local v1    # "idStr":Ljava/lang/String;
    .end local v2    # "path":Ljava/lang/String;
    .end local v3    # "filepath":Ljava/io/File;
    .end local v4    # "fileName":Ljava/lang/String;
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    goto :goto_1

    .line 454
    :catch_1
    move-exception v0

    .line 455
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 457
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "args"
        }
    .end annotation

    .line 406
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/app/tmyclean/activities/ActivityNotificationDetail$ShareTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 6
    .param p1, "args"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "args"
        }
    .end annotation

    .line 472
    new-instance v0, Landroid/os/StrictMode$VmPolicy$Builder;

    invoke-direct {v0}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>()V

    .line 473
    .local v0, "builder":Landroid/os/StrictMode$VmPolicy$Builder;
    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    move-result-object v1

    invoke-static {v1}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    .line 474
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 475
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "image/*"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 476
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/app/tmyclean/activities/ActivityNotificationDetail$ShareTask;->file:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "android.intent.extra.STREAM"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 477
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/app/tmyclean/activities/ActivityNotificationDetail$ShareTask;->this$0:Lcom/app/tmyclean/activities/ActivityNotificationDetail;

    const v4, 0x7f0f0094

    invoke-virtual {v3, v4}, Lcom/app/tmyclean/activities/ActivityNotificationDetail;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/app/tmyclean/activities/ActivityNotificationDetail$ShareTask;->this$0:Lcom/app/tmyclean/activities/ActivityNotificationDetail;

    invoke-static {v4}, Lcom/app/tmyclean/activities/ActivityNotificationDetail;->access$200(Lcom/app/tmyclean/activities/ActivityNotificationDetail;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/app/tmyclean/activities/ActivityNotificationDetail$ShareTask;->this$0:Lcom/app/tmyclean/activities/ActivityNotificationDetail;

    const v5, 0x7f0f0096

    invoke-virtual {v4, v5}, Lcom/app/tmyclean/activities/ActivityNotificationDetail;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/app/tmyclean/activities/ActivityNotificationDetail$ShareTask;->this$0:Lcom/app/tmyclean/activities/ActivityNotificationDetail;

    invoke-static {v4}, Lcom/app/tmyclean/activities/ActivityNotificationDetail;->access$400(Lcom/app/tmyclean/activities/ActivityNotificationDetail;)D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/app/tmyclean/activities/ActivityNotificationDetail$ShareTask;->this$0:Lcom/app/tmyclean/activities/ActivityNotificationDetail;

    invoke-static {v3}, Lcom/app/tmyclean/activities/ActivityNotificationDetail;->access$800(Lcom/app/tmyclean/activities/ActivityNotificationDetail;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/app/tmyclean/activities/ActivityNotificationDetail$ShareTask;->this$0:Lcom/app/tmyclean/activities/ActivityNotificationDetail;

    const v4, 0x7f0f0095

    invoke-virtual {v3, v4}, Lcom/app/tmyclean/activities/ActivityNotificationDetail;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\nhttps://play.google.com/store/apps/details?id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/app/tmyclean/activities/ActivityNotificationDetail$ShareTask;->this$0:Lcom/app/tmyclean/activities/ActivityNotificationDetail;

    invoke-virtual {v3}, Lcom/app/tmyclean/activities/ActivityNotificationDetail;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.extra.TEXT"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 478
    iget-object v2, p0, Lcom/app/tmyclean/activities/ActivityNotificationDetail$ShareTask;->this$0:Lcom/app/tmyclean/activities/ActivityNotificationDetail;

    const-string v3, "Share Image"

    invoke-static {v1, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/app/tmyclean/activities/ActivityNotificationDetail;->startActivity(Landroid/content/Intent;)V

    .line 479
    iget-object v2, p0, Lcom/app/tmyclean/activities/ActivityNotificationDetail$ShareTask;->pDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 481
    .end local v0    # "builder":Landroid/os/StrictMode$VmPolicy$Builder;
    .end local v1    # "intent":Landroid/content/Intent;
    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .line 421
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 422
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/app/tmyclean/activities/ActivityNotificationDetail$ShareTask;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/app/tmyclean/activities/ActivityNotificationDetail$ShareTask;->pDialog:Landroid/app/ProgressDialog;

    .line 423
    iget-object v1, p0, Lcom/app/tmyclean/activities/ActivityNotificationDetail$ShareTask;->this$0:Lcom/app/tmyclean/activities/ActivityNotificationDetail;

    const v2, 0x7f0f006d

    invoke-virtual {v1, v2}, Lcom/app/tmyclean/activities/ActivityNotificationDetail;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 424
    iget-object v0, p0, Lcom/app/tmyclean/activities/ActivityNotificationDetail$ShareTask;->pDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 425
    iget-object v0, p0, Lcom/app/tmyclean/activities/ActivityNotificationDetail$ShareTask;->pDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 426
    iget-object v0, p0, Lcom/app/tmyclean/activities/ActivityNotificationDetail$ShareTask;->pDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 427
    return-void
.end method
