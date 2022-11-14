.class abstract Lcom/onesignal/ActivityLifecycleHandler$ActivityAvailableListener;
.super Ljava/lang/Object;
.source "ActivityLifecycleHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onesignal/ActivityLifecycleHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "ActivityAvailableListener"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method available(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .line 51
    return-void
.end method

.method lostFocus()V
    .locals 0

    .line 57
    return-void
.end method

.method stopped()V
    .locals 0

    .line 54
    return-void
.end method
