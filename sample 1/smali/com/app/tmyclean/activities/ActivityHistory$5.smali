.class Lcom/app/tmyclean/activities/ActivityHistory$5;
.super Ljava/lang/Object;
.source "ActivityHistory.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/app/tmyclean/activities/ActivityHistory;->showBottomSheetDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/app/tmyclean/activities/ActivityHistory;


# direct methods
.method constructor <init>(Lcom/app/tmyclean/activities/ActivityHistory;)V
    .locals 0
    .param p1, "this$0"    # Lcom/app/tmyclean/activities/ActivityHistory;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 344
    iput-object p1, p0, Lcom/app/tmyclean/activities/ActivityHistory$5;->this$0:Lcom/app/tmyclean/activities/ActivityHistory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dialog"
        }
    .end annotation

    .line 347
    iget-object v0, p0, Lcom/app/tmyclean/activities/ActivityHistory$5;->this$0:Lcom/app/tmyclean/activities/ActivityHistory;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/app/tmyclean/activities/ActivityHistory;->access$102(Lcom/app/tmyclean/activities/ActivityHistory;Lcom/google/android/material/bottomsheet/BottomSheetDialog;)Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    .line 348
    return-void
.end method
