.class abstract Lcom/google/android/datatransport/runtime/dagger/internal/AbstractMapFactory;
.super Ljava/lang/Object;
.source "AbstractMapFactory.java"

# interfaces
.implements Lcom/google/android/datatransport/runtime/dagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/datatransport/runtime/dagger/internal/AbstractMapFactory$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        "V2:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/datatransport/runtime/dagger/internal/Factory<",
        "Ljava/util/Map<",
        "TK;TV2;>;>;"
    }
.end annotation


# instance fields
.field private final contributingMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TK;",
            "Ljavax/inject/Provider<",
            "TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TK;",
            "Ljavax/inject/Provider<",
            "TV;>;>;)V"
        }
    .end annotation

    .line 37
    .local p0, "this":Lcom/google/android/datatransport/runtime/dagger/internal/AbstractMapFactory;, "Lcom/google/android/datatransport/runtime/dagger/internal/AbstractMapFactory<TK;TV;TV2;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<TK;Ljavax/inject/Provider<TV;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/datatransport/runtime/dagger/internal/AbstractMapFactory;->contributingMap:Ljava/util/Map;

    .line 39
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/datatransport/runtime/dagger/internal/AbstractMapFactory;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/datatransport/runtime/dagger/internal/AbstractMapFactory;

    .line 34
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/dagger/internal/AbstractMapFactory;->contributingMap:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method final contributingMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;",
            "Ljavax/inject/Provider<",
            "TV;>;>;"
        }
    .end annotation

    .line 43
    .local p0, "this":Lcom/google/android/datatransport/runtime/dagger/internal/AbstractMapFactory;, "Lcom/google/android/datatransport/runtime/dagger/internal/AbstractMapFactory<TK;TV;TV2;>;"
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/dagger/internal/AbstractMapFactory;->contributingMap:Ljava/util/Map;

    return-object v0
.end method
