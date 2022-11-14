.class Lcom/app/tmyclean/activities/ActivityHistory$3;
.super Ljava/lang/Object;
.source "ActivityHistory.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/app/tmyclean/activities/ActivityHistory;->showClearDialog(II)V
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

    .line 198
    iput-object p1, p0, Lcom/app/tmyclean/activities/ActivityHistory$3;->this$0:Lcom/app/tmyclean/activities/ActivityHistory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dialog",
            "which"
        }
    .end annotation

    .line 201
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 202
    return-void
.end method
