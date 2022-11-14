.class Lcom/app/tmyclean/activities/MainActivity$7;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/app/tmyclean/activities/MainActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V
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

    .line 349
    iput-object p1, p0, Lcom/app/tmyclean/activities/MainActivity$7;->this$0:Lcom/app/tmyclean/activities/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dialog",
            "id"
        }
    .end annotation

    .line 351
    iget-object v0, p0, Lcom/app/tmyclean/activities/MainActivity$7;->this$0:Lcom/app/tmyclean/activities/MainActivity;

    invoke-virtual {v0}, Lcom/app/tmyclean/activities/MainActivity;->finish()V

    .line 352
    return-void
.end method
