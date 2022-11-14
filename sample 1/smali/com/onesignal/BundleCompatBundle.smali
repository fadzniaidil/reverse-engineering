.class Lcom/onesignal/BundleCompatBundle;
.super Ljava/lang/Object;
.source "BundleCompat.java"

# interfaces
.implements Lcom/onesignal/BundleCompat;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/onesignal/BundleCompat<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field private mBundle:Landroid/os/Bundle;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/onesignal/BundleCompatBundle;->mBundle:Landroid/os/Bundle;

    .line 135
    return-void
.end method

.method constructor <init>(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/onesignal/BundleCompatBundle;->mBundle:Landroid/os/Bundle;

    .line 143
    return-void
.end method

.method constructor <init>(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    iput-object p1, p0, Lcom/onesignal/BundleCompatBundle;->mBundle:Landroid/os/Bundle;

    .line 139
    return-void
.end method


# virtual methods
.method public containsKey(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 187
    iget-object v0, p0, Lcom/onesignal/BundleCompatBundle;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 182
    iget-object v0, p0, Lcom/onesignal/BundleCompatBundle;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .line 202
    iget-object v0, p0, Lcom/onesignal/BundleCompatBundle;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getBundle()Landroid/os/Bundle;
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/onesignal/BundleCompatBundle;->mBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public bridge synthetic getBundle()Ljava/lang/Object;
    .locals 1

    .line 130
    invoke-virtual {p0}, Lcom/onesignal/BundleCompatBundle;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getInt(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 172
    iget-object v0, p0, Lcom/onesignal/BundleCompatBundle;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getLong(Ljava/lang/String;)Ljava/lang/Long;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 177
    iget-object v0, p0, Lcom/onesignal/BundleCompatBundle;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 167
    iget-object v0, p0, Lcom/onesignal/BundleCompatBundle;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public putBoolean(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Boolean;

    .line 162
    iget-object v0, p0, Lcom/onesignal/BundleCompatBundle;->mBundle:Landroid/os/Bundle;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 163
    return-void
.end method

.method public putInt(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Integer;

    .line 152
    iget-object v0, p0, Lcom/onesignal/BundleCompatBundle;->mBundle:Landroid/os/Bundle;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 153
    return-void
.end method

.method public putLong(Ljava/lang/String;Ljava/lang/Long;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Long;

    .line 157
    iget-object v0, p0, Lcom/onesignal/BundleCompatBundle;->mBundle:Landroid/os/Bundle;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 158
    return-void
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 147
    iget-object v0, p0, Lcom/onesignal/BundleCompatBundle;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    return-void
.end method

.method public setBundle(Landroid/os/Parcelable;)V
    .locals 1
    .param p1, "bundle"    # Landroid/os/Parcelable;

    .line 197
    move-object v0, p1

    check-cast v0, Landroid/os/Bundle;

    iput-object v0, p0, Lcom/onesignal/BundleCompatBundle;->mBundle:Landroid/os/Bundle;

    .line 198
    return-void
.end method
