.class Lcom/app/tmyclean/activities/MainActivity$6;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/app/tmyclean/activities/MainActivity;->makeJsonObjectRequest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/app/tmyclean/activities/MainActivity;


# direct methods
.method constructor <init>(Lcom/app/tmyclean/activities/MainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/app/tmyclean/activities/MainActivity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 325
    iput-object p1, p0, Lcom/app/tmyclean/activities/MainActivity$6;->this$0:Lcom/app/tmyclean/activities/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 3
    .param p1, "error"    # Lcom/android/volley/VolleyError;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "error"
        }
    .end annotation

    .line 328
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "INFO"

    invoke-static {v1, v0}, Lcom/android/volley/VolleyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 329
    iget-object v0, p0, Lcom/app/tmyclean/activities/MainActivity$6;->this$0:Lcom/app/tmyclean/activities/MainActivity;

    invoke-virtual {v0}, Lcom/app/tmyclean/activities/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 330
    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 329
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 330
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 331
    return-void
.end method
