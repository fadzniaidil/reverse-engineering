.class Lcom/app/tmyclean/activities/ActivityCart$2;
.super Ljava/lang/Object;
.source "ActivityCart.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/app/tmyclean/activities/ActivityCart;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/app/tmyclean/activities/ActivityCart;


# direct methods
.method constructor <init>(Lcom/app/tmyclean/activities/ActivityCart;)V
    .locals 0
    .param p1, "this$0"    # Lcom/app/tmyclean/activities/ActivityCart;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 105
    iput-object p1, p0, Lcom/app/tmyclean/activities/ActivityCart$2;->this$0:Lcom/app/tmyclean/activities/ActivityCart;

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

    .line 108
    iget-object v0, p0, Lcom/app/tmyclean/activities/ActivityCart$2;->this$0:Lcom/app/tmyclean/activities/ActivityCart;

    invoke-virtual {v0}, Lcom/app/tmyclean/activities/ActivityCart;->finish()V

    .line 109
    return-void
.end method
