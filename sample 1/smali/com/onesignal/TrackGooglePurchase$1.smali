.class Lcom/onesignal/TrackGooglePurchase$1;
.super Ljava/lang/Object;
.source "TrackGooglePurchase.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/TrackGooglePurchase;->trackIAP()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/onesignal/TrackGooglePurchase;


# direct methods
.method constructor <init>(Lcom/onesignal/TrackGooglePurchase;)V
    .locals 0
    .param p1, "this$0"    # Lcom/onesignal/TrackGooglePurchase;

    .line 102
    iput-object p1, p0, Lcom/onesignal/TrackGooglePurchase$1;->this$0:Lcom/onesignal/TrackGooglePurchase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 6
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 112
    :try_start_0
    const-string v0, "com.android.vending.billing.IInAppBillingService$Stub"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 113
    .local v0, "stubClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v0}, Lcom/onesignal/TrackGooglePurchase;->access$200(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 115
    .local v1, "asInterfaceMethod":Ljava/lang/reflect/Method;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 116
    iget-object v3, p0, Lcom/onesignal/TrackGooglePurchase$1;->this$0:Lcom/onesignal/TrackGooglePurchase;

    const/4 v4, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p2, v2, v5

    invoke-virtual {v1, v4, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/onesignal/TrackGooglePurchase;->access$102(Lcom/onesignal/TrackGooglePurchase;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    iget-object v2, p0, Lcom/onesignal/TrackGooglePurchase$1;->this$0:Lcom/onesignal/TrackGooglePurchase;

    invoke-static {v2}, Lcom/onesignal/TrackGooglePurchase;->access$300(Lcom/onesignal/TrackGooglePurchase;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    .end local v0    # "stubClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "asInterfaceMethod":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 119
    :catchall_0
    move-exception v0

    .line 120
    .local v0, "t":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 122
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 105
    const/16 v0, -0x63

    invoke-static {v0}, Lcom/onesignal/TrackGooglePurchase;->access$002(I)I

    .line 106
    iget-object v0, p0, Lcom/onesignal/TrackGooglePurchase$1;->this$0:Lcom/onesignal/TrackGooglePurchase;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/onesignal/TrackGooglePurchase;->access$102(Lcom/onesignal/TrackGooglePurchase;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    return-void
.end method
