.class public Lcom/app/tmyclean/utilities/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field public static final PERMISSIONS_REQUEST:I = 0x66


# instance fields
.field context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/app/tmyclean/utilities/Utils;->context:Landroid/content/Context;

    .line 29
    return-void
.end method

.method public static downloadImage(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "downloadUrlOfImage"    # Ljava/lang/String;
    .param p3, "mimeType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "activity",
            "filename",
            "downloadUrlOfImage",
            "mimeType"
        }
    .end annotation

    .line 94
    const/4 v0, -0x1

    const v1, 0x1020002

    :try_start_0
    const-string v2, "download"

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/DownloadManager;

    .line 95
    .local v2, "dm":Landroid/app/DownloadManager;
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 96
    .local v3, "downloadUri":Landroid/net/Uri;
    new-instance v4, Landroid/app/DownloadManager$Request;

    invoke-direct {v4, v3}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    .line 97
    .local v4, "request":Landroid/app/DownloadManager$Request;
    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Landroid/app/DownloadManager$Request;->setAllowedNetworkTypes(I)Landroid/app/DownloadManager$Request;

    move-result-object v5

    const/4 v6, 0x0

    .line 98
    invoke-virtual {v5, v6}, Landroid/app/DownloadManager$Request;->setAllowedOverRoaming(Z)Landroid/app/DownloadManager$Request;

    move-result-object v5

    .line 99
    invoke-virtual {v5, p1}, Landroid/app/DownloadManager$Request;->setTitle(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    move-result-object v5

    .line 100
    invoke-virtual {v5, p3}, Landroid/app/DownloadManager$Request;->setMimeType(Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    move-result-object v5

    const/4 v6, 0x1

    .line 101
    invoke-virtual {v5, v6}, Landroid/app/DownloadManager$Request;->setNotificationVisibility(I)Landroid/app/DownloadManager$Request;

    move-result-object v5

    sget-object v6, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ".jpg"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 102
    invoke-virtual {v5, v6, v7}, Landroid/app/DownloadManager$Request;->setDestinationInExternalPublicDir(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    .line 103
    invoke-virtual {v2, v4}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J

    .line 105
    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const-string v6, "Image download started."

    invoke-static {v5, v6, v0}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/material/snackbar/Snackbar;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    .end local v2    # "dm":Landroid/app/DownloadManager;
    .end local v3    # "downloadUri":Landroid/net/Uri;
    .end local v4    # "request":Landroid/app/DownloadManager$Request;
    goto :goto_0

    .line 106
    :catch_0
    move-exception v2

    .line 108
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v3, "Image download failed."

    invoke-static {v1, v3, v0}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    .line 110
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public static getFormatedDate(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "date_str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "date_str"
        }
    .end annotation

    .line 74
    const-string v0, ""

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 75
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 76
    .local v1, "oldFormat":Ljava/text/SimpleDateFormat;
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "dd MMM yyyy, HH:mm:ss"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 78
    .local v2, "newFormat":Ljava/text/SimpleDateFormat;
    :try_start_0
    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    .local v0, "newStr":Ljava/lang/String;
    return-object v0

    .line 80
    .end local v0    # "newStr":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 81
    .local v3, "e":Ljava/text/ParseException;
    return-object v0

    .line 84
    .end local v1    # "oldFormat":Ljava/text/SimpleDateFormat;
    .end local v2    # "newFormat":Ljava/text/SimpleDateFormat;
    .end local v3    # "e":Ljava/text/ParseException;
    :cond_0
    return-object v0
.end method

.method public static getFormatedDateSimple(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "date_str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "date_str"
        }
    .end annotation

    .line 59
    const-string v0, ""

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 60
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 61
    .local v1, "oldFormat":Ljava/text/SimpleDateFormat;
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "dd MMM yyyy"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 63
    .local v2, "newFormat":Ljava/text/SimpleDateFormat;
    :try_start_0
    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    .local v0, "newStr":Ljava/lang/String;
    return-object v0

    .line 65
    .end local v0    # "newStr":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 66
    .local v3, "e":Ljava/text/ParseException;
    return-object v0

    .line 69
    .end local v1    # "oldFormat":Ljava/text/SimpleDateFormat;
    .end local v2    # "newFormat":Ljava/text/SimpleDateFormat;
    .end local v3    # "e":Ljava/text/ParseException;
    :cond_0
    return-object v0
.end method

.method public static isNetworkAvailable(Landroid/app/Activity;)Z
    .locals 10
    .param p0, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 32
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 33
    .local v0, "connectivity":Landroid/net/ConnectivityManager;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x15

    if-lt v1, v4, :cond_2

    .line 34
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    move-result-object v1

    .line 36
    .local v1, "networks":[Landroid/net/Network;
    array-length v4, v1

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_1

    aget-object v6, v1, v5

    .line 37
    .local v6, "mNetwork":Landroid/net/Network;
    invoke-virtual {v0, v6}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v7

    .line 38
    .local v7, "networkInfo":Landroid/net/NetworkInfo;
    invoke-virtual {v7}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v8

    sget-object v9, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v8, v9}, Landroid/net/NetworkInfo$State;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 39
    return v3

    .line 36
    .end local v6    # "mNetwork":Landroid/net/Network;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 42
    .end local v1    # "networks":[Landroid/net/Network;
    .end local v7    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_1
    goto :goto_2

    .line 43
    :cond_2
    if-eqz v0, :cond_4

    .line 44
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v1

    .line 45
    .local v1, "info":[Landroid/net/NetworkInfo;
    if-eqz v1, :cond_4

    .line 46
    array-length v4, v1

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_4

    aget-object v6, v1, v5

    .line 47
    .local v6, "anInfo":Landroid/net/NetworkInfo;
    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v7

    sget-object v8, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v7, v8, :cond_3

    .line 48
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NETWORKNAME: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "Network"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    return v3

    .line 46
    .end local v6    # "anInfo":Landroid/net/NetworkInfo;
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 55
    .end local v1    # "info":[Landroid/net/NetworkInfo;
    :cond_4
    :goto_2
    return v2
.end method

.method public static isValidEmail(Ljava/lang/String;)Z
    .locals 1
    .param p0, "email"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "email"
        }
    .end annotation

    .line 89
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
