.class public final synthetic Lcom/app/tmyclean/activities/-$$Lambda$ioEKAPrf4vYdoP3LUvBiyjjAO1U;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/app/tmyclean/activities/ActivityImageDetail;


# direct methods
.method public synthetic constructor <init>(Lcom/app/tmyclean/activities/ActivityImageDetail;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/app/tmyclean/activities/-$$Lambda$ioEKAPrf4vYdoP3LUvBiyjjAO1U;->f$0:Lcom/app/tmyclean/activities/ActivityImageDetail;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/app/tmyclean/activities/-$$Lambda$ioEKAPrf4vYdoP3LUvBiyjjAO1U;->f$0:Lcom/app/tmyclean/activities/ActivityImageDetail;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
