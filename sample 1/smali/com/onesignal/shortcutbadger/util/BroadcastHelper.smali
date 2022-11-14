.class public Lcom/onesignal/shortcutbadger/util/BroadcastHelper;
.super Ljava/lang/Object;
.source "BroadcastHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canResolveBroadcast(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .line 15
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 16
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 17
    .local v2, "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method
