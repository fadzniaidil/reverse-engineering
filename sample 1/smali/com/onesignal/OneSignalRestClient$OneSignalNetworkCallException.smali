.class Lcom/onesignal/OneSignalRestClient$OneSignalNetworkCallException;
.super Ljava/lang/RuntimeException;
.source "OneSignalRestClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onesignal/OneSignalRestClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OneSignalNetworkCallException"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .line 298
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 299
    return-void
.end method
