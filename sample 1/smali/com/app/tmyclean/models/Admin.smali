.class public Lcom/app/tmyclean/models/Admin;
.super Ljava/lang/Object;
.source "Admin.java"


# instance fields
.field private content:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private user_role:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/app/tmyclean/models/Admin;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getUser_role()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/app/tmyclean/models/Admin;->user_role:Ljava/lang/String;

    return-object v0
.end method
