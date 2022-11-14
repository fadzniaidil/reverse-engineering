.class Lcom/onesignal/OneSignalChromeTab$OneSignalCustomTabsServiceConnection;
.super Landroidx/browser/customtabs/CustomTabsServiceConnection;
.source "OneSignalChromeTab.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onesignal/OneSignalChromeTab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OneSignalCustomTabsServiceConnection"
.end annotation


# instance fields
.field private openActivity:Z

.field private url:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "openActivity"    # Z

    .line 63
    invoke-direct {p0}, Landroidx/browser/customtabs/CustomTabsServiceConnection;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/onesignal/OneSignalChromeTab$OneSignalCustomTabsServiceConnection;->url:Ljava/lang/String;

    .line 65
    iput-boolean p2, p0, Lcom/onesignal/OneSignalChromeTab$OneSignalCustomTabsServiceConnection;->openActivity:Z

    .line 66
    return-void
.end method


# virtual methods
.method public onCustomTabsServiceConnected(Landroid/content/ComponentName;Landroidx/browser/customtabs/CustomTabsClient;)V
    .locals 7
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "customTabsClient"    # Landroidx/browser/customtabs/CustomTabsClient;

    .line 70
    if-nez p2, :cond_0

    .line 71
    return-void

    .line 73
    :cond_0
    const-wide/16 v0, 0x0

    invoke-virtual {p2, v0, v1}, Landroidx/browser/customtabs/CustomTabsClient;->warmup(J)Z

    .line 75
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroidx/browser/customtabs/CustomTabsClient;->newSession(Landroidx/browser/customtabs/CustomTabsCallback;)Landroidx/browser/customtabs/CustomTabsSession;

    move-result-object v1

    .line 76
    .local v1, "session":Landroidx/browser/customtabs/CustomTabsSession;
    if-nez v1, :cond_1

    .line 77
    return-void

    .line 79
    :cond_1
    iget-object v2, p0, Lcom/onesignal/OneSignalChromeTab$OneSignalCustomTabsServiceConnection;->url:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 80
    .local v2, "uri":Landroid/net/Uri;
    invoke-virtual {v1, v2, v0, v0}, Landroidx/browser/customtabs/CustomTabsSession;->mayLaunchUrl(Landroid/net/Uri;Landroid/os/Bundle;Ljava/util/List;)Z

    .line 83
    iget-boolean v0, p0, Lcom/onesignal/OneSignalChromeTab$OneSignalCustomTabsServiceConnection;->openActivity:Z

    if-eqz v0, :cond_3

    .line 84
    new-instance v0, Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    invoke-direct {v0, v1}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;-><init>(Landroidx/browser/customtabs/CustomTabsSession;)V

    .line 85
    .local v0, "mBuilder":Landroidx/browser/customtabs/CustomTabsIntent$Builder;
    invoke-virtual {v0}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->build()Landroidx/browser/customtabs/CustomTabsIntent;

    move-result-object v3

    .line 86
    .local v3, "customTabsIntent":Landroidx/browser/customtabs/CustomTabsIntent;
    iget-object v4, v3, Landroidx/browser/customtabs/CustomTabsIntent;->intent:Landroid/content/Intent;

    invoke-virtual {v4, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 87
    iget-object v4, v3, Landroidx/browser/customtabs/CustomTabsIntent;->intent:Landroid/content/Intent;

    const/high16 v5, 0x10000000

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 88
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x10

    if-lt v4, v5, :cond_2

    .line 89
    sget-object v4, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    iget-object v5, v3, Landroidx/browser/customtabs/CustomTabsIntent;->intent:Landroid/content/Intent;

    iget-object v6, v3, Landroidx/browser/customtabs/CustomTabsIntent;->startAnimationBundle:Landroid/os/Bundle;

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    goto :goto_0

    .line 91
    :cond_2
    sget-object v4, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    iget-object v5, v3, Landroidx/browser/customtabs/CustomTabsIntent;->intent:Landroid/content/Intent;

    invoke-virtual {v4, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 93
    .end local v0    # "mBuilder":Landroidx/browser/customtabs/CustomTabsIntent$Builder;
    .end local v3    # "customTabsIntent":Landroidx/browser/customtabs/CustomTabsIntent;
    :cond_3
    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 97
    return-void
.end method
