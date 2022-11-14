.class Lcom/onesignal/OneSignalRestClient;
.super Ljava/lang/Object;
.source "OneSignalRestClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onesignal/OneSignalRestClient$OneSignalNetworkCallException;,
        Lcom/onesignal/OneSignalRestClient$ResponseHandler;
    }
.end annotation


# static fields
.field private static final BASE_URL:Ljava/lang/String; = "https://api.onesignal.com/"

.field static final CACHE_KEY_GET_TAGS:Ljava/lang/String; = "CACHE_KEY_GET_TAGS"

.field static final CACHE_KEY_REMOTE_PARAMS:Ljava/lang/String; = "CACHE_KEY_REMOTE_PARAMS"

.field private static final GET_TIMEOUT:I = 0xea60

.field private static final OS_ACCEPT_HEADER:Ljava/lang/String; = "application/vnd.onesignal.v1+json"

.field private static final OS_API_VERSION:Ljava/lang/String; = "1"

.field private static final THREAD_ID:I = 0x2710

.field private static final TIMEOUT:I = 0x1d4c0


# direct methods
.method constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/onesignal/OneSignalRestClient$ResponseHandler;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lorg/json/JSONObject;
    .param p3, "x3"    # Lcom/onesignal/OneSignalRestClient$ResponseHandler;
    .param p4, "x4"    # I
    .param p5, "x5"    # Ljava/lang/String;

    .line 44
    invoke-static/range {p0 .. p5}, Lcom/onesignal/OneSignalRestClient;->makeRequest(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/onesignal/OneSignalRestClient$ResponseHandler;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/onesignal/OneSignalRestClient$ResponseHandler;ILjava/lang/String;)Ljava/lang/Thread;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lorg/json/JSONObject;
    .param p3, "x3"    # Lcom/onesignal/OneSignalRestClient$ResponseHandler;
    .param p4, "x4"    # I
    .param p5, "x5"    # Ljava/lang/String;

    .line 44
    invoke-static/range {p0 .. p5}, Lcom/onesignal/OneSignalRestClient;->startHTTPConnection(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/onesignal/OneSignalRestClient$ResponseHandler;ILjava/lang/String;)Ljava/lang/Thread;

    move-result-object v0

    return-object v0
.end method

.method private static callResponseHandlerOnFailure(Lcom/onesignal/OneSignalRestClient$ResponseHandler;ILjava/lang/String;Ljava/lang/Throwable;)Ljava/lang/Thread;
    .locals 3
    .param p0, "handler"    # Lcom/onesignal/OneSignalRestClient$ResponseHandler;
    .param p1, "statusCode"    # I
    .param p2, "response"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    .line 279
    if-nez p0, :cond_0

    .line 280
    const/4 v0, 0x0

    return-object v0

    .line 282
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/onesignal/OneSignalRestClient$6;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/onesignal/OneSignalRestClient$6;-><init>(Lcom/onesignal/OneSignalRestClient$ResponseHandler;ILjava/lang/String;Ljava/lang/Throwable;)V

    const-string v2, "OS_REST_FAILURE_CALLBACK"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 287
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 289
    return-object v0
.end method

.method private static callResponseHandlerOnSuccess(Lcom/onesignal/OneSignalRestClient$ResponseHandler;Ljava/lang/String;)Ljava/lang/Thread;
    .locals 3
    .param p0, "handler"    # Lcom/onesignal/OneSignalRestClient$ResponseHandler;
    .param p1, "response"    # Ljava/lang/String;

    .line 265
    if-nez p0, :cond_0

    .line 266
    const/4 v0, 0x0

    return-object v0

    .line 268
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/onesignal/OneSignalRestClient$5;

    invoke-direct {v1, p0, p1}, Lcom/onesignal/OneSignalRestClient$5;-><init>(Lcom/onesignal/OneSignalRestClient$ResponseHandler;Ljava/lang/String;)V

    const-string v2, "OS_REST_SUCCESS_CALLBACK"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 273
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 275
    return-object v0
.end method

.method public static get(Ljava/lang/String;Lcom/onesignal/OneSignalRestClient$ResponseHandler;Ljava/lang/String;)V
    .locals 3
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "responseHandler"    # Lcom/onesignal/OneSignalRestClient$ResponseHandler;
    .param p2, "cacheKey"    # Ljava/lang/String;

    .line 83
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/onesignal/OneSignalRestClient$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/onesignal/OneSignalRestClient$3;-><init>(Ljava/lang/String;Lcom/onesignal/OneSignalRestClient$ResponseHandler;Ljava/lang/String;)V

    const-string v2, "OS_REST_ASYNC_GET"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 87
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 88
    return-void
.end method

.method public static getSync(Ljava/lang/String;Lcom/onesignal/OneSignalRestClient$ResponseHandler;Ljava/lang/String;)V
    .locals 6
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "responseHandler"    # Lcom/onesignal/OneSignalRestClient$ResponseHandler;
    .param p2, "cacheKey"    # Ljava/lang/String;

    .line 91
    const/4 v1, 0x0

    const/4 v2, 0x0

    const v4, 0xea60

    move-object v0, p0

    move-object v3, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/onesignal/OneSignalRestClient;->makeRequest(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/onesignal/OneSignalRestClient$ResponseHandler;ILjava/lang/String;)V

    .line 92
    return-void
.end method

.method private static getThreadTimeout(I)I
    .locals 1
    .param p0, "timeout"    # I

    .line 62
    add-int/lit16 v0, p0, 0x1388

    return v0
.end method

.method private static makeRequest(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/onesignal/OneSignalRestClient$ResponseHandler;ILjava/lang/String;)V
    .locals 12
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "jsonBody"    # Lorg/json/JSONObject;
    .param p3, "responseHandler"    # Lcom/onesignal/OneSignalRestClient$ResponseHandler;
    .param p4, "timeout"    # I
    .param p5, "cacheKey"    # Ljava/lang/String;

    .line 103
    move-object v9, p1

    invoke-static {}, Lcom/onesignal/OSUtils;->isRunningOnMainThread()Z

    move-result v0

    if-nez v0, :cond_3

    .line 107
    if-eqz v9, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/onesignal/OneSignal;->shouldLogUserPrivacyConsentErrorMessageForMethodName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    return-void

    .line 110
    :cond_0
    const/4 v0, 0x1

    new-array v10, v0, [Ljava/lang/Thread;

    .line 111
    .local v10, "callbackThread":[Ljava/lang/Thread;
    new-instance v0, Ljava/lang/Thread;

    new-instance v11, Lcom/onesignal/OneSignalRestClient$4;

    move-object v1, v11

    move-object v2, v10

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move/from16 v7, p4

    move-object/from16 v8, p5

    invoke-direct/range {v1 .. v8}, Lcom/onesignal/OneSignalRestClient$4;-><init>([Ljava/lang/Thread;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/onesignal/OneSignalRestClient$ResponseHandler;ILjava/lang/String;)V

    const-string v1, "OS_HTTPConnection"

    invoke-direct {v0, v11, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    move-object v1, v0

    .line 117
    .local v1, "connectionThread":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 122
    :try_start_0
    invoke-static/range {p4 .. p4}, Lcom/onesignal/OneSignalRestClient;->getThreadTimeout(I)I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Ljava/lang/Thread;->join(J)V

    .line 123
    invoke-virtual {v1}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    sget-object v2, Ljava/lang/Thread$State;->TERMINATED:Ljava/lang/Thread$State;

    if-eq v0, v2, :cond_1

    .line 124
    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 125
    :cond_1
    const/4 v0, 0x0

    aget-object v2, v10, v0

    if-eqz v2, :cond_2

    .line 126
    aget-object v0, v10, v0

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    :cond_2
    goto :goto_0

    .line 127
    :catch_0
    move-exception v0

    .line 128
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 130
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_0
    return-void

    .line 104
    .end local v1    # "connectionThread":Ljava/lang/Thread;
    .end local v10    # "callbackThread":[Ljava/lang/Thread;
    :cond_3
    new-instance v0, Lcom/onesignal/OneSignalRestClient$OneSignalNetworkCallException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Method: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " was called from the Main Thread!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/onesignal/OneSignalRestClient$OneSignalNetworkCallException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static newHttpURLConnection(Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 3
    .param p0, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 293
    new-instance v0, Ljava/net/URL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://api.onesignal.com/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    return-object v0
.end method

.method public static post(Ljava/lang/String;Lorg/json/JSONObject;Lcom/onesignal/OneSignalRestClient$ResponseHandler;)V
    .locals 3
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "jsonBody"    # Lorg/json/JSONObject;
    .param p2, "responseHandler"    # Lcom/onesignal/OneSignalRestClient$ResponseHandler;

    .line 75
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/onesignal/OneSignalRestClient$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/onesignal/OneSignalRestClient$2;-><init>(Ljava/lang/String;Lorg/json/JSONObject;Lcom/onesignal/OneSignalRestClient$ResponseHandler;)V

    const-string v2, "OS_REST_ASYNC_POST"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 79
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 80
    return-void
.end method

.method public static postSync(Ljava/lang/String;Lorg/json/JSONObject;Lcom/onesignal/OneSignalRestClient$ResponseHandler;)V
    .locals 6
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "jsonBody"    # Lorg/json/JSONObject;
    .param p2, "responseHandler"    # Lcom/onesignal/OneSignalRestClient$ResponseHandler;

    .line 99
    const-string v1, "POST"

    const v4, 0x1d4c0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Lcom/onesignal/OneSignalRestClient;->makeRequest(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/onesignal/OneSignalRestClient$ResponseHandler;ILjava/lang/String;)V

    .line 100
    return-void
.end method

.method public static put(Ljava/lang/String;Lorg/json/JSONObject;Lcom/onesignal/OneSignalRestClient$ResponseHandler;)V
    .locals 3
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "jsonBody"    # Lorg/json/JSONObject;
    .param p2, "responseHandler"    # Lcom/onesignal/OneSignalRestClient$ResponseHandler;

    .line 67
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/onesignal/OneSignalRestClient$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/onesignal/OneSignalRestClient$1;-><init>(Ljava/lang/String;Lorg/json/JSONObject;Lcom/onesignal/OneSignalRestClient$ResponseHandler;)V

    const-string v2, "OS_REST_ASYNC_PUT"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 71
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 72
    return-void
.end method

.method public static putSync(Ljava/lang/String;Lorg/json/JSONObject;Lcom/onesignal/OneSignalRestClient$ResponseHandler;)V
    .locals 6
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "jsonBody"    # Lorg/json/JSONObject;
    .param p2, "responseHandler"    # Lcom/onesignal/OneSignalRestClient$ResponseHandler;

    .line 95
    const-string v1, "PUT"

    const v4, 0x1d4c0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Lcom/onesignal/OneSignalRestClient;->makeRequest(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/onesignal/OneSignalRestClient$ResponseHandler;ILjava/lang/String;)V

    .line 96
    return-void
.end method

.method private static startHTTPConnection(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/onesignal/OneSignalRestClient$ResponseHandler;ILjava/lang/String;)Ljava/lang/Thread;
    .locals 17
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "jsonBody"    # Lorg/json/JSONObject;
    .param p3, "responseHandler"    # Lcom/onesignal/OneSignalRestClient$ResponseHandler;
    .param p4, "timeout"    # I
    .param p5, "cacheKey"    # Ljava/lang/String;

    .line 133
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    const-string v6, "OneSignalRestClient: "

    const/4 v7, -0x1

    .line 134
    .local v7, "httpResponse":I
    const/4 v8, 0x0

    .line 137
    .local v8, "con":Ljava/net/HttpURLConnection;
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x1a

    if-lt v0, v9, :cond_0

    .line 138
    const/16 v0, 0x2710

    invoke-static {v0}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 142
    :cond_0
    const/4 v9, 0x0

    :try_start_0
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "OneSignalRestClient: Making request to: https://api.onesignal.com/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 143
    invoke-static/range {p0 .. p0}, Lcom/onesignal/OneSignalRestClient;->newHttpURLConnection(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v0

    move-object v8, v0

    .line 145
    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 146
    invoke-virtual {v8, v4}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 147
    invoke-virtual {v8, v4}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 148
    const-string v0, "SDK-Version"

    const-string v10, "onesignal/android/031504"

    invoke-virtual {v8, v0, v10}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    const-string v0, "Accept"

    const-string v10, "application/vnd.onesignal.v1+json"

    invoke-virtual {v8, v0, v10}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    const/4 v0, 0x1

    if-eqz p2, :cond_1

    .line 152
    invoke-virtual {v8, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 154
    :cond_1
    if-eqz v2, :cond_2

    .line 155
    const-string v10, "Content-Type"

    const-string v11, "application/json; charset=UTF-8"

    invoke-virtual {v8, v10, v11}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    invoke-virtual {v8, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 157
    invoke-virtual {v8, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    :cond_2
    const-string v0, "UTF-8"

    if-eqz p2, :cond_3

    .line 161
    :try_start_1
    invoke-virtual/range {p2 .. p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v10

    .line 162
    .local v10, "strJsonBody":Ljava/lang/String;
    sget-object v11, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " SEND JSON: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 164
    invoke-virtual {v10, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v11

    .line 165
    .local v11, "sendBytes":[B
    array-length v12, v11

    invoke-virtual {v8, v12}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 167
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v12

    .line 168
    .local v12, "outputStream":Ljava/io/OutputStream;
    invoke-virtual {v12, v11}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 171
    .end local v10    # "strJsonBody":Ljava/lang/String;
    .end local v11    # "sendBytes":[B
    .end local v12    # "outputStream":Ljava/io/OutputStream;
    :cond_3
    const-string v10, "PREFS_OS_ETAG_PREFIX_"

    if-eqz v5, :cond_4

    .line 172
    :try_start_2
    sget-object v11, Lcom/onesignal/OneSignalPrefs;->PREFS_ONESIGNAL:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v9}, Lcom/onesignal/OneSignalPrefs;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 177
    .local v11, "eTag":Ljava/lang/String;
    if-eqz v11, :cond_4

    .line 178
    const-string v12, "if-none-match"

    invoke-virtual {v8, v12, v11}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    sget-object v12, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "OneSignalRestClient: Adding header if-none-match: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 184
    .end local v11    # "eTag":Ljava/lang/String;
    :cond_4
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v11

    move v7, v11

    .line 186
    sget-object v11, Lcom/onesignal/OneSignal$LOG_LEVEL;->VERBOSE:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "OneSignalRestClient: After con.getResponseCode to: https://api.onesignal.com/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 188
    const-string v11, " RECEIVED JSON: "

    const-string v12, ""

    const-string v13, "GET"

    const-string v14, "\\A"

    const-string v15, "PREFS_OS_HTTP_CACHE_PREFIX_"

    sparse-switch v7, :sswitch_data_0

    .line 228
    move-object/from16 v16, v12

    :try_start_3
    sget-object v4, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    goto/16 :goto_3

    .line 190
    :sswitch_0
    sget-object v0, Lcom/onesignal/OneSignalPrefs;->PREFS_ONESIGNAL:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10, v9}, Lcom/onesignal/OneSignalPrefs;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 195
    .local v0, "cachedResponse":Ljava/lang/String;
    sget-object v10, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v2, :cond_5

    goto :goto_0

    :cond_5
    move-object v13, v2

    :goto_0
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " - Using Cached response due to 304: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 196
    invoke-static {v3, v0}, Lcom/onesignal/OneSignalRestClient;->callResponseHandlerOnSuccess(Lcom/onesignal/OneSignalRestClient$ResponseHandler;Ljava/lang/String;)Ljava/lang/Thread;

    move-result-object v6

    .line 197
    .local v6, "callbackThread":Ljava/lang/Thread;
    goto/16 :goto_6

    .line 200
    .end local v0    # "cachedResponse":Ljava/lang/String;
    .end local v6    # "callbackThread":Ljava/lang/Thread;
    :sswitch_1
    sget-object v9, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v12

    const-string v12, "OneSignalRestClient: Successfully finished request to: https://api.onesignal.com/"

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 202
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 203
    .local v4, "inputStream":Ljava/io/InputStream;
    new-instance v9, Ljava/util/Scanner;

    invoke-direct {v9, v4, v0}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    move-object v0, v9

    .line 204
    .local v0, "scanner":Ljava/util/Scanner;
    invoke-virtual {v0, v14}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Scanner;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-virtual {v0}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v12

    goto :goto_1

    :cond_6
    move-object/from16 v12, v16

    :goto_1
    move-object v9, v12

    .line 205
    .local v9, "json":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/util/Scanner;->close()V

    .line 206
    sget-object v12, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v2, :cond_7

    goto :goto_2

    :cond_7
    move-object v13, v2

    :goto_2
    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v12, v11}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 208
    if-eqz v5, :cond_8

    .line 209
    const-string v11, "etag"

    invoke-virtual {v8, v11}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 210
    .restart local v11    # "eTag":Ljava/lang/String;
    if-eqz v11, :cond_8

    .line 211
    sget-object v12, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "OneSignalRestClient: Response has etag of "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " so caching the response."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 212
    sget-object v12, Lcom/onesignal/OneSignalPrefs;->PREFS_ONESIGNAL:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v12, v10, v11}, Lcom/onesignal/OneSignalPrefs;->saveString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    sget-object v10, Lcom/onesignal/OneSignalPrefs;->PREFS_ONESIGNAL:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12, v9}, Lcom/onesignal/OneSignalPrefs;->saveString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    .end local v11    # "eTag":Ljava/lang/String;
    :cond_8
    invoke-static {v3, v9}, Lcom/onesignal/OneSignalRestClient;->callResponseHandlerOnSuccess(Lcom/onesignal/OneSignalRestClient$ResponseHandler;Ljava/lang/String;)Ljava/lang/Thread;

    move-result-object v6

    .line 226
    .restart local v6    # "callbackThread":Ljava/lang/Thread;
    goto/16 :goto_6

    .line 228
    .end local v0    # "scanner":Ljava/util/Scanner;
    .end local v4    # "inputStream":Ljava/io/InputStream;
    .end local v6    # "callbackThread":Ljava/lang/Thread;
    .end local v9    # "json":Ljava/lang/String;
    :goto_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "OneSignalRestClient: Failed request to: https://api.onesignal.com/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 229
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v4

    .line 230
    .restart local v4    # "inputStream":Ljava/io/InputStream;
    if-nez v4, :cond_9

    .line 231
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    move-object v4, v9

    .line 233
    :cond_9
    const/4 v9, 0x0

    .line 234
    .local v9, "jsonResponse":Ljava/lang/String;
    if-eqz v4, :cond_b

    .line 235
    new-instance v10, Ljava/util/Scanner;

    invoke-direct {v10, v4, v0}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    move-object v0, v10

    .line 236
    .restart local v0    # "scanner":Ljava/util/Scanner;
    invoke-virtual {v0, v14}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/Scanner;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_a

    invoke-virtual {v0}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v12

    goto :goto_4

    :cond_a
    move-object/from16 v12, v16

    :goto_4
    move-object v9, v12

    .line 237
    invoke-virtual {v0}, Ljava/util/Scanner;->close()V

    .line 238
    sget-object v10, Lcom/onesignal/OneSignal$LOG_LEVEL;->WARN:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    goto :goto_5

    .line 241
    .end local v0    # "scanner":Ljava/util/Scanner;
    :cond_b
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->WARN:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " HTTP Code: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " No response body!"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 243
    :goto_5
    const/4 v10, 0x0

    invoke-static {v3, v7, v9, v10}, Lcom/onesignal/OneSignalRestClient;->callResponseHandlerOnFailure(Lcom/onesignal/OneSignalRestClient$ResponseHandler;ILjava/lang/String;Ljava/lang/Throwable;)Ljava/lang/Thread;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v6, v0

    .line 254
    .end local v4    # "inputStream":Ljava/io/InputStream;
    .end local v9    # "jsonResponse":Ljava/lang/String;
    .restart local v6    # "callbackThread":Ljava/lang/Thread;
    :goto_6
    if-eqz v8, :cond_e

    .line 255
    :goto_7
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_a

    .line 245
    .end local v6    # "callbackThread":Ljava/lang/Thread;
    :catchall_0
    move-exception v0

    .line 246
    .local v0, "t":Ljava/lang/Throwable;
    :try_start_4
    instance-of v4, v0, Ljava/net/ConnectException;

    if-nez v4, :cond_d

    instance-of v4, v0, Ljava/net/UnknownHostException;

    if-eqz v4, :cond_c

    goto :goto_8

    .line 249
    :cond_c
    sget-object v4, Lcom/onesignal/OneSignal$LOG_LEVEL;->WARN:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " Error thrown from network stack. "

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6, v0}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_9

    .line 247
    :cond_d
    :goto_8
    sget-object v4, Lcom/onesignal/OneSignal$LOG_LEVEL;->INFO:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "OneSignalRestClient: Could not send last request, device is offline. Throwable: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 251
    :goto_9
    const/4 v4, 0x0

    invoke-static {v3, v7, v4, v0}, Lcom/onesignal/OneSignalRestClient;->callResponseHandlerOnFailure(Lcom/onesignal/OneSignalRestClient$ResponseHandler;ILjava/lang/String;Ljava/lang/Throwable;)Ljava/lang/Thread;

    move-result-object v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object v6, v4

    .line 254
    .end local v0    # "t":Ljava/lang/Throwable;
    .restart local v6    # "callbackThread":Ljava/lang/Thread;
    if-eqz v8, :cond_e

    .line 255
    goto :goto_7

    .line 258
    :cond_e
    :goto_a
    return-object v6

    .line 254
    .end local v6    # "callbackThread":Ljava/lang/Thread;
    :catchall_1
    move-exception v0

    if-eqz v8, :cond_f

    .line 255
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_f
    goto :goto_c

    :goto_b
    throw v0

    :goto_c
    goto :goto_b

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_1
        0xca -> :sswitch_1
        0x130 -> :sswitch_0
    .end sparse-switch
.end method
