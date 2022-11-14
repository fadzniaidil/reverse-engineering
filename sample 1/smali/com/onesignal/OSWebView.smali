.class public Lcom/onesignal/OSWebView;
.super Landroid/webkit/WebView;
.source "OSWebView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 10
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 11
    return-void
.end method


# virtual methods
.method public computeScroll()V
    .locals 0

    .line 29
    return-void
.end method

.method public overScrollBy(IIIIIIIIZ)Z
    .locals 1
    .param p1, "deltaX"    # I
    .param p2, "deltaY"    # I
    .param p3, "scrollX"    # I
    .param p4, "scrollY"    # I
    .param p5, "scrollRangeX"    # I
    .param p6, "scrollRangeY"    # I
    .param p7, "maxOverScrollX"    # I
    .param p8, "maxOverScrollY"    # I
    .param p9, "isTouchEvent"    # Z

    .line 18
    const/4 v0, 0x0

    return v0
.end method

.method public scrollTo(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 24
    return-void
.end method
