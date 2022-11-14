.class public Lcom/app/tmyclean/models/Help;
.super Ljava/lang/Object;
.source "Help.java"


# instance fields
.field private content:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/app/tmyclean/models/Help;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/app/tmyclean/models/Help;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/app/tmyclean/models/Help;->title:Ljava/lang/String;

    return-object v0
.end method
