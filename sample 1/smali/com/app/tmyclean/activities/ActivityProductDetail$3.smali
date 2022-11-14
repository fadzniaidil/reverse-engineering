.class Lcom/app/tmyclean/activities/ActivityProductDetail$3;
.super Ljava/lang/Object;
.source "ActivityProductDetail.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/app/tmyclean/activities/ActivityProductDetail;->displayData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/app/tmyclean/activities/ActivityProductDetail;


# direct methods
.method constructor <init>(Lcom/app/tmyclean/activities/ActivityProductDetail;)V
    .locals 0
    .param p1, "this$0"    # Lcom/app/tmyclean/activities/ActivityProductDetail;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 190
    iput-object p1, p0, Lcom/app/tmyclean/activities/ActivityProductDetail$3;->this$0:Lcom/app/tmyclean/activities/ActivityProductDetail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 193
    iget-object v0, p0, Lcom/app/tmyclean/activities/ActivityProductDetail$3;->this$0:Lcom/app/tmyclean/activities/ActivityProductDetail;

    invoke-virtual {v0}, Lcom/app/tmyclean/activities/ActivityProductDetail;->inputDialog()V

    .line 194
    return-void
.end method
