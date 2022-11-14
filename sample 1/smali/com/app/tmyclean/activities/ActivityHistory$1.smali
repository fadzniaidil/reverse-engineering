.class Lcom/app/tmyclean/activities/ActivityHistory$1;
.super Ljava/lang/Object;
.source "ActivityHistory.java"

# interfaces
.implements Lcom/app/tmyclean/activities/ActivityHistory$ClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/app/tmyclean/activities/ActivityHistory;->onCreate(Landroid/os/Bundle;)V
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

    .line 113
    iput-object p1, p0, Lcom/app/tmyclean/activities/ActivityHistory$1;->this$0:Lcom/app/tmyclean/activities/ActivityHistory;

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

    .line 116
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/app/tmyclean/activities/ActivityHistory$1$1;

    invoke-direct {v1, p0, p2}, Lcom/app/tmyclean/activities/ActivityHistory$1$1;-><init>(Lcom/app/tmyclean/activities/ActivityHistory$1;I)V

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 122
    return-void
.end method

.method public onLongClick(Landroid/view/View;I)V
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

    .line 126
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/app/tmyclean/activities/ActivityHistory$1$2;

    invoke-direct {v1, p0, p2}, Lcom/app/tmyclean/activities/ActivityHistory$1$2;-><init>(Lcom/app/tmyclean/activities/ActivityHistory$1;I)V

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 132
    return-void
.end method
