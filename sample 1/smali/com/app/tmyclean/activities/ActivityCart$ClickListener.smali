.class public interface abstract Lcom/app/tmyclean/activities/ActivityCart$ClickListener;
.super Ljava/lang/Object;
.source "ActivityCart.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/app/tmyclean/activities/ActivityCart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ClickListener"
.end annotation


# virtual methods
.method public abstract onClick(Landroid/view/View;I)V
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
.end method

.method public abstract onLongClick(Landroid/view/View;I)V
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
.end method
