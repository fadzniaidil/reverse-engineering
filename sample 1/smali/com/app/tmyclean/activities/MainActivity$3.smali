.class Lcom/app/tmyclean/activities/MainActivity$3;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/app/tmyclean/activities/MainActivity;->showAlertDialog()V
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

    .line 245
    iput-object p1, p0, Lcom/app/tmyclean/activities/MainActivity$3;->this$0:Lcom/app/tmyclean/activities/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
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

    .line 248
    iget-object v0, p0, Lcom/app/tmyclean/activities/MainActivity$3;->this$0:Lcom/app/tmyclean/activities/MainActivity;

    iget-object v0, v0, Lcom/app/tmyclean/activities/MainActivity;->dbhelper:Lcom/app/tmyclean/utilities/DBHelper;

    invoke-virtual {v0}, Lcom/app/tmyclean/utilities/DBHelper;->deleteAllData()V

    .line 249
    iget-object v0, p0, Lcom/app/tmyclean/activities/MainActivity$3;->this$0:Lcom/app/tmyclean/activities/MainActivity;

    iget-object v0, v0, Lcom/app/tmyclean/activities/MainActivity;->dbhelper:Lcom/app/tmyclean/utilities/DBHelper;

    invoke-virtual {v0}, Lcom/app/tmyclean/utilities/DBHelper;->close()V

    .line 250
    return-void
.end method
