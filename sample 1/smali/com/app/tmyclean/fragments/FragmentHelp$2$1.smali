.class Lcom/app/tmyclean/fragments/FragmentHelp$2$1;
.super Lcom/google/gson/reflect/TypeToken;
.source "FragmentHelp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/app/tmyclean/fragments/FragmentHelp$2;->onResponse(Lorg/json/JSONArray;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/reflect/TypeToken<",
        "Ljava/util/List<",
        "Lcom/app/tmyclean/models/Help;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/app/tmyclean/fragments/FragmentHelp$2;


# direct methods
.method constructor <init>(Lcom/app/tmyclean/fragments/FragmentHelp$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/app/tmyclean/fragments/FragmentHelp$2;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    .line 113
    iput-object p1, p0, Lcom/app/tmyclean/fragments/FragmentHelp$2$1;->this$1:Lcom/app/tmyclean/fragments/FragmentHelp$2;

    invoke-direct {p0}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    return-void
.end method
