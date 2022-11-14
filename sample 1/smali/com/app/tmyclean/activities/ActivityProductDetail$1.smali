.class Lcom/app/tmyclean/activities/ActivityProductDetail$1;
.super Ljava/lang/Object;
.source "ActivityProductDetail.java"

# interfaces
.implements Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/app/tmyclean/activities/ActivityProductDetail;->setupToolbar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field isShow:Z

.field scrollRange:I

.field final synthetic this$0:Lcom/app/tmyclean/activities/ActivityProductDetail;


# direct methods
.method constructor <init>(Lcom/app/tmyclean/activities/ActivityProductDetail;)V
    .locals 1
    .param p1, "this$0"    # Lcom/app/tmyclean/activities/ActivityProductDetail;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 118
    iput-object p1, p0, Lcom/app/tmyclean/activities/ActivityProductDetail$1;->this$0:Lcom/app/tmyclean/activities/ActivityProductDetail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/app/tmyclean/activities/ActivityProductDetail$1;->isShow:Z

    .line 120
    const/4 v0, -0x1

    iput v0, p0, Lcom/app/tmyclean/activities/ActivityProductDetail$1;->scrollRange:I

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

    .line 124
    iget v0, p0, Lcom/app/tmyclean/activities/ActivityProductDetail$1;->scrollRange:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 125
    invoke-virtual {p1}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    move-result v0

    iput v0, p0, Lcom/app/tmyclean/activities/ActivityProductDetail$1;->scrollRange:I

    .line 127
    :cond_0
    iget v0, p0, Lcom/app/tmyclean/activities/ActivityProductDetail$1;->scrollRange:I

    add-int/2addr v0, p2

    if-nez v0, :cond_1

    .line 128
    iget-object v0, p0, Lcom/app/tmyclean/activities/ActivityProductDetail$1;->this$0:Lcom/app/tmyclean/activities/ActivityProductDetail;

    invoke-static {v0}, Lcom/app/tmyclean/activities/ActivityProductDetail;->access$100(Lcom/app/tmyclean/activities/ActivityProductDetail;)Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/app/tmyclean/activities/ActivityProductDetail$1;->this$0:Lcom/app/tmyclean/activities/ActivityProductDetail;

    invoke-static {v1}, Lcom/app/tmyclean/activities/ActivityProductDetail;->access$000(Lcom/app/tmyclean/activities/ActivityProductDetail;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setTitle(Ljava/lang/CharSequence;)V

    .line 129
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/app/tmyclean/activities/ActivityProductDetail$1;->isShow:Z

    goto :goto_0

    .line 130
    :cond_1
    iget-boolean v0, p0, Lcom/app/tmyclean/activities/ActivityProductDetail$1;->isShow:Z

    if-eqz v0, :cond_2

    .line 131
    iget-object v0, p0, Lcom/app/tmyclean/activities/ActivityProductDetail$1;->this$0:Lcom/app/tmyclean/activities/ActivityProductDetail;

    invoke-static {v0}, Lcom/app/tmyclean/activities/ActivityProductDetail;->access$100(Lcom/app/tmyclean/activities/ActivityProductDetail;)Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setTitle(Ljava/lang/CharSequence;)V

    .line 132
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/app/tmyclean/activities/ActivityProductDetail$1;->isShow:Z

    .line 134
    :cond_2
    :goto_0
    return-void
.end method
