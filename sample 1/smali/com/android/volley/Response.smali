.class public Lcom/android/volley/Response;
.super Ljava/lang/Object;
.source "Response.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/volley/Response$ErrorListener;,
        Lcom/android/volley/Response$Listener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final cacheEntry:Lcom/android/volley/Cache$Entry;

.field public final error:Lcom/android/volley/VolleyError;

.field public intermediate:Z

.field public final result:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/android/volley/VolleyError;)V
    .locals 1
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .line 79
    .local p0, "this":Lcom/android/volley/Response;, "Lcom/android/volley/Response<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/volley/Response;->intermediate:Z

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/volley/Response;->result:Ljava/lang/Object;

    .line 81
    iput-object v0, p0, Lcom/android/volley/Response;->cacheEntry:Lcom/android/volley/Cache$Entry;

    .line 82
    iput-object p1, p0, Lcom/android/volley/Response;->error:Lcom/android/volley/VolleyError;

    .line 83
    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Lcom/android/volley/Cache$Entry;)V
    .locals 1
    .param p2, "cacheEntry"    # Lcom/android/volley/Cache$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/android/volley/Cache$Entry;",
            ")V"
        }
    .end annotation

    .line 73
    .local p0, "this":Lcom/android/volley/Response;, "Lcom/android/volley/Response<TT;>;"
    .local p1, "result":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/volley/Response;->intermediate:Z

    .line 74
    iput-object p1, p0, Lcom/android/volley/Response;->result:Ljava/lang/Object;

    .line 75
    iput-object p2, p0, Lcom/android/volley/Response;->cacheEntry:Lcom/android/volley/Cache$Entry;

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/volley/Response;->error:Lcom/android/volley/VolleyError;

    .line 77
    return-void
.end method

.method public static error(Lcom/android/volley/VolleyError;)Lcom/android/volley/Response;
    .locals 1
    .param p0, "error"    # Lcom/android/volley/VolleyError;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/volley/VolleyError;",
            ")",
            "Lcom/android/volley/Response<",
            "TT;>;"
        }
    .end annotation

    .line 53
    new-instance v0, Lcom/android/volley/Response;

    invoke-direct {v0, p0}, Lcom/android/volley/Response;-><init>(Lcom/android/volley/VolleyError;)V

    return-object v0
.end method

.method public static success(Ljava/lang/Object;Lcom/android/volley/Cache$Entry;)Lcom/android/volley/Response;
    .locals 1
    .param p1, "cacheEntry"    # Lcom/android/volley/Cache$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/android/volley/Cache$Entry;",
            ")",
            "Lcom/android/volley/Response<",
            "TT;>;"
        }
    .end annotation

    .line 45
    .local p0, "result":Ljava/lang/Object;, "TT;"
    new-instance v0, Lcom/android/volley/Response;

    invoke-direct {v0, p0, p1}, Lcom/android/volley/Response;-><init>(Ljava/lang/Object;Lcom/android/volley/Cache$Entry;)V

    return-object v0
.end method


# virtual methods
.method public isSuccess()Z
    .locals 1

    .line 70
    .local p0, "this":Lcom/android/volley/Response;, "Lcom/android/volley/Response<TT;>;"
    iget-object v0, p0, Lcom/android/volley/Response;->error:Lcom/android/volley/VolleyError;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
