.class public Lcom/app/tmyclean/activities/MyApplication;
.super Landroid/app/Application;
.source "MyApplication.java"


# static fields
.field public static final TAG:Ljava/lang/String;

.field private static mInstance:Lcom/app/tmyclean/activities/MyApplication;


# instance fields
.field mFirebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

.field private mRequestQueue:Lcom/android/volley/RequestQueue;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    const-class v0, Lcom/app/tmyclean/activities/MyApplication;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/app/tmyclean/activities/MyApplication;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/app/tmyclean/activities/MyApplication;
    .locals 2

    const-class v0, Lcom/app/tmyclean/activities/MyApplication;

    monitor-enter v0

    .line 29
    :try_start_0
    sget-object v1, Lcom/app/tmyclean/activities/MyApplication;->mInstance:Lcom/app/tmyclean/activities/MyApplication;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 29
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public addToRequestQueue(Lcom/android/volley/Request;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "req"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/volley/Request<",
            "TT;>;)V"
        }
    .end annotation

    .line 47
    .local p1, "req":Lcom/android/volley/Request;, "Lcom/android/volley/Request<TT;>;"
    sget-object v0, Lcom/app/tmyclean/activities/MyApplication;->TAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/android/volley/Request;->setTag(Ljava/lang/Object;)Lcom/android/volley/Request;

    .line 48
    invoke-virtual {p0}, Lcom/app/tmyclean/activities/MyApplication;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 49
    return-void
.end method

.method public addToRequestQueue(Lcom/android/volley/Request;Ljava/lang/String;)V
    .locals 1
    .param p2, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "req",
            "tag"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/volley/Request<",
            "TT;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 42
    .local p1, "req":Lcom/android/volley/Request;, "Lcom/android/volley/Request<TT;>;"
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/app/tmyclean/activities/MyApplication;->TAG:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    invoke-virtual {p1, v0}, Lcom/android/volley/Request;->setTag(Ljava/lang/Object;)Lcom/android/volley/Request;

    .line 43
    invoke-virtual {p0}, Lcom/app/tmyclean/activities/MyApplication;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 44
    return-void
.end method

.method public cancelPendingRequests(Ljava/lang/Object;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tag"
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/app/tmyclean/activities/MyApplication;->mRequestQueue:Lcom/android/volley/RequestQueue;

    if-eqz v0, :cond_0

    .line 53
    invoke-virtual {v0, p1}, Lcom/android/volley/RequestQueue;->cancelAll(Ljava/lang/Object;)V

    .line 55
    :cond_0
    return-void
.end method

.method public getRequestQueue()Lcom/android/volley/RequestQueue;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/app/tmyclean/activities/MyApplication;->mRequestQueue:Lcom/android/volley/RequestQueue;

    if-nez v0, :cond_0

    .line 34
    invoke-virtual {p0}, Lcom/app/tmyclean/activities/MyApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/app/tmyclean/activities/MyApplication;->mRequestQueue:Lcom/android/volley/RequestQueue;

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/app/tmyclean/activities/MyApplication;->mRequestQueue:Lcom/android/volley/RequestQueue;

    return-object v0
.end method

.method public onCreate()V
    .locals 0

    .line 20
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 21
    sput-object p0, Lcom/app/tmyclean/activities/MyApplication;->mInstance:Lcom/app/tmyclean/activities/MyApplication;

    .line 26
    return-void
.end method
