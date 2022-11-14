.class Lcom/app/tmyclean/activities/ActivityNotificationDetail$1;
.super Ljava/lang/Object;
.source "ActivityNotificationDetail.java"

# interfaces
.implements Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/app/tmyclean/activities/ActivityNotificationDetail;->setupToolbar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field isShow:Z

.field scrollRange:I

.field final synthetic this$0:Lcom/app/tmyclean/activities/ActivityNotificationDetail;


# direct methods
.method constructor <init>(Lcom/app/tmyclean/activities/ActivityNotificationDetail;)V
    .locals 1
    .param p1, "this$0"    # Lcom/app/tmyclean/activities/ActivityNotificationDetail;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 123
    iput-object p1, p0, Lcom/app/tmyclean/activities/ActivityNotificationDetail$1;->this$0:Lcom/app/tmyclean/activities/ActivityNotificationDetail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/app/tmyclean/activities/ActivityNotificationDetail$1;->isShow:Z

    .line 125
    const/4 v0, -0x1

    iput v0, p0, Lcom/app/tmyclean/activities/ActivityNotificationDetail$1;->scrollRange:I

    return-void
.end method


# virtual methods
.method public onOffsetChanged(Lcom/google/android/material/appbar/AppBarLayout;I)V
    .locals 2
    .param p1, "appBarLayout"    # Lcom/google/android/material/appbar/AppBarLayout;
    .param p2, "verticalOffset"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "appBarLayout",
            "verticalOffset"
        }
    .end annotation

    .line 129
    iget v0, p0, Lcom/app/tmyclean/activities/ActivityNotificationDetail$1;->scrollRange:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 130
    invoke-virtual {p1}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    move-result v0

    iput v0, p0, Lcom/app/tmyclean/activities/ActivityNotificationDetail$1;->scrollRange:I

    .line 132
    :cond_0
    iget v0, p0, Lcom/app/tmyclean/activities/ActivityNotificationDetail$1;->scrollRange:I

    add-int/2addr v0, p2

    if-nez v0, :cond_1

    .line 133
    iget-object v0, p0, Lcom/app/tmyclean/activities/ActivityNotificationDetail$1;->this$0:Lcom/app/tmyclean/activities/ActivityNotificationDetail;

    invoke-static {v0}, Lcom/app/tmyclean/activities/ActivityNotificationDetail;->access$100(Lcom/app/tmyclean/activities/ActivityNotificationDetail;)Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/app/tmyclean/activities/ActivityNotificationDetail$1;->this$0:Lcom/app/tmyclean/activities/ActivityNotificationDetail;

    invoke-static {v1}, Lcom/app/tmyclean/activities/ActivityNotificationDetail;->access$000(Lcom/app/tmyclean/activities/ActivityNotificationDetail;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setTitle(Ljava/lang/CharSequence;)V

    .line 134
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/app/tmyclean/activities/ActivityNotificationDetail$1;->isShow:Z

    goto :goto_0

    .line 135
    :cond_1
    iget-boolean v0, p0, Lcom/app/tmyclean/activities/ActivityNotificationDetail$1;->isShow:Z

    if-eqz v0, :cond_2

    .line 136
    iget-object v0, p0, Lcom/app/tmyclean/activities/ActivityNotificationDetail$1;->this$0:Lcom/app/tmyclean/activities/ActivityNotificationDetail;

    invoke-static {v0}, Lcom/app/tmyclean/activities/ActivityNotificationDetail;->access$100(Lcom/app/tmyclean/activities/ActivityNotificationDetail;)Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setTitle(Ljava/lang/CharSequence;)V

    .line 137
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/app/tmyclean/activities/ActivityNotificationDetail$1;->isShow:Z

    .line 139
    :cond_2
    :goto_0
    return-void
.end method
