.class Lcom/app/tmyclean/activities/ActivityNotificationDetail$6;
.super Ljava/lang/Object;
.source "ActivityNotificationDetail.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/app/tmyclean/activities/ActivityNotificationDetail;->displayData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/app/tmyclean/activities/ActivityNotificationDetail;


# direct methods
.method constructor <init>(Lcom/app/tmyclean/activities/ActivityNotificationDetail;)V
    .locals 0
    .param p1, "this$0"    # Lcom/app/tmyclean/activities/ActivityNotificationDetail;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 233
    iput-object p1, p0, Lcom/app/tmyclean/activities/ActivityNotificationDetail$6;->this$0:Lcom/app/tmyclean/activities/ActivityNotificationDetail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 236
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/app/tmyclean/activities/ActivityNotificationDetail$6;->this$0:Lcom/app/tmyclean/activities/ActivityNotificationDetail;

    invoke-virtual {v1}, Lcom/app/tmyclean/activities/ActivityNotificationDetail;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/app/tmyclean/activities/ActivityImageDetail;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 237
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/app/tmyclean/activities/ActivityNotificationDetail$6;->this$0:Lcom/app/tmyclean/activities/ActivityNotificationDetail;

    invoke-static {v1}, Lcom/app/tmyclean/activities/ActivityNotificationDetail;->access$300(Lcom/app/tmyclean/activities/ActivityNotificationDetail;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "image"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 238
    iget-object v1, p0, Lcom/app/tmyclean/activities/ActivityNotificationDetail$6;->this$0:Lcom/app/tmyclean/activities/ActivityNotificationDetail;

    invoke-virtual {v1, v0}, Lcom/app/tmyclean/activities/ActivityNotificationDetail;->startActivity(Landroid/content/Intent;)V

    .line 239
    return-void
.end method
