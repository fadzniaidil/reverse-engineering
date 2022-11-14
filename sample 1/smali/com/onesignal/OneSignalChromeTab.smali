.class Lcom/onesignal/OneSignalChromeTab;
.super Ljava/lang/Object;
.source "OneSignalChromeTab.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onesignal/OneSignalChromeTab$OneSignalCustomTabsServiceConnection;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static hasChromeTabLibrary()Z
    .locals 2

    .line 45
    :try_start_0
    const-class v0, Landroidx/browser/customtabs/CustomTabsServiceConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    return v0

    .line 46
    :catchall_0
    move-exception v0

    .line 47
    .local v0, "e":Ljava/lang/Throwable;
    const/4 v1, 0x0

    return v1
.end method

.method protected static open(Ljava/lang/String;Z)Z
    .locals 3
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "openActivity"    # Z

    .line 52
    invoke-static {}, Lcom/onesignal/OneSignalChromeTab;->hasChromeTabLibrary()Z

    move-result v0

    if-nez v0, :cond_0

    .line 53
    const/4 v0, 0x0

    return v0

    .line 55
    :cond_0
    new-instance v0, Lcom/onesignal/OneSignalChromeTab$OneSignalCustomTabsServiceConnection;

    invoke-direct {v0, p0, p1}, Lcom/onesignal/OneSignalChromeTab$OneSignalCustomTabsServiceConnection;-><init>(Ljava/lang/String;Z)V

    .line 56
    .local v0, "connection":Landroidx/browser/customtabs/CustomTabsServiceConnection;
    sget-object v1, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    const-string v2, "com.android.chrome"

    invoke-static {v1, v2, v0}, Landroidx/browser/customtabs/CustomTabsClient;->bindCustomTabsService(Landroid/content/Context;Ljava/lang/String;Landroidx/browser/customtabs/CustomTabsServiceConnection;)Z

    move-result v1

    return v1
.end method
