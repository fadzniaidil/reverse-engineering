.class public Lcom/app/tmyclean/models/History;
.super Ljava/lang/Object;
.source "History.java"


# instance fields
.field private code:Ljava/lang/String;

.field private date_time:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private order_list:Ljava/lang/String;

.field private order_total:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "code"    # Ljava/lang/String;
    .param p3, "order_list"    # Ljava/lang/String;
    .param p4, "order_total"    # Ljava/lang/String;
    .param p5, "date_time"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "id",
            "code",
            "order_list",
            "order_total",
            "date_time"
        }
    .end annotation

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/app/tmyclean/models/History;->id:Ljava/lang/String;

    .line 13
    iput-object p2, p0, Lcom/app/tmyclean/models/History;->code:Ljava/lang/String;

    .line 14
    iput-object p3, p0, Lcom/app/tmyclean/models/History;->order_list:Ljava/lang/String;

    .line 15
    iput-object p4, p0, Lcom/app/tmyclean/models/History;->order_total:Ljava/lang/String;

    .line 16
    iput-object p5, p0, Lcom/app/tmyclean/models/History;->date_time:Ljava/lang/String;

    .line 17
    return-void
.end method
