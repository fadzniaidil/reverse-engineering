.class Lcom/app/tmyclean/activities/ActivityCart$3;
.super Ljava/lang/Object;
.source "ActivityCart.java"

# interfaces
.implements Lcom/app/tmyclean/activities/ActivityCart$ClickListener;


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

    .line 128
    iput-object p1, p0, Lcom/app/tmyclean/activities/ActivityCart$3;->this$0:Lcom/app/tmyclean/activities/ActivityCart;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;I)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10
        }
        names = {
            "view",
            "position"
        }
    .end annotation

    .line 132
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/app/tmyclean/activities/ActivityCart$3$1;

    invoke-direct {v1, p0, p2}, Lcom/app/tmyclean/activities/ActivityCart$3$1;-><init>(Lcom/app/tmyclean/activities/ActivityCart$3;I)V

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 139
    return-void
.end method

.method public onLongClick(Landroid/view/View;I)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "position"
        }
    .end annotation

    .line 144
    return-void
.end method
